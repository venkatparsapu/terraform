variable "sg-description" {
    type = string
    default = "allow all TCP inbound"
  
}

variable "sg-name" {
    type = string
    default = "roboshop_all_aws"
  
}

variable "inbound-from_port" {    
    default = 0
  
}

variable "cidr_blocks" {
   default = ["0.0.0.0/0"]
}