#Input Variables


#AWS Region

variable "aws_region" {
    description = "Region in which aws resource will be created"
    type = string
    default = "us-east-1"
    
  
}

#AWS Ec2 Instance Type

variable "instance_type" {
    description = "EC2 Insatnce type"
    type = string
    default = "t2.micro"
  
}


#AWS EC2 Instance Keypair

variable "instance_keypair" {
    description = "EC2 keypair"
    type = string
    default = "terraform-key"
  
}