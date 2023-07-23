locals {
  monitored_stacks = distinct(flatten([for _, v in flatten(fileset(path.module, "./monitored-stacks/**")) : regex("./monitored-stacks//([^/]).", dirname(v))]))
}

module "monitored_stack" {
  for_each = local.monitored_stacks

  source = "${each.value}/preview-stacks"

  providers = {
    spacelift = spacelift
  }
}

output "debug" {
  value = local.monitored_stacks
}
