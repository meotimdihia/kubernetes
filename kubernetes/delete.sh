kubectl stop rc -l "name in (nginx, php-fpm, mysql, redis)"
kubectl delete service -l "name in (nginx, php-fpm, mysql, redis)"

kubectl delete -f disks-pod.yaml

gcloud compute disks delete disk20 --zone=asia-east1-b