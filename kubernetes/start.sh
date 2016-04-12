gcloud compute disks create disk20 --size=20GB --zone=asia-east1-b


kubectl create -f volume-readonlymany.yaml
kubectl create -f volume-claim-mysql.yaml
kubectl create -f volume-claim-php-fpm.yaml

kubectl create -f mysql-controller.yaml
kubectl create -f mysql-service.yaml
kubectl create -f redis-controller.yaml
kubectl create -f redis-service.yaml
kubectl create -f php-fpm-controller.yaml
kubectl create -f php-fpm-service.yaml
kubectl create -f nginx-controller.yaml
kubectl create -f nginx-service.yaml

kubectl create -f disks-pod.yaml