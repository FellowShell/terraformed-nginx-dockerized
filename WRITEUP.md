Project Write-Up



Overview

A self-contained Infrastructure-as-Code project that provisions and configures an nginx web service entirely on local infrastructure, using Terraform's Docker provider. Built to demonstrate core IaC skills without requiring cloud credentials or cost.



What I Built

\- Used Terraform to declaratively provision a Docker container running nginx, replacing manual docker run commands with reproducible, version-controlled infrastructure code

\- Mounted a custom index.html into the container via Terraform-managed volumes, serving custom content rather than the default image

\- Parameterized the entire configuration (image, container name, ports, project tags) using Terraform variables, enabling redeployment with different settings via -var overrides

\- Implemented a CI/CD pipeline using GitHub Actions that automatically runs terraform fmt -check and terraform validate on every push to main

\- Documented the full rebuild process so the environment can be recreated from scratch by anyone with Docker and Terraform installed



&#x20;Skills Demonstrated

\- Infrastructure as Code: Terraform (providers, resources, variables, state management)

\- Containerization: Docker (image management, volume mounts, port mapping)

\- Version Control: Git (branching, merge conflict resolution, commit hygiene)

\- CI/CD: GitHub Actions (automated validation pipelines)

\- Documentation: Technical writing for reproducibility



Tech Stack

Terraform, Docker, GitHub Actions, Git, Bash/PowerShell

