<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 PeerTube

[![集成程度](https://dash.yunohost.org/integration/peertube.svg)](https://dash.yunohost.org/appci/app/peertube) ![工作状态](https://ci-apps.yunohost.org/ci/badges/peertube.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/peertube.maintain.svg)

[![使用 YunoHost 安装 PeerTube](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=peertube)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 PeerTube。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

PeerTube is a decentralized and federated video hosting software. To publish videos, the user must register with a host (called an instance). Each host has its own conditions of use (storage space per user, moderation rules, themes, etc.). Thanks to WebTorrent, if several people view the same video, fragments of it are exchanged between people so as not to overload the instance. Decentralized: Each instance can follow one or more other PeerTube instances in order to allow its users to view their videos. Federated: Via the ActivityPub protocol, Peertube can interact with other software that is part of the Fediverse, such as Mastodon for example.


**分发版本：** 6.1.0~ynh2

**演示：** <http://peertube.cpy.re>

## 截图

![PeerTube 的截图](./doc/screenshots/screenshot1.jpg)

## 文档与资源

- 官方应用网站： <https://joinpeertube.org/fr>
- 官方管理文档： <https://docs.joinpeertube.org>
- 上游应用代码库： <https://github.com/Chocobozzz/PeerTube>
- YunoHost 商店： <https://apps.yunohost.org/app/peertube>
- 报告 bug： <https://github.com/YunoHost-Apps/peertube_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/peertube_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
或
sudo yunohost app upgrade peertube -u https://github.com/YunoHost-Apps/peertube_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
