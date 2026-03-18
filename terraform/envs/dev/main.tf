module "vpc" {
  source = "../../modules/vpc"
  providers = {
    aws = aws.dev

  cidr_block = "10.0.0.0/16"
  subnet_cidr = "10.0.1.0/24"
  name = "dev-vpc"
}
