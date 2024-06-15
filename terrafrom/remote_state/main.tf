##################### create s3 buckket ########################
resource "aws_s3_bucket" "example" {
  bucket = "om-qqqqqqqqqqqqqsssssssssssss"      #bucket name which you want to create

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

#################### create dyanomo_db_table #####################

provider "aws" {
  region = "ap-south-1"
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "om-terraform-lock-table"     #DynomoDB table name which you want to create
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "terraform-lock-table"
    Environment = "production"
  }
}

##################################
terraform {
  backend "s3" {
    bucket         = "qqqqqqqqqqqqqsssssssssssss" #s3 bucket name where the state file are going to stored this bucket should be already exits
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"       #DynomoDB table which should be already exits 
    encrypt        = true 
  }
}
