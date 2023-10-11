terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }

    required_version = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
    access_key = "AKIAVPEIVVPXPUXMXZF5"
    secret_key = "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"
}

resource "aws_instance" "app_server" {
    ami = "ami-067d1e60475437da2"
    instance_type = "t2.micro"
    associate_public_ip_address = true

    tags = {
        Name = "WebServer"
    }
}
