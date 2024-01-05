- __APP__ can now be accessed at [https://__DOMAIN____PATH__](https://__DOMAIN____PATH__)
- The admin username is: root
- The admin password is: __PASSWORD__

To make PeerTube Live available, you also need to make the TCP port __PORT_RTMP__ available from internet (For example, opening the port on your ISP box if it's not automatically done).

To enable LDAP authentication, you should open [https://__DOMAIN____PATH__admin/plugins/show/peertube-plugin-auth-ldap](https://__DOMAIN____PATH__admin/plugins/show/peertube-plugin-auth-ldap) and complete with the following informations:
- URL: `ldap://127.0.0.1`
- Insecure TLS: `checked`
- Search base: `ou=users,dc=yunohost,dc=org`

All YunoHost users will be allowed to login as PeerTube user.
