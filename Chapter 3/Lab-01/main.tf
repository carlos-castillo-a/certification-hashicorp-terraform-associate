#####################################################
# Lab 01: Create NGINX instance on Docker Container #
####################################################

# Define required providers
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.15.0"
    }
  }
}

# Declare docker as default provider
provider "docker" {}

# Define resources
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "Lab-01"
  ports {
    internal = 80
    external = 8000
  }
}