module "spacelift-jmf_spacelift-pr-previews_example_pr1_b10709a" {
  source = "../template"

  branch     = "jmfontaine-patch-1"
  preview_id = "pr1_b10709a"

  providers = {
    spacelift = spacelift
  }
}
