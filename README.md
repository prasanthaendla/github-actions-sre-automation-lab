
# GitHub Actions SRE Automation Lab

## 1. Project Overview

This project demonstrates practical Site Reliability Engineering (SRE) automation using GitHub Actions, Terraform, Ansible and AWS.

The objective is to automate infrastructure provisioning, configuration management, security validation and operational reliability.

## 2. Technology Stack

| Technology | Purpose |
|---|---|
| GitHub Actions | CI/CD automation |
| Terraform | Infrastructure provisioning |
| Ansible | Server configuration management |
| AWS EC2 | Compute infrastructure |
| Amazon S3 | Terraform remote state |
| Checkov | Infrastructure security scanning |
| Gitleaks | Git secret detection |
| PostgreSQL | Database platform |
| Prometheus | Monitoring and metrics |
| Grafana | Monitoring dashboards |

## 3. Project Architecture

- Windows laptop: Development using VS Code, Git, Terraform and AWS CLI.
- GitHub: Source code management and workflow orchestration.
- GitHub-hosted runners: Automated CI/CD execution.
- AWS: Infrastructure hosting environment.
- Terraform: Infrastructure provisioning.
- Ansible: PostgreSQL installation and configuration.
- Prometheus and Grafana: Monitoring and observability.

## 4. GitHub Actions Workflows

### SRE Automation CI

- Terraform formatting validation.
- Terraform initialization.
- Terraform configuration validation.
- Ansible syntax validation.

### SRE Security Scanning

- Checkov: Terraform infrastructure security scanning.
- Gitleaks: Secret detection in Git repositories.

## 5. Git Branching Strategy

- main: Stable and validated branch.
- feature/*: Development branches.
- Pull requests: Required for merging changes into main.
- CI and security checks: Executed automatically on pull requests.

## 6. Terraform State Management

Terraform state is stored remotely in a dedicated Amazon S3 bucket.

- Backend: Amazon S3
- Region: ap-south-2
- State locking: Native S3 lockfile
- Encryption: Enabled
- Bucket versioning: Enabled

Terraform state files must never be committed to Git.

## 7. SRE Engineering Roadmap

1. GitHub Actions CI/CD foundation.
2. Infrastructure security and secret detection.
3. Git branching and pull-request automation.
4. AWS OIDC authentication.
5. Terraform-based AWS infrastructure provisioning.
6. Ansible-based PostgreSQL configuration.
7. Monitoring and observability using Prometheus and Grafana.
8. SLI, SLO and error-budget implementation.
9. Failure simulation, incident management and recovery.
10. Production hardening.

## 8. Project Status

Currently implementing the CI/CD foundation, security scanning and pull-request workflow.

This is an evolving hands-on SRE engineering project.
