
# Server Tool Installation Scripts

This repository contains shell scripts to automate the installation and basic setup of commonly used DevOps and CI/CD tools on a Linux server. Each script is designed to install a specific tool independently.

# Repository Structure
.
├── Jfrog.sh
├── Maven.sh
├── docker.sh
├── jenkins.sh
├── sonarqube.sh
├── trivy.sh
└── README.md

# Prerequisites

Linux-based server (Ubuntu/CentOS/Amazon Linux – depending on script compatibility)

Root or sudo privileges

Internet access to download required packages

# Bash shell

⚠️ It is recommended to review each script before execution to ensure compatibility with your OS and environment.

Usage

# Clone the repository:

git clone <repository-url>
cd <repository-name>


# Give execute permission to the script:

chmod +x <script-name>.sh


# Run the script:

./<script-name>.sh

# Script Details
# docker.sh

Installs Docker Engine on the server and configures it for use.

Installs Docker packages

Starts and enables Docker service

(Optional) Adds current user to the Docker group

# jenkins.sh

Installs Jenkins CI server.

Installs Java (if required)

Adds Jenkins repository

Installs and starts Jenkins service

Exposes Jenkins on the default port 8080

# Maven.sh

Installs Apache Maven for build and dependency management.

Downloads Maven binary

Configures environment variables

Verifies installation

# sonarqube.sh

Installs SonarQube for code quality and static analysis.

Installs required dependencies (Java, database if applicable)

Downloads and configures SonarQube

Starts SonarQube service

# Jfrog.sh

Installs JFrog Artifactory.

Downloads JFrog Artifactory package

Configures and starts the Artifactory service

Makes Artifactory accessible via browser

# trivy.sh

Installs Trivy vulnerability scanner.

Downloads Trivy binary

Installs and verifies Trivy

Can be used to scan Docker images and file systems

# Notes

Scripts are modular and can be executed independently.

Default ports and configurations may be used; customize as needed.

Ensure required ports are open in the firewall or security group.

For production environments, additional hardening and configuration may be required.