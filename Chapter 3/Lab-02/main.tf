##################################
# Lab 02: Use multiple providers #
##################################

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = random_pet.petname.id
  ports {
    internal = 80
    external = 8000
  }
}

resource "random_pet" "petname" {
  length    = 5
  separator = "-"
}

