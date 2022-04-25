cat <<EOF > 71_autoscale_hpa.yaml
apiVersion: v1
kind: Namespace
metadata:
  name: eks-base
---
apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: api
  namespace: eks-base
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: api
  minReplicas: 2
  maxReplicas: 3
  targetCPUUtilizationPercentage: 50
EOF

kubectl apply -f 71_autoscale_hpa.yaml