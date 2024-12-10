output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.tp_cloud_devops_vpc.id
}

output "public_subnet_1_id" {
  description = "The ID of the first public subnet"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "The ID of the second public subnet"
  value       = aws_subnet.public_subnet_2.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.main_gateway.id
}

output "instance_details" {
  description = "Detailed information about the EC2 instance"
  value = {
    instance_id        = aws_instance.public_instance.id
    instance_public_ip = aws_instance.public_instance.public_ip
    instance_private_ip = aws_instance.public_instance.private_ip
    instance_name      = aws_instance.public_instance.tags["Name"]
    security_group_id  = aws_instance.public_instance.vpc_security_group_ids
    subnet_id          = aws_instance.public_instance.subnet_id
  }
}
