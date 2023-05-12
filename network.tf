resource "aws_vpc" "ntier_vpc" {
  cidr_block = var.cidr_block
  tags = {
    "Name" = "my_vpc1"
  }
}
resource "aws_subnet" "subnets" {
    count = 6
    vpc_id = aws_vpc.ntier_vpc.id
  cidr_block = var.subnet_cidrs[count.index]
  tags = {
    "Name" = var.subnet_name_tags[count.index]
  }
}