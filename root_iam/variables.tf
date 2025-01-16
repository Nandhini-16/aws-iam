variable "role_name" {
  description = "The name of the IAM role"
  type        = string
}

variable "policies" {
  description = "List of policies to attach to the IAM role"
  type        = list(string)
}

variable "region" {
  description = "AWS region"
  type        = string
}

variable "service_principal" {
  description = "List of AWS service principals allowed to assume the role"
  type        = list(string)
}

