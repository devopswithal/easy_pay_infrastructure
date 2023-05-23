################################################################################
# Business Operation and Ownership Variables

# AWS Region
variable "aws_region" {
  description = "Region in which AWS Resources to be created"
  type = string
  default = "us-east-1"
}

# Environment Variable
variable "environment" {
  description = "Environment Variable"
  type = string
  default = "dev"
}

# Business Division
variable "business_divsion" {
  description = "Business Division who owns this Infrastructure"
  type = string
  default = "sales"
}