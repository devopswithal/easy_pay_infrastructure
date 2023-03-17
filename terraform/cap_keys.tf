resource "tls_private_key" "ssh" {
  algorithm       = "RSA"
  rsa_bits        = "4096"
}

resource "local_file" "ep_cap_key" {
  filename        = "ep_cap_key.pem"
  file_permission = "0400"
  content = tls_private_key.ssh.private_key_pem
}

resource "aws_key_pair" "ep_cap_ssh" {
  key_name        = "ep_cap_ssh"
  public_key      = tls_private_key.ssh.public_key_openssh
}