#! /bin/bash

kubectl apply -f ping-deploy.yaml
kubectl rollout status deployment ping-url

POD_NAME=$(kubectl get pods -o name | head -n 1)

kubectl port-forward $POD_NAME 5000:5000

# To remove the running pods
# kubectl delete -f ./ping-deploy.yaml