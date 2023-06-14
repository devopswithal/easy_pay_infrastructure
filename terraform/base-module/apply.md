Acquiring state lock. This may take a few moments...
[0m[1mtls_private_key.ssh: Creating...[0m[0m
[0m[1maws_iam_policy.worker_policy: Creating...[0m[0m
[0m[1maws_iam_role.control_plane_iam_role: Creating...[0m[0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Creating...[0m[0m
[0m[1maws_iam_role.worker_node_iam_role: Creating...[0m[0m
[0m[1mtls_private_key.ssh: Creation complete after 2s [id=6102925d866b53a83a18fd35afd6f3070eed2edc][0m
[0m[1maws_iam_role.worker_node_iam_role: Creation complete after 2s [id=worker-node-iam-role][0m
[0m[1maws_iam_role.control_plane_iam_role: Creation complete after 2s [id=control-plane-iam-role][0m
[0m[1maws_iam_policy.worker_policy: Creation complete after 2s [id=arn:aws:iam::532895811159:policy/worker-ec2-policy][0m
[0m[1maws_iam_role_policy_attachment.ec2_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.elb_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.rds_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.worker_policy_attachment: Creating...[0m[0m
[0m[1maws_key_pair.ep_ec2_key: Creating...[0m[0m
[0m[1maws_iam_instance_profile.control_plane_instance_profile: Creating...[0m[0m
[0m[1maws_iam_instance_profile.worker_node_instance_profile: Creating...[0m[0m
[0m[1mlocal_file.ep_ec2_key: Creating...[0m[0m
[0m[1mlocal_file.ep_ec2_key: Creation complete after 0s [id=09c67839dc33271045207fbd85067952410674f3][0m
[0m[1maws_iam_role_policy_attachment.ec2_policy_attachment: Creation complete after 0s [id=control-plane-iam-role-20230614160506995100000001][0m
[0m[1maws_key_pair.ep_ec2_key: Creation complete after 0s [id=ep-ec2-key][0m
[0m[1maws_iam_role_policy_attachment.worker_policy_attachment: Creation complete after 0s [id=worker-node-iam-role-20230614160507006400000002][0m
[0m[1maws_iam_role_policy_attachment.elb_policy_attachment: Creation complete after 0s [id=control-plane-iam-role-20230614160507012400000003][0m
[0m[1maws_iam_role_policy_attachment.rds_policy_attachment: Creation complete after 0s [id=control-plane-iam-role-20230614160507181800000004][0m
[0m[1maws_iam_instance_profile.control_plane_instance_profile: Creation complete after 1s [id=control-plane-instance-profile][0m
[0m[1maws_iam_instance_profile.worker_node_instance_profile: Creation complete after 1s [id=worker-node-instance-profile][0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Creation complete after 13s [id=vpc-03283f321e213ebb7][0m
[0m[1mmodule.vpc.aws_internet_gateway.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_route_table.default[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table.private[0]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table.public[0]: Creating...[0m[0m
[0m[1maws_lb_target_group.cplane_tg: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_security_group.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_network_acl.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_route_table.default[0]: Creation complete after 1s [id=rtb-0ca2c5c8194e7ccda][0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table.public[0]: Creation complete after 1s [id=rtb-0ef8292979a23f80a][0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table.private[0]: Creation complete after 1s [id=rtb-00e511ffb684d23f4][0m
[0m[1mmodule.vpc.aws_internet_gateway.this[0]: Creation complete after 1s [id=igw-008f6934362977666][0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_network_acl.this[0]: Creation complete after 2s [id=acl-0ee29cab4efc7a2f1][0m
[0m[1mmodule.ssh_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1maws_lb_target_group.cplane_tg: Creation complete after 2s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/5da141ea76b0e79c][0m
[0m[1mmodule.cni_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_security_group.this[0]: Creation complete after 3s [id=sg-07735cb7b95fc17fd][0m
[0m[1mmodule.control_plane_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group.this_name_prefix[0]: Creation complete after 4s [id=sg-010515e588fe44b75][0m
[0m[1mmodule.vpc.aws_route.public_internet_gateway[0]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-05e289be2c83ccaef][0m
[0m[1mmodule.ssh_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-0a7f989d8e6c3c49c][0m
[0m[1mmodule.vpc.aws_eip.nat[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route.public_internet_gateway[0]: Creation complete after 0s [id=r-rtb-0ef8292979a23f80a1080289494][0m
[0m[1mmodule.database_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_eip.nat[0]: Creation complete after 1s [id=eipalloc-09c9989d1146cd03d][0m
[0m[1mmodule.control_plane_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-05d614c0d28f6e87f][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creation complete after 1s [id=sgrule-2499546471][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-0d9a1f07f455e6caa][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-0c49a0edb1d2c0a82][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 2s [id=sgrule-2283514832][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 1s [id=sgrule-3907767799][0m
[0m[1mmodule.cni_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-394405999][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-3310620119][0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 3s [id=sgrule-539391924][0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-838428709][0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 0s [id=sgrule-2748971239][0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-3328546220][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 2s [id=sgrule-67859046][0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[5]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-1247085300][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[5]: Creation complete after 1s [id=sgrule-3981258358][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-2440817129][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 2s [id=sgrule-1543946665][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[6]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creation complete after 1s [id=sgrule-3524475456][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Creation complete after 12s [id=subnet-0c87420545983ceb0][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-3757093485][0m
[0m[1mmodule.database_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Creation complete after 12s [id=subnet-020ce36494b6e11a5][0m
[0m[1mmodule.database_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-2632764426][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[6]: Creation complete after 2s [id=sgrule-3779631569][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Creation complete after 12s [id=subnet-0bb07803cafd65a23][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 3s [id=sgrule-2990887923][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-2156171108][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-4178840236][0m
[0m[1mmodule.vpc.aws_route_table_association.private[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[0]: Creation complete after 0s [id=rtbassoc-0620615264b32aa99][0m
[0m[1mmodule.vpc.aws_route_table_association.private[2]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 1s [id=sgrule-3579713042][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 3s [id=sgrule-1384149488][0m
[0m[1mmodule.vpc.aws_route_table_association.private[1]: Creating...[0m[0m
[0m[1maws_instance.control_instance[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[1]: Creation complete after 1s [id=rtbassoc-03a81d514036d9964][0m
[0m[1maws_lb.control_plane_nlb: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[2]: Creation complete after 1s [id=rtbassoc-092a0203c356a86fa][0m
[0m[1maws_instance.control_instance[1]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 2s [id=sgrule-2786134435][0m
[0m[1maws_instance.control_instance[2]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 3s [id=sgrule-314566950][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 2s [id=sgrule-2118385472][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-725132741][0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Creation complete after 22s [id=subnet-01586dca943fa29c4][0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Creation complete after 22s [id=subnet-04e0d1047aba064fc][0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Creation complete after 22s [id=subnet-033b793d83ada46d7][0m
[0m[1mmodule.vpc.aws_route_table_association.public[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[0]: Creating...[0m[0m
[0m[1maws_instance.worker_instance[2]: Creating...[0m[0m
[0m[1maws_instance.worker_instance[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[0]: Creation complete after 1s [id=rtbassoc-0acc2525d8ff22836][0m
[0m[1maws_instance.worker_instance[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-0b7a5a12f84fecdb2][0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[2]: Creation complete after 1s [id=rtbassoc-057ea41d1ad3001dc][0m
[0m[1maws_instance.control_instance[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[1]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[2]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[0]: Creation complete after 14s [id=i-02ac7d0c578156a40][0m
[0m[1maws_instance.control_instance[1]: Creation complete after 13s [id=i-03589ea9c06ee36ff][0m
[0m[1maws_instance.control_instance[2]: Creation complete after 14s [id=i-0f9c17fcc4350acf5][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[0]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[1]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[2]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[1]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/5da141ea76b0e79c-20230614160547480700000013][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[2]: Creation complete after 1s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/5da141ea76b0e79c-20230614160547695500000014][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[0]: Creation complete after 1s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/5da141ea76b0e79c-20230614160547747700000015][0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[2]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [20s elapsed][0m[0m
[0m[1maws_instance.worker_instance[0]: Creation complete after 14s [id=i-08049dd6a4bcf6643][0m
[0m[1maws_instance.worker_instance[2]: Creation complete after 14s [id=i-0887ac4272f82d1ea][0m
[0m[1maws_instance.worker_instance[1]: Creation complete after 13s [id=i-0a88abe7f21d1d3cd][0m
[0m[1mlocal_file.ansible_inventory: Creating...[0m[0m
[0m[1mlocal_file.ansible_inventory: Creation complete after 0s [id=9623a7e6ba695d37634771803122fcb609c7995f][0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [20s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [30s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [30s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [30s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [40s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Creation complete after 34s [id=i-064a4455ffe70d5a3][0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [40s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [50s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [50s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m0s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m0s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m10s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m20s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m30s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m30s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m40s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m40s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m50s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m50s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [2m0s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [2m0s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [2m10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [2m10s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [2m20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Creation complete after 2m17s [id=nat-06586a26efd102326][0m
[0m[1mmodule.vpc.aws_route.private_nat_gateway[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route.private_nat_gateway[0]: Creation complete after 1s [id=r-rtb-00e511ffb684d23f41080289494][0m
[0m[1maws_eip.bastion_eip: Creating...[0m[0m
[0m[1maws_eip.bastion_eip: Creation complete after 3s [id=eipalloc-09b9a5219bacf0241][0m
[0m[1mnull_resource.bastion_init: Creating...[0m[0m
[0m[1mnull_resource.bastion_init: Provisioning with 'remote-exec'...[0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mConnecting to remote host via SSH...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Host: 34.238.186.232
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  User: ubuntu
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Password: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Private key: true
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Certificate: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  SSH Agent: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Checking Host Key: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Target Platform: unix
[0m[1maws_lb.control_plane_nlb: Still creating... [2m30s elapsed][0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mConnected!
[0m[1maws_lb.control_plane_nlb: Creation complete after 2m33s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:loadbalancer/net/control-plane-nlb/5cf509b2798b9976][0m
[0m[1mlocal_file.ansible_vars_file: Creating...[0m[0m
[0m[1maws_lb_listener.control_plane_nlb_listener: Creating...[0m[0m
[0m[1mlocal_file.ansible_vars_file: Creation complete after 0s [id=6a95b4ef06901a993d68ec71810179d4b20ee59b][0m
[0m[1maws_lb_listener.control_plane_nlb_listener: Creation complete after 1s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:listener/net/control-plane-nlb/5cf509b2798b9976/b6201e797c0c513e][0m
[0m[1mnull_resource.bastion_init: Creation complete after 9s [id=1001065379435968466][0m
[0m[1mnull_resource.provisioner: Creating...[0m[0m
[0m[1mnull_resource.copy_k8s_manifests: Creating...[0m[0m
[0m[1mnull_resource.provisioner: Provisioning with 'file'...[0m[0m
[0m[1mnull_resource.copy_k8s_manifests: Provisioning with 'file'...[0m[0m
[0m[1mnull_resource.provisioner: Creation complete after 2s [id=357411613716711431][0m
[0m[1mnull_resource.copy_ansible_playbooks: Creating...[0m[0m
[0m[1mnull_resource.copy_ansible_playbooks: Provisioning with 'file'...[0m[0m
[0m[1mnull_resource.copy_k8s_manifests: Creation complete after 3s [id=1636389140902481394][0m
[0m[1mnull_resource.copy_ansible_playbooks: Creation complete after 2s [id=5502317495543510152][0m
[0m[1mnull_resource.run_ansible: Creating...[0m[0m
[0m[1mnull_resource.run_ansible: Provisioning with 'remote-exec'...[0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mConnecting to remote host via SSH...
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Host: 34.238.186.232
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  User: ubuntu
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Password: false
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Private key: true
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Certificate: false
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  SSH Agent: false
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Checking Host Key: false
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Target Platform: unix
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mConnected!
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mstarting ansible playbooks...
[0m[1mnull_resource.run_ansible: Still creating... [10s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [20s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [1m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[1;35m[WARNING]: Invalid characters were found in group names but not replaced, use[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[1;35m-vvvv to see details[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [all] *********************************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Set hostnames] *******************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Dependencies] ************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Update Cache] ********************************************
[0m[1mnull_resource.run_ansible: Still creating... [1m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Keyring Directory] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker GPG Key] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker Repository] *******************************
[0m[1mnull_resource.run_ansible: Still creating... [2m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [2m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [2m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker Bundle] ***********************************
[0m[1mnull_resource.run_ansible: Still creating... [2m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [2m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [2m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [3m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [3m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [3m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Enable Docker] *******************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Make CNI directory] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Download CNI plugins archive] ****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [3m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Extract CNI plugins archive] *****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Add Kubernetes GPG Key] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Sleep for 20 seconds] ************************************
[0m[1mnull_resource.run_ansible: Still creating... [3m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [3m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [4m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [4m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [4m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Verify presence of GPG Key] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Add Kubernetes Repository] *******************************
[0m[1mnull_resource.run_ansible: Still creating... [4m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [4m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Update Cache] ********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [4m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Kubernetes Bundle Install] *******************************
[0m[1mnull_resource.run_ansible: Still creating... [5m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [5m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [5m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [5m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install network tools] ***********************************
[0m[1mnull_resource.run_ansible: Still creating... [5m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [5m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [6m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Turn swap off] ************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Comment out lines with "swap" in the file] ********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Create k8s.conf file in the modules-load directory] ***********
[0m[1mnull_resource.run_ansible: Still creating... [6m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Turn on iptable bridge calls and ipv4 forwarding] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Verify iptables] **********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : debug] ********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.011962",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.559196",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.547234",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.005386",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.340125",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.334739",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003656",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.350420",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.346764",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.021427",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.732519",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.711092",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.015263",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.978143",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.962880",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.006114",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:14:34.884837",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:14:34.878723",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "net.bridge.bridge-nf-call-iptables = 1\nnet.bridge.bridge-nf-call-ip6tables = 1\nnet.ipv4.ip_forward = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables = 1",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward = 1"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Reset containerd toml file for kubernetes use] ****************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [6m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Set systemd as cgroupdriver] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Comment out disabled plugins] *********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Docker daemon config] *****************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Reload daemons] ***********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Restart containerd] *******************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [6m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Restart docker] ***********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane] ***********************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [k8s_manifests : Copy k8s manifest files] *********************************
[0m[1mnull_resource.run_ansible: Still creating... [6m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install etcd-client] ******************************
[0m[1mnull_resource.run_ansible: Still creating... [6m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Check ansible_vars_file.yml file exists.] *********
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Initialize cluster with kubeadm] ******************
[0m[1mnull_resource.run_ansible: Still creating... [7m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Create .kube directory] ***************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy admin.conf to user's kube config] ************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Move kube-controller-manager manifest file out of static pod path] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add cloud-provider flag to api-server config] *****
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add cloud-provider flag to controller-manager config] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add kubelet extra args] ***************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Restart kubelet] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Download Flannel] *********************************
[0m[1mnull_resource.run_ansible: Still creating... [8m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Replace c-plane cni interface name] ***************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install Pod network] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install AWS Cloud-Controller-Manager] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Move kube-controller-manager manifest file back to static pod path] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Restart kubelet] **********************************
[0m[1mnull_resource.run_ansible: Still creating... [8m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Sleep for 20 seconds] *****************************
[0m[1mnull_resource.run_ansible: Still creating... [8m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : get default kubeadm config] ***********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Create a new certificate key] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Get join command] *********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : debug] ********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "cp_join_command": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": "kubeadm token create --print-join-command --certificate-key \"8e1994398f1c26bd12ce4461e7e773ab122f9b49b4ea4e7d37b6b5653099f10c\"",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.094307",[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:17:09.722213",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:17:09.627906",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "kubeadm join control-plane-nlb-5cf509b2798b9976.elb.us-east-1.amazonaws.com:6443 --token 3eig35.38gp8287coh0as8s --discovery-token-ca-cert-hash sha256:69a5d7760601c5e37323f9cbdb30b4cb7f766f04410ee5a589b81f78873e5bec --control-plane --certificate-key 8e1994398f1c26bd12ce4461e7e773ab122f9b49b4ea4e7d37b6b5653099f10c",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "kubeadm join control-plane-nlb-5cf509b2798b9976.elb.us-east-1.amazonaws.com:6443 --token 3eig35.38gp8287coh0as8s --discovery-token-ca-cert-hash sha256:69a5d7760601c5e37323f9cbdb30b4cb7f766f04410ee5a589b81f78873e5bec --control-plane --certificate-key 8e1994398f1c26bd12ce4461e7e773ab122f9b49b4ea4e7d37b6b5653099f10c"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy join command to local file] ******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Get worker node join command] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : debug] ********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "node_join_command": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": "kubeadm token create --print-join-command",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.096282",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-14 16:17:11.289076",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-14 16:17:11.192794",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "kubeadm join control-plane-nlb-5cf509b2798b9976.elb.us-east-1.amazonaws.com:6443 --token 5aws4m.a9b5wdb6m18cuaft --discovery-token-ca-cert-hash sha256:69a5d7760601c5e37323f9cbdb30b4cb7f766f04410ee5a589b81f78873e5bec ",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "kubeadm join control-plane-nlb-5cf509b2798b9976.elb.us-east-1.amazonaws.com:6443 --token 5aws4m.a9b5wdb6m18cuaft --discovery-token-ca-cert-hash sha256:69a5d7760601c5e37323f9cbdb30b4cb7f766f04410ee5a589b81f78873e5bec "[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy worker node join command to local file] ******
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-followers] *************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Kubectl Install] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [9m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Add kubelet extra args] ************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Copy the control-plane join command to control-plane-followers] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Add cri socket to kubelet] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Join the control-plane-followers node to cluster] ***
[0m[1mnull_resource.run_ansible: Still creating... [9m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [9m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [9m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [9m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Sleep for 20 seconds] **************************
[0m[1mnull_resource.run_ansible: Still creating... [9m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [10m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Create .kube directory] ************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Check admin.conf file exists.] *****************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Copy admin.conf to user's kube config] *********
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [workers] *****************************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible: Still creating... [10m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Add kubelet extra args] ***********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Copy the join command for worker nodes] *******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Add containerd socket] ************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Join the worker node to cluster] **************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible: Still creating... [10m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Make admin directory] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL private key for cluster-admin] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin.key to local file] **************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL Certificate Signing Request for cluster-admin] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL certificate signed with your kubernetes CA certificate] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin.crt to local file] **************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Create namespace] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Apply admin role] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Apply admin rolebinding] ***************************
[0m[1mnull_resource.run_ansible: Still creating... [10m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Setting credentials to the user] *******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Set context to cluster-admin.] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy admin.conf to cluster-admin-conf] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Register cluster-admin-conf contents.] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin-conf to local file] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-followers,workers] *****************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Make admin directory] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin-conf all cluster nodes] ******
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin.key to all cluster nodes] ****
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin.crt to all cluster nodes] ****
[0m[1mnull_resource.run_ansible: Still creating... [10m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-149.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-168.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-200.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-148.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-65.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Download metrics server yaml file] *************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Disable tls authentications] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Install metrics server] ************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create db configmap] ***************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create app secrets] ****************************************
[0m[1mnull_resource.run_ansible: Still creating... [10m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create persistent volume] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deployment for db pods] *****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Sleep for 30 seconds] **************************************
[0m[1mnull_resource.run_ansible: Still creating... [11m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [11m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [11m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deployment for app pods] ****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create db ingress network policy] **************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deploy horizontal pod autoscaler] *******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-27.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY RECAP *********************************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-1-27.ec2.internal[0m  : [0;32mok=90  [0m [0;33mchanged=74  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-101-65.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-102-168.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-103-148.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-2-149.ec2.internal[0m : [0;32mok=52  [0m [0;33mchanged=39  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-3-200.ec2.internal[0m : [0;32mok=52  [0m [0;33mchanged=39  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

[0m[1mnull_resource.run_ansible: Creation complete after 11m29s [id=8512844736389875644][0m
[33m╷[0m[0m
[33m│[0m [0m[1m[33mWarning: [0m[0m[1mArgument is deprecated[0m
[33m│[0m [0m
[33m│[0m [0m[0m  with aws_eip.bastion_eip,
[33m│[0m [0m  on vpc.tf line 42, in resource "aws_eip" "bastion_eip":
[33m│[0m [0m  42:   vpc      = [4mtrue[0m[0m
[33m│[0m [0m
[33m│[0m [0muse domain attribute instead
[33m╵[0m[0m
Releasing state lock. This may take a few moments...
[0m[1m[32m
Apply complete! Resources: 89 added, 0 changed, 0 destroyed.
[0m[0m[1m[32m
Outputs:

[0mazs = tolist([
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
])
control_instance_azs_one = "us-east-1a"
control_instance_azs_three = "us-east-1c"
control_instance_azs_two = "us-east-1b"
cp_instances_one = "10.0.1.27"
cp_instances_three = "10.0.3.200"
cp_instances_two = "10.0.2.149"
ec2_bastion_public_instance_ids = "i-064a4455ffe70d5a3"
ec2_bastion_public_ip = "34.238.186.232"
nat_public_ips = tolist([
  "34.233.51.143",
])
private_subnets = [
  "subnet-0c87420545983ceb0",
  "subnet-020ce36494b6e11a5",
  "subnet-0bb07803cafd65a23",
]
public_subnets = [
  "subnet-01586dca943fa29c4",
  "subnet-033b793d83ada46d7",
  "subnet-04e0d1047aba064fc",
]
vpc_cidr_block = "10.0.0.0/16"
vpc_id = "vpc-03283f321e213ebb7"
worker_instance_azs_one = "us-east-1a"
worker_instance_azs_three = "us-east-1c"
worker_instance_azs_two = "us-east-1b"
worker_instances_one = "3.94.254.59"
worker_instances_three = "34.230.47.153"
worker_instances_two = "44.201.36.91"
