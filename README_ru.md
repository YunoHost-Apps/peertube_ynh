<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# PeerTube для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/peertube.svg)](https://ci-apps.yunohost.org/ci/apps/peertube/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![Установите PeerTube с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить PeerTube быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**Поставляемая версия:** 6.3.1~ynh1

**Демо-версия:** <http://peertube.cpy.re>

## Снимки экрана

![Снимок экрана PeerTube](./doc/screenshots/screenshot1.jpg)

## Документация и ресурсы

- Официальный веб-сайт приложения: <https://joinpeertube.org/fr>
- Официальная документация администратора: <https://docs.joinpeertube.org>
- Репозиторий кода главной ветки приложения: <https://github.com/Chocobozzz/PeerTube>
- Магазин YunoHost: <https://apps.yunohost.org/app/peertube>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
или
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
