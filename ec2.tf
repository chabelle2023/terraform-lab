resource "aws_instance" "demo1" {
  ami           = var.ami-type
  instance_type = var.instance_type
  key_name      = "dev-wdp"
  user_data     = file("${path.module}/postgresql.sh")
  tags = {
    "Name" = var.instance-name
    "env"  = var.env
    "Team" = var.team 

  }
}