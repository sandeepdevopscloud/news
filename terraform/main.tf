provider "aws" {
region = "us-east-1"
access_key = "AKIAYTTNYJL2MB34MUOC"
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

