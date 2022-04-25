eksctl create iamidentitymapping \
--region ap-northeast-2 \
--cluster eks-base-cluster \
--username rbac \
--group tbac-test-group \
--arn <Your IAM ARN>