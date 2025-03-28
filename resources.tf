resource "docker_image" "nginx" {
  name = "nginx:latest"
}

# Create a Docker container with port mapping
resource "docker_container" "nginx" {
  image = docker_image.nginx.name
  name  = "nginx_container"

  ports {
    internal = 80   # Port inside the container
    external = 8080 # Port on the host machine
  }
}