##################################
# Lab 02: Use multiple providers #
##################################

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.0.0"
    }

    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }

  required_version = ">= 1.1"
}