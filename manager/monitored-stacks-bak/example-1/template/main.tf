resource "spacelift_stack" "example_1" {
  administrative = true
  autodeploy     = true
  branch         = var.infra_repository_branch
  name           = "Demo Preview Environments Example 1 ${var.environment}"
  repository     = "demo-preview-environments-infra"

  labels = [
    "demo-preview-environments",
    "preview-environment-managed-by:${var.manager_stack_id}",
    "preview_environment_id:${var.environment}"
  ]
}

resource "spacelift_stack_destructor" "example_1" {
  depends_on = [
    # spacelift_aws_role.hello-service,
    # spacelift_environment_variable.aws_role,
    # spacelift_environment_variable.certificate_arn,
    # spacelift_environment_variable.code_version,
    # spacelift_environment_variable.domain_name,
    spacelift_environment_variable.environment,
    spacelift_policy_attachment.push,
  ]
  stack_id = spacelift_stack.example_1.id
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

resource "spacelift_environment_variable" "environment" {
  name       = "TF_VAR_environment"
  stack_id   = spacelift_stack.example_1.id
  value      = var.environment
  write_only = false
}

resource "spacelift_policy_attachment" "push" {
  policy_id = var.push_policy_id
  stack_id  = spacelift_stack.example_1.id
}