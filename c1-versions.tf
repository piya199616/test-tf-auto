# Terraform Block

terraform {
 # required_version = "~> 0.14" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.34.0"
    }
  }

# Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "my-test-bucket-09042023"
    key    = "dev/project1-vpc/terraform.tfstate"  #path where my tfstate file will be created
    region = "us-east-1" 

    # Enable during Step-09     
    # For State Locking
    dynamodb_table = "dev-project1-vpc"    
  }  

}


#Provider Block

provider "aws" {
    region = var.aws_region
  
}