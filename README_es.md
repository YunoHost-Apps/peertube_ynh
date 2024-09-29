<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# PeerTube para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Instalar PeerTube con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarPeerTube rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Versión actual:** 6.3.1~ynh1

**Demo:** <http://peertube.cpy.re>

## Capturas

![Captura de PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentaciones y recursos

- Sitio web oficial: <https://joinpeertube.org/fr>
- Documentación administrador oficial: <https://docs.joinpeertube.org>
- Repositorio del código fuente oficial de la aplicación : <https://github.com/Chocobozzz/PeerTube>
- Catálogo YunoHost: <https://apps.yunohost.org/app/peertube>
- Reportar un error: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [rama `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
o
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
