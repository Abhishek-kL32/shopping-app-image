variable "project_name" {
  type        = string
  }
  
  variable "project_env" {
  type        = string
  }

 variable "ami_id" {
  type        = string
  }
  
  locals {
   timestamp    = "${formatdate("DD-MM-YYYY-hh-mm", timestamp())}"
   image_name   = "${var.project_name}-${var.project_env}-${local.timestamp}"
 }
