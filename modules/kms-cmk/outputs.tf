output "key_arn" {
  description = "ARN of kms key."
  value       = aws_kms_key.kms_key.arn
}

output "key_id" {
  description = "key id of kms key."
  value       = aws_kms_key.kms_key.key_id
}

output "key_alias" {
  description = "Alias of the kms key."
  value       = aws_kms_alias.kms_alias.id
}

output "key_alias_arn" {
  description = "ARN of the kms key alias."
  value       = aws_kms_alias.kms_alias.arn
}

