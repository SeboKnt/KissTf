terraform {
  required_providers {
    hcloud = {
      source = "hetznercloud/hcloud"
    }
  }
  required_version = ">= 1.3.9"
}

variable "hcloud_token" {
    type = string
    sensitive = true
}