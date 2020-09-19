resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
  tags = {
    Name = "key-pair"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}
