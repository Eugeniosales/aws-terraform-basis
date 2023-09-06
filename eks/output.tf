output "endpoint" {
  value = aws_eks_cluster.practice_eks_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.practice_eks_cluster.certificate_authority[0].data
}

output "region" {
  value = "us-east-2"
}

output "cluster_name" {
  value = aws_eks_cluster.practice_eks_cluster.name
}
