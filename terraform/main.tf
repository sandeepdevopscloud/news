provider "aws" {
region = "us-east-1"
access_key = "AKIAYTTNYJL2HW4OTU42"
secret_key = "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"
}

resource "aws_instance" "key" {
ami = "ami-00b8917ae86a424c9"
instance_type = "t2.micro"
key_name = "Kernal-keypair"
vpc_security_group_ids = [aws_security_group.demo-sg.id]
tags = {
Name = "terraform"
Environment = "dev"
}
}

