kubectl delete rc -l "name in (nginx, php-fpm, mysql, redis)"
kubectl delete service -l "name in (nginx, php-fpm, mysql, redis)"

kubectl delete -f disks-pod.yaml

gcloud compute disks delete disk-php-fpm --zone=asia-east1-b
gcloud compute disks delete disk-mysql --zone=asia-east1-b
