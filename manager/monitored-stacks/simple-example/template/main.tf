resource "spacelift_stack" "preview" {
  administrative               = true
  autodeploy                   = true
  branch                       = var.branch
  github_action_deploy         = false
  labels                       = ["pr-preview"]
  name                         = "Demo Preview Environments Example 1 ${var.preview_id}"
  project_root                 = "simple-example/"
  repository                   = "spacelift-pr-previews-example"
  space_id                     = "legacy"
  terraform_smart_sanitization = true
}

resource "spacelift_stack_destructor" "example_1" {
  stack_id = spacelift_stack.preview.id

  depends_on = [
    spacelift_environment_variable.pr_preview_id,
    # spacelift_policy_attachment.push,
  ]
}

resource "spacelift_environment_variable" "pr_preview_id" {
  name       = "TF_VAR_pr_preview_id"
  stack_id   = spacelift_stack.preview.id
  value      = var.preview_id
  write_only = false
}

# resource "spacelift_policy_attachment" "push" {
#   policy_id = var.push_policy_id
#   stack_id  = spacelift_stack.example_1.id
# }
