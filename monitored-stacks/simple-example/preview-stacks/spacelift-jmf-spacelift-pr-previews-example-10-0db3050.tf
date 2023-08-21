module "spacelift-jmf_spacelift-pr-previews-example_10_0db3050" {
  source = "../template"

  aws_cloud_integration_id = var.aws_cloud_integration_id
  branch                   = "jmfontaine-patch-2"
  policy_ids               = var.policy_ids
  preview_id               = "0db3050"
  space_id                 = var.space_id

  providers = {
    spacelift = spacelift
  }
}