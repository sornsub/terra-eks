terraform {
  
  required_version = ">= 1.7, < 2.0"

  required_providers {
    # create manage aws ex. vpc ec2
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.95"
    }
    # create random pass
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6.0"
    }
    # manage certificate TLS/SSL
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0.5"
    }
    # create manages vm with cloud
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "~> 2.3.3"
    }
    # create manages kubernetes
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.27"
    }

    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.12"
    }

  }

  backend "s3" {
    bucket = "terra-eks-demo-storage"
    key    = "state/terraform.tfstate"
    region = "us-east-1"
  }

}
