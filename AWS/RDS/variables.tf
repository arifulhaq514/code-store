variable "aws_region" {
  description = "The AWS region to deploy resources in"
  default     = "us-west-1"
}

variable "db_allocated_storage" {
  description = "The size of the database (in GB)"
  default     = 20
}

variable "db_engine_version" {
  description = "The version of the Oracle database engine"
  default     = "19.0.0.0.ru-2022-07.rur-2022-07.r1"
}

variable "db_instance_class" {
  description = "The instance type of the RDS instance"
  default     = "db.t3.medium"
}

variable "db_name" {
  description = "The name of the Oracle database"
  default     = "oracledb"
}

variable "db_username" {
  description = "The master username for the database"
  default     = "admin"
}

variable "db_password" {
  description = "The master password for the database"
  default     = "password123" # Replace with a strong password
}

variable "db_parameter_group_name" {
  description = "The parameter group name for the database"
  default     = "default.oracle-se2-19"
}

variable "db_publicly_accessible" {
  description = "Whether the database instance is publicly accessible"
  default     = true
}

variable "db_security_group_id" {
  description = "The security group ID for the database"
  default     = "sg-0dcf3377855fb65d3"
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  default     = "default-vpc-096741c7c33890138"
}

variable "db_backup_retention_period" {
  description = "The number of days to retain backups"
  default     = 7
}

variable "db_multi_az" {
  description = "Whether to deploy the database in multiple availability zones"
  default     = false
}

variable "db_storage_type" {
  description = "The storage type for the database"
  default     = "gp2"
}

variable "db_skip_final_snapshot" {
  description = "Whether to skip the final snapshot on deletion"
  default     = true
}

variable "db_deletion_protection" {
  description = "Whether to enable deletion protection for the database"
  default     = false
}
