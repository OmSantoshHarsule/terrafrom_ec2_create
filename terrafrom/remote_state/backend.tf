################################################## BACKEND FILE ########################################################

terraform {
  backend "s3" {
    bucket         = "----- " #s3 bucket name which is created after running terraform apply in createbackend file
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "-------"       #DynomoDB table name which is created after running terraform apply in createbackend file
    encrypt        = true
  }
}

