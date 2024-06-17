output "vpc_id" {
  value = aws_vpc.my-vpc.id
}

output "subnet_ids" {
  value = aws_subnet.private[*].id
}

