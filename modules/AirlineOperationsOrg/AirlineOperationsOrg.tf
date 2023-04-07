terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}
resource "harness_platform_organization" "AirlineOperationsOrg" {
  name       = var.org
  identifier = var.org
}

# add projects

module "FleetManagementProject" {
  source  = "./FleetManagementProject"
  project = "FleetManagementProject"
  org     = harness_platform_organization.AirlineOperationsOrg.identifier

  depends_on = [harness_platform_organization.AirlineOperationsOrg]
}

module "FlightManagementProject" {
  source  = "./FlightManagementProject"
  project = "FlightManagementProject"
  org     = harness_platform_organization.AirlineOperationsOrg.identifier

  depends_on = [harness_platform_organization.AirlineOperationsOrg]
}
