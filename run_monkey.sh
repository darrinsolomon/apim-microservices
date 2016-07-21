export SSG_LICENSE="$(cat /home/solda01/git.hub/darrinsolomon/pre-sales/docker/CATechnologies_8011955308725460639_SSG_Gateway_9.xml | gzip | base64)"
mvn clean install
cd /home/solda01/git.hub/darrinsolomon/pre-sales/docker
#docker start 48664509d6fa c4f1cb265611
docker run \
        -d \
        -e MYSQL_ROOT_PASSWORD=Password1 \
        -e MYSQL_DATABASE=lacadmindb \
        -e MYSQL_USER=lacadminuser \
        -e MYSQL_PASSWORD=Password2 \
        --volume=/home/solda01/git.hub/darrinsolomon/pre-sales/lacadmin:/var/lib/mysql \
        -p 3306:3306 \
        mysql:5.6.29
		
docker run \
        -d \
        -e RDS_HOSTNAME=172.16.160.129 \
        -e RDS_PORT=3306 \
        -e RDS_USERNAME=lacadminuser \
        -e RDS_PASSWORD=Password2 \
        -e RDS_DB_NAME=lacadmindb \
        -e LAC_ADMIN_MAX_CONN=100 \
        -p 9090:8080 \
        caliveapicreator/release
docker-compose up