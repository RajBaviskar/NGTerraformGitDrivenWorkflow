terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

provider "harness" {
  endpoint         = "https://app.harness.io/gateway"
  account_id       = "UKh5Yts7THSMAbccG3HrLA"
  platform_api_key = "pat.UKh5Yts7THSMAbccG3HrLA.631ad184015b135d5052742a.VsueShc2p2xD3abapFQG"
}

# add organizations

# module "DefaultOrg" {
#   source = "./DefaultOrg"
#   org    = "DefaultOrg"
# }

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
