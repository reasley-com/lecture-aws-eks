kubectl create deploy nginx --image=nginx --replicas=1
kubectl expose deploy nginx --type=LoadBalancer --port=80 --target-port=80