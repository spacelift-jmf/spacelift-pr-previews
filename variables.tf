variable "aws_cloud_integration_id" {
  description = "ID of the AWS Cloud Integration"
  type        = string
}

variable "space_id" {
  default     = "legacy"
  description = "ID of the space to create all resources in"
  type        = string
}
