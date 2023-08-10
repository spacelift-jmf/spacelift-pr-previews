module "spacelift-jmf_spacelift-pr-previews-example_7_e8b4fec" {
  source = "../template"

  aws_cloud_integration_id = var.aws_cloud_integration_id
  branch                   = "jmfontaine-patch-1"
  policy_ids               = var.policy_ids
  preview_id               = "e8b4fec"
  space_id                 = var.space_id

  providers = {
    spacelift = spacelift
  }
}
