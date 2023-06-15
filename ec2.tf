
#data.aws_vpc.selected.id
#cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)



resource "aws_instance" "EC2" {
  ami           = var.ami-id
  instance_type = var.instance-type
  subnet_id     = data.aws_subnet.subnet-1.id # aws_subnet.subnet-1.id

  tags = var.default_tags
}


resource "aws_instance" "EC2-2" {
  ami           = var.ami-id
  instance_type = var.instance-type
  #subnet_id     = var.sub
  subnet_id = data.aws_subnet.subnet-2.id # aws_subnet.subnet-2.id

  tags = var.default_tags
}