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

# Install other YunoHost apps when they are not multi-instance
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
	local apps_dependencies=""
	
	# For each app
	for one_app_and_its_args in "${apps_list[@]}"
	do
		# Retrieve the name of the app (part before ?)
		local one_app=$(echo "$one_app_and_its_args" | awk -F'?' '{print $1}')
		[ -z "$one_app" ] && ynh_die --message="You didn't provided a YunoHost app to install"

		yunohost tools update apps
		
		# Installing or upgrading the app depending if it's installed or not
		if ! yunohost app list --output-as json --quiet | jq -e --arg id $one_app '.apps[] | select(.id == $id)' >/dev/null
		then
			# Retrieve the arguments of the app (part after ?)
			local one_argument=$(echo "$one_app_and_its_args" | awk -F'?' '{print $2}')
			[ ! -z "$one_argument" ] && one_argument="--args \"$one_argument\""
			
			# Install the app with its arguments
			yunohost app install $one_app $one_argument
		else
			# Upgrade the app
			yunohost app upgrade $one_app
		fi

		if [ ! -z "$apps_dependencies" ]
		then
			apps_dependencies="$apps_dependencies, $one_app"
		else
			apps_dependencies="$one_app"
		fi
	done

	ynh_app_setting_set --app=$app --key=apps_dependencies --value="$apps_dependencies"
}

# Remove other YunoHost apps
#
# Other YunoHost apps will be removed only if no other apps need them.
#
# usage: ynh_remove_apps
#
# Requires YunoHost version *.*.* or higher.
ynh_remove_apps() {

	# Retrieve the apps dependencies of the app
	local apps_dependencies=$(ynh_app_setting_get --app=$app --key=apps_dependencies) || true
	ynh_app_setting_delete --app=$app --key=apps_dependencies || true

	if [ ! -z "$apps_dependencies" ]
	then
		# Split the list of apps dependencies in an array
		local apps_dependencies_list=($(echo $apps_dependencies | tr ", " "\n"))
		
		# For each apps dependencies
		for one_app in "${apps_dependencies_list[@]}"
		do
			# Retrieve the list of installed apps
			local installed_apps_list=$(yunohost app list --output-as json --quiet | jq -r .apps[].id)
			local required_by=""
			local installed_app_required_by=""

			# For each other installed app
			for one_installed_app in $installed_apps_list
			do
				# Retrieve the other apps dependencies
				one_installed_apps_dependencies=$(ynh_app_setting_get --app=$one_installed_app --key=apps_dependencies)
				if [ ! -z "$one_installed_apps_dependencies" ]
				then
					one_installed_apps_dependencies_list=($(echo $one_installed_apps_dependencies | tr ", " "\n"))

					# For each dependency of the other apps
					for one_installed_app_dependency in "${one_installed_apps_dependencies_list[@]}"
					do
						if [[ $one_installed_app_dependency == $one_app ]]; then
							required_by="$required_by $one_installed_app"
						fi
					done
				fi
			done

			# If $one_app is no more required
			if [[ -z "$required_by" ]]
			then
				# Remove $one_app
				ynh_print_info --message="Removing of $one_app"
				yunohost app remove $one_app --purge
			else
				ynh_print_info --message="$one_app was not removed because it's still required by${required_by}"
			fi
		done
	fi
}
