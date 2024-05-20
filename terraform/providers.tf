terraform {
  required_version = ">= 1.4.4"
  backend "s3" {
    key                  = "website"
    workspace_key_prefix = "tenants"
    encrypt              = true
  }
  required_providers {
    duplocloud = {
      source  = "duplocloud/duplocloud"
      version = ">= 0.10.0"
    }
  }
}

provider "duplocloud" {

}
