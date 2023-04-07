terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}
resource "harness_platform_organization" "AirportOperationsOrg" {
  name       = var.org
  identifier = var.org
}

# add projects 

module "BaggageManagementProject" {
  source  = "./BaggageManagementProject"
  project = "BaggageManagementProject"
  org     = harness_platform_organization.AirportOperationsOrg.identifier

  depends_on = [harness_platform_organization.AirportOperationsOrg]
}
