resource "spacelift_stack" "preview" {
  administrative = true
  autodeploy     = true
  branch         = var.pr_branch
  name           = "Demo Preview Environments Example 1 ${var.environment}"
  repository     = "spacelift-pr-previews-example"
  space_id       = "legacy"

  labels = [
    "pr-preview",
  #   "preview-environment-managed-by:${var.manager_stack_id}",
  #   "preview_environment_id:${var.environment}"
  ]
}

resource "spacelift_stack_destructor" "example_1" {
  stack_id = spacelift_stack.preview.id

  # depends_on = [
    # spacelift_aws_role.hello-service,
    # spacelift_environment_variable.aws_role,
    # spacelift_environment_variable.certificate_arn,
    # spacelift_environment_variable.code_version,
    # spacelift_environment_variable.domain_name,
    # spacelift_environment_variable.environment,
    # spacelift_policy_attachment.push,
  # ]
}

# resource "spacelift_aws_role" "hello-service" {
#   stack_id = spacelift_stack.hello-service.id
#   role_arn = var.aws_role
# }

# resource "spacelift_environment_variable" "aws_role" {
#   stack_id   = spacelift_stack.hello-service.id
#   name       = "TF_VAR_aws_role"
#   value      = var.aws_role
#   write_only = false
# }

# resource "spacelift_environment_variable" "certificate_arn" {
#   stack_id   = spacelift_stack.hello-service.id
#   name       = "TF_VAR_certificate_arn"
#   value      = var.certificate_arn
#   write_only = false
# }

# resource "spacelift_environment_variable" "code_version" {
#   stack_id   = spacelift_stack.hello-service.id
#   name       = "TF_VAR_code_version"
#   value      = var.code_version
#   write_only = false
# }

# resource "spacelift_environment_variable" "domain_name" {
#   stack_id   = spacelift_stack.hello-service.id
#   name       = "TF_VAR_domain_name"
#   value      = var.domain_name
#   write_only = false
# }

# resource "spacelift_environment_variable" "environment" {
#   name       = "TF_VAR_environment"
#   stack_id   = spacelift_stack.example_1.id
#   value      = var.environment
#   write_only = false
# }

# resource "spacelift_policy_attachment" "push" {
#   policy_id = var.push_policy_id
#   stack_id  = spacelift_stack.example_1.id
# }
