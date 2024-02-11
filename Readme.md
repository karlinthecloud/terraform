terraform init
terraform plan
terraform apply

apply with Variable passed into the command
terraform apply -auto-approve -var="bucketname=myterraformbucketkf2024"            

Command to pass region specific tfvars file into terraform
terraform plan -var="bucketname=myterraformbucketkf2024" -var-file "staging.tfvars"            
terraform apply -auto-approve -var="bucketname=myterraformbucketkf2024" -var-file "staging.tfvars"   


terraform plan -var="bucketname=myterraformbucketkf2024" -var-file "prod.tfvars"
terraform apply -auto-approve -var="bucketname=myterraformbucketkf2024" -var-file "prod.tfvars"   
         
Add Environment variables from system to terraform.
export TF_VAR_region=us-west-1
export TF_VAR_ami=ami-049d8641
export TF_VAR_alist='[1,2,3]'
export TF_VAR_amap='{ foo = "bar", baz = "qux" }'

