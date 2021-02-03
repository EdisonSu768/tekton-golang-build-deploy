#!/bin/sh

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/sonarqube-scanner/0.1/sonarqube-scanner.yaml

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/golang-build/0.1/golang-build.yaml

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/docker-build/0.1/docker-build.yaml

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/git-clone/0.2/git-clone.yaml

kubectl apply -f https://raw.githubusercontent.com/tektoncd/catalog/master/task/kubectl-deploy-pod/0.1/kubectl-deploy-pod.yaml

# kubectl create configmap sonar-properties --from-file="sonar-project.properties"
