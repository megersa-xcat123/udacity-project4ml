[![CircleCI](https://dl.circleci.com/status-badge/img/gh/megersa-xcat123/udacity-project4ml/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/megersa-xcat123/udacity-project4ml/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle.

Project-ml-microservice-keburnetes contains different script files  like  docker running scripts, kubernetes running scripts, and upload docker image scripts that tell us how to predict the housing prices in boston using the pre-trained model 

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

here is the steps we follow to setup the environment we usee to configure the Microservice containers.
step 1: Install and create virtual environment with python (python 3.8)
commands:
    python3 -m pip install --user virtualenv
    python3 -m virtualenv --python=<path-to-Python3.7> .devops
activate created virtual environment
commands:
    source .devops/bin/activate

step 2: prepare a makefile and required dependencies in the requirement.txt file
commands: 
    touch makefile
    touch requirement.txt
then type required dependencies and setup the environment

after list all the dependenscies in the requirement run the makefile using; make install; commands

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps
* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
