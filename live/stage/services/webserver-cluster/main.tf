provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
    source                  = "git@github.com:ambientself/Terraform-AWS.git//services/webserver-cluster?ref=v0.0.1"
    cluster_name            = "webserver-stage"
    db_remote_state_bucket  = var.db_remote_state_bucket
    db_remote_state_key     = var.db_remote_state_key
    
    instance_type           = "t2.micro"
    min_size                = 2
    max_size                = 2
    enable_autoscaling      = false
}

