echo 7layer | sudo -S usermod --password $(echo 7layer | openssl passwd -1 -stdin) root
sudo sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo service ssh restart
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get -y update
echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install maven
sudo apt-get -y update
sudo apt-get -y install apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
sudo sh -c 'echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" >> /etc/apt/sources.list.d/docker.list'
sudo apt-get -y update
sudo apt-get -y purge lxc-docker
sudo apt-cache policy docker-engine
sudo apt-get -y install linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get -y update
sudo apt-get -y install docker-engine
sudo apt-get -y install python-pip
sudo pip install docker-compose
sudo pip install --upgrade pip
sudo mkdir /root/projects
sudo touch /root/license.xml
sudo git clone https://github.com/darrinsolomon/apim-microservices.git /root/projects/apim-microservices-master
sudo unzip -o /root/projects/apim-microservices-master/GMU/GatewayMigrationUtility-1.3.00.zip -d /root/projects/apim-microservices-master/GMU/
x=$(ifconfig eth0 | perl -nle 's/dr:(\S+)/print $1/ei')
sudo grep -rl '172.16.160.129' /root/projects --exclude-dir=lacadmin | sudo xargs sed -i s/172.16.160.129/$x/g
sudo bash -c "rm /root/projects/apim-microservices-master/lacadmin/ib_logfile*"
echo ----------------------------------------------------
echo                        
echo		You must put your ssg license into:
echo			/root/license.xml                            
echo
echo                    Please reboot               
echo            and login as root to continue           
echo                                                    
echo -----------------------------------------------------
