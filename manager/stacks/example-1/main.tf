module "previews" {
  source           = "./previews"
  current_stack_id = var.current_stack_id
  # aws_role         = var.aws_role
  # certificate_arn  = aws_acm_certificate.endpoint-certificate.arn
  # domain_name      = var.domain_name
  push_policy_id   = var.push_policy_id

  providers = {
    spacelift = spacelift
  }
}
