variable "region" {
  description = "AWS region to deploy to"
  default     = "us-west-1"  # Change to the region you want to deploy in
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}
