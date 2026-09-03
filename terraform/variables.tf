variable "project_name" {
  description = "Base name used for tagging and naming resources"
  type        = string
  default     = "fellowshell"
}

variable "nginx_image" {
  description = "Docker image to use for the nginx container"
  type        = string
  default     = "nginx:1.27-alpine"
}

variable "container_name" {
  description = "Name of the docker container"
  type        = string
  default     = "fellowshell-nginx"
}

variable "external_port" {
  description = "Host port to expose nginx on"
  type        = number
  default     = 8080
}

variable "internal_port" {
  description = "Container port nginx listens on"
  type        = number
  default     = 80
}
