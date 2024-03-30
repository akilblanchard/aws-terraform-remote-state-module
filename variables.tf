#--------------------
#s3  bucket variables
#--------------------
variable "bucket_name" {
  description = "Name of the s3 bucket that holds the terraform state file"
  type        = string
}


#------------------
#DynamoDB Variables
#------------------
variable "database_table" {
  description = "Name of Database for state locking"
  type        = string
}


#-----------------
#General Variables
#-----------------
variable "aws_region"{
  description = "region"
  type = string
}