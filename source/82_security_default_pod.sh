cat <<EOF > 82_nginx_default_pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod-default
  labels:
    app: nginx-app
spec:
  containers:
  - name: nginx-container
    image: nginx
EOF

kubectl apply -f 82_nginx_default_pod.yaml