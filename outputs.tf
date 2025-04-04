output "ecs_service_url" {
  value = aws_ecs_service.medusa.name
}

output "ecr_repo_url" {
  value = module.ecr.repository_url
}