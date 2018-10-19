# JOSE JOSE JOSE JOSE JOSE 
#-----------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06 curs 2017-2018"
LABEL description="LDAPSERVER -edt.org cn DATADB"
RUN dnf -y install procps openldap-clients openldap-servers
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
EXPOSE 389
CMD ["/opt/docker/startup.sh"]


