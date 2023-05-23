resource "tls_private_key" "ssh" {
  algorithm       = "RSA"
  rsa_bits        = "4096"
}

resource "local_file" "ep_ec2_key" {
  filename        = "ep-ec2-key.pem"
  file_permission = "0400"
  content = tls_private_key.ssh.private_key_pem
}

resource "aws_key_pair" "ep_ec2_key" {
  key_name        = "ep-ec2-key"
  public_key      = tls_private_key.ssh.public_key_openssh
}

