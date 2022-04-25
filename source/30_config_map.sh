cat <<EOF > 11_config_map.yaml
apiVersion: v1
kind: ConfigMap
metadata:
  name: api-config
data:
  aws-region: ap-northeast-2
  aws-name: sample
EOF

kubectl apply -f 11_config_map.yaml