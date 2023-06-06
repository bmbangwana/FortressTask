Welcome to THIS TEST FTP Server setup using docker image

This task accomplishes the following 

1. Build the docker image from the DockerFile and scripts included in the repo.
2. Deploy the kubernetes manifests in your repo for the docker image in (1) above and
accompanying services to our Kubernetes cluster.
3. Connects to a passive FTP session created from the Kubernetes deployment in (2)
above.

A plus would be to:
4. Log in to the passive FTP session as user “admin”, password “admin”.
 To accomplish step 4, the password "admin" can be set when running the container using this command 
 # docker run -e FTP_PASSWORD=admin -p 21:21 -p 21100-21110:21100-21110 ftp-server:latest