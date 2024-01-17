## Install Terraform On Linux

* `sudo apt-get update && sudo apt-get install -y gnupg software-properties-common`
* `wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg`

* `gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint`
* `echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list`
* `sudo apt update`
* `sudo apt-get install terraform`
* `terraform -help`
* `terraform -help plan`
* `touch ~/.bashrc`
* `terraform -install-autocomplete`

## AWS Configure

* `sudo apt install awscli`
* `aws configure`
1. AWS Access Key ID [None]: ACCESS_KEY
2. AWS Secret Access Key [None]: SECRET_ACCESS_KEY
3. Default region name [None]: REGION
4. Default output format [None]: json

#### Create main.tf file
* `vim main.tf`

#### Command after creation of main.tf file
* `terraform init`
* `terraform plan`
* `terraform apply`
* `terraform destroy`
