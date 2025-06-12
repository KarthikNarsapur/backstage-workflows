terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "backstage-interns-project"
    key    = "project/s3.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}
 
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  force_destroy = true
  tags = {
    CreatedBy = "Backstage"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  count  = var.versioning ? 1 : 0
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
 
