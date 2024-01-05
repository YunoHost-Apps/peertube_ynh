- __APP__ est désormais accessible sur [https://__DOMAIN____PATH__](https://__DOMAIN____PATH__)
- Le nom d'utilisateur administrateur est : root
- Le mot de passe administrateur est : __PASSWORD__

Pour rendre PeerTube Live disponible, vous devez également rendre le port TCP __PORT_RTMP__ disponible depuis internet (par exemple, ouvrir le port sur votre box FAI si ce n'est pas fait automatiquement).

Pour activer l'authentification LDAP, vous devez ouvrir [https://__DOMAIN____PATH__admin/plugins/show/peertube-plugin-auth-ldap](https://__DOMAIN____PATH__admin/plugins/show/peertube-plugin-auth-ldap) et compléter avec le informations suivantes :
-URL : `ldap://127.0.0.1`
- TLS non sécurisé : "vérifié"
- Base de recherche : `ou=users,dc=yunohost,dc=org`

Tous les utilisateurs de YunoHost seront autorisés à se connecter en tant qu'utilisateur PeerTube.