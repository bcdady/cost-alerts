
provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      env        = "demo"
      managed_by = "terraform"
      source     = "https://github.com/bcdady/cost-alerts"
    }
  }
}
