# variable "sg-description" {
#     type = string
#     default = "allow all TCP inbound"
  
# }

# variable "sg-name" {
#     type = string
#     default = "roboshop_all_aws"
  
# }

# variable "inbound-from_port" {    
#     default = 0
  
# }

# variable "cidr_blocks" {
#    default = ["0.0.0.0/0"]
# }
variable "sg-group" {
  type=list
  default = [
    {
        description      = "Allow All 80"
        from_port        = 80
        to_port          = 80 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
   
    {
        description      = "Allow All 88"
        from_port        = 88
        to_port          = 88 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    },
    {
        description      = "Allow All 443"
        from_port        = 443
        to_port          = 443 
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }
  ]
}