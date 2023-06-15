resource "aws_subnet" "subnet-1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = var.az-1

  tags = {
    Name = "subnet-1"
  }
}


resource "aws_subnet" "subnet-2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "192.168.2.0/24"
  availability_zone = var.az-2

  tags = {
    Name = "subnet-2"
  }
}