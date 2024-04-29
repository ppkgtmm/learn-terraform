terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = var.aws_region
  assume_role {
    role_arn = var.role_arn
  }
}

resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami           = var.ubuntu_ami
  tags = {
    Name = "ec2-instance-1"
  }
}
