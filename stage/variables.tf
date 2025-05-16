variable "location" {
  description = "Azure region for resources"
  type        = string
}

variable "resource_name_workload" {
  description = "Workload name for resource naming"
  type        = string
}

variable "resource_name_environment" {
  description = "Environment name for resource naming"
  type        = string
}

variable "resource_name_sequence_start" {
  description = "Starting sequence number for resource naming"
  type        = number
  default     = 1
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}