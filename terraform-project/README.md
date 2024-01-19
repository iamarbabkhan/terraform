## How to create Ec2 instances using terraform in easy way

#### Pre-requesite:
1. aws account
2. iam user in aws
3. aws cli
4. terraform

#### Ssh to ec2
* `ssh -i test.pem ubuntu@50.19.179.228`

![tf.png](https://i.postimg.cc/pr6hSmn4/tf.png)
#### Insatall terraform
* `sudo apt-get update && sudo apt-get install -y gnupg software-properties-common`

![Screenshot-2024-01-19-234612.png](https://i.postimg.cc/B6gJYbz3/Screenshot-2024-01-19-234612.png)
* `wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg`

![Screenshot-2024-01-19-234753.png](https://i.postimg.cc/SN4vQVjg/Screenshot-2024-01-19-234753.png)
* `gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint`
  
![Screenshot-2024-01-19-234150.png](https://i.postimg.cc/Nf0PrF7X/Screenshot-2024-01-19-234150.png)
* `echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \ https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \ sudo tee /etc/apt/sources.list.d/hashicorp.list`
  
![Screenshot-2024-01-19-234917.png](https://i.postimg.cc/JhJ1VPsR/Screenshot-2024-01-19-234917.png)
* `sudo apt update`
  
![Screenshot-2024-01-19-234940.png](https://i.postimg.cc/3Nr4xPGX/Screenshot-2024-01-19-234940.png)
* `sudo apt-get install terraform`
  
![Screenshot-2024-01-19-235021.png](https://i.postimg.cc/ZY34WfH3/Screenshot-2024-01-19-235021.png)
* `terraform -help`
  
![Screenshot-2024-01-19-235057.png](https://i.postimg.cc/5yP345Xt/Screenshot-2024-01-19-235057.png)
* `touch ~/.bashrc`
  
![Screenshot-2024-01-19-235134.png](https://i.postimg.cc/Fztfj7wx/Screenshot-2024-01-19-235134.png)
* `terraform -install-autocomplete`
  
![Screenshot-2024-01-19-235201.png](https://i.postimg.cc/L6Qp7r6c/Screenshot-2024-01-19-235201.png)
* `sudo apt install awscli`
  
![Screenshot-2024-01-19-235308.png](https://i.postimg.cc/vBT7PgqF/Screenshot-2024-01-19-235308.png)
* `aws configure`
  
![Screenshot-2024-01-19-235442.png](https://i.postimg.cc/yNkXj3rq/Screenshot-2024-01-19-235442.png)
#### Create configuration file(main.tf)
* `vim main.tf`
  
![Screenshot-2024-01-20-000325.png](https://i.postimg.cc/7Zmr7djs/Screenshot-2024-01-20-000325.png)
#### Terraform init
* `terraform init`
  
![Screenshot-2024-01-19-235813.png](https://i.postimg.cc/fycRh5yG/Screenshot-2024-01-19-235813.png)
#### Terraform plan
* `terraform plan`
  
![Screenshot-2024-01-19-235847.png](https://i.postimg.cc/gJrhm9bf/Screenshot-2024-01-19-235847.png)
![Screenshot-2024-01-19-235920.png](https://i.postimg.cc/gkyD267d/Screenshot-2024-01-19-235920.png)
#### Terraform apply
* `terraform apply`
  
![Screenshot-2024-01-20-000004.png](https://i.postimg.cc/T1sXy41L/Screenshot-2024-01-20-000004.png)
![Screenshot-2024-01-20-000450.png](https://i.postimg.cc/Nj1WYM6r/Screenshot-2024-01-20-000450.png)
#### Check wheather ec2 is ceated or not
![Screenshot-2024-01-20-000724.png](https://i.postimg.cc/GtjnKmXD/Screenshot-2024-01-20-000724.png)
#### Terraform destroy
* `terraform destroy`
  
![Screenshot-2024-01-20-000908.png](https://i.postimg.cc/k4tH1gg4/Screenshot-2024-01-20-000908.png)
![Screenshot-2024-01-20-001012.png](https://i.postimg.cc/nhPTyf5Q/Screenshot-2024-01-20-001012.png)
#### Check ec2 is destroy or not
![Screenshot-2024-01-20-001043.png](https://i.postimg.cc/qqN2XNJb/Screenshot-2024-01-20-001043.png)
#### Check State file
![Screenshot-2024-01-20-001452.png](https://i.postimg.cc/pdk0snvR/Screenshot-2024-01-20-001452.png)
![Screenshot-2024-01-20-001505.png](https://i.postimg.cc/brf3J0H0/Screenshot-2024-01-20-001505.png)

