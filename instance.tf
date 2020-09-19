resource "aws_instance" "example" {
  ami = var.AMIS_UBU_1604[var.AWS_REGION]
  instance_type = "t2.micro"
  subnet_id = aws_subnet.main-public-1.id
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
  key_name = aws_key_pair.mykeypair.key_name
  tags = {
    Name = "ec2"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}
