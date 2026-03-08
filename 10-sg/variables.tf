variable "project" {
    default = "Roboshop"
}

variable "environment" {
    default = "dev"
}

variable "sg_name" {
    type = list 
    default = [
        #database
        "mangodb","redis","mysql","rabbitmq",
        #backend
        "catalogue","cart","shipping","user","payment",
        #Backend ALB --load balancer
        "backend_alb",
        #Frountend 
        "frountend",
        #Frountend ALB
        "frountend_alb",
        #Bastion
        "bastion"
    ]
}