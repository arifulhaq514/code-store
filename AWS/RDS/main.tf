provider "aws" {
  region = var.aws_region
}

resource "aws_db_instance" "oracle_rds" {
  allocated_storage      = var.db_allocated_storage
  engine                 = "oracle-se2"
  engine_version         = var.db_engine_version
  instance_class         = var.db_instance_class
  db_name                = var.db_name
  username               = var.db_username
  password               = var.db_password
  parameter_group_name   = var.db_parameter_group_name
  publicly_accessible    = var.db_publicly_accessible
  vpc_security_group_ids = [var.db_security_group_id]
  db_subnet_group_name   = var.db_subnet_group_name
  backup_retention_period = var.db_backup_retention_period
  multi_az               = var.db_multi_az
  storage_type           = var.db_storage_type
  skip_final_snapshot    = var.db_skip_final_snapshot
  deletion_protection    = var.db_deletion_protection

  tags = {
    Name        = "MyOracleRDS"
    Environment = "production"
  }
}
