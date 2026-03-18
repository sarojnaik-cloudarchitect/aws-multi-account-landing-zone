module "vpc" {
  source = "../../modules/vpc"
  providers = {
    aws = aws.prod

  cidr_block = "10.1.0.0/16"
  subnet_cidr = "10.1.1.0/24"
  name = "prod-vpc"
}
