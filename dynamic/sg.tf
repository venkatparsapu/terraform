# resource "aws_instance" "web" {
#   ami           = "ami-03265a0778a880afb"
#   instance_type = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.roboshop-all.id]

#   tags = {
#     Name = "Web"
#   }
# }

resource "aws_security_group" "dynamic-all" { #this is terraform name, for terraform reference only
    name        = "dynamic-all"# this is for AWS
    description = "dynamic-all"
    #vpc_id      = aws_vpc.main.id

    dynamic ingress {
      for_each = var.sg-group
      content {
        description      = ingress.value["description"]
        from_port        = ingress.value["from_port"]
        to_port          = ingress.value["to_port"] 
        protocol         = ingress.value["protocol"]
        cidr_blocks      = ingress.value["cidr_blocks"]
      }
      
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        #ipv6_cidr_blocks = ["::/0"]
    }

    tags = {
        Name = "dynamic-all-sg"
    }
}