# Configure the AWS provider
provider "aws" {
  region = "eu-west-1"
}


# Create a Security Group for an EC2 instance 
resource "aws_security_group" "instance" {
  name = "terraform-example-instance2"
  
  ingress {
    from_port	  = "${var.server_port}"
    to_port	    = "${var.server_port}"
    protocol	  = "tcp"
    cidr_blocks	= ["0.0.0.0/0"]
  }
}
