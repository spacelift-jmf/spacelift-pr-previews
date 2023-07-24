module "spacelift-jmf_spacelift-pr-previews-example_3_0f6cd26" {
  source = "../template"

  branch     = "jmfontaine-patch-3"
  preview_id = "0f6cd26"

  providers = {
    spacelift = spacelift
  }
}