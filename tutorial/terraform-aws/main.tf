terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "app_server" {
  instance_type = "t2.micro"
  ami           = "ami-08d70e59c07c61a3a"
  tags = {
    Name = var.instance_name
  }
}
