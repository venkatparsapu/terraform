locals {
#     count =length(var.instance_names)
#     instance_names_local=var.instance_names[count.index]
#     route_names="${var.instance_names[count.index]}.${var.domain_name}"
#   instance_type=var.instance_names[count.index] == "Web" ? "t2.micro" : "t3.micro"
#   ip=[aws_instance.web[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}