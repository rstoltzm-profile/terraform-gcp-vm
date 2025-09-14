/**
 * Copyright 2023 Google LLC
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

# [START compute_instances_quickstart]
resource "google_compute_instance" "default" {
  name         = "vm-learning-01"
  machine_type = "n1-standard-2"
  zone         = "us-central1-a"
  project      = "vm-learning-472117"

  boot_disk {
    initialize_params {
      image = "ubuntu-minimal-2204-jammy-v20250826"
      size = 20
      type = "pd-balanced"
    }
    auto_delete = true
  }

  network_interface {
    network = "default"
    access_config {}
  }

  # metadata = {ssh-keys = "name:file"}

  tags = ["http-server", "https-server"] 
  
  labels = {
    environment = "dev"
    owner       = "rstoltzm-profile"
  }

}

# [END compute_instances_quickstart]
