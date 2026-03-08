module "sg" {
    #source = "../../Terraform-aws-sg"
    count = length (var.sg_name)
    source = "git::https://github.com/surendra-karamsetty/Terraform-aws-sg.git?ref=main"
    project = var.project
    environment = var.environment
    sg_name = replace(var.sg_name[count.index], "_", "-")
    vpc_id = local.vpc_id
}