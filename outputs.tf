output "bucket_id" {
  description = "The ID of the created S3 bucket"
  value       = aws_s3_bucket.state_file.id
}

output "table_id" {
  description = "The ARN of the created DynamoDB table"
  value       = aws_dynamodb_table.state.arn
}