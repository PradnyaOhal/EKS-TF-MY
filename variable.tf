variable "cluster_name" {
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  description = "ID of the VPC where the EKS cluster will be deployed"
}

variable "node_groups" {
  description = "Map of node groups for the EKS cluster"
  type        = map(object({
    desired_size          = number
    min_size              = number
    max_size              = number
    launch_template_id    = string
    launch_template_version = number
    ssh_key_name          = string
  }))
}
