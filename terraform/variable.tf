variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "k8s-resource-group"
}

variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
  default     = "k8s-vnet"
}

variable "vnet_cidr" {
  description = "CIDR block for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "k8s-subnet"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "master_ips" {
  description = "Static private IPs for master nodes"
  type        = list(string)
  default     = ["10.0.1.10", "10.0.1.11"]
}

variable "worker_ips" {
  description = "Static private IPs for worker nodes"
  type        = list(string)
  default     = ["10.0.1.20", "10.0.1.21"]
}

variable "haproxy_ip" {
  description = "Static private IP for HAProxy node"
  type        = string
  default     = "10.0.1.5"
}

variable "master_vm_size" {
  description = "Size of the master VMs"
  type        = string
  default     = "Standard_D2s_v3"
}

variable "worker_vm_size" {
  description = "Size of the worker VMs"
  type        = string
  default     = "Standard_B1s"
}

variable "haproxy_vm_size" {
  description = "Size of the HAProxy VM"
  type        = string
  default     = "Standard_B1s"
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
  default     = "k8sadmin"
}

variable "admin_password" {
  description = "Admin password for VM access"
  type        = string
  sensitive   = true
}