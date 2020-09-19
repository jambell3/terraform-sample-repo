
# This directory has the list of files required to create the following aws resources
- vpc.tf --> creates vpc, subnet, security group and other networking related resources
- vars.tf --> Variable declaration
- terraform.tfvars --> Variable initialization with default values
- securitygroup.tf --> creates security group
- provider.tf --> aws provider file
- key.tf --> key pair resources
- instance.tf --> EC2 instance resource.

Steps to execute:

1. Install terraform
-- The above scripts were executed with version - Terraform v0.12.16
2. Browse to the directory where you have downloaded the above files.
3. Open a command prompt and execute the following commands in that order
> terraform init # to download aws provider
> terraform apply
4. Cleanup
> terraform destroy


Important Security Note:
- If you are working on a terraform project and commit that to a VCS like github, make sure
to clear out the aws accesskey and secretaccesskey from the terraform.tfvars file.
