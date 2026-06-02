# Two-step bootstrap for remote state:
#
# Step 1: Run `terraform init` without a backend configured. Apply the
#         configuration to provision the S3 bucket and DynamoDB table that
#         will store remote state.
#
# Step 2: Uncomment the backend block below, replace the placeholder values
#         with the names of the resources created in Step 1, then run
#         `terraform init -migrate-state` to move local state into the bucket.

/*
terraform {
  backend "s3" {
    bucket         = "YOUR-STATE-BUCKET-NAME"
    key            = "automotif-site/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "YOUR-DYNAMODB-TABLE-NAME"
    encrypt        = true
  }
}
*/
