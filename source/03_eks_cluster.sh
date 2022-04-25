eksctl create cluster \
--vpc-public-subnets subnet-0d53e3d4256412b15,subnet-044dcf0ee3811f6db,subnet-03ac2d640260c7ee4 \
--name eks-base-cluster \
--region ap-northeast-2 \
--version 1.19 \
--nodegroup-name eks-base-nodegroup \
--node-type t2.small \
--nodes 2 \
--nodes-min 2 \
--nodes-max 3
