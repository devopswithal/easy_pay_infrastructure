provider "aws" {
  profile = "terraform"
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "ep-eks-state-store"
    key    = "tfstate/terraform.tfstate"
    region = "us-east-1"
    workspace_key_prefix = "environment"
    dynamodb_table = "ep-eks-state-lock"
  }
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.9.0"
    }
  }
}
