resource "aws_security_group" "allow_tls" {
  name                  = "allow_tls"
  description           = "Permitir acesso via porta 22 (ssh)"

  ingress   {
    description         = "SSH from VPC"
    from_port           = 22
    to_port             = 22
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allow_http" {
  name                  = "allow_http"
  description           = "Permitir acesso via porta 80 (http)"

  ingress   {
    description         = "HTTP from VPC"
    from_port           = 80
    to_port             = 80
    protocol            = "tcp"
    cidr_blocks         = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "allow_http"
  }
}

resource "aws_security_group" "allow_egress" {
  name                  = "allow_egress"
  description           = "Permitir egress"

  egress   {
    from_port           = 0
    to_port             = 0
    protocol            = "-1"
    cidr_blocks         = ["0.0.0.0/0"]
    ipv6_cidr_blocks    = ["::/0"]
  }
  
  tags = {
    Name = "allow_egress"
  }
}
