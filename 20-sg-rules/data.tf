data "aws_ssm_parameter" "bastion_sg_id" {
 name = "/${var.project}/${var.environment}/bastion_seg_id"
 }

 data "aws_ssm_parameter" "mongodb_sg_id" {
 name = "/${var.project}/${var.environment}/mongodb_seg_id"
 }

data "aws_ssm_parameter" "catalogue_sg_id" {
 name = "/${var.project}/${var.environment}/catalogue_seg_id"
 }

data "aws_ssm_parameter" "user_sg_id" {
 name = "/${var.project}/${var.environment}/user_seg_id"
 }

data "aws_ssm_parameter" "redis_sg_id" {
 name = "/${var.project}/${var.environment}/redis_seg_id"
 }

 data "aws_ssm_parameter" "mysql_sg_id" {
 name = "/${var.project}/${var.environment}/mysql_seg_id"
 }

  data "aws_ssm_parameter" "rabbitmq_sg_id" {
 name = "/${var.project}/${var.environment}/rabbitmq_seg_id"
 }