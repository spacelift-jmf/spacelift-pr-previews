resource "spacelift_stack" "preview" {
  administrative               = true
  autodeploy                   = true
  branch                       = var.branch
  github_action_deploy         = false
  labels                       = ["pr-preview"]
  name                         = "PR Preview - Simple Example (${var.preview_id})"
  project_root                 = "simple-example/"
  repository                   = "spacelift-pr-previews-example"
  space_id                     = "legacy"
  terraform_smart_sanitization = true
}

resource "spacelift_run" "preview" {
  stack_id = spacelift_stack.preview.id

  keepers = {
    branch     = var.branch
    preview_id = var.preview_id
  }
}

resource "spacelift_stack_destructor" "preview" {
  stack_id = spacelift_stack.preview.id

  depends_on = [
    spacelift_environment_variable.pr_preview_id,
  ]
}

resource "spacelift_environment_variable" "pr_preview_id" {
  name       = "TF_VAR_pr_preview_id"
  stack_id   = spacelift_stack.preview.id
  value      = var.preview_id
  write_only = false
}