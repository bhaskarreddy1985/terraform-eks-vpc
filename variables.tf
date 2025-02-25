variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "cidr_range" {
  description = "VPC CIDR block"
  type        = string
}


variable "environment" {
  description = "Deployment environment (e.g., dev, prod)"
  type        = string
}

# EKS Variables
variable "eks_cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "node_instance_type" {
  description = "Instance type for worker nodes"
  type        = string
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
}

# RDS Variables
variable "rds_db_name" {
  description = "Database name"
  type        = string
}

variable "rds_engine" {
  description = "Database engine (mysql or postgres)"
  type        = string
}

variable "rds_instance_type" {
  description = "Instance type for RDS"
  type        = string
}
