yum install epel-release -y
yum update -y
yum install vim net-tools policycorepython-utils tcpdump wget curl -y 
cd /opt
#https://tecadmin.net/steps-to-install-java-on-centos-5-6-or-rhel-5-6/
wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/7u79-b15/jdk-7u79-linux-x64.tar.gz"
tar -xzf jdk-7u79-linux-x64.tar.gz
cd jdk1.7.0_79/
alternatives --install /usr/bin/java java /opt/jdk1.7.0_79/bin/java 2
alternatives --config java
alternatives --install /usr/bin/jar jar /opt/jdk1.7.0_79/bin/jar 2
alternatives --install /usr/bin/javac javac /opt/jdk1.7.0_79/bin/javac 2
alternatives --set jar /opt/jdk1.7.0_79/bin/jar
alternatives --set javac /opt/jdk1.7.0_79/bin/javac
export JAVA_HOME=/opt/jdk1.7.0_79
export JRE_HOME=/opt/jdk1.7.0_79/jre
export PATH=$PATH:/opt/jdk1.7.0_79/bin:/opt/jdk1.7.0_79/jre/bin
#instalando postgres
####Versão para o centOS 6..
yum install https://yum.postgresql.org/8.4/redhat/rhel-6-x86_64/pgdg-centos-8.4-3.noarch.rpm
yum install postgresql84 postgresql84-server postgresql84-contrib
/etc/init.d/postgresql-8.4 initdb #iniciar banco
/etc/init.d/postgresql-8.4 start
vim /var/lib/pgsql/8.4/data/postgresql.conf # ajustar para banco escutar na porta 5432 listen="*"
vim /var/lib/pgsql/8.4/data/pg_hba.conf #ajustar autenticação
#ajustada regra de firewall e ajustado arquivo pg_hba, regras mais relaxadas, não ideias para produção
#criado usuário jirauser e o banco jiradb
##Instalação do jira
cd /opt
wget https://www.atlassian.com/software/jira/downloads/binary/atlassian-jira-6.4.14-x64.bin
chmod a+x atlassian-jira-6.4.14-x64.bin
./atlassian-jira-6.4.14-x64.bin