resource "spacelift_policy" "push" {
  name = "Demo Preview Environments Environment Push Policy"
  type = "GIT_PUSH"
  body = file("${path.module}/policies/push-policy.rego")
}
