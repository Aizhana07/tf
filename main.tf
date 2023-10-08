terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.20.0"
    }
  }
}

provider "aws" {
    region = "us-east-1"
  # Configuration options
}

resource "aws_vpc" "tf_vpc" {
  cidr_block       = var.vpc

}

resource "aws_subnet" "subnet-a" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = var.subnet-a

  tags = {
    Name = "tf-subnet-a"
  }
}


resource "aws_subnet" "subnet-b" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = var.subnet-b

  tags = {
    Name = "tf-subnet-b"
  }
}
