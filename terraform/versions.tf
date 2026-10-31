terraform {
  required_version = ">= 1.6.0"

  backend "s3" {
    bucket       = "github-actions-sre-tfstate-418295691815"
    key          = "github-actions-sre-automation/terraform.tfstate"
    region       = "ap-south-2"
    encrypt      = true
    use_lockfile = true
  }
}