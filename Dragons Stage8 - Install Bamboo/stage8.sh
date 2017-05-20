cd /opt
wget https://www.atlassian.com/software/bamboo/downloads/binary/atlassian-bamboo-6.0.0.tar.gz
tar -zxf atlassian-bamboo-6.0.0.tar.gz
echo bamboo.home=/opt/atlassian-bamboo-6.0.0 >>  /opt/atlassian-bamboo-6.0.0/atlassian-bamboo/WEB-INF/classes/bamboo-init.properties
wget http://mirror.nbtelecom.com.br/apache/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.zip
unzip apache-maven-3.5.0-bin.zip
mv apache-maven-3.5.0 maven
ln -s /opt/maven/bin/mvn /usr/bin/mvn
vim  /etc/profile.d/maven.sh

####
#!/bin/bash
MAVEN_HOME=/var/maven
PATH=$MAVEN_HOME/bin:$PATH
export PATH MAVEN_HOME
export CLASSPATH=.
chmod +x /etc/profile.d/maven.sh
source /etc/profile.d/maven.sh
########
source /etc/profile.d/maven.s