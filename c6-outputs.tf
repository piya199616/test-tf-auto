# Terraform Output values

#EC2 Instance public IP

output "instance_publicip" {
    description = "ec2 insatnce public ip"
    value = aws_instance.myec2vm.public_ip

}

#EC2 Instance public DNS
output "instance_publicdns" {
    description = "ec2 insatnce public DNS"
    value = aws_instance.myec2vm.public_dns

}