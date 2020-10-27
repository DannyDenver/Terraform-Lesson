provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
    subnet_id = "subnet-0350b58c7c9748aa2"
}

