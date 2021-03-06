#!/bin/bash

echo "username?"
read name
echo "password?"
read pass
echo "how much?"
read total
echo "OU ?"
read OU

sed -i -e s/Users/$OU/1 /etc/ldapscripts/ldapscripts.conf

for (( i=1; i<=$total; i++ ))
do
ldapadduser $name$i 1000
ldapsetpasswd $name$i $pass
done

sed -i -e s/$OU/Users/1 /etc/ldapscripts/ldapscripts.conf
