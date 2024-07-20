variable "vpc_id" {
  description = "The ID of the VPC where the ECS cluster will be deployed"    
  type        = string
  default     = "vpc-08a20b564a94cad98"
}

variable "subnet_ids" {
  description = "A list of subnet IDs where the ECS services will be deployed"
  type        = list(string)
  default     = ["subnet-0b355c1e081bfb317","subnet-04e7a2e028dcb65ea"]       
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  type        = string
  default     = "ecr-repo"
}

variable "cluster_name" {
  description = "The name of the ECS cluster"
  type        = string
  default     = "test-ecs-cluster"
}

variable "service_name" {
  description = "The name of the ECS service"
  type        = string
  default     = "test-ecs-service"
}

variable "container_port" {
  description = "The port on which the container will listen"
  type        = number
  default     = 80
}

variable "desired_count" {
  description = "The number of desired tasks for the ECS service"
  type        = number
  default     = 2
}
