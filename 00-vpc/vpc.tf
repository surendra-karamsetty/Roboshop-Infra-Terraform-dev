module "vpc" {
    source = "git::https://github.com/surendra-karamsetty/Terraform-aws-vpc-module.git?ref=main"
    project = var.project
    environment = var.environment
    is_peering_required = false
    }