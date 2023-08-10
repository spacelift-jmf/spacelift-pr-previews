variable "aws_cloud_integration_id" {
  description = "ID of the AWS Cloud Integration"
  type        = string
}

variable "policy_ids" {
  description = "IDs of the policies to attach to preview stacks"
  type        = map(string)
}

variable "space_id" {
  description = "ID of the space to create all resources in"
  type        = string
}
