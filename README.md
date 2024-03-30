## AWS Terraform Remote State Module

Terraform module creating resources necessary for storing State file in S3 with State Locking enabled via DynamoDB.

---
```
module "remote_state" {
  source = "github.com/akilblanchard/aws-terraform-remote-state-module.git"

  aws_region        = "us-east-1"
  database_table = "my-database"
  bucket_name = "my-bucket"
}

#Outputs
output "bucket_id" {
  description = "The ID of the created S3 bucket"
  value       = aws_s3_bucket.state_file.id
}

output "table_id" {
  description = "The ARN of the created DynamoDB table"
  value       = aws_dynamodb_table.lock.arn
}
```

# Providers
| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

