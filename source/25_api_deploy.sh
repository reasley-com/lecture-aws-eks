cat <<EOF > 25_api_deploy.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: eks-work
EOF

kubectl apply -f 25_api_deploy.yaml