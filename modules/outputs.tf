output "project_id" {
  description = "The unique ID of the Elasticsearch project"
  value       = ec_elasticsearch_project.my_project.id
}

output "project_name" {
  description = "The project name provided as input"
  value       = var.ec_project_name
}

output "cloud_id" {
  description = "The Cloud ID used to connect to Elastic services"
  value       = ec_elasticsearch_project.my_project.cloud_id
}

output "elasticsearch_endpoint" {
  description = "The public HTTPS endpoint for the Elasticsearch API"
  value       = ec_elasticsearch_project.my_project.endpoints.elasticsearch
}

output "kibana_url" {
  description = "The UI URL for accessing Kibana"
  value       = ec_elasticsearch_project.my_project.endpoints.kibana
}

# IMPORTANT: Credentials are only available on the first 'apply' 
# and are marked sensitive by the provider.
output "project_credentials" {
  description = "The auto-generated username and password"
  value       = ec_elasticsearch_project.my_project.credentials
  sensitive   = true 
}