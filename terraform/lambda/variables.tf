variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-south-1"
}

variable "lambda_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "lambda_handler" {
  description = "Handler for the Lambda function"
  type        = string
  default     = "lambda_function.lambda_handler"
}

variable "runtime" {
  description = "Runtime environment for the Lambda function"
  type        = string
  default     = "python3.11"
}

variable "s3_bucket" {
  description = "S3 bucket where Lambda deployment package is stored"
  type        = string
}

variable "s3_key" {
  description = "Name of the Lambda deployment package in S3"
  type        = string
}
