module "spacelift-jmf_spacelift-pr-previews-example_9_7f13b48" {
  source = "../template"

  aws_cloud_integration_id = var.aws_cloud_integration_id
  branch                   = "jmfontaine-patch-2"
  policy_ids               = var.policy_ids
  preview_id               = "7f13b48"
  space_id                 = var.space_id

  providers = {
    spacelift = spacelift
  }
}