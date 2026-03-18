terraform {
  backend "s3" {
    bucket          = "my-terraform-state-bucket-demo"
    key             = "multi-account/terraform.tfstate"
    region          = "ap-south-1"
    dynamodb_table  = "terraform-lock-table"
  }
}  
  
