terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}
resource "harness_platform_organization" "DefaultOrg" {
  name       = var.org
  identifier = var.org
}

# add projects 
