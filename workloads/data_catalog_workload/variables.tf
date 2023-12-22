# Copyright (c) 2023 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
# ------------------------------------------------------
# ----- Environment
# ------------------------------------------------------
variable "tenancy_ocid" {}
variable "user_ocid" {}
variable "fingerprint" {
  default = ""
}
variable "private_key_path" {
  default = ""
}
variable "private_key_password" {
  default = ""
}
variable "region" {
  validation {
    condition     = length(trim(var.region, "")) > 0
    error_message = "Validation failed for region: value is required."
  }
}

variable "service_label" {
  description = "Prefix used in your CIS Landing Zone deployment."
  type        = string
  default     = ""
}

variable "workload_name" {
  description = "Name of this Data Platform workload."
  type        = string
  default     = "data-platform"
}

variable "existing_lz_enclosing_compartment_ocid" {
  description = "Enclosing/parent compartment used in your CIS Landing Zone deployment."
  type        = string
  default     = ""
}

variable "existing_lz_security_compartment_ocid" {
  description = "Existing CIS Landing Zone Security Compartment"
  type        = string
  default     = ""
}

variable "existing_lz_network_compartment_ocid" {
  description = "Existing CIS Landing Zone Network Compartment"
  type        = string
  default     = ""
}

variable "existing_lz_database_compartment_ocid" {
  description = "Existing CIS Landing Zone Database Compartment"
  type        = string
  default     = ""
}

# Workload Specfics
variable "create_data_catalog" {
  description = "Whether to create Data Catalog Resources."
  type        = bool
  default     = false
}

variable "create_data_flow" {
  description = "Whether to create Data Catalog Resources."
  type        = bool
  default     = false
}

variable "create_data_integration" {
  description = "Whether to create Data Catalog Resources."
  type        = bool
  default     = false
}
variable "create_data_lake" {
  description = "Whether to create Data Catalog Resources."
  type        = bool
  default     = false
}

variable "create_workload_groups_and_policies" {
  description = "If *true* an OCI IAM group and corresponding policies will be created to align to the workload compartment group created."
  type = bool
  default = true
}

variable "create_workload_dynamic_groups_and_policies" {
  description = "If *true* a dynamic group and corresponding policies will be created to align to the workload compartment group created."
  type = bool
  default = true
}
