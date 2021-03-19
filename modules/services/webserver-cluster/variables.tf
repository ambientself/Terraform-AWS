variable "server_port" {
    type        = number
    description = "The port the server will use for HTTP requests"
    default     = 8080
}

variable "ingress_html_port" {
    type        = number
    description = "Ingress Port for HTTP"
    default     = 80
}

variable "cluster_name" {
    description = "The name for all the cluster resources"
    type        = string
}

variable "db_remote_state_bucket" {
    description = "The name of the s3 bucket for the database's remote state"
    type        = string
}

variable "db_remote_state_key" {
    description = "The path for the database's remote state in s3"
    type        = string
}

variable "instance_type" {
    description = "The type of EC2 Instances to run"
    type        = string
}

variable "min_size" {
    description = "The type of EC2 Instances to run"
    type        = number
}

variable "max_size" {
    description = "The type of EC2 Instances to run"
    type        = number
}

variable "enable_autoscaling" {
    description = "If set to true, enable auto scaling"
    type        = bool
}