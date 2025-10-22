output "master_private_ips" {
  description = "Private IPs of master VMs"
  value       = azurerm_network_interface.master_nic[*].private_ip_address
}

output "master_public_ips" {
  description = "Public IPs of master VMs"
  value       = azurerm_public_ip.master_pip[*].ip_address
}

output "worker_private_ips" {
  description = "Private IPs of worker VMs"
  value       = azurerm_network_interface.worker_nic[*].private_ip_address
}

output "worker_public_ips" {
  description = "Public IPs of worker VMs"
  value       = azurerm_public_ip.worker_pip[*].ip_address
}

output "haproxy_private_ip" {
  description = "Private IP of HAProxy VM"
  value       = azurerm_network_interface.haproxy_nic.private_ip_address
}

output "haproxy_public_ip" {
  description = "Public IP of HAProxy VM"
  value       = azurerm_public_ip.haproxy_pip.ip_address
}