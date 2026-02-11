
# Retrieve the latest stack pack version
# data "ec_stack" "latest" {
#   version_regex = "latest"
#   region        = var.region
# }



# resource "ec_deployment" "example_minimal" {
#   # Optional name.
#   name = var.cluster_name
#   region                 = var.region
#   version                = data.ec_stack.latest.version
#   deployment_template_id = "gcp-cpu-optimized"
#   elasticsearch = {
#     hot = {
#       autoscaling = {}
#     }
#   }
# #   kibana = {}
# #   enterprise_search = {}
# #   integrations_server = {}
# }


resource "ec_elasticsearch_project" "my_project" {
  name      = var.ec_project_name
  region_id = var.region
}