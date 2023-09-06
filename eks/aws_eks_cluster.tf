resource "aws_eks_cluster" "practice_eks_cluster" {
  name     = "practice-eks-cluster"
  role_arn = aws_iam_role.practice_iam_role.arn

  vpc_config {
    subnet_ids = [var.SUB_NET_01, var.SUB_NET_02]
  }

  depends_on = [
    aws_iam_role_policy_attachment.practice-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.practice-AmazonEKSVPCResourceController,
  ]
}
