module "spacelift-jmf_spacelift-pr-previews-example_5_305a25f" {
  source = "../template"

  branch     = "jmfontaine-patch-4"
  preview_id = "305a25f"

  providers = {
    spacelift = spacelift
  }
}