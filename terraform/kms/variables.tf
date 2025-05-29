variable "region" {
  description = "The AWS region to deploy the KMS key."
  type        = string
}

variable "description" {
  description = "A description for the KMS key."
  type        = string
}

variable "key_alias" {
  description = "The alias name for your KMS key (e.g., alias/my-key)."
  type        = string
}

variable "key_type" {
  description = "Specifies the type of the customer master key (CMK)"
  type        = string
  default     = "SYMMETRIC_DEFAULT"
}

variable "key_usage" {
  description = "Specifies the intended use of the CMK"
  type        = string
  default     = "ENCRYPT_DECRYPT"
}
