sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl \
&& curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add - \
&& sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main" \
&& sudo apt-get install terraform

#The above solution installs terraform using a APT package manager, and is for an Ubuntu distribution. It performs the following actions 
#   It adds the apt HashiCorp repository 
#   It updates the local repo
#   It downloads the terraform CLI