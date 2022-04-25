eksctl create nodegroup \
--cluster eks-base-cluster \
--version 1.19 \
--name eks-base-nodegroup-2 \
--node-type t2.small \
--nodes 2 \
--nodes-min 2 \
--nodes-max 4 \
--node-ami auto