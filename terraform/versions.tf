terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
      # Do NOT use v5. Unsable at this point.
      version = "4.52.0"
    }
  }
  required_version = ">= 1.11"
}