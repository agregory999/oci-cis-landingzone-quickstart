# Copyright (c) 2021 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

##### The uncommented variable assignments below are for REQUIRED variables that do NOT have a default value in variables.tf.
##### The commented variable assignments below are for variables with a default value in variables.tf. For overriding them, uncomment the variable and provide an appropriate value.

### Basic variables
tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaaapgoe253qc6k72rvb2klqiohq2umt2n52xq4tnbykuxo5vhhpc5q"
user_ocid            = "ocid1.user.oc1..aaaaaaaatic3jk67dvghbd2eeco2ftekt3ru6sauhsojzomfpsbxc4bkpa6q"
fingerprint          = ""5b:0a:43:58:38:3c:47:e7:77:e9:9e:4b:78:46:cb:54
private_key     = ""

### Environment variables
home_region   = "us-ashburn-1"
unique_prefix = "CIS20TF"

enclosing_compartment_names                 = ["LZ1","LZ2"]   # the names of the enclosing compartments that will be created to hold Landing Zone compartments. If not provided, one compartment is created with default name <unique_prefix>-top-cmp. Max number of compartments is 5.
# existing_enclosing_compartments_parent_ocid = "<existing_enclosing_compartments_parent_ocid>" # the enclosing compartments parent compartment. It defines where enclosing compartments are created. If not provided, the enclosing compartments are created in the root compartment.

# use_existing_provisioning_group  = false                   # whether or not an existing group will be used for Landing Zone provisioning. If false, one group is created for each compartment defined by enclosing_compartment_names variable.
# existing_provisioning_group_name = "<existing_group_name>" # the name of an existing group to be used for provisioning all resources in the compartments defined by enclosing_compartment_names variable. Ignored if use_existing_provisioning_group is false.

# use_existing_groups                   = false
/*
existing_iam_admin_group_name           = "<existing_iam_admin_group_name>"
existing_cred_admin_group_name          = "<existing_cred_admin_group_name>"
existing_security_admin_group_name      = "<existing_security_admin_group_name>"
existing_network_admin_group_name       = "<existing_network_admin_group_name>"
existing_appdev_admin_group_name        = "<existing_appdev_admin_group_name>"
existing_database_admin_group_name      = "<existing_database_admin_group_name>"
existing_auditor_group_name             = "<existing_auditor_group_name>"
existing_announcement_reader_group_name = "<existing_announcement_reader_group_name>"
*/

grant_services_policies = true # whether services policies should be created. If these policies already exist in the root compartment, set it to false for avoiding policies duplication. Services policies are required by some OCI services, like Cloud Guard, Vulnerability Scanning and OS Management.
