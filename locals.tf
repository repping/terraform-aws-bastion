locals {
  # Use user supplied ami or if it is not supplied used the latest Amason Linux ami.
  ami = var.ami == "" ? data.aws_ami.latest_al2022[0].id : var.ami
}