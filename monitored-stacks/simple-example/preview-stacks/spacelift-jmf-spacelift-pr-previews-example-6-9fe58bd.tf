module "spacelift-jmf_spacelift-pr-previews-example_6_9fe58bd" {
  source = "../template"

  branch     = "jmfontaine-patch-1"
  policy_ids = var.policy_ids
  preview_id = "9fe58bd"
  space_id   = var.space_id

  providers = {
    spacelift = spacelift
  }
}