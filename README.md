<!--
N.B.: This README was automatically generated by https://github.com/YunoHost/apps/tree/master/tools/README-generator
It shall NOT be edited by hand.
-->

# PeerTube for YunoHost

[![Integration level](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![Working status](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Maintenance status](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Install PeerTube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install PeerTube quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview

Federated (ActivityPub) video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.


**Shipped version:** 5.2.0~ynh1

**Demo:** http://peertube.cpy.re

## Screenshots

![Screenshot of PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentation and resources

* Official app website: <https://joinpeertube.org/fr>
* Official admin documentation: <https://docs.joinpeertube.org>
* Upstream app code repository: <https://github.com/Chocobozzz/PeerTube>
* YunoHost documentation for this app: <https://yunohost.org/app_peertube>
* Report a bug: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

To try the testing branch, please proceed like that.

``` bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
or
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**More info regarding app packaging:** <https://yunohost.org/packaging_apps>
