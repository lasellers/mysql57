FROM mysql/mysql-server
#RUN yum update
#RUN yum -y upgrade
#RUN yum install -y nano
#RUN yum install -y wget
#RUN yum install -y curl
WORKDIR /var/lib/mysql
EXPOSE 3306
RUN "/bin/bash"
#ENTRYPOINT /usr/sbin/httpd -D FOREGROUND

# See readme.md
