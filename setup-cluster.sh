gcloud config set compute/zone europe-west1-d

gcloud container clusters create nginx-cluster

gcloud config set container/cluster nginx-cluster

gcloud container clusters get-credentials nginx-cluster

kubectl cluster-info
