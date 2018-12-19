#Simple Makefile  to Build,Push ,Deploy and cleanup the Docker apps.
.PHONY: build push deploy  cleanup rmi stop_single_container rm_single_container rmi_docker_hub

DOCKER = docker
AAP_NAME := nginx
RELEASE_VERSION := 3.0-patch
RELEASE_TAG := test-$(RELEASE_VERSION)
DOCKER_HUB_REPO := ""
USER_NAME = ""
PASSWORD = ""

build: #Build docker image .Here i have Nginx Docker file for build image.
	${DOCKER} build -t ${DOCKER_HUB_REPO}/${AAP_NAME}:$(RELEASE_TAG) nginx/.

push: #Push the Build image to DockeHUB.Make sure to login dockerHUB using  'docker login' ,before you push.
	${DOCKER} push ${DOCKER_HUB_REPO}/${AAP_NAME}:$(RELEASE_TAG)

deploy:
	${DOCKER} run --name nginx -d -p 8084:80 ${DOCKER_HUB_REPO}/${AAP_NAME}:$(RELEASE_TAG)


cleanup:
	${DOCKER} stop $(shell ${DOCKER} ps -q)
	${DOCKER} rm $(shell ${DOCKER} ps -a -q)


rmi:
	${DOCKER} rmi -f $(shell docker images -a -q)

stop_single_container:
	${DOCKER}  stop ${AAP_NAME}

rm_single_container:
	${DOCKER}  rm ${AAP_NAME}

rmi_docker_hub:
	curl --raw -L -X DELETE -u "${USER_NAME}:${PASSWORD}" -H "Accept: application/json" -H "Content-Type: application/json"  --post3 https://hub.docker.com/v1/repositories/${DOCKER_HUB_REPO}/${AAP_NAME}/$(RELEASE_TAG)
