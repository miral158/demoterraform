provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Create an Nginx container
resource "docker_container" "nginx" {
  image = "${docker_image.nginx.latest}"
  name  = "enginecks"
  ports {
    internal = 8087
    external = 8087
  }
}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}













