# PeerTube pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)  
[![Installer PeerTube pour YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer PeerTube rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble

### Qu'est-ce que PeerTube ?
PeerTube est une plateforme de streaming vidéo fédérée (ActivityPub) utilisant P2P (BitTorrent) directement dans le navigateur Web, en utilisant <a href="https://github.com/feross/webtorrent"> WebTorrent </a>.
### Why PeerTube?

Nous ne pouvons pas créer d'alternatives de streaming vidéo FOSS à YouTube, Dailymotion, Vimeo... avec un logiciel centralisé. Une organisation seule ne peut pas avoir assez d'argent pour payer la bande passante et le stockage vidéo de son serveur.
Nous avons donc besoin d'un réseau décentralisé de serveurs « semant » des vidéos (comme [Hubzilla YunoHost](https://github.com/YunoHost-Apps/hubzilla_ynh), [Friendica YunoHost](https://github.com/YunoHost-Apps/friendica_ynh), [Mastodon YunoHost](https://github.com/YunoHost-Apps/mastodon_ynh)), [Diaspora](https://github.com/diaspora/diaspora) ([Diaspora YunoHost](https://github.com/YunoHost-Apps/diaspora_ynh)),[Funkwhale](https://funkwhale.audio) ([Funkwhale YunoHost](https://github.com/YunoHost-Apps/funkwhale_ynh)).
Mais ce n'est pas suffisant car une vidéo pourrait devenir célèbre et surcharger le serveur. C'est la raison pour laquelle nous devons utiliser un protocole P2P pour limiter la charge du serveur. Grâce à [WebTorrent](https://github.com/feross/webtorrent), nous pouvons faire du P2P (donc BitTorrent) dans le navigateur Web, dès aujourd'hui.

### Pourquoi est-ce cool ?
Les serveurs sont gérés indépendamment par différentes personnes et organisations. Ils peuvent appliquer des politiques de modération extrêmement différentes, afin que vous puissiez en trouver ou en créer une qui correspond parfaitement à vos goûts.

En regardant une vidéo, vous aidez l'hébergeur à la diffuser en devenant vous-même un diffuseur de la vidéo. Chaque instance n'a pas besoin de beaucoup d'argent pour diffuser les vidéos de ses utilisateurs.

**Version incluse :** 3.0.0

## Points importants à lire avant l'installation

1. Nécessite un **domaine dédié** comme **peertube.domain.tld**.
1. **Pas de support LDAP** (bloqué jusqu'à ce que le noyau PeerTube en amont l'implémente)
1. Le nom d'utilisateur de l'administrateur est: **root**.
1. **Le mot de passe administrateur** sera envoyé à l'adresse email indiquée au moment de l'installation.
1. L'URL ne peut pas être modifiée une fois sélectionnée. Choisissez judicieusement le domaine.
1. Vous avez besoin de plus de **1 Go** de RAM. Si vous ne l'avez pas, veuillez créer une **mémoire swap**.

 
        $ dd if=/dev/zero of=/swapfile bs=1024 count=1048576
        $ mkswap /swapfile
        $ swapon /swapfile
        $ echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

1. Cette application est **multi-instance** (vous pouvez avoir plus d'une instance PeerTube en cours d'exécution sur un serveur YunoHost)
1. **Si vous êtes hébergé sur une machine virtuelle OVH ou rencontrez `gyp ERR! configure error`, veuillez passer à [ovh_fix](https://github.com/YunoHost-Apps/peertube_ynh/tree/ovh_fix)**

## Captures d'écran

![](https://framablog.org/wp-content/uploads/2018/03/Framatube-au-lancement.png)

## Démo

 * [Démo](http://peertube.cpy.re)

## Documentation

 * Documentation officielle : https://docs.joinpeertube.org/
 * Documentation YunoHost : https://yunohost.org/#/app_peertube_fr

## Caractéristiques spécifiques YunoHost

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/peertube%20%28Apps%29.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/peertube%20%28Apps%29.svg)](https://ci-apps-arm.yunohost.org/ci/apps/peertube/)

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/peertube_ynh/issues
 * Site de l'application : https://joinpeertube.org/fr/
 * Dépôt de l'application principale : https://github.com/Chocobozzz/PeerTube/
 * Site web YunoHost : https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
or
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```
