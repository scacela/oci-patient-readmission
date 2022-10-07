resource "oci_analytics_analytics_instance" "oac" {
    #Required
    compartment_id = var.compartment_id
    feature_set = var.analytics_instance_feature_set
    license_type = var.analytics_instance_license_type
    name = var.analytics_instance_name
    idcs_access_token = var.analytics_instance_idcs_access_token
    capacity {
        #Required
        capacity_type = var.analytics_instance_capacity_capacity_type
        capacity_value = var.analytics_instance_capacity_capacity_value
    }
}