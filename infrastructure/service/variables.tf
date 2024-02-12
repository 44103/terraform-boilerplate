data "aws_caller_identity" "_" {}

variable "region" {}
variable "access_key" {}
variable "secret_key" {}
variable "project" {
  description = "Project Name"
  default     = "trial"
}
variable "service" {
  description = "Service Name"
  default     = ""
}
variable "environment" {
  description = "Environment"
  default     = "dev"
}

locals {
  common = {
    region      = var.region
    project     = var.project
    service     = var.service
    environment = var.environment
    workspace   = terraform.workspace
    account_id  = data.aws_caller_identity._.account_id
  }
}
