resource "aws_instance" "terraform" {
    ami = var.ami_id
    #instance_type = "${locals.instance_type}"
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = var.tags
}

resource "aws_security_group" "allow_all" {
  name   = var.security_group

  egress {
    from_port        = var.egress_from_port
    to_port          = var.egress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
  }

  ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_all_tf"
  }

}