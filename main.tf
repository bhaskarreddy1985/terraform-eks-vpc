provider "aws" {
  region  = var.aws_region
  profile = "DevOpsPermissionSet"
}

module "vpc" {
  source     = "./modules/vpc"
  vpc_name   = var.vpc_name
  cidr_block = var.cidr_range
  environment = var.environment
}

module "eks" {
  source         = "./modules/eks"
  eks_cluster_name   = var.eks_cluster_name
  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.private_subnets
  instance_type  = var.node_instance_type
  desired_size   = var.desired_size
  min_size       = var.min_size
  max_size       = var.max_size
  environment    = var.environment
}

module "rds" {
  source              = "./modules/rds"
  rds_db_name         = var.rds_db_name
  rds_engine          = var.rds_engine
  vpc_id              = module.vpc.vpc_id
  subnet_ids          = module.vpc.private_subnets
  allowed_cidr_blocks = ["10.0.0.0/16"]
  environment =  var.environment
  rds_instance_type   = var.rds_instance_type
}
