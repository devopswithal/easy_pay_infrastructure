module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name          = var.vpc_name
  cidr          = var.vpc_cidr_block

  enable_ipv6             = false
  map_public_ip_on_launch = true

  azs               = var.vpc_azs
  private_subnets   = var.vpc_private_subnets
  public_subnets    = var.vpc_public_subnets

  public_subnet_tags = {
    "kubernetes.io/role/elb" = "1"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }

  enable_nat_gateway     = var.vpc_enable_nat_gateway
  single_nat_gateway     = var.vpc_single_nat_gateway
  one_nat_gateway_per_az = var.vpc_one_nat_gateway_per_az

  enable_dns_support     = true
  enable_dns_hostnames   = true

  instance_tenancy = "default"

  tags = local.common_tags
  vpc_tags = local.common_tags
}

resource "aws_eip" "bastion_eip" {
  depends_on = [ module.ec2_public, module.vpc ]
  instance = module.ec2_public.id
  vpc      = true
  tags = local.common_tags
}