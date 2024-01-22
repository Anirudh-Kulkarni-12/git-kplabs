terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.32.1"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "ec2" {
  ami = "ami-0cd3c7f72edd5b06d"
  instance_type = "t3.micro"
}