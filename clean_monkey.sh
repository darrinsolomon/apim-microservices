docker ps -a | grep tcp | awk '{print $1}' | xargs docker rm -f
docker ps -a | grep Exited | awk '{print $1}' | xargs docker rm -f
docker ps -a | grep Created | awk '{print $1}' | xargs docker rm -f
docker images | grep darrinsolomon | grep -v gateway | awk '{print $3}' | xargs docker rmi
