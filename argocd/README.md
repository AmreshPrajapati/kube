update terraform.tfvars as per requirement

aws s3 cp s3://maisonette-artifacts/terraform/git-repo.yaml . 

terraform init
terraform init -reconfigure
terraform plan