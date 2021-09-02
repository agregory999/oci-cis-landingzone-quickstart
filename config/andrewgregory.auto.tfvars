# Copyright (c) 2021 Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

##### The uncommented variable assignments below are for REQUIRED variables that do NOT have a default value in variables.tf. They must be provided appropriate values.
##### The commented variable assignments are for variables with a default value in variables.tf. For overriding them, uncomment the variable and provide an appropriate value.

### Basic variables
tenancy_ocid         = "ocid1.tenancy.oc1..aaaaaaaaapgoe253qc6k72rvb2klqiohq2umt2n52xq4tnbykuxo5vhhpc5q"
user_ocid            = ""
fingerprint          = "5b:0a:43:58:38:3c:47:e7:77:e9:9e:4b:78:46:cb:54"

### Environment variables
region        = "us-ashburn-1"
#service_label = "CIS20TF-LZ1"
use_enclosing_compartment               = true
existing_enclosing_compartment_ocid     = "ocid1.compartment.oc1..aaaaaaaabbyvotmbygyhpnpatgsoziw2eosv4gvcsn4wfy67ncermnsoxyeq" # Compartment OCID where Landing Zone compartments are created.
policies_in_root_compartment            = "USE"
use_existing_groups                     = true
existing_iam_admin_group_name           = "CIS20TF-LZ1-iam-admin-group"
existing_cred_admin_group_name          = "CIS20TF-LZ1-cred-admin-group"
existing_security_admin_group_name      = "CIS20TF-LZ1-security-admin-group"
existing_network_admin_group_name       = "CIS20TF-LZ1-network-admin-group"
existing_appdev_admin_group_name        = "CIS20TF-LZ1-appdev-admin-group"
existing_database_admin_group_name      = "CIS20TF-LZ1-database-admin-group"
existing_auditor_group_name             = "CIS20TF-LZ1-auditor-group"
existing_announcement_reader_group_name = "CIS20TF-LZ1-announcement-reader-group"

### Networking variables (all variables are defaulted. See variables.tf)
# vcn_cidrs = ["<cidr_1>,"<cidr_2>","...","<cidr_n>"] # list of CIDRs to be used when creating the VCNs. One CIDR to one VCN. 
# vcn_names = ["<name_1>,"<name_2>","...","<name_n>"] # list of VCN names to override default names with. One name to one CIDR, nth element to vcn_cidrs' nth element. 

# public_src_lbr_cidrs     = ["<cidr_1>","<cidr_2>","...","<cidr_n>"] # external IP ranges in CIDR notation allowed to make HTTPS inbound connections.
# public_src_bastion_cidrs = ["<cidr_1>","<cidr_2>","...","<cidr_n>"] # external IP ranges in CIDR notation allowed to make SSH inbound connections. 0.0.0.0/0 is not allowed in the list.
# public_dst_cidrs         = ["<cidr_1>","<cidr_2>","...","<cidr_n>"] # external IP ranges in CIDR notation for HTTPS outbound connections.

# no_internet_access     = false # whether the Landing Zone VCN(s) are Internet connected.
# hub_spoke_architecture = false # determines if a Hub & Spoke network architecture is to be deployed.  Allows for inter-spoke routing.
# dmz_vcn_cidr           = "<dmz_vcn_cidr>" # IP range in CIDR notation for the DMZ (a.k.a Hub) VCN.
# dmz_number_of_subnets  = 2 # number of subnets in DMZ VCN.
# dmz_subnet_size        = 4 # number of additional bits with which to extend the DMZ VCN CIDR prefix.   

# is_vcn_onprem_connected  = false # determines if the Landing Zone VCN(s) are connected to an on-premises network. This must be true if no_internet_acess is true.
# onprem_cidrs             = ["<cidr_1>","<cidr_2>","...","<cidr_n>"] # list of customer owned CIDRs allowed to connect to Landing Zone over a private channel.

### Notifications variables
#network_admin_email_endpoints  = ["<email_1>","<email_2>",...,"<email_n>"] # list of email addresses for all network related notifications.
#security_admin_email_endpoints = ["<email_1>","<email_2>",...,"<email_n>"] # list of email addresses for all security related notifications.

##### Cloud Guard variables
# cloud_guard_configuration_status = "ENABLED"

##### Service Connector Hub variables
# create_service_connector_audit                 = false
# service_connector_audit_target                 = "objectstorage"
# service_connector_audit_state                  = "INACTIVE"
# service_connector_audit_target_OCID            = ""
# service_connector_audit_target_cmpt_OCID       = ""
# sch_audit_objStore_objNamePrefix               = "sch-audit"
# create_service_connector_vcnFlowLogs           = false
# service_connector_vcnFlowLogs_target           = "objectstorage"
# service_connector_vcnFlowLogs_state            = "INACTIVE"
# service_connector_vcnFlowLogs_target_OCID      = ""
# service_connector_vcnFlowLogs_target_cmpt_OCID = ""
# sch_vcnFlowLogs_objStore_objNamePrefix         = "sch-vcnFlowLogs"

##### Vulnerability Scanning Service variables
# vss_create        = true
# vss_scan_schedule = "WEEKLY"
# vss_scan_day      = "SUNDAY"


