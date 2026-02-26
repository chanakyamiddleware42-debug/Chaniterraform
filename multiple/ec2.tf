resource "aws_instance" "example" {
  ami  = var.ami_id
  # instance_type = var.environment == "dev" ? "t3.micro" : "t2.small"
  instance_type =var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  tags = var.ec2_tags
}

  
resource "aws_security_group" "allow_tls" {
  name        = var.allow_tls_terraform_default
  description = var.description

  egress {
    from_port        = var.egnressfromport
    to_port          = var.egnresstoport
    protocol         = "-1"
    cidr_blocks      = var.egnresscicdr
    ipv6_cidr_blocks = ["::/0"]
   }


 ingress {
    from_port        = var.ignressfromport
    to_port          = var.ignresstoport
    protocol         = "-1"
    cidr_blocks      = var.ignresscicdr
    ipv6_cidr_blocks = ["::/0"]
  }
}

 
