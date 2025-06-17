# Terraform Infrastructure Project

This project contains Terraform configurations for managing AWS infrastructure. It includes the necessary files to define, deploy, and manage resources in AWS.

## Project Description

This project conatains two EC2 instances - one in public subnet and the other in private subnet in one AWS VPC. It also has a load balancer to distribute the load between the two EC2 instances. It has a NAT gateway in the private subnet and an object storage for which we will be using Amazon S3 service.

## Project Structure

- **main.tf**: Contains the main configuration for the Terraform infrastructure, including provider specifications and resource definitions.
- **compute.tf**: Contains compute infrastructure.
- **database.tf**: Contains database infrastructure.
- **dns.tf**: Contains dns infrastructure.
- **networking.tf**: Contains networking infrastructure.
- **storage.tf**: Contains storage infrastructure.
- **variables.tf**: Defines input variables for customizing the Terraform configuration.
- **outputs.tf**: Specifies the outputs of the Terraform configuration, detailing what information will be displayed after deployment.

## Getting Started

1. **Prerequisites**:
   - Ensure you have Terraform installed on your machine.
   - Configure your AWS credentials.

2. **Initialize the Project**:
   Run the following command to initialize the Terraform project:
   ```
   terraform init
   ```

3. **Create a New Workspace** (optional):
   If you want to create a new workspace for managing infrastructure, use the following command:
   ```
   terraform workspace new <workspace_name>
   ```

4. **Plan the Infrastructure**:
   To see what changes will be made, run:
   ```
   terraform plan
   ```

5. **Apply the Configuration**:
   To create the resources defined in the configuration, run:
   ```
   terraform apply
   ```

6. **Destroy the Infrastructure**:
   To remove all resources created by Terraform, run:
   ```
   terraform destroy
   ```

## Additional Information

Refer to the official Terraform documentation online for more details on commands and configurations.