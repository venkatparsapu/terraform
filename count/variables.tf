variable "ami-id" {
   type = string
   default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

variable "instance_names" {
  type = list
  default = ["MongoDB","rabitmq","Web"]
}

variable "zone_id" {
  default="Z008914828IW3JR38LJMR"
}

variable "domain_name" {
  default = "devops.aws.venkat"
}