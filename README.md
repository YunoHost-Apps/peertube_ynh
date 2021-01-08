# PeerTube for YunoHost

[![Integration level](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)  
[![Install PeerTube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install PeerTube quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

### What is PeerTube?
PeerTube is a federated (ActivityPub) video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.

### Why PeerTube?

We can't build a FOSS video streaming alternatives to YouTube, Dailymotion, Vimeo... with a centralized software. One organization alone cannot have enough money to pay bandwidth and video storage of its server.

So we need to have a decentralized network of servers seeding videos  (as [Hubzilla YunoHost](https://github.com/YunoHost-Apps/hubzilla_ynh), [Friendica YunoHost](https://github.com/YunoHost-Apps/friendica_ynh),[Mastodon YunoHost](https://github.com/YunoHost-Apps/mastodon_ynh)), [Diaspora](https://github.com/diaspora/diaspora) ([Diaspora YunoHost](https://github.com/YunoHost-Apps/diaspora_ynh)),[Funkwhale](https://funkwhale.audio) ([Funkwhale YunoHost](https://github.com/YunoHost-Apps/funkwhale_ynh)).
But it's not enough because one video could become famous and overload the server.
It's the reason why we need to use a P2P protocol to limit the server load.
Thanks to [WebTorrent](https://github.com/feross/webtorrent), we can make P2P (thus BitTorrent) inside the web browser, as of today.

### Why is that cool?
Servers are run independently by different people and organizations. They can apply wildly different moderation policies, so you can find or make one that fits your taste perfectly.

By watching a video, you help the hosting provider to broadcast it by becoming a broadcaster of the video yourself. Each instance doesn’t need much money to broadcast the videos of its users.

**Shipped version:** 3.0.0

## Important points to read before installing

1. Require **dedicated domain** like **peertube.domain.tld**.
1. **No LDAP** support (blocked until PeerTube core upstream implements it)
1. Admin username is: **root**.
1. **Admin password** will be sent to the email address given at the time of the installation.
1. URL can not be changed once selected. Choose the domain wisely.
1. You need more then **1 GB** of RAM. If you don't have it, please create a **swap memory**.
 
        $ dd if=/dev/zero of=/swapfile bs=1024 count=1048576
        $ mkswap /swapfile
        $ swapon /swapfile
        $ echo "/swapfile swap swap defaults 0 0" >> /etc/fstab
        
1. This app is **multi-instance** (you can have more then one PeerTube instance running on a YunoHost server)
1. **If you are hosted on OVH virtual machine or experiencing `gyp ERR! configure error`, please switch to [ovh_fix](https://github.com/YunoHost-Apps/peertube_ynh/tree/ovh_fix)**
 
## Screenshots

![](https://framablog.org/wp-content/uploads/2018/03/Framatube-au-lancement.png)

## Demo

Want to see in action?

   * [Here](http://peertube.cpy.re) are the list of instances ran by people around the world. Be a part of it.

## Documentation

 * Official documentation: https://docs.joinpeertube.org/
 * YunoHost documentation: https://yunohost.org/#/app_peertube

## YunoHost specific features

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/peertube%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/peertube%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/peertube/)

## Links

 * Report a bug: https://github.com/YunoHost-Apps/peertube_ynh/issues
 * App website: https://joinpeertube.org/fr/
 * GitHub App website: https://github.com/Chocobozzz/PeerTube/
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
or
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```
