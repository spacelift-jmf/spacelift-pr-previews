module "simple_example" {
  source = "./monitored-stacks/simple-example/preview-stacks"

  providers = {
    spacelift = spacelift
  }
}
