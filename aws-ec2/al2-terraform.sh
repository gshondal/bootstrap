# https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started
yum install yum-utils -y
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
yum install terraform -y

su ec2-user -c '
cd; touch ~/.bashrc;
terraform -install-autocomplete
'
