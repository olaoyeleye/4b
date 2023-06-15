data "aws_vpc" "my-vpc" {
  id = var.vpc_id
}
data "aws_internet_gateway" "my-igw" {
  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}


resource "aws_route_table" "rt" {
  #count          = data.aws_route_table.rt-1.id == "" ? 1 : 0
  vpc_id = data.aws_vpc.my-vpc.id #aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = data.aws_internet_gateway.my-igw.id #aws_internet_gateway.igw.id
  }


  tags = {
    Name = "rt"
  }
}