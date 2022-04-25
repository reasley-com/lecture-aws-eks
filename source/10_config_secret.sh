cat <<EOF > 10_config_secret.yaml
apiVersion: v1
kind: Secret
type: Opaque
metadata:
  name: api-config
stringData:
  username: admin
  password: password
EOF

kubectl apply -f 10_config.yaml