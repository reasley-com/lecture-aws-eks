cat <<EOF > 40_service.yaml
apiVersion: v1
kind: Service
metadata:
  name: api-service
spec:
  type: LoadBalancer
  selector:
    app: api
  ports:
  - protocol: TCP
    port: 8080
    targetPort: 8080
EOF

kubectl apply -f 40_service.yaml