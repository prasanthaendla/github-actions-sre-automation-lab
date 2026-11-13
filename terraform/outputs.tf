
output "postgres_instance_id" {
  description = "PostgreSQL EC2 instance ID"
  value       = aws_instance.postgres.id
}

output "postgres_public_ip" {
  description = "Public IPv4 address of PostgreSQL EC2"
  value       = aws_instance.postgres.public_ip
}

output "postgres_private_ip" {
  description = "Private IPv4 address of PostgreSQL EC2"
  value       = aws_instance.postgres.private_ip
}

output "postgres_availability_zone" {
  description = "Availability zone of PostgreSQL EC2"
  value       = aws_instance.postgres.availability_zone
}

output "postgres_security_group_id" {
  description = "Security group ID attached to PostgreSQL EC2"
  value       = aws_security_group.postgres.id
}
