provider "aws" {
  region                  = "us-east-1"
  access_key = "AKIAIMVIGOFE2MU22MNA"
  secret_key = "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"
}
resource "aws_instance" "linux" {
  ami = "ami-0b898040803850657"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"
  key_name = "aws_lab_key"
  vpc_security_group_ids = ["sg-377dc56f"]
  subnet_id = "subnet-959ed7c9"

  tags = {
   Name = "ami"
}
}
