#/*
#  Compute
#*/
#output "gcp_public_ip" {
#    value = google_compute_instance.compute_instance.*.network_interface.0.access_config.0.nat_ip
#}

#/*
#  Cloud SQL
#  Too many time spend to create cloud sql
#*/
#// output "gcp_cloud_sql_db_ip" {
#//   value = google_sql_database_instance.instance.*.ip_address.0.ip_address
#// }

#/*
#  Cloud Storage Bucket
#*/
#output "gcp_cloud_storage_bucket_url" {
#  value       = google_storage_bucket.storage_bucket.*.url
#}

output "vsphere_dc" {
  value = data.vsphere_datacenter.dc
  description = "DC"
}

output "vsphere_disk" {
  value = vsphere_virtual_machine.vm.*.disk
  #sensitive = true
  description = "resource"
}

output "vsphere_cpu" {
  value = vsphere_virtual_machine.vm.*.num_cpus
  #sensitive = true
  description = "resource"
}

output "vsphere_ram" {
  value = vsphere_virtual_machine.vm.*.memory
  #sensitive = true
  description = "resource"
}

output "vsphere_name" {
  value = vsphere_virtual_machine.vm.*.name
  #sensitive = true
  description = "resource"
}
