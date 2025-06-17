output "instance_1_ip_addr" {
  value = aws_instance.instance_1.public_ip
}

output "load_balancer_dns_name" {
  value = aws_lb.load_balancer.dns_name
}





