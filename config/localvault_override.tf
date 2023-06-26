locals {
  enable_vault = false
  custom_appdev_bucket_key_policy_name = "${var.service_label}-oss-key-${local.region_key}-policy"
}
