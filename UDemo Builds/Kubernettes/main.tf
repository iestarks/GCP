module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = "terraform-gcp-255501"
  name                       = "gke-test-1"
  region                     = "us-east1"
  zones                      = ["us-east1-a", "us-east1-b", "us-east1-f"]
  network                    = "default"
  subnetwork                 = "default"
  ip_range_pods              = ""
  ip_range_services          = ""
  http_load_balancing        = false
  horizontal_pod_autoscaling = true
  #kubernetes_dashboard       = true
  network_policy             = false

  node_pools = [
    {
      name               = "default-node-pool"
      machine_type       = "n1-standard-2"
      min_count          = 1
      max_count          = 2
      local_ssd_count    = 0
      disk_size_gb       = 20
      disk_type          = "pd-standard"
      image_type         = "COS"
      auto_repair        = true
      auto_upgrade       = true
      service_account    = "gcp-2000@terraform-gcp-255501.iam.gserviceaccount.com"
      preemptible        = false
      initial_node_count = 1
    },
  ]

  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

 #node_pools_taints = {
  #  all = []

   # default-node-pool = [
    #  {
     #   key    = "default-node-pool"
      #  value  = true
       # effect = "PREFER_NO_SCHEDULE"
      #},
    #]
 # }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "default-node-pool",
    ]
  }
}