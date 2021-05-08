
mirror: 
	cat $(PWD)/list.txt | parallel --max-args=2 $(PWD)/docker-push-to-mirror.sh

