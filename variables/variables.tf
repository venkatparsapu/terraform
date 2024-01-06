variable "ami-id" {
   type = string
   default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "tags" {
  type = map 
  default = {
    Name="Hellow Terraform"
    Project="Roboshop"
    Environment="Dev"
    Component="Web"
    Terraform="true"
  }
}
variable "sg-description" {
    type = string
    default = "allow all ports"
  
}

variable "sg-name" {
    type = string
    default = "roboshop_all_aws"
  
}

variable "inbound-from_port" {    
    default = 0
    type = number
  
}

variable "cidr_blocks" {
   default = ["0.0.0.0/0"]
}