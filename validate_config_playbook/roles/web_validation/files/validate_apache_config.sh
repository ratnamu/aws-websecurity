#!/usr/bin/bash

#### Verify if apache is up and running

if [[ `ps -ef | grep httpd` -le 1 ]]
then
	echo "HTTP is not working/ not UP"
fi
URL_WORKING=`curl -Is -k https://ec2-54-186-73-139.us-west-2.compute.amazonaws.com | head -1 | grep -c "200 OK"`

if [[ $URL_WORKING -eq 0 ]]
then
	echo "ALERT: URL is not working, Web Server appears to be down\n"
	echo "Contact jammula.usha@gmail.com"
fi
