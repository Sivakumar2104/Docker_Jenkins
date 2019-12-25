# Docker_Jenkins
Docker file for Jenkins

Commands : 

``` sudo docker image build -t jenkins_image 
sudo docker container run -d -p 8080:8080 --mount type=volume,target=/jenkins jenkins_image
(or) 
``` sudo docker container run -d -p 8080:8080 --mount type=bind,src=/jenkins,dst=/var/lib/docker/volumes/1ee9690ba9d2f9899493381c59c2589d433d592433ec2809501bd80ff430f576/_data jenkins_image. 
