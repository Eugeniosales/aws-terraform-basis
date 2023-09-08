resource "aws_eks_node_group" "first_eks_node_group" {
  cluster_name    = aws_eks_cluster.practice_eks_cluster.name
  node_group_name = "first-eks-node-group"
  node_role_arn   = aws_iam_role.node_group_practice_iam_role.arn
  subnet_ids      = [var.SUB_NET_01, var.SUB_NET_02]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  instance_types  = ["t2.micro"]

  update_config {
    max_unavailable = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.practice-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.practice-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.practice-AmazonEC2ContainerRegistryReadOnly,
  ]
}
