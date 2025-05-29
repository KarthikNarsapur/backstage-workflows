terraform {
  backend "s3" {
    bucket = "backstage-interns-project"
    key    = "project/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
    use_lockfile = true
  }
}

resource "aws_lambda_function" "my_lambda" {
  function_name = var.lambda_name
  handler       = var.lambda_handler
  runtime       = var.runtime
  role          = "arn:aws:iam::730335384723:role/EC2LambdaRole" 
  s3_bucket     = var.s3_bucket
  s3_key        = var.s3_key
}
