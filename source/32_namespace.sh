cat <<EOF > 32_namespace.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: sample-namespace
EOF

kubectl apply -f 32_namespace.yaml