<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# PeerTube YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Instalatu PeerTube YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek PeerTube YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Paketatutako bertsioa:** 6.1.0~ynh1

**Demoa:** <http://peertube.cpy.re>

## Pantaila-argazkiak

![PeerTube(r)en pantaila-argazkia](./doc/screenshots/screenshot1.jpg)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://joinpeertube.org/fr>
- Administratzaileen dokumentazio ofiziala: <https://docs.joinpeertube.org>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/Chocobozzz/PeerTube>
- YunoHost Denda: <https://apps.yunohost.org/app/peertube>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
edo
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
