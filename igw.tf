# internet_gateway.tf

# Create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc1.id
}

# Attach internet gateway to VPC
resource "aws_vpc_attachment" "attachment" {
  vpc_id       = aws_vpc.vpc1.id
  internet_gateway_id = aws_internet_gateway.gw.id
}
