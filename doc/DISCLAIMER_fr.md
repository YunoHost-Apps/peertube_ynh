### Points importants à lire avant l'installation
* Nécessite un **domaine dédié** comme **peertube.domain.tld**.
* Le nom d'utilisateur de l'administrateur est: **root**.
* **Le mot de passe administrateur et la configuration LDAP** seront envoyés à l'adresse email indiquée au moment de l'installation.
* L'URL ne peut pas être modifiée une fois sélectionnée. Choisissez judicieusement le domaine.
* Vous avez besoin de plus de **1 Go** de RAM. Si vous ne l'avez pas, veuillez créer une **mémoire swap**.
 
        $ dd if=/dev/zero of=/swapfile bs=1024 count=1048576
        $ mkswap /swapfile
        $ swapon /swapfile
        $ echo "/swapfile swap swap defaults 0 0" >> /etc/fstab

* Cette application est **multi-instance** (vous pouvez avoir plus d'une instance PeerTube en cours d'exécution sur un serveur YunoHost)
* **Si vous êtes hébergé sur une machine virtuelle OVH ou rencontrez `gyp ERR! configure error`, veuillez passer à [ovh_fix](https://github.com/YunoHost-Apps/peertube_ynh/tree/ovh_fix)**
* L'authentification HTTP n'est pas supportée
* Ne modifiez pas le fichier `/var/www/<app>/conf/production.yaml`, car il sera remplacé à la prochaine mise à jour. À la place, veuillez modifier la configuration via l'interface web ou créer et remplir le fichier `/var/www/<app>/conf/local.yaml`, assignez-lui les mêmes propriétaire, groupe et droits que pour `conf/production.yaml` et y remplir vos options spécifiques.
    * Note: si la même option contient différentes valeurs dans les fichiers `conf/production.yaml` et `conf/local.yaml`, seule la valeur dans `conf/local.yaml` sera prise en compte.

#### PLUGINS

* L'authentification LDAP est prise en charge, les instructions de configuration sont envoyées à l'adresse email indiquée au moment de l'installation
* Le plugin PeerTube livechat est installé ainsi que Prosody. pour l'activer, sélectionner «Prosody server controlled by Peertube» dans le paramétre chat mode du plugin dans la page d'administration de PeerTube.
* Pendant l'installation, à cause de Prosody, Metronome est désactivé.
