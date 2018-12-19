# Makefile_Docker_Build
Simple Makefile to BUILD,PUSH,DEPLOY containers.


# Makefile targets

 ```bash
 make build
 make push
 make deploy
 make cleanup
 make rmi
 make stop_single_container
 make rm_single_container
 make rmi_docker_hub
```
## Modify the pre-defined values according to your setup and push to your git account.

```bash                       
RELEASE_VERSION := 3.0-patch                  #Modify if you would like to have release version for your imahe.
DOCKER_HUB_REPO := ""                         #DockerHub RepoName.
USER_NAME = ""                                #Username for you dockerHUB registry [https://cloud.docker.com]
PASSWORD = ""                                 # Password for you dockerHUB registry
```
## How to use it.

Note: Make sure you have DockerHUb account  and you loged to repo using 'docker login' command.

You can use this in two ways,

   - With Jenkins : 
        -  Pipeline Job and use SCM check out plugin to checkout this repo and  run the JOB ,which will build,push and deoply docker container for you.
        
   - Manual :
        - Clone the repo and  run make command to build ,push and deploy container.
        
  ```bash   
  make build 
  ```
  
