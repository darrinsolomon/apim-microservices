#docker ps -a | grep hello | grep Exited | sort -R | head -n 1 | awk '{print $1}' | xargs docker start
docker ps -a | grep hello | grep Exited | perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);' | head -n 1 | awk '{print $1}' | xargs docker start
