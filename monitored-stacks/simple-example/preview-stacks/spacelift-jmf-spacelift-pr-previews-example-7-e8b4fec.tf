module "spacelift-jmf_spacelift-pr-previews-example_7_e8b4fec" {
  source = "../template"

  branch     = "jmfontaine-patch-1"
  policy_ids = var.policy_ids
  preview_id = "e8b4fec"
  space_id   = var.space_id

  providers = {
    spacelift = spacelift
  }
}