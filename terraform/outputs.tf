output "url" {
  description = "URL where the nginx site is reachable"
  value       = "http://localhost:${var.external_port}"
}

output "container_id" {
  description = "ID of the running nginx container"
  value       = docker_container.nginx.id
}

output "image_id" {
  description = "Digest/ID of the nginx image that was actually pulled"
  value       = docker_image.nginx.image_id
}
