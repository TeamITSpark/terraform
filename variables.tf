variable "region" {
  description = "The AWS region"
  type        = string
  default     = "eu-west-2"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "dev-vpc"
}

variable "env_name" {
  description = "environment name"
  type        = string
}