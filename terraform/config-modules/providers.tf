provider "aws" {
  profile = "terraform"
  region  = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "ep-eks-state-store"
    key    = "ebs-storage/"
    region = "us-east-1"
    workspace_key_prefix = "environment"
    dynamodb_table = "ep-ebs-storage-lock"
  }

  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.9.0"
    }
  }
}

data "terraform_remote_state" "ep_cluster" {
  backend = "s3"
  config = {
    bucket = "ep-eks-state-store"
    key    = "tfstate/terraform.tfstate"
    region = "us-east-1"
  }
}
