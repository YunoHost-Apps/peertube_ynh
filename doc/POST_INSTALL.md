__APP__ was successfully installed :)

Please open your __APP__ domain: https://__DOMAIN____PATH__

The admin username is: root
The admin password is: __ADMIN_PASS__

To make PeerTube Live available, you also need to make the TCP port __PORT_RTMP__ available from internet (For example, opening the port on your ISP box if it's not automatically done).

To enable LDAP authentication open https://__DOMAIN____PATH__admin/plugins/show/peertube-plugin-auth-ldap
Complete with the following informations :
- URL: ldap://127.0.0.1
- Insecure TLS : checked
- Search base : ou=users,dc=yunohost,dc=org
All YunoHost users will be allowed to login as peertube user.