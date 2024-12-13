output "rds_instance_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.oracle_rds.endpoint
}

output "rds_instance_arn" {
  description = "The ARN of the RDS instance"
  value       = aws_db_instance.oracle_rds.arn
}

output "rds_instance_id" {
  description = "The ID of the RDS instance"
  value       = aws_db_instance.oracle_rds.id
}
