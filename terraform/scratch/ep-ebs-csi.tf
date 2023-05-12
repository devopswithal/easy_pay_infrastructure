# Install EBS CSI Driver using HELM
resource "helm_release" "ebs_csi_driver" {
  name       = "${local.name}-aws-ebs-csi-driver"

  repository = "https://kubernetes-sigs.github.io/aws-ebs-csi-driver"
  chart      = "aws-ebs-csi-driver"

  namespace = "kube-system"

  set {
  name = "image.repository"
  value = "602401143452.dkr.ecr.us-east-1.amazonaws.com/eks/aws-ebs-csi-driver"
  }

  set {
  name  = "controller.serviceAccount.create"
  value = "true"
  }

  set {
  name  = "controller.serviceAccount.name"
  value = "ebs-csi-controller-sa"
  }

  set {
  name  = "controller.serviceAccount.annotations.eks\\.amazonaws\\.com/role-arn"
  value = module.ebs_csi_irsa_role.iam_role_arn
  }
}