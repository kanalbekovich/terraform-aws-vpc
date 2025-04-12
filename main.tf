resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
    
tags = {
    Name = "${var.environment}-vpc"
  }
}

resource "aws_subnet" "main1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet1_cidr

  tags = {
    Name = "${var.environment}-subnet1"
  }
}

resource "aws_subnet" "main2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnet2_cidr

  tags = {
    Name = "${var.environment}-subnet2"
  }
}

variable vpc_cidr {}
variable subnet1_cidr {}
variable subnet2_cidr {}
variable environment {}