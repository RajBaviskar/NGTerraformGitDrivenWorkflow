terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

resource "harness_platform_project" "FlightManagementProject" {
  name       = var.project
  identifier = var.project
  org_id     = var.org
}

# add environments



# add services



# add pipelines 
