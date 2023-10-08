
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.20.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_instance" "ec2" {
  ami           = var.image_id
  instance_type = var.ec2_type
  vpc_security_group_ids = var.http_sg_id
  key_name = var.key_name

  tags = {
    Name = "my-terraform-instance-1"
  }
}
