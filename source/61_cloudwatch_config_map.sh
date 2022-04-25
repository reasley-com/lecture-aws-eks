kubectl create configmap cluster-info \
--from-literal=cluster.name=eks-base-cluster \
--from-literal=logs.region=ap-northeast-2 -n amazon-cloudwatch
