# Terraform Infrastructure Project

This project contains Terraform configurations for managing AWS infrastructure. It includes the necessary files to define, deploy, and manage resources in AWS.

## Project Description

This project conatains two EC2 instances - one in public subnet and the other in private subnet in one AWS VPC. It also has a load balancer to distribute the load between the two EC2 instances. It has a NAT gateway in the private subnet and an object storage for which we will be using Amazon S3 service. The EC2 in private subnet will be able to access S3 bucket.

## Project Structure

- **main.tf**: Contains the main configuration for the Terraform infrastructure, including provider specifications and resource definitions.
- **compute.tf**: Contains compute infrastructure.
- **database.tf**: Contains database infrastructure.
- **dns.tf**: Contains dns infrastructure.
- **networking.tf**: Contains networking infrastructure.
- **storage.tf**: Contains storage infrastructure.
- **variables.tf**: Defines input variables for customizing the Terraform configuration.
- **outputs.tf**: Specifies the outputs of the Terraform configuration, detailing what information will be displayed after deployment.
- **iam.tf**: Contains iam roles and assignments.

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

## How to Test

1. **Test Load Balancer**:
   To test the Load Balancer, use curl "load_balancer_dns_name" after terraform apply runs successfuly. The output load_balancer_dns_name is printed on console. You should see "Hello World 1" and "Hello World 2" interchangeably when running the curl command multiple times.

2. **Test S3 read access from EC2 in private subnet**:
   Upload some files to S3 bucket. Connect to EC2 that is in private subnet from AWS console. Then use aws cli to access s3. Run "aws s3 ls" and "aws s3 ls s3://bucket-name". You should see the files listed.