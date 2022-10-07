output "iam_compartment_id" {
  value = module.iam.iam_compartment_id
}
output "iam_policy_id" {
  value = var.iam_policy_is_deployed ? module.iam.iam_policy_id : null
}
output "iam_dynamic_group_id" {
  value = var.iam_policy_is_deployed ? module.iam.iam_dynamic_group_id : null
}
output "oac_id" {
  value = var.oac_is_deployed ? module.oac[0].oac_id : null
}
output "object_storage_bucket_id" {
  value = var.object_storage_is_deployed ? module.object_storage[0].object_storage_bucket_id : null
}
output "ods_notebook_session_id" {
  value = var.ods_is_deployed ? module.ods[0].ods_notebook_session_id : null
}
output "ons_topic_id" {
  value = var.ons_is_deployed ? module.ons[0].ons_topic_id : null
}
output "ons_subscription_id" {
  value = var.ons_is_deployed ? module.ons[0].ons_subscription_id : null
}
output "vcn_id" {
  value = var.vcn_is_deployed ? module.vcn[0].vcn_id : null
}