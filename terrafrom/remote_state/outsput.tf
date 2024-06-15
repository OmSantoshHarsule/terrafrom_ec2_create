output "s3_bucket_id" {
  description = "The name of the S3 bucket used for Terraform state storage"
  value       = aws_s3_bucket.terraform_state.id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket used for Terraform state storage"
  value       = aws_s3_bucket.terraform_state.arn
}

output "dynamodb_table_id" {
  description = "The name of the DynamoDB table used for Terraform state locking"
  value       = aws_dynamodb_table.terraform_lock.id
}

output "dynamodb_table_arn" {
  description = "The ARN of the DynamoDB table used for Terraform state locking"
  value       = aws_dynamodb_table.terraform_lock.arn
}

