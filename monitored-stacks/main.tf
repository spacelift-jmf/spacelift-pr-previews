# Resources shared by the preview stacks would go below
# and can be passed to the included modules.

# Monitored stack inclusions go below
module "simple_example" {
  source = "./simple-example/preview-stacks"

  aws_cloud_integration_id = var.aws_cloud_integration_id
  policy_ids               = var.policy_ids
  space_id                 = var.space_id

  providers = {
    spacelift = spacelift
  }
}

module "aws_example" {
  source = "./aws-example/preview-stacks"

  aws_cloud_integration_id = var.aws_cloud_integration_id
  policy_ids               = var.policy_ids
  space_id                 = var.space_id

  providers = {
    spacelift = spacelift
  }
}
