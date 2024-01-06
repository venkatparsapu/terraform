resource "aws_instance" "web" {
    #count=3
    count =length(var.instance_names)
  ami           = var.ami-id
  instance_type = var.instance_names[count.index] == "Web" ? "t2.micro" : "t3.micro"
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_route53_record" "www" {
    count =length(var.instance_names)
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.web[count.index] == "web" ? aws_instance.web[count.index].public_ip : aws_instance.web[count.index].private_ip]
}