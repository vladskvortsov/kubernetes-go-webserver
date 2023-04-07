#!/bin/bash

curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
sudo dpkg -i minikube_latest_amd64.deb

minikube start

alias kubectl="minikube kubectl --"

kubectl create deployment kubernetes-go-webserver --image=vladskvortsov/kubernetes-go-webserver
kubectl port-forward deploy/kubernetes-go-webserver 8080:8080


kubectl get all
minikube ip
