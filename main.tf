resource "aws_security_group" "web-sg" {
  name = "webserver"
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_instance" "WebServer" {
    ami = "ami-0cda377a1b884a1bc"
    instance_type = "t2.micro"
    tags = {
      Name = "WebServer"
    }
    key_name = "devops"
    user_data = file("install_ansible.sh")
    security_groups = [ "webserver" ]
}
