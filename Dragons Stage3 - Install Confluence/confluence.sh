cd /opt
wget https://www.atlassian.com/software/confluence/downloads/binary/atlassian-confluence-6.2.0-x64.bin
chmod a+x atlassian-confluence-6.2.0-x64.bin
#usar a custom install e alterar portas
./atlassian-confluence-6.2.0-x64.bin
cd /opt/atlassian/confluence/bin
./stop-confluence.sh
vim /opt/atlassian/confluence/conf/server.xml
