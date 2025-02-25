# VPC Configuration
aws_region  = "me-central-1"
vpc_name    = "my-vpc"
cidr_range    = "10.0.0.0/16"
environment = "dev"

# EKS Configuration
eks_cluster_name = "my-eks-cluster"
node_instance_type = "t3.medium"
desired_size = 2
min_size     = 1
max_size     = 5

# RDS Configuration
rds_db_name     = "mydb"
rds_engine      = "mysql"  # or "postgres"
rds_instance_type = "db.t3.micro"
