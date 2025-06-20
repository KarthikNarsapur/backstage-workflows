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
    key    = "project/ebs.tfstate"
    region = "ap-south-1"
    encrypt = true
  }
}

resource "aws_ebs_volume" "backstage-ebs" {
  availability_zone = var.availabilityZone
  size              = var.size
  encrypted = var.encryption
  type = var.volumeType

  tags = {
    Name = "Backstage-interns-project"
  }
}
