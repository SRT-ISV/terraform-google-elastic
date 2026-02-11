/**
 * Copyright 2026 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


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