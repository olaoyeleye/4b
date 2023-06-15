

data "aws_subnet" "subnet-1" {
  id = var.subnet_id-1
}

data "aws_subnet" "subnet-2" {
  id = var.subnet_id-2
}

data "aws_route_table" "rt-1" {
  subnet_id = var.subnet_id-1
}
data "aws_route_table" "rt-2" {
  subnet_id = var.subnet_id-2
}







resource "aws_route_table_association" "a-1" {
  count          = data.aws_route_table.rt-1.id == "" ? 1 : 0
  subnet_id      = data.aws_subnet.subnet-1.id # aws_subnet.subnet-1.id
  route_table_id = aws_route_table.rt.id
}

resource "aws_route_table_association" "a-2" {
  count          = data.aws_route_table.rt-2.id == "" ? 1 : 0
  subnet_id      = data.aws_subnet.subnet-2.id #  aws_subnet.subnet-2.id
  route_table_id = aws_route_table.rt.id
}