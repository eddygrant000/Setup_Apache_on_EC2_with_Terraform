resource "aws_instance" "MyFirstInstance" {
  ami = "ami-0cda377a1b884a1bc"
  instance_type = "t2.micro"
  tags = {
    Name = "EC2_instance_Terraform"
  }
}