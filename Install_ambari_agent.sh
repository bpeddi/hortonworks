wget http://public-repo-1.hortonworks.com/ambari/centos6/2.x/updates/2.6.0.0/ambari.repo
yum cp ambari.repo /etc/yum.repos.d/
yum clean all
yum makecache
yum -y install ambari-agent.x86_64 ambari-server.x86_64
yum -y install httpd
yum -y install mysql-server mysql-connector-java
chkconfig httpd on
service  httpd start
