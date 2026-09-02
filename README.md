# FellowShell - Terraform + Docker Nginx

A local infrastructure-as-code project that provisions an nginx web server using Terraform's Docker provider. No cloud account required, everything runs locally via Docker.

## What this does

Terraform pulls the official `nginx` Docker image and runs it as a container, serving a custom `index.html` page on `localhost`.

## Prerequisites

- [Git](https://git-scm.com/downloads)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) (must be running before you apply)

## Project structure
terraform/
├── main.tf # Provider, image, and container resources
├── variables.tf # Configurable inputs (names, ports, image)
└── index.html # Custom page served by nginx

## How to rebuild from scratch

1. Clone the repo:
git clone https://github.com/FellowShell/terraformed-nginx-dockerized.git
cd terraformed-nginx-dockerized/terraform


2. Make sure Docker Desktop is running.

3. Initialize Terraform (downloads the Docker provider):

terraform init


4. Review what will be created:

terraform plan


5. Apply it:

terraform apply

   Type `yes` when prompted.

6. Open your browser to `http://localhost:8080` to see the running page.

7. To tear it down when you're done:

terraform destroy


## Configuration

Default values live in `variables.tf` and can be overridden at apply time, e.g:

terraform apply -var="external_port=9090"


| Variable         | Default              | Description                        |
|------------------|-----------------------|-------------------------------------|
| project_name     | fellowshell           | Used for tagging resources          |
| nginx_image      | nginx:latest          | Docker image to run                 |
| container_name   | fellowshell-nginx     | Name of the running container       |
| external_port    | 8080                  | Host port to access the site on     |
| internal_port    | 80                    | Port nginx listens on inside the container |

## Notes

nginx access logs from this container may be used for later SOC log analysis exercises.