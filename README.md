# gke-deployment-demo
samples about "deployment" concept on google container engine

### Creating
```sh
$ kubectl create -f nginx-deployment-1-initial.yaml --record

$ kubectl get deployments

kubectl get rs

kubectl get pods --show-labels

```

### Status
```sh
kubectl get deployment/nginx-deployment

kubectl get deployment/nginx-deployment -o yaml | grep [Gg]eneration
````

### Updating
```sh
kubectl apply -f nginx-deployment-2-update.yaml

kubectl get deployments

kubectl get rs

kubectl describe deployments
````

### Rollback
```sh
kubectl apply -f nginx-deployment-3-bad-update.yaml

kubectl get rs

kubectl get pods

kubectl describe deployments

kubectl rollout history deployment/nginx-deployment

kubectl rollout history deployment/nginx-deployment --revision=2

kubectl rollout undo deployment/nginx-deployment --to-revision=2

kubectl get deployments

kubectl describe deployments
````
