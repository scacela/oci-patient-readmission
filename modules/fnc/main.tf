# resource "oci_functions_application" "app" {
#     #Required
#     compartment_id = var.compartment_id
#     display_name = var.fnc_app_display_name
#     subnet_ids = [oci_core_subnet.subnet.id]
# }

# resource "oci_functions_function" "fnc" {
#   #Required
#   depends_on = [null_resource.setup]
#   application_id = oci_functions_application.app.id
#   display_name = var.fnc_display_name
#   memory_in_mbs = var.fnc_memory_in_mbs
#   image = "${var.fnc_ocir_docker_repository}/${var.fnc_ocir_namespace}/${var.fnc_ocir_repo_name}/stream_processing:0.0.1"
# }

# resource "oci_core_subnet" "subnet" {
#   cidr_block        = var.fnc_subnet_app_cidr
#   display_name      = var.fnc_subnet_app_display_name
#   compartment_id    = var.compartment_id
#   vcn_id            = var.vcn_id
#   dhcp_options_id   = var.vcn_default_dhcp_options_id
#   route_table_id    = oci_core_route_table.app_rt.id
#   security_list_ids = [oci_core_security_list.app_sl.id]
#   prohibit_public_ip_on_vnic = true
#   dns_label         = var.fnc_subnet_app_dns_label
# }

# resource "oci_core_route_table" "app_rt" {
#   compartment_id = var.compartment_id
#   vcn_id         = var.vcn_id
#   display_name   = var.fnc_app_rt_display_name
  
#   route_rules {
#     destination       = var.service_cidr_block
#     destination_type  = "SERVICE_CIDR_BLOCK"
#     network_entity_id = var.sg_id
#   }
#   route_rules {
#       network_entity_id = var.ng_id
#       destination       = "0.0.0.0/0"
#   }
# }

# resource "oci_core_security_list" "app_sl" {
#   compartment_id = var.compartment_id
#   display_name   = var.fnc_app_sl_display_name
#   vcn_id         = var.vcn_id

#   egress_security_rules {
#     protocol    = "ALL"
#     destination = "0.0.0.0/0"
#   }

#   ingress_security_rules {
#     protocol = "ALL"
#     source   = "0.0.0.0/0"
#   }
# }