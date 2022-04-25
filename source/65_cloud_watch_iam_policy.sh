eksctl create iamserviceaccount \
--name cloudwatch-agent \
--cluster eks-base-cluster \
--region ap-northeast-2 \
--attach-policy-arn arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy \
--namespace amazon-cloudwatch \
--override-existing-serviceaccounts \
--approve