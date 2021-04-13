resource "aws_security_group" "webserver" {
  ingress_with_cidr_blocks = [
      {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        description = "HTTP"
        cidr_blocks = "0.0.0.0/0"
      }
    ]
}

resource "aws_instance" "MyFirstInstance" {
    ami = "ami-0cda377a1b884a1bc"
    instance_type = "t2.micro"
    tags = {
      Name = "EC2_instance_Terraform"
    }
    key_name = "devops"
    user_data = "${file("install_ansible.sh")}" 
    security_groups = [ "webserver" ]
}
