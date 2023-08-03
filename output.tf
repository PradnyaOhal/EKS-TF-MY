output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks_cluster.cluster_name
}

output "eks_cluster_endpoint" {
  description = "EKS cluster endpoint"
  value       = module.eks_cluster.eks_cluster_endpoint
}

output "eks_cluster_security_group_ids" {
  description = "Security Group IDs associated with the EKS cluster"
  value       = module.eks_cluster.eks_cluster_security_group_ids
}

output "eks_worker_node_role" {
  description = "IAM Role for EKS worker nodes"
  value       = aws_iam_role.eks_worker_nodes.name
}

output "eks_node_group_ids" {
  description = "IDs of the EKS node groups"
  value       = aws_eks_node_group.this[*].id
}

output "eks_node_group_arns" {
  description = "ARNs of the EKS node groups"
  value       = aws_eks_node_group.this[*].arn
}

output "eks_node_group_desired_sizes" {
  description = "Desired sizes of the EKS node groups"
  value       = aws_eks_node_group.this[*].scaling_config[0].desired_size
}

# Add more outputs as needed
