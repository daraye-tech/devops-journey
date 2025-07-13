# EKS Cluster Terraform Setup

This project provisions an Amazon EKS (Elastic Kubernetes Service) cluster and its supporting infrastructure using Terraform. It is organized for clarity and modularity, following best practices for AWS and Terraform.

## Project Structure

- `eks-cluster.tf`: Main EKS cluster module configuration
- `security-groups.tf`: Security group rules for EKS worker nodes
- `outputs.tf`: Output values from the Terraform deployment
- `variables.tf`: Input variables for customization
- `versions.tf`: Provider and module version constraints
- `vpc.tf`: VPC and networking resources

## Features

- **EKS Cluster**: Provisions an EKS cluster using the official Terraform AWS EKS module.
- **Managed Node Groups**: Configures managed node groups with custom AMI type and instance type.
- **Security Groups**: Applies secure ingress and egress rules for worker nodes.
- **VPC Integration**: Deploys the cluster into a custom VPC with private subnets.
- **IRSA Enabled**: Enables IAM Roles for Service Accounts (IRSA) for secure pod access to AWS resources.
- **Tagging**: Resources are tagged for easy identification.

## Usage

### Prerequisites
- Terraform >= 1.0
- AWS CLI configured with appropriate credentials
- An S3 bucket and DynamoDB table for remote state (recommended)

### Steps

1. **Clone the repository**
   ```bash
   git clone <repo-url>
   cd week-03-terraform-eks
   ```

2. **Initialize Terraform**
   ```bash
   terraform init
   ```

3. **Review and customize variables**
   Edit `variables.tf` to set your desired values (e.g., cluster name, region, instance type).

4. **Plan the deployment**
   ```bash
   terraform plan
   ```

5. **Apply the configuration**
   ```bash
   terraform apply
   ```

6. **Access outputs**
   After apply, review the outputs for cluster details:
   ```bash
   terraform output
   ```

## File Details

### eks-cluster.tf
- Uses the `terraform-aws-modules/eks/aws` module
- Sets cluster name, version, subnet IDs, and enables IRSA
- Tags the cluster
- Associates the cluster with the VPC
- Configures managed node group defaults (AMI type, instance type, security group)
- Defines a node group with desired, min, and max capacity

### security-groups.tf
- Creates a security group for all EKS worker nodes
- Ingress rules:
  - SSH (22), HTTP (80), HTTPS (443), and ephemeral ports (1025-65535) from anywhere
- Egress rule:
  - Allows all outbound traffic
- Tags the security group

### vpc.tf
- Provisions a VPC and private subnets for the EKS cluster

### outputs.tf
- Exports key outputs such as cluster name, endpoint, and node group details

### variables.tf
- Defines input variables for cluster name, Kubernetes version, VPC settings, and more

### versions.tf
- Specifies required provider and module versions

## Customization
- Adjust instance types, node group sizes, and security group rules as needed in their respective files.
- Update tags for resource identification and cost allocation.

## Troubleshooting
- Ensure all referenced resources (e.g., security groups, VPC) are declared and named correctly.
- Use `terraform validate` to check for syntax errors.
- Review AWS IAM permissions for your Terraform user.

## Clean Up
To destroy all resources:
```bash
terraform destroy
```

## References
- [Terraform AWS EKS Module](https://github.com/terraform-aws-modules/terraform-aws-eks)
- [AWS EKS Documentation](https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html)

---

**Author:** Dahir
**Date:13 July 2025
