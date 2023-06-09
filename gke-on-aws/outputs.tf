/**
 * Copyright 2022 Google LLC
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

output "cluster_name" {
  description = "The automatically generated name of your Anthos cluster on AWS"
  value       = local.name_prefix
}

output "message" {
  description = "Connect Instructions"
  value       = "To connect to your cluster issue the command: gcloud container hub memberships get-credentials ${local.name_prefix}"

}

output "noodpool-names" {
  description = "Name of the nodepools"
  value       = module.nodepool.nodepool_name
}

output "workload_identity_issuer_uri" {
  description = "Issuer uri of anthos cluster workload identity"
  value       = module.anthos_cluster.workload_identity[0].issuer_uri
}

output "workload_identity_provider" {
  description = "Identity provider of anthos cluster workload identity"
  value       = module.anthos_cluster.workload_identity[0].identity_provider
}

output "workload_identity_pool" {
  description = "identity pool of anthos cluster workload identity"
  value       = module.anthos_cluster.workload_identity[0].workload_pool
}