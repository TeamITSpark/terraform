terraform {
  backend "s3" {
    bucket = "teamspark-terraform-1237888787384"
    key    = "statefile"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = var.region
}

module "vpc" {
  source              = "./modules/vpc"
  module_cidr_block          = var.cidr_block
  module_subnet_cidr_blocks  = var.subnet_cidr_blocks
  module_availability_zones  = var.availability_zones
  module_vpc_name            = var.vpc_name
}

resource "aws_s3_bucket" "example_s3_bucket" {
  bucket = "team-it-spark-12345677-${var.env_name}"

  tags = {
    Name  = "team-it-spark-12345677-${var.env_name}"
    Environment = var.env_name
  }
}



output "vpc_id" {
  value = module.vpc.vpc_id
}

output "subnet_ids" {
  value = module.vpc.subnet_ids
}

