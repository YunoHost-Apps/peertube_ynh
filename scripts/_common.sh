#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="ffmpeg postgresql postgresql-contrib openssl g++ mailutils apt-transport-https"

NODEJS_VERSION=16

ynh_app_dependencies="prosody"

#=================================================
# PERSONAL HELPERS
#=================================================

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

#!/bin/bash

# Install other YunoHost apps
#
# usage: ynh_install_apps --apps="appfoo appbar?domain=DOMAIN&path=PATH&admin=USER&language=fr&is_public=1&password=pass&port=666"
# | arg: -a, --apps=     - apps to install
#
# Requires YunoHost version *.*.* or higher.
ynh_install_apps() {
	# Declare an array to define the options of this helper.
	local legacy_args=a
	local -A args_array=([a]=apps=)
	local apps
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	# Split the list of apps in an array
	local apps_list=($(echo $apps | tr " " "\n"))
	
	# For each app
	for oneapp_and_its_args in "${apps_list[@]}"
	do
		# Retrieve the name of the app (part before _ynh)
		local oneapp=$(echo "$oneapp_and_its_args" | awk -F'?' '{print $1}')
		[ -z "$oneapp" ] && ynh_die --message="You didn't provided a YunoHost app to install"

		# Retrieve the arguments of the app (part after ?)
		local oneargument=$(echo "$oneapp_and_its_args" | awk -F'?' '{print $2}')
		[ ! -z "$oneargument" ] && oneargument="--args \"$oneargument\""

		# Installing or upgrading the app
		yunohost tools update apps
		if ! yunohost app list --output-as json --quiet | jq -e --arg id $oneapp '.apps[] | select(.id == $id)' >/dev/null
		then
			yunohost app install $oneapp $oneargument
		else
			yunohost app upgrade $oneapp $oneargument
		fi
		ynh_app_setting_set --app=$app --key=require_$oneapp --value="1"
	done
}

# Remove other YunoHost apps
#
# apps will be removed only if no other apps need them.
#
# usage: ynh_remove_apps --apps="appfoo appbar?domain=DOMAIN&path=PATH&admin=USER&language=fr&is_public=1&password=pass&port=666"
# | arg: -a, --apps=     - apps to install
#
# Requires YunoHost version *.*.* or higher.
ynh_remove_apps() {
	# Declare an array to define the options of this helper.
	local legacy_args=a
    local -A args_array=([a]=apps=)
    local apps
	# Manage arguments with getopts
	ynh_handle_getopts_args "$@"

	# Split the list of apps in an array
	local apps_list=($(echo $apps | tr " " "\n"))
	
	# For each app
	for i in "${apps_list[@]}"
	do
		# Retrieve the name of the app (part before _ynh)
		local oneapp=$(echo "$i" | awk -F'?' '{print $1}')
		[ -z "$oneapp" ] && ynh_die --message="You didn't provided a YunoHost app to remove"

		ynh_app_setting_delete --app=$app --key=require_$oneapp

		# List apps requiring $oneapp
		local installed_apps=$(yunohost app list --output-as json --quiet | jq -r .apps[].id)
		local required_by=""
		local installed_app_required_by=""
		for installed_app in $installed_apps
		do
			local installed_app_required_by=$(ynh_app_setting_get --app=$installed_app --key="require_$oneapp")
			if [[ -n "$installed_app_required_by" ]]
			then
				required_by="${installed_app_required_by}"
			fi
			installed_app_required_by=""
		done

		# If $oneapp is no more required
		if [[ -z "$required_by" ]]
		then
			# Remove $oneapp
			ynh_print_info --message="Removing of $oneapp"
			yunohost app remove $oneapp --purge
		fi
	done
}
