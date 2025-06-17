# General Variables

variable "default_region" {
  description = "Default region for provider"
  type        = string
  default     = "us-east-1"
}


# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-011899242bb902164" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}


# Route 53 Variables


variable "domain" {
  description = "Domain for website"
  type        = string
}

variable "azs" {
  description = "Availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

