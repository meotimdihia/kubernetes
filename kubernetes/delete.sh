kubectl stop rc -l "name in (nginx, php-fpm, mysql, redis)"
kubectl delete service -l "name in (nginx, php-fpm, mysql, redis)"