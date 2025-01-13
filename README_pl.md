<!--
To README zostało automatycznie wygenerowane przez <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Nie powinno być ono edytowane ręcznie.
-->

# PeerTube dla YunoHost

[![Poziom integracji](https://apps.yunohost.org/badge/integration/peertube)](https://ci-apps.yunohost.org/ci/apps/peertube/)
![Status działania](https://apps.yunohost.org/badge/state/peertube)
![Status utrzymania](https://apps.yunohost.org/badge/maintained/peertube)

[![Zainstaluj PeerTube z YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Przeczytaj plik README w innym języku.](./ALL_README.md)*

> *Ta aplikacja pozwala na szybką i prostą instalację PeerTube na serwerze YunoHost.*  
> *Jeżeli nie masz YunoHost zapoznaj się z [poradnikiem](https://yunohost.org/install) instalacji.*

## Przegląd

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Dostarczona wersja:** 7.0.1~ynh2

**Demo:** <http://peertube.cpy.re>

## Zrzuty ekranu

![Zrzut ekranu z PeerTube](./doc/screenshots/screenshot1.jpg)

## Dokumentacja i zasoby

- Oficjalna strona aplikacji: <https://joinpeertube.org/fr>
- Oficjalna dokumentacja dla administratora: <https://docs.joinpeertube.org>
- Repozytorium z kodem źródłowym: <https://github.com/Chocobozzz/PeerTube>
- Sklep YunoHost: <https://apps.yunohost.org/app/peertube>
- Zgłaszanie błędów: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Informacje od twórców

Wyślij swój pull request do [gałęzi `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Aby wypróbować gałąź `testing` postępuj zgodnie z instrukcjami:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
lub
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Więcej informacji o tworzeniu paczek aplikacji:** <https://yunohost.org/packaging_apps>
