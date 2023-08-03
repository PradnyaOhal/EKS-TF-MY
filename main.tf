provider "aws" {
  region = "us-west-2"  # Change this to your desired AWS region
}

module "eks_cluster" {
  source = "./modules/eks-cluster"
  
  cluster_name = "my-eks-cluster"
  vpc_id       = aws_vpc.main.id
}

module "eks_worker_nodes" {
  source = "./modules/eks-worker-nodes"
  
  cluster_name = module.eks_cluster.cluster_name
}
