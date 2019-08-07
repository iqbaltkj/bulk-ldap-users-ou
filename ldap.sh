echo "nama user?"
read nama
echo "passwordnya?"
read pass
echo "berapa banyak?"
read banyak
echo "OU apa?"
read OU

sed -i -e s/iniapaan/$OU/g /etc/ldapscripts/ldapscripts.conf

for (( i=1; i<=$banyak; i++))
do
ldapadduser $nama$i 1000
ldapsetpasswd $nama$i skill39!
done

sed -i -e s/$OU/iniapaan/g /etc/ldapscripts/ldapscripts.conf
