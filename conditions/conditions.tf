resource "aws_instance" "web" {
  ami           = var.ami-id
  instance_type = var.instance_name== "MongoDB" ? "t3.micro" : "t2.small"
  
}

