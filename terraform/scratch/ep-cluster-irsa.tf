module "ebs_csi_irsa_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "5.18.0"

  role_name             = "ebs-csi"
  attach_ebs_csi_policy = true

  oidc_providers = {
    ex = {
      provider_arn               = data.terraform_remote_state.eks.outputs.cluster_oidc_provider_arn
      namespace_service_accounts = ["kube-system:ebs-csi-controller-sa"]
    }
  }
}

module "cluster_autoscaler_irsa_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "5.18.0"

  role_name                         = "cluster-autoscaler"
  attach_cluster_autoscaler_policy  = true
  cluster_autoscaler_cluster_ids    = [data.terraform_remote_state.eks.outputs.cluster_name]

  oidc_providers = {
    ex = {
      provider_arn                  = data.terraform_remote_state.eks.outputs.cluster_oidc_provider_arn
      namespace_service_accounts    = ["kube-system:cluster-autoscaler"]
    }
  }
}

module "load_balancer_controller_irsa_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "5.18.0"

  role_name                              = "load-balancer-controller"
  attach_load_balancer_controller_policy = true

  oidc_providers = {
    ex = {
      provider_arn               = data.terraform_remote_state.eks.outputs.cluster_oidc_provider_arn
      namespace_service_accounts = ["kube-system:aws-load-balancer-controller"]
    }
  }
}
