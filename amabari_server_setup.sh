#Setup SQL SERVER Database 

CREATE USER 'ambari'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'%';
CREATE USER 'ambari'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'localhost';
CREATE USER 'ambari'@'ip-172-31-85-224.ec2.internal' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'ambari'@'ip-172-31-85-224.ec2.internal';
FLUSH PRIVILEGES;
mysql -u ambari -p
CREATE DATABASE ambari;
USE ambari;
SOURCE /var/lib/ambari-server/resources/Ambari-DDL-MySQL-CREATE.sql;
ambari-server setup
