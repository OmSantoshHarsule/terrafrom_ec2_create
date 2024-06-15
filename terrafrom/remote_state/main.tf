##################### create s3 buckket ########################
resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

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
  name           = "terraform-lock-table"
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
