sudo unzip -o /root/apim-microservices-master.zip -d /root/projects
sudo unzip -o /root/projects/apim-microservices-master/GMU/GatewayMigrationUtility-1.3.00.zip -d /root/projects/apim-microservices-master/GMU/
x=$(ifconfig eth0 | perl -nle 's/dr:(\S+)/print $1/ei')
grep -rl '172.16.160.129' /root/projects --exclude-dir=lacadmin | xargs sed -i s/172.16.160.129/$x/g 

