resource "spacelift_policy" "approval" {
  body = file("${path.module}/policies/approval.rego")
  name = "PR Previews Approval"
  type = "APPROVAL"
}

resource "spacelift_policy" "push" {
  body = file("${path.module}/policies/push.rego")
  name = "PR Previews Push"
  type = "GIT_PUSH"
}

module "monitored_stacks" {
  source = "./monitored-stacks"

  policy_ids = {
    approval = spacelift_policy.approval.id,
    push     = spacelift_policy.push.id
  }
  space_id = var.space_id

  providers = {
    spacelift = spacelift
  }
}
