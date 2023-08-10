module "name" {
  source = "./simple-example/preview-stacks"

  policy_ids = var.policy_ids
  space_id   = var.space_id

  providers = {
    spacelift = spacelift
  }
}

# Resources shared by the preview stacks would go below
