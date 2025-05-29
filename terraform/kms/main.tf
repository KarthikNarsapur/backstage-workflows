terraform {
  backend "s3" {
    bucket = "interns-backstage.io-statefile"
    key    = "project/terraform.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}



resource "aws_kms_key" "kms_key" {
  description               = var.description
    key_usage               = var.key_usage
  customer_master_key_spec  = var.key_type
}



resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.key_alias}"
  target_key_id = aws_kms_key.kms_key.key_id
}
