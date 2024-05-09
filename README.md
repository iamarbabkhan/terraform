### Infrastructure as code(IaC)
Infrastructure as Code (IaC) is the managing and provisioning of infrastructure through code instead of through manual processes.

### Terraform
Terraform is an infrastructure as code tool that lets you build, change, and version cloud and on-premises resources safely and efficiently.

### Why Terraform
* Manage and track any Infrastructure
* Support multi-cloud Infrastructure deployment
* Automate changes
* Standardize configuration
* Collaboration

### Terraform Architecture
![architecture](https://developer.hashicorp.com/_next/image?url=https%3A%2F%2Fcontent.hashicorp.com%2Fapi%2Fassets%3Fproduct%3Dterraform%26version%3Drefs%252Fheads%252Fv1.6%26asset%3Dwebsite%252Fimg%252Fdocs%252Fintro-terraform-workflow.png%26width%3D2038%26height%3D1773&w=3840&q=75)

### Terraform Commands
* initialize: `terraform init`
* dry run: `terraform plan`
* apply: `terraform apply`
* destroy: `terraform destroy`

### Terraform State
1. local state/backend: it stores information about the infrastructure on the machine 
2. remote state/backend: it stores information about the infrastructure on the remote location.
**Example:** aws,azure,gcp,terraform cloud
