variable "role_arn" {
  type        = string
  description = "AWS assume role ARN"
}

variable "aws_region" {
  type        = string
  description = "AWS region to create instance"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "ubuntu_ami" {
  type    = string
  default = "ami-0be48b687295f8bd6"
}
