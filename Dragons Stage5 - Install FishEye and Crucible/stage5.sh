vim /etc/yum.repos.d/mercurial.selenic.com.repo
yum install mercurial -y
##Facilitar.. Criar repositório scl..
vim /etc/yum.repos.d/scl.repo
#######repositorio############

#[scl_python27]
#name=Python 2.7 Dynamic Software Collection
#baseurl=http://people.redhat.com/bkabrda/python27-rhel-6/
#failovermethod=priority
#enabled=1
#gpgcheck=

##############################
yum -y install python27 
scl enable python27 bash 
python -V 
wget https://www.atlassian.com/software/fisheye/downloads/binary/fisheye-4.4.1.zip
export FISHEYE_INST=/opt/fecru-4.4.1/

##atualizar java... :(