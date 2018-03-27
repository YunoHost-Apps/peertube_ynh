# PeerTube app for YunoHost

[![Install Peertube with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=Peertube)<br><br>

<h4 align="center">
PeerTube is a decentralized video streaming platform using P2P (BitTorrent) directly in the web browser, using <a href="https://github.com/feross/webtorrent">WebTorrent</a>.
</h4>

**PeerTube is sponsored by [Framasoft](https://framatube.org/#en), a non-profit that promotes, spreads and develops free-libre software. If you want to support this project, please [consider donating them](https://soutenir.framasoft.org/en/).**

## Demonstration

Want to see in action?

   * [Demo](http://peertube.cpy.re)
   * [Video](https://peertube.cpy.re/videos/watch/f78a97f8-a142-4ce1-a5bd-154bf9386504) to see how the "decentralization feature" looks like
   * [Video](https://peertube.valvin.fr/videos/watch/e510b421-92f3-4153-aaf9-baf5166f43e8) showcasing A2HS


## Installation

 1. Require dedicated domain like **peertube.domain.tld**.
 1. No LDAP support (blocked until upstream implements it)
 1. URL can not be changed once selected.
 1. Peertube is under beta stage, **don't use it for production**
 1. Take notice that this YunoHost package *claims* the following features:
   - [x] Install
   - [x] Remove
   - [X] Upgrade
   - [X] Backup
   - [X] Restore

 1. **Install the app by following command:**

         $ sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh
 1. Use **root** as the admin username and the password given while installation of the Peertube for the login.
 1. Don't forget to change the **port** if using a multi-instance for Peertube.

## Why

We can't build a FOSS video streaming alternatives to YouTube, Dailymotion, Vimeo... with a centralized software. One organization alone cannot have enough money to pay bandwidth and video storage of its server.

So we need to have a decentralized network (as [Hubzilla](https://project.hubzilla.org/page/hubzilla/hubzilla-project) ([Hubzilla YunoHost](https://github.com/YunoHost-Apps/hubzilla_ynh)), [Friendica](http://friendi.ca/) ([Friendica YunoHost](https://github.com/YunoHost-Apps/friendica_ynh)), [Mastodon](https://github.com/tootsuite/mastodon) ([Mastodon YunoHost](https://github.com/YunoHost-Apps/mastodon_ynh)), [Diaspora](https://github.com/diaspora/diaspora) ([Diaspora YunoHost](https://github.com/YunoHost-Apps/diaspora_ynh))).
But it's not enough because one video could become famous and overload the server.
It's the reason why we need to use a P2P protocol to limit the server load.
Thanks to [WebTorrent](https://github.com/feross/webtorrent), we can make P2P (thus bittorrent) inside the web browser right now.

### Dependencies

  * **NodeJS >= 6.x**
  * **npm >= 3.x**
  * yarn
  * OpenSSL (cli)
  * PostgreSQL
  * FFmpeg

## LICENSE

PeerTube is licensed under the GNU Affero General Public License v3.0.
