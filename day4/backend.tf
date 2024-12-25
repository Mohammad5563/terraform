terraform {
  backend "s3" {
    bucket         = "noor-s3-demo-xyz" # change this
    key            = "noor/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}