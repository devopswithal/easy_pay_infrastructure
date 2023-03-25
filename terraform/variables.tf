
variable "AWS_REGION" {
  default = "us-east-1"
}

variable stack {
  description = "this is name for tags"
  default     = "Terraform"
}

variable "ami_id" {
  type    = string
  default = "ami-0fd2c44049dd805b8"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a","us-east-1b","us-east-1c"]
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24","10.0.102.0/24","10.0.103.0/24"]
}

variable "master_node_count" {
  type    = number
  default = 3
}

variable "worker_node_count" {
  type    = number
  default = 9
}

variable "ssh_user" {
  type    = string
  default = "ubuntu"
}