terraform {
  backend "s3" {
    bucket = "april21-hwbucket"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
  required_providers {
    tfe = {
      version = "~> 0.64.0"
    }
  }
}

