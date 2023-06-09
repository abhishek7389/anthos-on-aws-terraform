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
 
output "fleet_membership" {
  value = google_container_aws_cluster.this.fleet[0].membership
}

output "anthos_cluster_id" {
  value = google_container_aws_cluster.this.id
}

output "location" {
  value = google_container_aws_cluster.this.location
}

output "workload_identity" {
  value = google_container_aws_cluster.this.workload_identity_config
}