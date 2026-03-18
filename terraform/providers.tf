provider "aws" {
  alias  = "dev"
  region = "ap-south-1"
}

provider "aws" {
  alias  = "prod"
  region = "ap-south-1"
}
