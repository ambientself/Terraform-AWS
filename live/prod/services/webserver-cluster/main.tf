provider "aws" {
    region = "us-east-2"
}

module "webserver_cluster" {
    source                  = "git@github.com:ambientself/Terraform-AWS.git//services/webserver-cluster?ref=v0.0.2"
    cluster_name            = "webservers-prod"
    db_remote_state_bucket  = var.db_remote_state_bucket
    db_remote_state_key     = var.db_remote_state_key

    instance_type           = "t2.micro"
    min_size                = 2
    max_size                = 10
    enable_autoscaling      = true

    custom_tag = {
        Owner       = "exampleOwner"
        DeployedBy  = "terraRyan"
    }


}

