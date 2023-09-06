resource "aws_eks_fargate_profile" "practice_aws_eks_fargate_profile" {
  cluster_name           = aws_eks_cluster.practice_eks_cluster.name
  fargate_profile_name   = "practice-fargate-profile-name"
  pod_execution_role_arn = aws_iam_role.practice_eks_fargate_profile_iam_role.arn
  subnet_ids             = [var.SUB_NET_01, var.SUB_NET_02]

  selector {
    namespace = "practice-eks-fargate"
  }
}
