resource "aws_vpc" "my-vpc" {
  cidr_block = var.module_cidr_block

  tags = {
    Name = var.module_vpc_name
  }
}

resource "aws_subnet" "private" {
  depends_on = [aws_vpc.my-vpc]
  count = length(var.module_subnet_cidr_blocks)

  vpc_id            = aws_vpc.my-vpc.id
  cidr_block        = var.module_subnet_cidr_blocks[count.index]
  availability_zone = element(var.module_availability_zones, count.index)

  tags = {
    Name = "${var.module_vpc_name}-private-${count.index}"
  }
}