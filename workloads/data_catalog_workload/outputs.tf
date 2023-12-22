# Copyright (c) 2022 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

output "compartments" {
  value = module.workload_compartments.compartments
}

output "groups" {
  value = module.workload_groups.groups[local.]
}

output "policies" {
  value = module.lz_template_policies.policies
}