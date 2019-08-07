echo "OU Name?"
read ou

echo "dn: ou=$ou,dc=yourdomain,dc=net" > /etc/ldapscripts/ou.ldif
echo "objectClass: organizationalUnit" >> /etc/ldapscripts/ou.ldif

ldapadd -D "cn=admin,dc=yourdomain,dc=net" -f /etc/ldapscripts/ou.ldif -w yourpassword
