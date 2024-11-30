terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

module "aws" {
  source = "./aws"
}

module "gcp" {
  source         = "./gcp"
  gcp_project_id = var.gcp_project_id
  gcp_region     = var.gcp_region
}
