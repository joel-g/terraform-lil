provider "google" {
  credentials = "${file("../account.json")}"
  project     = "single-bulwark-255317"
  region      = "us-west1"
}


provider "aws" {
  region = "us-west-2"
}

provider "azurerm" {
  subscription_id = "${var.az_subscription_id}"
  client_id       = "${var.az_client_id}"
  client_secret   = "${var.az_client_secret}"
  tenant_id       = "${var.az_tenant_id}"
}

variable az_subscription_id {}
variable az_client_id {}
variable az_client_secret {}
variable az_tenant_id {}