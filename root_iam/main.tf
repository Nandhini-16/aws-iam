module "iam_role" {
  source = "../terraform_aws_iam"

  role_name        = var.role_name
  policies         = var.policies
  region           = var.region
  service_principal = var.service_principal
}