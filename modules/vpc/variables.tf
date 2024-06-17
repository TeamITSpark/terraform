variable "module_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "192.168.0.0/16"
}

variable "module_subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
  default     = ["192.168.1.0/24", "192.168.1.0/24"]
}

variable "module_availability_zones" {
  description = "List of availability zones for the subnets"
  type        = list(string)
  default     = ["eu-west-2a", "eu-west-2b"]
}

variable "module_vpc_name" {
  description = "The name of the VPC"
  type        = string
  default     = "module_vpc"
}
