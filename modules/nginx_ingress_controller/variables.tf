variable env {
    type = "string"
}

variable "name" {
  type        = string
  description = "Name of helm release"
  default     = "ingress-nginx_${var.env}"
}

variable "namespace" {
  type        = string
  description = "Name of namespace where nginx controller should be deployed"
  default     = var.env
}
