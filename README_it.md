<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# PeerTube per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Installa PeerTube con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare PeerTube su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Versione pubblicata:** 6.0.3~ynh1

**Prova:** <http://peertube.cpy.re>

## Screenshot

![Screenshot di PeerTube](./doc/screenshots/screenshot1.jpg)

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://joinpeertube.org/fr>
- Documentazione ufficiale per gli amministratori: <https://docs.joinpeertube.org>
- Repository upstream del codice dell’app: <https://github.com/Chocobozzz/PeerTube>
- Store di YunoHost: <https://apps.yunohost.org/app/peertube>
- Segnala un problema: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
o
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
