module "spacelift-jmf_spacelift-pr-previews_example_pr1_b10709a" {
  source = "../template"

  branch     = "hello-to-greetings"
  preview_id = "pr1_b10709a"
  space_id   = "legacy"

  providers = {
    spacelift = spacelift
  }
}
