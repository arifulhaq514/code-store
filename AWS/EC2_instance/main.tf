# Specify the provider (AWS in this case)
provider "aws" {
  region = "us-west-1" # Change this to your desired AWS region
}

# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-038bba9a164eb3dc1" # Replace with the latest Amazon Linux AMI ID for your region
  instance_type = "t2.micro"               # Choose an appropriate instance type (t2.micro is eligible for free tier)
  key_name      = "KeyPair2024_4"     # Replace with your existing EC2 key pair name
  
  tags = {
    Name = "Terraform Example EC2 Instance"
  }
}

