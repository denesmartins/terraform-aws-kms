# kms key

resource "aws_kms_key" "kms_key" {
  description              = var.description != null ? var.description : "${var.alias} KMS Key"
  customer_master_key_spec = var.customer_master_key_spec
  key_usage                = var.key_usage
  enable_key_rotation      = var.enable_key_rotation
  deletion_window_in_days  = var.key_deletion_window_in_days
  policy                   = var.key_policy
  tags                     = var.tags
}

# ---------------------------------------------------------------------------------------------------------------------------------------
# kms alias

resource "aws_kms_alias" "kms_alias" {
  name          = "alias/${var.alias}"
  target_key_id = aws_kms_key.kms_key.key_id
}

