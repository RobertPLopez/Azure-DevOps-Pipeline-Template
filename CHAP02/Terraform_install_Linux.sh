TERRAFORM_VERSION="1.0.6"

curl -Os https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip \
&& curl -Os https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_SHA256SUMS \
&& curl https://keybase.io/hashicorp/pgp_keys.asc | gpg --import \
&& curl -Os https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_SHA256SUMS.sig \
&& gpg --verify terraform_${TERRAFORM_VERSION}_SHA256SUMS.sig terraform_${TERRAFORM_VERSION}_SHA256SUMS \
&& shasum -a 256 -c terraform_${TERRAFORM_VERSION}_SHA256SUMS 2>&1 | grep "${TERRAFORM_VERSION}_linux_amd64.zip:\sOK" \
&& unzip -o terraform_${TERRAFORM_VERSION}_linux_amd64.zip -d /usr/local/bin

#The above command installs terraform from a script on linux machines 

#The script does the following: 
#   It sets the TERRAFORM_VERSION parameter with the version to download - THIS NEEDS TO BE SET MANUALLY TO THE PROPPER TERRAFORM VERSION
#   It downloads the terraform package by checking the checksum 
#   It unzips the package in the user's local directory. 
#To execute hte script perform the following:
#   Open a CLI terminal 
#   Copy and paste the script
#   Execute the script by hitting enter in the CLI terminal 