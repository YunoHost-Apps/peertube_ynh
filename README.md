# PeerTube app for YunoHost

[![Integration level](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/jenkins/job/peertube%20%28Community%29/lastBuild/consoleFull)  
[![Install Peertube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=peertube)<br><br>
=======

Shipped Version: **1.0.0-rc.2**

## What is Peertube ?
PeerTube is a federated (ActivityPub) video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.

 ## Why Peertube ?

We can't build a FOSS video streaming alternatives to YouTube, Dailymotion, Vimeo... with a centralized software. One organization alone cannot have enough money to pay bandwidth and video storage of its server.

So we need to have a decentralized network of servers seeding videos  (as [Hubzilla YunoHost](https://github.com/YunoHost-Apps/hubzilla_ynh), [Friendica YunoHost](https://github.com/YunoHost-Apps/friendica_ynh),[Mastodon YunoHost](https://github.com/YunoHost-Apps/mastodon_ynh)), [Diaspora](https://github.com/diaspora/diaspora) ([Diaspora YunoHost](https://github.com/YunoHost-Apps/diaspora_ynh)),[Funkwhale](https://funkwhale.audio) ([Funkwhale YunoHost](https://github.com/YunoHost-Apps/funkwhale_ynh))).
But it's not enough because one video could become famous and overload the server.
It's the reason why we need to use a P2P protocol to limit the server load.
Thanks to [WebTorrent](https://github.com/feross/webtorrent), we can make P2P (thus BitTorrent) inside the web browser, as of today.

## Why is that cool ?
Servers are run independently by different people and organizations. They can apply wildly different moderation policies, so you can find or make one that fits your taste perfectly.

By watching a video, you help the hosting provider to broadcast it by becoming a broadcaster of the video yourself. Each instance doesn’t need much money to broadcast the videos of its users.

## Demonstration

Want to see in action?

   * [Here](http://peertube.cpy.re) are the list of instances ran by people around the world. Be a part of it.
   

## Installation

### Guidelines 

 1. Require **dedicated domain** like **peertube.domain.tld**.
 1. **No LDAP** support (blocked until Peertube core upstream implements it)
 1. URL can not be changed once selected. Choose the domain wisely.
 1. You need more then **1GB** of ram. If you don't have it, please create a **swap memory**.
 
        $ dd if=/dev/zero of=/swapfile bs=1024 count=1048576
        $ mkswap /swapfile
        $ swapon /swapfile
        $ echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
 1. This app is **multi-instance** (you can have more then one Peertube instance running on a YunoHost server)
   
### Installing guide

 1. App can be installed by YunoHost **admin web-interface** or by **running following command**:

         $ sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh
 1. Admin username is : **root**.
 1. **Admin password** will be sent to the email address given at the time of the installation.
 1. **TLS** and **starttls** are disabled for the outgoing mails. If you intent to use email address not hosted on your local server,it's advised to have a proper SMTP configured with tls and starttls settings by editing **/var/www/peertube/config/porduction.yml**.
 
 ### Update Guide
 1. App can be updated by YunoHost **admin web-interface** or with the following command**:
          
          $ sudo yunohost app upgrade -u https://github.com/YunoHost-Apps/peertube_ynh peertube


### Dependencies

  * NodeJS, PostgreSQL.
  * On Debian Jessie,backport is added for the ffmpeg package.

## LICENSE

PeerTube is licensed under the GNU Affero General Public License v3.0.
