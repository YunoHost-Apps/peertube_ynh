<!--
NB: Deze README is automatisch gegenereerd door <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Hij mag NIET handmatig aangepast worden.
-->

# PeerTube voor Yunohost

[![Integratieniveau](https://apps.yunohost.org/badge/integration/peertube)](https://ci-apps.yunohost.org/ci/apps/peertube/)
![Mate van functioneren](https://apps.yunohost.org/badge/state/peertube)
![Onderhoudsstatus](https://apps.yunohost.org/badge/maintained/peertube)

[![PeerTube met Yunohost installeren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Deze README in een andere taal lezen.](./ALL_README.md)*

> *Met dit pakket kun je PeerTube snel en eenvoudig op een YunoHost-server installeren.*  
> *Als je nog geen YunoHost hebt, lees dan [de installatiehandleiding](https://yunohost.org/install), om te zien hoe je 'm installeert.*

## Overzicht

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Geleverde versie:** 7.0.0~ynh1

**Demo:** <http://peertube.cpy.re>

## Schermafdrukken

![Schermafdrukken van PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentatie en bronnen

- Officiele website van de app: <https://joinpeertube.org/fr>
- Officiele beheerdersdocumentatie: <https://docs.joinpeertube.org>
- Upstream app codedepot: <https://github.com/Chocobozzz/PeerTube>
- YunoHost-store: <https://apps.yunohost.org/app/peertube>
- Meld een bug: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Ontwikkelaarsinformatie

Stuur je pull request alsjeblieft naar de [`testing`-branch](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Om de `testing`-branch uit te proberen, ga als volgt te werk:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
of
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Verdere informatie over app-packaging:** <https://yunohost.org/packaging_apps>
