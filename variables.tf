variable "aws_region" {
  description = "Region where Cloud Formation is created"
  default     = "eu-central-1"
}

variable "aws_zones" {
  type = "list"
  description = "AWS AZs (Availability zones) where subnets should be created"
}

variable "cluster_name" {
  description = "Name of the AWS Kubernetes cluster - will be used to name all created resources"
}

variable "tags" {
  description = "Tags used for the AWS resources created by this template"
  type        = map(string)
}

variable "tags2" {
  description = "Tags in format used for the AWS Autoscaling Group"
  type        = list(object({key = string, value = string, propagate_at_launch = bool}))
}

variable "addons" {
  description = "list of YAML files with Kubernetes addons which should be installed"
  type        = list(string)
}

variable "master_instance_type" {
  description = "Type of instance for master"
  default     = "t2.medium"
}

variable "worker_instance_type" {
  description = "Type of instance for workers"
  default     = "t2.medium"
}

variable "min_worker_count" {
  description = "Minimal number of worker nodes"
}

variable "max_worker_count" {
  description = "Maximal number of worker nodes"
}

variable "public_worker" {
  description = "Weither or not the workers should have a public IP"
  default     = true
}

variable "ssh_public_key" {
  description = "Path to the pulic part of SSH key which should be used for the instance"
  default     = "~/.ssh/id_rsa.pub"
}

variable "hosted_zone" {
  description = "Hosted zone to be used for the alias"
}

variable "hosted_zone_private" {
  description = "Is the hosted zone public or private"
  default     = false
}

variable "ssh_access_cidr" {
  description = "List of CIDRs from which SSH access is allowed"
  type        = list(string)
  default = [
    "0.0.0.0/0",
  ]
}

variable "api_access_cidr" {
  description = "List of CIDRs from which API access is allowed"
  type        = list(string)
  default = [
    "0.0.0.0/0",
  ]
}

