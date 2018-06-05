# PeerTube app for YunoHost

[![Install Peertube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=Peertube)<br><br>
=======

**Shipped Version:** 1.0.0-beta.7

<h4>
PeerTube is a decentralized video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.
</h4>

**PeerTube is sponsored by [Framasoft](https://framatube.org/#en), a non-profit that promotes, spreads and develops free-libre software. If you want to support this project, please [consider donating them](https://soutenir.framasoft.org/en/).**

## Demonstration

Want to see in action?

   * [Demo](http://peertube.cpy.re)
   * [Video](https://peertube.cpy.re/videos/watch/f78a97f8-a142-4ce1-a5bd-154bf9386504) to see how the "decentralization feature" looks like
   * [Video](https://peertube.valvin.fr/videos/watch/e510b421-92f3-4153-aaf9-baf5166f43e8) showcasing A2HS


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
