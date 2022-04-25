cat <<EOF > 31_api_deploy.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: api
  labels:
    app: api
spec:
  replicas: 2
  selector:
    matchLabels:
      app: api
  template:
    metadata:
      labels:
        app: api
    spec:
      containers:
        - name: api
          image: <Your ECR Image>
          imagePullPolicy: Always
          ports:
          - containerPort: 8080
          resources:
            requests:
              cpu: 100m
              memory: 512Mi
            limits:
              cpu: 250m
              memory: 768Mi
EOF

kubectl apply -f 31_api_deploy.yaml