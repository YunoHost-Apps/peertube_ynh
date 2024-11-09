<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# PeerTube untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Pasang PeerTube dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang PeerTube secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Versi terkirim:** 6.3.3~ynh1

**Demo:** <http://peertube.cpy.re>

## Tangkapan Layar

![Tangkapan Layar pada PeerTube](./doc/screenshots/screenshot1.jpg)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://joinpeertube.org/fr>
- Dokumentasi admin resmi: <https://docs.joinpeertube.org>
- Depot kode aplikasi hulu: <https://github.com/Chocobozzz/PeerTube>
- Gudang YunoHost: <https://apps.yunohost.org/app/peertube>
- Laporkan bug: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
atau
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
