terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# VARIABLES
variable "filename" {
  description = "Name of the file"
  type        = string
}

variable "message" {
  description = "Content of the file"
  type        = string
}

# RESOURCE
resource "local_file" "file" {
  filename = var.filename
  content  = var.message
}

# OUTPUT
output "file_created" {
  value = local_file.file.filename
}