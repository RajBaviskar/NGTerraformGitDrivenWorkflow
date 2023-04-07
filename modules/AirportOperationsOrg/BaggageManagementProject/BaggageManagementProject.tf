terraform {
  required_providers {
    harness = {
      source = "harness/harness"
    }
  }
}

resource "harness_platform_project" "BaggageManagementProject" {
  name       = var.project
  identifier = var.project
  org_id     = var.org
}

# add environments
module "environments" {
  source  = "./environments"
  project = var.project
  org     = var.org

  depends_on = [harness_platform_project.BaggageManagementProject]
}


# add services

module "services" {
  source  = "./services"
  project = var.project
  org     = var.org

  depends_on = [harness_platform_project.BaggageManagementProject]
}

# add pipelines

module "pipelines" {
  source  = "./pipelines"
  project = var.project
  org     = var.org

  depends_on = [harness_platform_project.BaggageManagementProject]
}

