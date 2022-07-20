output "ssh_pubkey" {
  value = try(aws_key_pair.ssh_pubkey[0].key_name, aws_key_pair.auto_ssh_pubkey[0].key_name)
}
output "public_ip" {
  value = aws_instance.bastion.public_ip
}
output "ssh_privkey" {
  value = try(local_sensitive_file.auto_ssh_privkey[0].filename, "<your_private_ssh_key>")
}