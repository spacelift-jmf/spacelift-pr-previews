resource "spacelift_stack" "manager" {
  administrative = true
  autodeploy     = true
  branch         = "main"
  name           = "Demo Preview Environments Manager"
  repository     = var.manager_repository

  # labels = [
  #   "destroy_on_delete",
  #   "demo-preview-environments"
  # ]
}

# resource "spacelift_policy" "manager_trigger_policy" {
#   body = file("policies/manager-trigger.rego")
#   name = "Demo Preview Environments Manager Trigger Policy"
#   type = "TRIGGER"
# }

# resource "spacelift_policy_attachment" "manager_trigger_policy" {
#   policy_id = spacelift_policy.manager_trigger_policy.id
#   stack_id  = spacelift_stack.manager.id
# }

resource "spacelift_stack_destructor" "manager" {
  stack_id = spacelift_stack.manager.id

  # depends_on = [
  #   spacelift_aws_role.manager,
  #   spacelift_environment_variable.aws_role,
  #   spacelift_environment_variable.domain_name,
  # ]
}


# resource "spacelift_aws_role" "manager" {
#   role_arn = var.aws_role
#   stack_id = spacelift_stack.manager.id
# }

# resource "spacelift_environment_variable" "aws_role" {
#   name       = "TF_VAR_aws_role"
#   stack_id   = spacelift_stack.manager.id
#   value      = var.aws_role
#   write_only = false
# }

# resource "spacelift_environment_variable" "domain_name" {
#   name       = "TF_VAR_domain_name"
#   stack_id   = spacelift_stack.manager.id
#   value      = var.domain_name
#   write_only = false
# }
