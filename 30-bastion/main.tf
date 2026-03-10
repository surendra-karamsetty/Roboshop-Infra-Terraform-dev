resource "aws_instance" "bastion" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  subnet_id = local.public_sub_ids
  vpc_security_group_ids = local.bastion_sg_id

  tags = merge (
    {
        name = "${var.project}-${var.environment}-bastion"
    },
    local.common_tags,
  )
}