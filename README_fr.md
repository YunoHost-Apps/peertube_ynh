<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# PeerTube pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Installer PeerTube avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer PeerTube rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

PeerTube est un logiciel décentralisé et fédéré d’hébergement de vidéos. Pour publier des vidéos, l’utilisateur doit s’inscrire chez un hébergeur (nommé instance). Chaque hébergeur possède ses conditions d’utilisation (espace de stockage par utilisateur, règles de modération, thématiques, etc.). Grâce à WebTorrent, si plusieurs personnes consultent une même vidéo, des fragments de celle-ci sont échangés entre les personnes afin de ne pas surcharger l’instance. Décentralisé : Chaque instance peut suivre une ou plusieurs autres instances PeerTube afin de permettre à ses utilisateurs de visionner les vidéos de celles-ci. Fédéré : Via le protocole ActivityPub, Peertube peut interagir avec d’autres logiciels qui font partie du Fediverse, comme Mastodon par exemple.


**Version incluse :** 6.2.1~ynh1

**Démo :** <http://peertube.cpy.re>

## Captures d’écran

![Capture d’écran de PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentations et ressources

- Site officiel de l’app : <https://joinpeertube.org/fr>
- Documentation officielle de l’admin : <https://docs.joinpeertube.org>
- Dépôt de code officiel de l’app : <https://github.com/Chocobozzz/PeerTube>
- YunoHost Store : <https://apps.yunohost.org/app/peertube>
- Signaler un bug : <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
ou
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
