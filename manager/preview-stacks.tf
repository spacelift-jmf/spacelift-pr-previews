# TODO: Dynamically list the monitored stacks from the `monitored-stacks` folder
module "example_1" {
  source = "./monitored-stacks/example-1/preview-stacks"

  push_policy_id = spacelift_policy.push.id

  # aws_role            = var.aws_role
  current_stack_id = var.spacelift_stack_id
  # domain_name         = "hello-service.preview-environments.${var.domain_name}"
  # domain_name_zone_id = data.aws_route53_zone.liftspace.zone_id

  providers = {
    #   aws.eu-west-1 = aws.eu-west-1
    #   aws.us-east-1 = aws.us-east-1
    spacelift = spacelift
  }
}

# data "aws_route53_zone" "liftspace" {
#   provider = aws.us-east-1

#   name = "${var.domain_name}."
# }
