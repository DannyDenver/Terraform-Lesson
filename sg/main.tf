provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "ec2" {
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
    subnet_id = "subnet-0350b58c7c9748aa2"
    security_groups = [aws_security_group.webtraffic.name]
}

resource "aws_security_group" "webtraffic" {
    name = "Allow Https"

    ingress { 
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress { 
        from_port = 443
        to_port = 443
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

# resource "aws_eip" "elasticeip" {
#     instance = aws_instance.ec2.id
# }

# output "EIP" {
#     value = aws_eip.elasticeip.public_ip
# }

