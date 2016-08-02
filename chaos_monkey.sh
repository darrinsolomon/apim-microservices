echo
echo ----------------------------------
echo
docker ps | grep hello | perl -MList::Util=shuffle -e 'print shuffle(<STDIN>);' | head -n 1 | awk '{print $1}' | xargs docker stop && echo \'hello\' container has been killed
#docker ps | grep hello | sort -R | head -n 1 | awk '{print $1}' | xargs docker stop
echo
echo ----------------------------------
