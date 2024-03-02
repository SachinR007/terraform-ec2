resource "aws_instance" "aws_test" {

  ami                    = "ami-0fc5d935ebf8bc3bc"
  instance_type          = "t2.micro"
  key_name               = "aws-keypair"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  tags = {
    Name = "my-ec2-instance"
  }

}

output "display" {

  value = aws_instance.aws_test.public_ip

}

output "display_" {

  value = aws_instance.aws_test.security_groups

}
