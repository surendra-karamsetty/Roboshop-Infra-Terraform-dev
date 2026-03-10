locals {
  ami_id = data.aws_ami.terraform.id
  public_sub_ids = split (",", data.aws_ssm_parameter.public_sub_ids.value)[0]
  bastion_sg_id = data.aws_ssm_parameter.bastion_sg_id.vale
  common_tags = {
    name = var.project
    environment = var.environment
    terraform = "true"
  }
}