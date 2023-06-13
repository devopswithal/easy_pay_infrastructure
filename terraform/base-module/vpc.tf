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
    "kubernetes.io/cluster/kubernetes" = "owned"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = "1"
  }

  enable_nat_gateway     = var.vpc_enable_nat_gateway
  single_nat_gateway     = var.vpc_single_nat_gateway
  one_nat_gateway_per_az = var.vpc_one_nat_gateway_per_az

  enable_dns_support     = true
  enable_dns_hostnames   = true
  private_subnet_enable_resource_name_dns_a_record_on_launch = true
  public_subnet_enable_resource_name_dns_a_record_on_launch = true

  instance_tenancy = "default"

  tags = {
    "kubernetes.io/cluster/kubernetes" = "owned"
  }
  vpc_tags = local.common_tags
}

resource "aws_eip" "bastion_eip" {
  depends_on = [ module.bastion_instance, module.vpc ]
  instance = module.bastion_instance.id
  vpc      = true
  tags = local.common_tags
}