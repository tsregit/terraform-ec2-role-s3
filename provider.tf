provider "aws" {
  region              = var.aws_region
  allowed_account_ids = [var.aws_id]
}

data "aws_availability_zones" "az" {}
