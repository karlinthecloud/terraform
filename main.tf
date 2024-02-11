resource "aws_instance" "web" {
  ami                     = var.os
  instance_type           = var.size

   tags = {
    Name = var.name
   }
}

resource "aws_s3_bucket" "name" {
  bucket = var.bucketname
}
resource "aws_iam_user" "myuser" {
  name = "${var.username}-user"
}

output "ipaddress" {
  value = aws_instance.web.public_ip
}

output "dns_dns" {
  value = aws_instance.web.public_dns
}