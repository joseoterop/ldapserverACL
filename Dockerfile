# JOSE JOSE JOSE JOSE JOSE 
#-----------------------------------------
FROM fedora:27
RUN dnf -y install procps openldap-clients openldap-servers
RUN mkdir /opt/docker/
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh
RUN chmod +x /opt/docker/startup.sh
CMD ["/opt/docker/startup.sh"]


