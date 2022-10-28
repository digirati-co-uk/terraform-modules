variable "vpc" {
  description = "VPC to join"
}

variable "ip_whitelist" {
  description = "List of CIDR blocks to allow SSH access for"
  type        = list(string)
}

variable "project" {
  description = "Project name for tag values"
}

variable "prefix" {
  description = "Prefix for AWS resources"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami" {
  description = "AMI to use (should be ECS optimised x64)"
}

variable "key_name" {
  description = "EC2 key pair name to use"
}

variable "subnets" {
  description = "VPC subnets to cover with autoscaling group"
  type        = list(string)
}

variable "dns_zone" {
  description = "DNS Hosted Zone ID to create bastion record within"
}

variable "domain" {
  description = "Apex domain to use (e.g. dlcs.io)"
}

variable "hostname" {
  description = "Hostname to register bastion record with. Prepended to domain"
  default     = "bastion"
}

variable "min_size" {
  description = "Minimum number of instances for the cluster"
  default     = 1
}

variable "max_size" {
  description = "Maximum number of instances for the cluster"
  default     = 1
}