#!/bin/sh

# install tekton pipeline
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

# install dashboard
kubectl apply --filename https://storage.googleapis.com/tekton-releases/dashboard/latest/tekton-dashboard-release.yaml

# install ingress
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v0.41.0/deploy/static/provider/cloud/deploy.yaml

./ingress.sh

./tasks.sh
