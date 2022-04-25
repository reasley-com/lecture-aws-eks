cat <<EOF > 83_nginx_edit_pod.yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod-edit
  labels:
    app: nginx-app
spec:
  containers:
  - name: nginx-container
    image: nginx
    securityContext:
      privileged: true
EOF

kubectl apply -f 83_nginx_edit_pod.yaml