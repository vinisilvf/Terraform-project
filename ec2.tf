resource "aws_instance" "amb-prod" {
  count             = 1
  ami               = "ami-0fc5d35ebf8bc3bc"
  instance_type     = "t2.micro" 
  key_name          = "Terraform"
  security_groups   = ["allow_ssh","allow_http","allow_egress"]
  user_data         = file("script.sh")
  
  tags = {
    Name = "amb-prod-${count.index}"
  }
}