module "spacelift-jmf_spacelift-pr-previews-example_4_56bb6ce" {
  source = "../template"

  branch     = "jmfontaine-patch-1"
  preview_id = "56bb6ce"

  providers = {
    spacelift = spacelift
  }
}