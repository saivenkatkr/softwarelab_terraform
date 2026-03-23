terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

# VARIABLE
variable "message" {
  description = "Message to write into file"
  type        = string
  default     = "Hello from Terraform"
}

# RESOURCE
resource "local_file" "hello" {
  filename = "hello.txt"
  content  = var.message
}

# OUTPUT
output "file_path" {
  value = local_file.hello.filename
}