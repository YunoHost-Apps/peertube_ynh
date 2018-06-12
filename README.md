# PeerTube app for YunoHost

[![Integration level](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/jenkins/job/peertube%20%28Community%29/lastBuild/consoleFull)  
[![Install Peertube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=peertube)<br><br>
=======

**Shipped Version: v1.0.0-beta.8**


<h4>
PeerTube is a decentralized video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.
</h4>

<p>
<strong>Peertube is running <a href="https://www.kisskissbankbank.com/en/projects/peertube-a-free-and-federated-video-platform">a crowdfunding campaign</a> to pave the road to version 1.0 of PeerTube! If you liked the app, please donate.</strong>
</p>

## Demonstration

Want to see in action?

   * [Here](http://peertube.cpy.re) are the list of instances ran by people around the world. Be a part of it.
   

## Installation

### Guidelines 

 1. Require dedicated domain like **peertube.domain.tld**.
 1. No LDAP support (blocked until upstream implements it)
 1. URL can not be changed once selected.
 1. Take notice that this YunoHost package *claims* the following features:
   - [x] Install
   - [x] Remove
   - [X] Upgrade
   - [X] Backup
   - [X] Restore
   - [X] Multi-instance
   
### Install

 1. **App can be installed by YunoHost admin interface or by the following command:**

         $ sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh
 1. **root** is the admin username.
 1. **root Password** will be sent to the email address given at the time of the installation.
 1. **TLS** and **starttls** are disabled for the outgoing mails. If you intent to use email address not hosted on your local server,it's advised to have a proper SMTP configured with tls and starttls settings by editing **/var/www/peertube/config/porduction.yml**.
 
 ### Updation
 1. **App can be updated by YunoHost admin interface or by the following command:**
          
          $ sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/peertube_ynh peertube
 1. App will backup the **home directory** for Peertube before updating which can take a lot of space on the system. It's advised to check the home folder's free space by
        
        $ df -h "/home" |  awk 'NR==2 { print $4 }'
  and compare it with space occupied by the Peertube home directory before updating.
        
        $ du -hcs /home/yunohost.app/peertube | awk 'NR==2 { print $1 }'
 
 ## Why

We can't build a FOSS video streaming alternatives to YouTube, Dailymotion, Vimeo... with a centralized software. One organization alone cannot have enough money to pay bandwidth and video storage of its server.

So we need to have a decentralized network (as [Hubzilla](https://project.hubzilla.org/page/hubzilla/hubzilla-project) ([Hubzilla YunoHost](https://github.com/YunoHost-Apps/hubzilla_ynh)), [Friendica](http://friendi.ca/) ([Friendica YunoHost](https://github.com/YunoHost-Apps/friendica_ynh)), [Mastodon](https://github.com/tootsuite/mastodon) ([Mastodon YunoHost](https://github.com/YunoHost-Apps/mastodon_ynh)), [Diaspora](https://github.com/diaspora/diaspora) ([Diaspora YunoHost](https://github.com/YunoHost-Apps/diaspora_ynh)),[Funkwhale](https://funkwhale.audio) ([Funkwhale YunoHost](https://github.com/YunoHost-Apps/funkwhale_ynh))).
But it's not enough because one video could become famous and overload the server.
It's the reason why we need to use a P2P protocol to limit the server load.
Thanks to [WebTorrent](https://github.com/feross/webtorrent), we can make P2P (thus bittorrent) inside the web browser right now.

### Dependencies

  * NodeJS, PostgreSQL.
  * On Debian Jessie,backport is added for the ffmpeg package.

## LICENSE

PeerTube is licensed under the GNU Affero General Public License v3.0.
