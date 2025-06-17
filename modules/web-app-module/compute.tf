resource "aws_instance" "instance_1" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.id]
  subnet_id       = aws_subnet.public_subnet.id
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 1" > index.html
              python3 -m http.server 8080 &
              EOF
}

resource "aws_instance" "instance_2" {
  ami             = var.ami
  instance_type   = var.instance_type
  security_groups = [aws_security_group.instances.id]
  subnet_id       = aws_subnet.private_subnet.id
  iam_instance_profile = aws_iam_instance_profile.iam_profile.name # Attach the IAM instance profile to the instance in the private subnet, this instance will have access to the S3 bucket via the IAM role
                                                                  
  user_data       = <<-EOF
              #!/bin/bash
              echo "Hello, World 2" > index.html
              python3 -m http.server 8080 &
              EOF
}
