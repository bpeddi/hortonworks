CREATE DATABASE oozie;
USE oozie;
CREATE USER 'oozie'@'%' IDENTIFIED BY 'oozie';
GRANT ALL PRIVILEGES ON *.* TO 'oozie'@'%';
CREATE USER 'oozie'@'localhost' IDENTIFIED BY 'oozie';
GRANT ALL PRIVILEGES ON *.* TO 'oozie'@'localhost';
CREATE USER 'oozie'@'ip-172-31-85-224.ec2.internal' IDENTIFIED BY 'oozie';
GRANT ALL PRIVILEGES ON *.* TO 'oozie'@'ip-172-31-85-224.ec2.internal';
FLUSH PRIVILEGES;

ambari-server setup --jdbc-db=mysql --jdbc-driver=/usr/share/java/mysql-connector-java.jar
