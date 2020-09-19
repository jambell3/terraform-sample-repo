# Internet VPC
resource "aws_vpc" "main" {
  cidr_block           = var.AWS_CIDR_BLOCK_VPC
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"
  tags = {
    Name = "vpc"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

# Subnets
resource "aws_subnet" "main-public-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PUBLIC_SUBNET_1
  map_public_ip_on_launch = "true"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_1

  tags = {
    Name = "public-subnet-1"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

resource "aws_subnet" "main-public-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PUBLIC_SUBNET_2
  map_public_ip_on_launch = "true"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_2

  tags = {
    Name = "public-subnet-2"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

resource "aws_subnet" "main-public-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PUBLIC_SUBNET_3
  map_public_ip_on_launch = "true"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_3

  tags = {
    Name = "public-subnet-3"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

resource "aws_subnet" "main-private-1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PRIVATE_SUBNET_1
  map_public_ip_on_launch = "false"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_1

  tags = {
    Name = "private-subnet-1"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

resource "aws_subnet" "main-private-2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PRIVATE_SUBNET_2
  map_public_ip_on_launch = "false"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_2

  tags = {
    Name = "private-subnet-2"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

resource "aws_subnet" "main-private-3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = var.AWS_CIDR_BLOCK_PRIVATE_SUBNET_3
  map_public_ip_on_launch = "false"
  availability_zone       = var.AWS_AVAILABILITY_ZONE_3

  tags = {
    Name = "private-subnet-3"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

# Internet GW
resource "aws_internet_gateway" "main-gw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "internet-gateway"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

# route tables
resource "aws_route_table" "main-public" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }

  tags = {
    Name = "public-route-table-1"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}

# route associations public
resource "aws_route_table_association" "main-public-1-a" {
  subnet_id      = aws_subnet.main-public-1.id
  route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "main-public-2-a" {
  subnet_id      = aws_subnet.main-public-2.id
  route_table_id = aws_route_table.main-public.id
}

resource "aws_route_table_association" "main-public-3-a" {
  subnet_id      = aws_subnet.main-public-3.id
  route_table_id = aws_route_table.main-public.id
}
