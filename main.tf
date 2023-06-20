terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = ">= 2.25.2"
    }
  }
}


provider "digitalocean" {
  token = "dop_v1_95f94250481a7a22d63611659fa4e27b2e0a4a1c7ff0dce6baf538facda97c40"
}
