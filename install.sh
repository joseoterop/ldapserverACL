#!/bin/bash
#JOSE JOSE JOSE JOSE JOSE
#--------------------------------------------------------
#1. Borramos el contenido de las carpetas de configuracion del servicio LDAP

rm -rf /etc/openldap/slapd.d/* /var/lib/ldap/*

#2. Copiamos el fichero DB_CONFIG en /var/lib/ldap

cp /opt/docker/DB_CONFIG /var/lib/ldap

#3. Creamos los ficheros de la base de datos

slaptest -f /opt/docker/slapd-edt.org.conf -F /etc/openldap/slapd.d
slaptest -f /opt/docker/slapd-edt.org.conf -F /etc/openldap/slapd.d -u

#4. Hacemos un populate de la BBDD

slapadd -F /etc/openldap/slapd.d -l /opt/docker/organitzacio_edt.org.ldif
slapadd -F /etc/openldap/slapd.d -l /opt/docker/usuaris_edt.org.ldif

#5. Cambiamos los permisos

chown -R ldap.ldap /etc/openldap/slapd.d /var/lib/ldap/




