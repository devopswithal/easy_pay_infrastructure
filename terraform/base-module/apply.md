[0m[1mtls_private_key.ssh: Creating...[0m[0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Creating...[0m[0m
[0m[1maws_iam_role.worker_node_iam_role: Creating...[0m[0m
[0m[1maws_iam_policy.worker_policy: Creating...[0m[0m
[0m[1maws_iam_role.control_plane_iam_role: Creating...[0m[0m
[0m[1maws_iam_policy.worker_policy: Creation complete after 0s [id=arn:aws:iam::532895811159:policy/worker-ec2-policy][0m
[0m[1maws_iam_role.worker_node_iam_role: Creation complete after 0s [id=worker-node-iam-role][0m
[0m[1maws_iam_role_policy_attachment.worker_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_instance_profile.worker_node_instance_profile: Creating...[0m[0m
[0m[1maws_iam_role.control_plane_iam_role: Creation complete after 0s [id=control-plane-iam-role][0m
[0m[1maws_iam_role_policy_attachment.elb_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.rds_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.ec2_policy_attachment: Creating...[0m[0m
[0m[1maws_iam_instance_profile.control_plane_instance_profile: Creating...[0m[0m
[0m[1maws_iam_role_policy_attachment.worker_policy_attachment: Creation complete after 1s [id=worker-node-iam-role-20230613193126500400000001][0m
[0m[1maws_iam_role_policy_attachment.elb_policy_attachment: Creation complete after 1s [id=control-plane-iam-role-20230613193126536500000002][0m
[0m[1maws_iam_role_policy_attachment.ec2_policy_attachment: Creation complete after 1s [id=control-plane-iam-role-20230613193126623900000003][0m
[0m[1maws_iam_role_policy_attachment.rds_policy_attachment: Creation complete after 1s [id=control-plane-iam-role-20230613193126634000000004][0m
[0m[1maws_iam_instance_profile.worker_node_instance_profile: Creation complete after 1s [id=worker-node-instance-profile][0m
[0m[1maws_iam_instance_profile.control_plane_instance_profile: Creation complete after 1s [id=control-plane-instance-profile][0m
[0m[1mtls_private_key.ssh: Creation complete after 2s [id=5e1ed681b2ce25f854fa21e70447e792a1a5e79c][0m
[0m[1maws_key_pair.ep_ec2_key: Creating...[0m[0m
[0m[1mlocal_file.ep_ec2_key: Creating...[0m[0m
[0m[1mlocal_file.ep_ec2_key: Creation complete after 0s [id=bc4d97e06f4eb03657a8a9054dcd4e1813000dee][0m
[0m[1maws_key_pair.ep_ec2_key: Creation complete after 0s [id=ep-ec2-key][0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_vpc.this[0]: Creation complete after 12s [id=vpc-057da3d921ffd22ff][0m
[0m[1mmodule.cni_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_network_acl.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_route_table.default[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_security_group.this[0]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1maws_lb_target_group.cplane_tg: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group.this_name_prefix[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_route_table.default[0]: Creation complete after 0s [id=rtb-075a0feda75ded73d][0m
[0m[1mmodule.vpc.aws_route_table.public[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table.public[0]: Creation complete after 1s [id=rtb-0be6c89e2761906af][0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Creating...[0m[0m
[0m[1maws_lb_target_group.cplane_tg: Creation complete after 1s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/16728344d5947bf8][0m
[0m[1mmodule.vpc.aws_route_table.private[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_network_acl.this[0]: Creation complete after 1s [id=acl-0d4346d74b1d104ad][0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_default_security_group.this[0]: Creation complete after 1s [id=sg-0128e4a6e2be070c3][0m
[0m[1mmodule.vpc.aws_internet_gateway.this[0]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-03452cb8e2ed3603a][0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-07741f3bafdecd51f][0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-079a57395b4d46ab0][0m
[0m[1mmodule.vpc.aws_route_table.private[0]: Creation complete after 1s [id=rtb-08eb45490b38974d7][0m
[0m[1mmodule.worker_node_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-04153b97ce2383614][0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-0df2bcbde3fb3e996][0m
[0m[1mmodule.alb_sg.aws_security_group.this_name_prefix[0]: Creation complete after 2s [id=sg-0ced52e20fc34aacf][0m
[0m[1mmodule.vpc.aws_internet_gateway.this[0]: Creation complete after 1s [id=igw-0ef8f93a2fcfb1a3f][0m
[0m[1mmodule.database_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 0s [id=sgrule-508974420][0m
[0m[1mmodule.cni_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 0s [id=sgrule-1623158072][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-3922372829][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.database_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-1787056050][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 1s [id=sgrule-2480051171][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[5]: Creating...[0m[0m
[0m[1mmodule.cni_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-1934200564][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[6]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-4267024487][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 1s [id=sgrule-3714825068][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[5]: Creation complete after 2s [id=sgrule-3838586327][0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[6]: Creation complete after 1s [id=sgrule-1302153286][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creation complete after 2s [id=sgrule-499607562][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-2915543597][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 0s [id=sgrule-2416988889][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 2s [id=sgrule-2106655161][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.control_plane_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-1327446748][0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-56873338][0m
[0m[1mmodule.vpc.aws_eip.nat[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route.public_internet_gateway[0]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 2s [id=sgrule-1737765731][0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_eip.nat[0]: Creation complete after 1s [id=eipalloc-03fc011ebb3efe18f][0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route.public_internet_gateway[0]: Creation complete after 1s [id=r-rtb-0be6c89e2761906af1080289494][0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.worker_node_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-2218009750][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 0s [id=sgrule-3906351408][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[3]: Creation complete after 1s [id=sgrule-559442667][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-441685817][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[0]: Creation complete after 1s [id=sgrule-1567905985][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creating...[0m[0m
[0m[1mmodule.ssh_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-1209290908][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creating...[0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[1]: Creation complete after 1s [id=sgrule-1104333044][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[2]: Creation complete after 1s [id=sgrule-292683855][0m
[0m[1mmodule.alb_sg.aws_security_group_rule.egress_with_cidr_blocks[0]: Creation complete after 2s [id=sgrule-67753905][0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.alb_sg.aws_security_group_rule.ingress_with_cidr_blocks[4]: Creation complete after 3s [id=sgrule-3064707816][0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.private[0]: Creation complete after 11s [id=subnet-035363a44102a11be][0m
[0m[1mmodule.vpc.aws_subnet.private[1]: Creation complete after 11s [id=subnet-083471d07609aac76][0m
[0m[1mmodule.vpc.aws_subnet.private[2]: Creation complete after 11s [id=subnet-05c53386a003b78f5][0m
[0m[1mmodule.vpc.aws_route_table_association.private[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[2]: Creating...[0m[0m
[0m[1maws_lb.control_plane_nlb: Creating...[0m[0m
[0m[1maws_instance.control_instance[1]: Creating...[0m[0m
[0m[1maws_instance.control_instance[0]: Creating...[0m[0m
[0m[1maws_instance.control_instance[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.private[1]: Creation complete after 0s [id=rtbassoc-03a90b23b1b4da2b0][0m
[0m[1mmodule.vpc.aws_route_table_association.private[0]: Creation complete after 0s [id=rtbassoc-0181969b5dbad05e2][0m
[0m[1mmodule.vpc.aws_route_table_association.private[2]: Creation complete after 0s [id=rtbassoc-0028541f265233963][0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[0]: Creation complete after 21s [id=subnet-048b0759d7e1a2c85][0m
[0m[1maws_lb.control_plane_nlb: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[2]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[1]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.control_instance[0]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_subnet.public[1]: Creation complete after 21s [id=subnet-016e853cd0ff7013a][0m
[0m[1mmodule.vpc.aws_subnet.public[2]: Creation complete after 21s [id=subnet-02a44c97fc9c9f9b5][0m
[0m[1mmodule.vpc.aws_route_table_association.public[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[1]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Creating...[0m[0m
[0m[1maws_instance.worker_instance[1]: Creating...[0m[0m
[0m[1maws_instance.worker_instance[2]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[0]: Creation complete after 0s [id=rtbassoc-09a1ba700b39a89f8][0m
[0m[1mmodule.vpc.aws_route_table_association.public[2]: Creation complete after 1s [id=rtbassoc-0b52738bad50cc4a8][0m
[0m[1maws_instance.worker_instance[0]: Creating...[0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route_table_association.public[1]: Creation complete after 1s [id=rtbassoc-09244da6f1bdecd4d][0m
[0m[1maws_instance.control_instance[0]: Creation complete after 16s [id=i-053755dbbdb7842c1][0m
[0m[1maws_instance.control_instance[2]: Creation complete after 16s [id=i-0e67156cc62bdbc12][0m
[0m[1maws_instance.control_instance[1]: Creation complete after 16s [id=i-02914f8f18c2c1ac7][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[2]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[0]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[1]: Creating...[0m[0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[2]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/16728344d5947bf8-20230613193207268900000013][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[1]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/16728344d5947bf8-20230613193207352900000014][0m
[0m[1maws_lb_target_group_attachment.control_plane_nlb_attach[0]: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:targetgroup/cplane-tg/16728344d5947bf8-20230613193207413200000015][0m
[0m[1maws_lb.control_plane_nlb: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[2]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[1]: Still creating... [10s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[0]: Still creating... [10s elapsed][0m[0m
[0m[1maws_instance.worker_instance[1]: Creation complete after 16s [id=i-0839c9cb025c21916][0m
[0m[1maws_instance.worker_instance[2]: Creation complete after 16s [id=i-00c090d34dfd6d3c7][0m
[0m[1maws_instance.worker_instance[0]: Creation complete after 15s [id=i-0affb21c1b6fedebe][0m
[0m[1mlocal_file.ansible_inventory: Creating...[0m[0m
[0m[1mlocal_file.ansible_inventory: Creation complete after 0s [id=6df938b5cb1247384f0ab894c08075c19187e976][0m
[0m[1maws_lb.control_plane_nlb: Still creating... [30s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [20s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [20s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [40s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [30s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Still creating... [30s elapsed][0m[0m
[0m[1mmodule.bastion_instance.aws_instance.this[0]: Creation complete after 34s [id=i-05be708b464316f6a][0m
[0m[1maws_lb.control_plane_nlb: Still creating... [50s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [40s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m0s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [50s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m10s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m0s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m20s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m10s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m30s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m20s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m40s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Still creating... [1m30s elapsed][0m[0m
[0m[1mmodule.vpc.aws_nat_gateway.this[0]: Creation complete after 1m38s [id=nat-0ec6e83ac4904d877][0m
[0m[1mmodule.vpc.aws_route.private_nat_gateway[0]: Creating...[0m[0m
[0m[1mmodule.vpc.aws_route.private_nat_gateway[0]: Creation complete after 1s [id=r-rtb-08eb45490b38974d71080289494][0m
[0m[1maws_eip.bastion_eip: Creating...[0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [1m50s elapsed][0m[0m
[0m[1maws_eip.bastion_eip: Creation complete after 2s [id=eipalloc-0fa4b77882ddd368a][0m
[0m[1mnull_resource.bastion_init: Creating...[0m[0m
[0m[1mnull_resource.bastion_init: Provisioning with 'remote-exec'...[0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mConnecting to remote host via SSH...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Host: 44.211.2.90
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  User: ubuntu
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Password: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Private key: true
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Certificate: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  SSH Agent: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Checking Host Key: false
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0m  Target Platform: unix
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mConnected!
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1maws_lb.control_plane_nlb: Still creating... [2m0s elapsed][0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init: Still creating... [10s elapsed][0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1maws_lb.control_plane_nlb: Still creating... [2m10s elapsed][0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init: Still creating... [20s elapsed][0m[0m
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init (remote-exec):[0m [0mWaiting for cloud-init...
[0m[1mnull_resource.bastion_init: Creation complete after 26s [id=7566872575093796042][0m
[0m[1mnull_resource.copy_k8s_manifests: Creating...[0m[0m
[0m[1mnull_resource.provisioner: Creating...[0m[0m
[0m[1mnull_resource.provisioner: Provisioning with 'file'...[0m[0m
[0m[1mnull_resource.copy_k8s_manifests: Provisioning with 'file'...[0m[0m
[0m[1mnull_resource.provisioner: Creation complete after 2s [id=102489993566349633][0m
[0m[1mnull_resource.copy_k8s_manifests: Creation complete after 2s [id=7997424010455940328][0m
[0m[1maws_lb.control_plane_nlb: Still creating... [2m20s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Still creating... [2m30s elapsed][0m[0m
[0m[1maws_lb.control_plane_nlb: Creation complete after 2m32s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:loadbalancer/net/control-plane-nlb/fb512a92a8b639c8][0m
[0m[1mlocal_file.ansible_vars_file: Creating...[0m[0m
[0m[1maws_lb_listener.control_plane_nlb_listener: Creating...[0m[0m
[0m[1mlocal_file.ansible_vars_file: Creation complete after 0s [id=2a8cdabe36970a7b44f5c3454e612d9e1cfa75f6][0m
[0m[1mnull_resource.copy_ansible_playbooks: Creating...[0m[0m
[0m[1mnull_resource.copy_ansible_playbooks: Provisioning with 'file'...[0m[0m
[0m[1maws_lb_listener.control_plane_nlb_listener: Creation complete after 0s [id=arn:aws:elasticloadbalancing:us-east-1:532895811159:listener/net/control-plane-nlb/fb512a92a8b639c8/4cbee9ecf64cf230][0m
[0m[1mnull_resource.copy_ansible_playbooks: Creation complete after 1s [id=8535275850356448415][0m
[0m[1mnull_resource.run_ansible: Creating...[0m[0m
[0m[1mnull_resource.run_ansible: Provisioning with 'remote-exec'...[0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mConnecting to remote host via SSH...
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m  Host: 44.211.2.90
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
[0m[1mnull_resource.run_ansible: Still creating... [30s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [40s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [50s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [1m0s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[1;35m[WARNING]: Invalid characters were found in group names but not replaced, use[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[1;35m-vvvv to see details[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [all] *********************************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Set hostnames] *******************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Dependencies] ************************************
[0m[1mnull_resource.run_ansible: Still creating... [1m10s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Update Cache] ********************************************
[0m[1mnull_resource.run_ansible: Still creating... [1m20s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m30s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Keyring Directory] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker GPG Key] **********************************
[0m[1mnull_resource.run_ansible: Still creating... [1m40s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker Repository] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [1m50s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [2m0s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install Docker Bundle] ***********************************
[0m[1mnull_resource.run_ansible: Still creating... [2m10s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [2m20s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [2m30s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [2m40s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Enable Docker] *******************************************
[0m[1mnull_resource.run_ansible: Still creating... [2m50s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Make CNI directory] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Download CNI plugins archive] ****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Extract CNI plugins archive] *****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [3m0s elapsed][0m[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Add Kubernetes GPG Key] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Sleep for 20 seconds] ************************************
[0m[1mnull_resource.run_ansible: Still creating... [3m10s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [3m20s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [3m30s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [3m40s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Verify presence of GPG Key] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Add Kubernetes Repository] *******************************
[0m[1mnull_resource.run_ansible: Still creating... [3m50s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Update Cache] ********************************************
[0m[1mnull_resource.run_ansible: Still creating... [4m0s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Kubernetes Bundle Install] *******************************
[0m[1mnull_resource.run_ansible: Still creating... [4m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [4m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [4m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [4m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [tools_install : Install network tools] ***********************************
[0m[1mnull_resource.run_ansible: Still creating... [4m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [5m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [5m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Turn swap off] ************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Comment out lines with "swap" in the file] ********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Create k8s.conf file in the modules-load directory] ***********
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Turn on iptable bridge calls and ipv4 forwarding] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Load kernel k8s modules] **************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Verify iptables] **********************************************
[0m[1mnull_resource.run_ansible: Still creating... [5m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : debug] ********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003256",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.652358",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.649102",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.004633",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.870803",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.866170",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003666",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.982029",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.978363",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003768",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.872130",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.868362",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003210",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.856863",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.853653",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "sysctl_config": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "sysctl",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-iptables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.bridge.bridge-nf-call-ip6tables",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "net.ipv4.ip_forward"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.003324",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:39:45.992086",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:39:45.988762",[0m
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
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Set systemd as cgroupdriver] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Comment out disabled plugins] *********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Docker daemon config] *****************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Reload daemons] ***********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Restart containerd] *******************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [vm_setup : Restart docker] ***********************************************
[0m[1mnull_resource.run_ansible: Still creating... [5m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane] ***********************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [k8s_manifests : Copy k8s manifest files] *********************************
[0m[1mnull_resource.run_ansible: Still creating... [5m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install etcd-client] ******************************
[0m[1mnull_resource.run_ansible: Still creating... [5m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Check ansible_vars_file.yml file exists.] *********
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Initialize cluster with kubeadm] ******************
[0m[1mnull_resource.run_ansible: Still creating... [6m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [6m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [6m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Create .kube directory] ***************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy admin.conf to user's kube config] ************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Move kube-controller-manager manifest file out of static pod path] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add cloud-provider flag to api-server config] *****
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add cloud-provider flag to controller-manager config] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Add kubelet extra args] ***************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Restart kubelet] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Download Flannel] *********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Replace c-plane cni interface name] ***************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install Pod network] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Install AWS Cloud-Controller-Manager] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Move kube-controller-manager manifest file back to static pod path] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Restart kubelet] **********************************
[0m[1mnull_resource.run_ansible: Still creating... [6m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Sleep for 20 seconds] *****************************
[0m[1mnull_resource.run_ansible: Still creating... [6m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [6m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : get default kubeadm config] ***********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Create a new certificate key] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Get join command] *********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : debug] ********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "cp_join_command": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": "kubeadm token create --print-join-command --certificate-key \"53c5fae70a55d4e41571b97ffd90973e78260af60397db4106d0339678a4d831\"",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.081041",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:41:17.844941",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:41:17.763900",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "kubeadm join control-plane-nlb-fb512a92a8b639c8.elb.us-east-1.amazonaws.com:6443 --token c5pput.25nxya03n0vcfb8p --discovery-token-ca-cert-hash sha256:9c80c7f74a2e171246c8e74357015759efc5f3a6a27aa006c579c48bfaf928ad --control-plane --certificate-key 53c5fae70a55d4e41571b97ffd90973e78260af60397db4106d0339678a4d831",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "kubeadm join control-plane-nlb-fb512a92a8b639c8.elb.us-east-1.amazonaws.com:6443 --token c5pput.25nxya03n0vcfb8p --discovery-token-ca-cert-hash sha256:9c80c7f74a2e171246c8e74357015759efc5f3a6a27aa006c579c48bfaf928ad --control-plane --certificate-key 53c5fae70a55d4e41571b97ffd90973e78260af60397db4106d0339678a4d831"[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy join command to local file] ******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Get worker node join command] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : debug] ********************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal] => {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    "node_join_command": {[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "changed": true,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "cmd": "kubeadm token create --print-join-command",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "delta": "0:00:00.075378",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "end": "2023-06-13 19:41:18.817480",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "failed": false,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "msg": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "rc": 0,[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "start": "2023-06-13 19:41:18.742102",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr": "",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stderr_lines": [],[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout": "kubeadm join control-plane-nlb-fb512a92a8b639c8.elb.us-east-1.amazonaws.com:6443 --token rb5yvk.tthsf8pwthurxyl2 --discovery-token-ca-cert-hash sha256:9c80c7f74a2e171246c8e74357015759efc5f3a6a27aa006c579c48bfaf928ad ",[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        "stdout_lines": [[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m            "kubeadm join control-plane-nlb-fb512a92a8b639c8.elb.us-east-1.amazonaws.com:6443 --token rb5yvk.tthsf8pwthurxyl2 --discovery-token-ca-cert-hash sha256:9c80c7f74a2e171246c8e74357015759efc5f3a6a27aa006c579c48bfaf928ad "[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m        ][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m    }[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32m}[0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_leader : Copy worker node join command to local file] ******
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-followers] *************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Kubectl Install] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Add kubelet extra args] ************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Copy the control-plane join command to control-plane-followers] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Add cri socket to kubelet] *********************
[0m[1mnull_resource.run_ansible: Still creating... [7m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Join the control-plane-followers node to cluster] ***
[0m[1mnull_resource.run_ansible: Still creating... [7m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [7m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [7m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Sleep for 20 seconds] **************************
[0m[1mnull_resource.run_ansible: Still creating... [8m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [8m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Create .kube directory] ************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Check admin.conf file exists.] *****************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [control_plane_followers : Copy admin.conf to user's kube config] *********
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [workers] *****************************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Add kubelet extra args] ***********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Copy the join command for worker nodes] *******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Add containerd socket] ************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [worker_nodes : Join the worker node to cluster] **************************
[0m[1mnull_resource.run_ansible: Still creating... [8m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Make admin directory] ******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL private key for cluster-admin] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin.key to local file] **************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL Certificate Signing Request for cluster-admin] ***
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Generate an OpenSSL certificate signed with your kubernetes CA certificate] ***
[0m[1mnull_resource.run_ansible: Still creating... [8m51s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin.crt to local file] **************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Create namespace] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Apply admin role] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Apply admin rolebinding] ***************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Setting credentials to the user] *******************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Set context to cluster-admin.] *********************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy admin.conf to cluster-admin-conf] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Register cluster-admin-conf contents.] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_creation : Copy cluster-admin-conf to local file] *************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal -> localhost][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-followers,workers] *****************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Make admin directory] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin-conf all cluster nodes] ******
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin.key to all cluster nodes] ****
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible: Still creating... [9m1s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [admin_user_install : Copy the cluster-admin.crt to all cluster nodes] ****
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-2-165.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-101-186.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-3-44.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-103-225.ec2.internal][0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-102-158.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY [control-plane-leader] ****************************************************

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [Gathering Facts] *********************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Download metrics server yaml file] *************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Disable tls authentications] *******************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Install metrics server] ************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create db configmap] ***************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create app secrets] ****************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create persistent volume] **********************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deployment for db pods] *****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Sleep for 30 seconds] **************************************
[0m[1mnull_resource.run_ansible: Still creating... [9m11s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [9m21s elapsed][0m[0m
[0m[1mnull_resource.run_ansible: Still creating... [9m31s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;32mok: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deployment for app pods] ****************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create db ingress network policy] **************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mTASK [install_app : Create deploy horizontal pod autoscaler] *******************
[0m[1mnull_resource.run_ansible: Still creating... [9m41s elapsed][0m[0m
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mchanged: [ip-10-0-1-192.ec2.internal][0m

[0m[1mnull_resource.run_ansible (remote-exec):[0m [0mPLAY RECAP *********************************************************************
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-1-192.ec2.internal[0m : [0;32mok=90  [0m [0;33mchanged=74  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-101-186.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-102-158.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-103-225.ec2.internal[0m : [0;32mok=45  [0m [0;33mchanged=36  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-2-165.ec2.internal[0m : [0;32mok=52  [0m [0;33mchanged=39  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0
[0m[1mnull_resource.run_ansible (remote-exec):[0m [0m[0;33mip-10-0-3-44.ec2.internal[0m  : [0;32mok=52  [0m [0;33mchanged=39  [0m unreachable=0    failed=0    skipped=0    rescued=0    ignored=0

[0m[1mnull_resource.run_ansible: Creation complete after 9m42s [id=6020635536258280985][0m
[33m╷[0m[0m
[33m│[0m [0m[1m[33mWarning: [0m[0m[1mArgument is deprecated[0m
[33m│[0m [0m
[33m│[0m [0m[0m  with aws_eip.bastion_eip,
[33m│[0m [0m  on vpc.tf line 42, in resource "aws_eip" "bastion_eip":
[33m│[0m [0m  42:   vpc      = [4mtrue[0m[0m
[33m│[0m [0m
[33m│[0m [0muse domain attribute instead
[33m╵[0m[0m
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
cp_instances_one = "10.0.1.192"
cp_instances_three = "10.0.3.44"
cp_instances_two = "10.0.2.165"
ec2_bastion_public_instance_ids = "i-05be708b464316f6a"
ec2_bastion_public_ip = "44.211.2.90"
nat_public_ips = tolist([
  "44.193.108.134",
])
private_subnets = [
  "subnet-035363a44102a11be",
  "subnet-083471d07609aac76",
  "subnet-05c53386a003b78f5",
]
public_subnets = [
  "subnet-048b0759d7e1a2c85",
  "subnet-016e853cd0ff7013a",
  "subnet-02a44c97fc9c9f9b5",
]
vpc_cidr_block = "10.0.0.0/16"
vpc_id = "vpc-057da3d921ffd22ff"
worker_instance_azs_one = "us-east-1a"
worker_instance_azs_three = "us-east-1c"
worker_instance_azs_two = "us-east-1b"
worker_instances_one = "54.236.4.239"
worker_instances_three = "44.203.195.107"
worker_instances_two = "3.220.167.138"
