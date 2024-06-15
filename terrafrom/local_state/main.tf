######################################## Create EC2 Instance ########################################################################

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-20240423"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "web" {
  ami           = "ami-0f58b397bc5c1f2e8"
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-ec-2" #name of the ec2 instance      # instanace name which u want to create 
  }
}
terraform {
  backend "s3" {
    bucket         = "----" #s3 bucket name after running terraform apply in createbackend
    key            = "ec2-instance/terraform.tfstate"  # Adjust key path if needed
    region         = "ap-south-1"
    dynamodb_table = "-----" #DynomoDB table name after running terraform apply in createbackend
    encrypt        = true
  }
}
