# Copyright (c) 2020 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

##### The uncommented variable assignments below are for REQUIRED variables that do NOT have a default value in variables.tf.
##### They must be provided appropriate values.

tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaaapgoe253qc6k72rvb2klqiohq2umt2n52xq4tnbykuxo5vhhpc5q"
user_ocid            = "ocid1.user.oc1..aaaaaaaatic3jk67dvghbd2eeco2ftekt3ru6sauhsojzomfpsbxc4bkpa6q"
fingerprint          = "5b:0a:43:58:38:3c:47:e7:77:e9:9e:4b:78:46:cb:54"
private_key_path     = "~/.oci/oci_api_key.pem"
private_key_password = ""
home_region          = "us-ashburn-1"
region               = "us-ashburn-1"
region_key           = "iad"
service_label        = "CIS2"

### For Networking
is_vcn_onprem_connected       = false
onprem_cidr                   = "0.0.0.0/0"
public_src_bastion_cidr       = "10.0.4.0/24"

### For Security
network_admin_email_endpoint  = "andrew.gregory@oracle.com"
security_admin_email_endpoint = "andrew.gregory@oracle.com"

##### The commented variable assignments below are for variables with a default value in variables.tf.
##### For overriding the default values, uncomment the variable and provide an appropriate value.

# vcn_cidr                                        = "10.0.0.0/16" 
# public_subnet_cidr                              = "10.0.1.0/24" 
# private_subnet_app_cidr                         = "10.0.2.0/24" 
# private_subnet_db_cidr                          = "10.0.3.0/24" 
public_src_lbr_cidr                             = "0.0.0.0/0" 
# cloud_guard_configuration_status                = "ENABLED" 
# cloud_guard_configuration_self_manage_resources = false 



