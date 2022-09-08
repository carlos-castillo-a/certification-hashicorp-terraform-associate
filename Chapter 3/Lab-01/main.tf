#####################################################
# Lab 01: Create NGINX instance on Docker Container #
####################################################

/* Steps to  run:
1. Open terminal and run "terraform init" to download required plugins
2. Verify resources being created by running "terraform plan"
3. Create resouces by running "terraform apply"
4. Verify NGINX container running in Docker by running "docker ps"
5. Destroy resources by running "terraform destroy"
*/

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