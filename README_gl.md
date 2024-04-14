<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# PeerTube para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Instalar PeerTube con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar PeerTube de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Versión proporcionada:** 6.0.4~ynh1

**Demo:** <http://peertube.cpy.re>

## Capturas de pantalla

![Captura de pantalla de PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentación e recursos

- Web oficial da app: <https://joinpeertube.org/fr>
- Documentación oficial para admin: <https://docs.joinpeertube.org>
- Repositorio de orixe do código: <https://github.com/Chocobozzz/PeerTube>
- Tenda YunoHost: <https://apps.yunohost.org/app/peertube>
- Informar dun problema: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
ou
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
