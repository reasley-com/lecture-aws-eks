eksctl create iamidentitymapping \
--region ap-northeast-2 \
--username codebuild \
--group system:masters \
--cluster eks-base-cluster \
--arn <Code Build IAM ARN>