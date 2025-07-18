#!/bin/bash
set -e

apt update
apt install -y apache2 awscli

# Get the instance ID using the instance metadata
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Download images from S3 bucket (uncomment if needed)
# aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Create a simple HTML file with the portfolio content
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">${INSTANCE_ID}</span></h2>
  <p>Welcome to Dahir's DevOps Project -- Instance 1 &#128165;</p>
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl restart apache2
systemctl enable apache2
