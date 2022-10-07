# AUTH
variable "tenancy_ocid" { default = "" }
variable "user_ocid" { default = "" }
variable "fingerprint" { default = "" }
variable "private_key_path" { default = "" }
variable "region" { default = "" }

# naming
variable "name_for_resources" { default = "SamCac" }

# iam
variable "parent_compartment_id" { default = "" }
variable "iam_compartment_name" { default = "PR_workshop" }
variable "iam_compartment_description" { default = "Compartment for Anomaly Detection workshop" }
variable "iam_compartment_enable_delete" { default = true }
variable "iam_policy_is_deployed" { default = false }
variable "iam_policy_name" { default = "PR_policy" }
variable "iam_policy_description" { default = "Policy for Anomaly Detection workshop" }
variable "iam_dynamic_group_name" { default = "PR_dynamic_group" }
variable "iam_dynamic_group_description" { default = "Dynamic Group for Anomaly Detection workshop" }

# adw
variable "adw_is_deployed" { default = true }
# The password must be between 12 and 30 characters long, and must contain at least 1 uppercase, 1 lowercase, and 1 numeric character. It cannot contain the double quote symbol (") or the username "admin", regardless of casing.
variable "autonomous_database_admin_password" {
  default = "Welcome!2345"
  sensitive = true
}
variable "autonomous_database_cpu_core_count" { default = 1 }
variable "autonomous_database_db_version" { default = "19c" }
variable "autonomous_database_is_auto_scaling_enabled" { default = false }
variable "autonomous_database_data_storage_size_in_tbs" { default = 1 }
variable "autonomous_database_display_name" { default = "ADW_AD" }
variable "autonomous_database_db_name" { default = "adwad" } # The name must begin with an alphabetic character and can contain a maximum of 14 alphanumeric characters. Special characters are not permitted. The database name must be unique in the tenancy.
variable "autonomous_database_db_workload" { default = "DW" }
variable "autonomous_database_license_model" { default = "LICENSE_INCLUDED" }
variable "autonomous_database_data_safe_status" { default = "NOT_REGISTERED" }
variable "autonomous_database_whitelisted_ips" {
  type = list(string)
  default = ["0.0.0.0/0"]
}

# # functions
# variable "fnc_is_deployed" { default = true }
# variable "fnc_app_display_name" { default = "PR_app" }
# variable "fnc_display_name" { default = "PR_fnc" }
# variable "fnc_memory_in_mbs" { default = 256 }
# variable "fnc_subnet_app_cidr" { default = "10.0.30.0/24" }
# variable "fnc_subnet_app_display_name" { default = "PR_fnc_subnet_app" }
# variable "fnc_subnet_app_dns_label" { default = "fncsubapp" }
# variable "fnc_app_rt_display_name" { default = "PR_fnc_route_table" }
# variable "fnc_app_sl_display_name" { default = "PR_fnc_security_list" }
# variable "fnc_ocir_repo_name" { default = "<FIXME>" }
# variable "fnc_ocir_user_name" { default = "<FIXME>" }
# variable "fnc_ocir_user_password" { default = "<FIXME>" }

# oac
variable "oac_is_deployed" { default = true }
variable "analytics_instance_idcs_access_token" { default = "" }
variable "analytics_instance_name" { default = "OACAD" } # The name of the database within your OAC instance. The name must contain only letters and numbers, starting with a letter. Spaces are not allowed. The OAC instance name must be unique in the tenancy.
variable "analytics_instance_capacity_capacity_type" { default = "OLPU_COUNT" }
variable "analytics_instance_capacity_capacity_value" { default = 2 }
variable "analytics_instance_feature_set" { default = "ENTERPRISE_ANALYTICS" }
variable "analytics_instance_license_type" { default = "LICENSE_INCLUDED" }

# object_storage
variable "object_storage_is_deployed" { default = true }
variable "object_storage_bucket_name" { default = "PR_bucket" }
variable "object_storage_bucket_access_type" { default = "NoPublicAccess" }
variable "object_storage_bucket_storage_tier" { default = "Standard" }
variable "object_storage_bucket_versioning" { default = "Disabled" }

# ods
variable "ods_is_deployed" { default = true }
variable "ods_project_display_name" { default = "PR_data_science_project" }
variable "ods_notebook_session_display_name" { default = "PR_data_science_notebook_session" }
variable "ods_notebook_session_shape" { default = "VM.Standard.E3.Flex" }
variable "ods_notebook_session_ocpu" { default = 2 }
variable "ods_notebook_session_memory_in_gb" { default = 32 }
variable "ods_notebook_session_block_storage_size_in_gbs" { default = 50 }

# ons
variable "ons_is_deployed" { default = true }
variable "ons_topic_name" { default = "PR_ons_topic" }
variable "ons_subscription_endpoint" { default = "" }
variable "ons_subscription_protocol" { default = "EMAIL" }

# vcn
variable "vcn_is_deployed" { default = true }
variable "vcn_cidrs" {
  type = list(string)
  default = ["10.0.0.0/16"]
}
variable "vcn_display_name" { default = "PR_vcn" }
variable "vcn_dns_label" { default = "vcn" }
variable "ig_display_name" { default = "PR_internet_gateway" }
variable "ng_display_name" { default = "PR_nat_gateway" }
variable "sg_display_name" { default = "PR_service_gateway" }