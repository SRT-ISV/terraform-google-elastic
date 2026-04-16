/**
 * Copyright 2021 Google LLC
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

output "elastic_project_id" {
  description = "The unique ID of the Elasticsearch project"
  value       = module.elastic.project_id
}

output "elastic_project_name" {
  description = "The name of the deployed project"
  value       = module.elastic.project_name
}

/*
output "api_key" {
  description = "The name of the deployed project"
  value       = module.elastic.ec_api_key
} */

output "cloud_id" {
  description = "The Cloud ID for the Elastic Cloud project"
  value       = module.elastic.cloud_id
}

output "elasticsearch_endpoint" {
  description = "The API endpoint for Elasticsearch"
  value       = module.elastic.elasticsearch_endpoint
}

output "kibana_url" {
  description = "The UI URL for Kibana"
  value       = module.elastic.kibana_url
}

output "project_credentials" {
  description = "The auto-generated username and password"
  value       = module.elastic.project_credentials
  sensitive   = true 
}
