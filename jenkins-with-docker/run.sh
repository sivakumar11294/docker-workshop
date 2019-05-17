mkdir -p ~/jenkins_home
cd

docker run --name jenkins-docker \
	-d \
	--rm \
	-p 8000:8080 \
	-v jenkins_home2.1:/var/jenkins_home2.1 \
	-v /var/run/docker.sock:/var/run/docker.sock \
	jenkins-with-docker

