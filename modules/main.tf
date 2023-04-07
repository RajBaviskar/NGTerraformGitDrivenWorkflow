terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "YOUR ACCOUNT ID"
  platform_api_key = "YOUR KEY"
}

# add organizations

module "DefaultOrg" {
  source = "./DefaultOrg"
  org    = "DefaultOrg"
}

module "AirlineOperationsOrg" {
  source = "./AirlineOperationsOrg"
  org    = "AirlineOperationsOrg"
}

module "AirportOperationsOrg" {
  source = "./AirportOperationsOrg"
  org    = "AirportOperationsOrg"
}

module "CustomerSupportOperationsOrg" {
  source = "./CustomerSupportOperationsOrg"
  org    = "CustomerSupportOperationsOrg"
}
