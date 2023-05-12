# EBS CSI Outputs
output "ebs_csi_helm_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value = helm_release.ebs_csi_driver.metadata
}

# Autoscaler Outputs
output "cluster_autoscaler_helm_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value = helm_release.cluster_autoscaler_release.metadata
}

# ALB Outputs
output "lbc_helm_metadata" {
  description = "Metadata Block outlining status of the deployed release."
  value = helm_release.aws_load_balancer_controller.metadata
}