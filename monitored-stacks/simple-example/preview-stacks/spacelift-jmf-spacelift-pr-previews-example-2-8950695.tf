module "spacelift-jmf_spacelift-pr-previews-example_2_" {
  source = "../template"

  branch        = "jmfontaine-patch-2"
  pr_preview_id = "8950695"

  providers = {
    spacelift = spacelift
  }
}