# resource "null_resource" "setup" {
#   depends_on = [oci_functions_application.app]

#   provisioner "local-exec" {
#     command = "echo '${var.fnc_ocir_user_password}' |  docker login ${var.fnc_ocir_docker_repository} --username ${var.fnc_ocir_namespace}/${var.fnc_ocir_user_name} --password-stdin"
#   }
#   provisioner "local-exec" {
#     command = "fn build"
#     working_dir = "fnc_code"
#   }
#   provisioner "local-exec" {
#     command = "image=$(docker images | grep stream_processing | awk -F ' ' '{print $3}') ; docker tag $image ${var.fnc_ocir_docker_repository}/${var.fnc_ocir_namespace}/${var.fnc_ocir_repo_name}/stream_processing:0.0.1"
#     working_dir = "fnc_code"
#   }
#   provisioner "local-exec" {
#     command = "docker push ${var.fnc_ocir_docker_repository}/${var.fnc_ocir_namespace}/${var.fnc_ocir_repo_name}/stream_processing:0.0.1"
#     working_dir = "fnc_code"
#   }
# }