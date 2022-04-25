kubectl create configmap cluster-info --from-literal=cluster.name=eks-base-cluster --from-literal=logs.region=ap-northeast-2 -n amazon-cloudwatch
kubectl apply -f https://raw.githubusercontent.com/aws-samples/amazon-cloudwatch-container-insights/master/k8s-deployment-manifest-templates/deployment-mode/daemonset/container-insights-monitoring/fluentd/fluentd.yaml