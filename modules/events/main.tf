# resource "oci_events_rule" "rule" {
#     actions {

#         # actions {
#         #     action_type = "FAAS"
#         #     is_enabled  = true
#         #     function_id = <functions>
#         # }
#     }
#     compartment_id = var.compartment_id
#     condition = "{ \"eventType\": \"com.oraclecloud.blockvolumes.createbootvolumebackup.end\" }"
#     display_name = "FoggyKitchenUpdateTagForBootVolumeBackupTrigger"
#     is_enabled = true
# }

# resource "oci_events_rule" "FoggyKitchenUpdateTagForVolumeBackupTrigger" {
#     actions {

#         actions {
#             action_type = "FAAS"
#             is_enabled  = true
#             description = "FoggyKitchenUpdateTagForVolumeBackupTrigger"
#             function_id = oci_functions_function.FoggyKitchenUpdateTagForVolumeBackupFn.id
#         }
#     }
#     compartment_id = oci_identity_compartment.FoggyKitchenCompartment.id
#     condition = "{ \"eventType\": \"com.oraclecloud.blockvolumes.createvolumebackup.end\"}"
#     display_name = "FoggyKitchenUpdateTagForVolumeBackupTrigger"
#     is_enabled = true
# }