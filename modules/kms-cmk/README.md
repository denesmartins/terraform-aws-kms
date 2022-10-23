# KMS Module

This folder contains a [Terraform](https://www.terraform.io/) module that can be used to deploy an [KMS KEY](https://aws.amazon.com/kms/).

## How to use this module?

This folder defines a [Terraform module](https://www.terraform.io/docs/modules/usage.html), which you can use in your code by adding a module configuration and setting its source parameter to URL of this folder:

```hcl
module "kms" {
  # Check releases for updates in this module
  source = "github.azc.ext.hp.com/runway/terraform-aws-kms//modules/kms-cmk?ref=v2.0.0"

  # Specify the alias 
  alias = "my-kms-key"

}
```

Note the following parameter:

* **source**: Use this parameter to specify the URL of the module. The double slash (//) is intentional and required. Terraform uses it to specify subfolders within a Git repo (see module sources). The ref parameter specifies a specific Git tag in this repo. That way, instead of using the latest version of this module from the master branch, which will change every time you run Terraform, you're using a fixed version of the repo.

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_kms_alias.kms_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.kms_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | Kms key alias. | `string` | n/a | yes |
| <a name="input_customer_master_key_spec"></a> [customer\_master\_key\_spec](#input\_customer\_master\_key\_spec) | Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC\_DEFAULT, RSA\_2048, RSA\_3072, RSA\_4096, ECC\_NIST\_P256, ECC\_NIST\_P384, ECC\_NIST\_P521, or ECC\_SECG\_P256K1 | `string` | `"SYMMETRIC_DEFAULT"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description for kms key | `string` | `null` | no |
| <a name="input_enable_key_rotation"></a> [enable\_key\_rotation](#input\_enable\_key\_rotation) | Enable kms key rotation | `bool` | `false` | no |
| <a name="input_key_deletion_window_in_days"></a> [key\_deletion\_window\_in\_days](#input\_key\_deletion\_window\_in\_days) | Kms key deletion window in days after deletion | `number` | `30` | no |
| <a name="input_key_policy"></a> [key\_policy](#input\_key\_policy) | A valid policy JSON document for KMS key | `string` | `null` | no |
| <a name="input_key_usage"></a> [key\_usage](#input\_key\_usage) | Specifies the intended use of the key. Valid values: ENCRYPT\_DECRYPT or SIGN\_VERIFY | `string` | `"ENCRYPT_DECRYPT"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add into all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_key_alias"></a> [key\_alias](#output\_key\_alias) | Alias of the kms key. |
| <a name="output_key_alias_arn"></a> [key\_alias\_arn](#output\_key\_alias\_arn) | ARN of the kms key alias. |
| <a name="output_key_arn"></a> [key\_arn](#output\_key\_arn) | ARN of kms key. |
| <a name="output_key_id"></a> [key\_id](#output\_key\_id) | key id of kms key. |
<!-- END_TF_DOCS -->
