provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "noor" {
  instance_type = "t2.micro"
  ami = "ami-01816d07b1128cd2d" # change this
  subnet_id = "subnet-01c6e33815c645de5" # change this
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "noor-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}