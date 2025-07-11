🚀 Terraform AWS Infrastructure Project
This project provisions a basic AWS infrastructure using Terraform. It includes a custom VPC, public subnets, EC2 web servers, a security group, an application load balancer (ALB), and other necessary resources.

📦 Features
Custom VPC with two public subnets across AZs (eu-north-1a, eu-north-1b)

Internet Gateway and Route Table for outbound internet access

Security group allowing HTTP (80) and SSH (22) access

Two EC2 instances with different user data scripts for configuration

Application Load Balancer with health checks and listener on port 80

Target group and EC2 registration

Outputs ALB DNS name for easy access

🛠 Prerequisites
Terraform installed

AWS CLI configured (aws configure)

An existing S3 bucket if using a remote backend

IAM permissions to manage VPC, EC2, ALB, and S3 resources

🚀 Usage
Clone the repo

git clone <repo-url>
cd <project-directory>
Initialize Terraform


terraform init
Plan the changes

terraform plan
Apply the configuration

terraform apply
When prompted:

Enter a value: yes

📁 Project Structure

.
├── main.tf              # Main Terraform configuration
├── variables.tf         # Input variables (optional)
├── user-data.sh         # Setup script for webserver1
├── user-data1.sh        # Setup script for webserver2
└── outputs.tf           # Output configuration (optional)

🧹 Teardown
terraform destroy
