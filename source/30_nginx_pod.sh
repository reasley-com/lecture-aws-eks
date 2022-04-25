cat <<EOF > 30_nginx_pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  labels:
    app: nginx-app
spec:
  containers:
  - name: nginx-container
    image: nginx
    ports:
      - containerPort: 80
EOF

kubectl apply -f 30_nginx_pod.yaml