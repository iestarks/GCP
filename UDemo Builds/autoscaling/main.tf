
###instance template < describe instance

resource "google_compute_instance_template" "autoscaler" {
    count = 1
    name = "autoscale-server-${count.index+1}"
    description = " This is the auto scale instance"
    #tag  =  [] ##networking
    labels  = {
        environmental = "production"
        name =  "autoscale_server-${count.index+1}"
    }
  instance_description = "This instance has been auto scaled "
  machine_type = "n1-standard-1"
  can_ip_forward = "false"


  scheduling {
      automatic_restart = "true"
      on_host_maintenance = "MIGRATE"
  }
disk {
    source_image = "ubuntu-os-cloud/ubuntu-1604-lts"
    auto_delete = true
    boot =true
}

disk {
    auto_delete = false 
    disk_size_gb = 10
    mode = "READ_WRITE"
    type = "PERSISTENT"
}


network_interface {
    network = "default"
}

metadata = {
    foo = "bar"
}



 service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }


}


#### Health check ---when to scale

resource "google_compute_health_check" "health" {
    count =1
    name = "udemo-health"
    check_interval_sec = 5
    healthy_threshold = 2
    unhealthy_threshold = 10
    
    http_health_check  {
     request_path =  "/alive.jsp" 
     port = "8080"
    }

}


##### group manager   <---- managing nodes

resource "google_compute_region_instance_group_manager" "group_int_mgr" {
    name = "app-igm"
    base_instance_name = "app"
    region = "us-east1"

 version {
    instance_template = google_compute_instance_template.autoscaler[0].self_link
  }


    auto_healing_policies {
    health_check = google_compute_health_check.health[0].self_link
    initial_delay_sec = "300"
    }
  
}

#### auto scale policy , how many do you require

resource "google_compute_region_autoscaler" "auto-scaler" {
    name = "auto-scaler"
    count = 1
    project = "terraform-gcp-255501"
    region = "us-east1"
    target = google_compute_region_instance_group_manager.group_int_mgr.self_link
  
    autoscaling_policy {
        max_replicas = 2
        min_replicas = 1
        cooldown_period = 60
        cpu_utilization {
            target = "0.8"   ###autoscale at 80% cpu utilization
    }
}

}



