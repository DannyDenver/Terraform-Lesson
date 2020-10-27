provider "aws" {
    region="us-east-1"
}

resource "aws_vpc" "challenge1vpc" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    tags = {
        Name = "TerraformVPC"
    }
}

resource "aws_subnet" "vpc-subnet" {
    vpc_id = "${aws_vpc.challenge1vpc.id}"
    cidr_block = "10.0.1.0/24"
}
