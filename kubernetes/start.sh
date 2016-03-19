kubectl create -f mysql-controller.yaml
kubectl create -f mysql-service.yaml
kubectl create -f redis-controller.yaml
kubectl create -f redis-service.yaml
kubectl create -f php-fpm-controller.yaml
kubectl create -f php-fpm-service.yaml
kubectl create -f nginx-controller.yaml
kubectl create -f nginx-service.yaml