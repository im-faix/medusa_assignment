variable "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  validation {
    condition     = length(var.ecs_cluster_name) > 0
    error_message = "ECS cluster name must not be empty."
  }
}
