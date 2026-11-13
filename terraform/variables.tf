
variable "aws_region" {
  description = "AWS region for infrastructure deployment"
  type        = string
  default     = "ap-south-2"
}

variable "instance_type" {
  description = "EC2 instance type for the PostgreSQL server"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Existing AWS EC2 key pair name"
  type        = string
  default     = "jenkins"
}

variable "ssh_allowed_cidr" {
  description = "Public IPv4 CIDR allowed to connect through SSH"
  type        = string

  validation {
    condition     = can(cidrnetmask(var.ssh_allowed_cidr))
    error_message = "Provide a valid IPv4 CIDR, for example 203.0.113.10/32."
  }
}

variable "root_volume_size" {
  description = "EC2 root volume size in GB"
  type        = number
  default     = 20

  validation {
    condition     = var.root_volume_size >= 8
    error_message = "Root volume must be at least 8 GB."
  }
}
