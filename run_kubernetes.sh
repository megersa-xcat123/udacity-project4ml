#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="megersaj/myapi:v1.0"
# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deploy myapi --image=megersaj/myapi:v1.0 
kubectl run myapi \
    --image=megersaj/myapi:v1.0 \
    --port=80 
    # --port=80  app=myapi

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward myapi 8000:80


# # Assuming the Kubernetes cluster is ready
# kubectl get nodes
# # Deploy an App from the Dockerhub to the Kubernetes Cluster
# kubectl create deploy python-helloworld --image=sudkul/python-helloworld:v1.0.0
# # See the status
# kubectl get deploy,rs,svc,pods
# # Port forward 
# kubectl port-forward pod/python-helloworld-84857d9565-2598m --address 0.0.0.0 5000:5000