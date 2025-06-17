terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.default_region
}


locals {
  environment_name = "dev"
}

module "web_app" {
  source = "../../modules/web-app-module" 

  # Input Variables
  bucket_prefix    = "web-app-data-${local.environment_name}"
  domain           = var.domain
  environment_name = local.environment_name
  instance_type    = var.instance_type
  azs              = var.azs

}


