# Business Variables For Local Use In Terraform
locals {
  owners = var.business_divsion
  environment = var.environment
  name = "${local.owners}-${local.environment}"
  common_tags = {
    owners = local.owners
    environment = local.environment
    Terraform   = "true"
  }
}