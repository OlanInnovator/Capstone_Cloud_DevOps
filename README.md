# Capstone_Cloud_DevOps
[![CircleCI](https://circleci.com/gh/OlanInnovator/Capstone_Cloud_DevOps.svg?style=svg)](https://circleci.com/gh/OlanInnovator/Capstone_Cloud_DevOps)


## Project Overview

The is an applications bundled with automated capabilities to the manage a containerized Python flask applications that would allow some level of scalling through the use of Docker Image, that's deployed and manage with EKS Cluster. It's a prototype that shows end-to-end of  CICD pipeline; where the code repository is hooked onto continous integration pipeline (CircleCi) that perform some linting checks on the application and steps on the DOcker Image creation.  The intention is to have all pernission and access build into the the Continous Integration so whenever changes got deploy onto the code repository, the CI would kick-in to build and deploy latest changes onto Docker Image Repository, then integrate with the aws environmet so that the intraction with the EKS-Cluster can also happen automatically. 

In this project you will see files:
* Makefile which contained some predetermine commands to : Install, Lint, Setup.
* Dockerfile to containerize the python flask application.
* run_docker.sh and upload_docker.sh to automate the building of docker image, tags and upload onto docker hub/local.
* run_kubernetes.sh to run the Docker Hub container with kubernetes and forward the container port to a host.
* .circleci config that states steps to build and package the application together for quick verification and builds checks


Repo: https://github.com/OlanInnovator/Capstone_Cloud_DevOps.git

Docker: https://hub.docker.com/repository/docker/olaninnovator/capstone-cloud-app/general

Circle Ci: https://app.circleci.com/pipelines/github/OlanInnovator/Capstone_Cloud_DevOps

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3.7 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3.7 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/Script/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
