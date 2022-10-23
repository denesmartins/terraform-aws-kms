/*
 * (C) Copyright 2019 HP Development Company, L.P.
 * Confidential computer software. Valid license from HP required for possession, use or copying.
 * Consistent with FAR 12.211 and 12.212, Commercial Computer Software,
 * Computer Software Documentation, and Technical Data for Commercial Items are licensed
 * to the U.S. Government under vendor's standard commercial license.
 */


variable "alias" {
  type        = string
  description = "Kms key alias."
}

variable "description" {
  type        = string
  default     = null
  description = "Description for kms key"
}

variable "customer_master_key_spec" {
  type        = string
  default     = "SYMMETRIC_DEFAULT"
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1"
}

variable "key_usage" {
  type        = string
  default     = "ENCRYPT_DECRYPT"
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY"
}

variable "key_policy" {
  type        = string
  default     = null
  description = "A valid policy JSON document for KMS key"
}


variable "enable_key_rotation" {
  type        = bool
  default     = false
  description = "Enable kms key rotation"
}

variable "key_deletion_window_in_days" {
  type        = number
  default     = 30
  description = "Kms key deletion window in days after deletion"
}


variable "tags" {
  description = "A map of tags to add into all resources."
  default     = {}
  type        = map(string)
}

