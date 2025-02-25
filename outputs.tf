output "vpc_id" {
  value = module.vpc.vpc_id
}

output "eks_cluster_id" {
  description = "EKS Cluster ID"
  value       = module.eks.eks_cluster_id
}

output "rds_endpoint" {
  description = "RDS instance endpoint"
  value       = module.rds.db_endpoint
  
}