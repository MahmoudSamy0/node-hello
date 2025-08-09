DevOps Hiring Assignment
Overview
This project automates the lifecycle of a simple Node.js application using GitHub Actions, 
Docker, Terraform, and AWS ECS. The solution includes containerization, CI/CD pipeline setup, 
AWS infrastructure provisioning using Terraform, and monitoring integration with New Relic.
Prerequisites
• AWS account
• Docker Hub account
• GitHub repository forked from johnpapa/node-hello
• New Relic Account
• Visual studio coder
Assumptions
• AWS region: us-east-1
• Default VPC and subnets exist in the region
• Terraform backend (S3 bucket + DynamoDB table) must exist prior to running the 
pipeline
Project Structure
.
├── .github/
│ └── workflows/
│ └── master.yml # CI/CD pipeline using GitHub Actions
├── .vscode/ # VS Code settings 
├── terraform/ 
│ ├── backend.tf # S3 remote backend configuration where Terraform stores its state file
│ ├── main.tf # ECS service, IAM, networking, etc.
│ ├── provider.tf # AWS provider without hardcoded credentials
│ └── variables.tf # Input variables for Terraform
├── .gitignore # Ignore unnecessary files 
├── Dockerfile # Docker image definition
├── README.md # Project documentation
├── eslint.config.mjs # ESLint config
├── index.js # Application entry point (Node.js)
├── package-lock.json # Exact versions of installed dependencies
├── package.json # Project metadata and scripts
Installation Setup
1. Forked the Node.js "hello world" application: node-hello
➢ Go to the original repo.
https://github.com/johnpapa/node-hello
➢ Click the Fork button in the top-right corner.
➢ GitHub created a copy of the repo.
https://github.com/mahmoudsamy0/node-hello.
2. Clone the repository on my local machine
➢ git clone https://github.com/mahmoudsamy0/node-hello.git
➢ require making some changes in package. Json file to make it reflect on your
repository.
3. Containerize the Application
➢ Create and Add Dockerfile to the repository that builds the image then we 
will automate the push and container creation using GitHub actions and 
terraform
4. GitHub action Pipeline setup
➢ Creating the below secrets before working with GitHub actions
▪ DOCKER_USERNAME
▪ DOCKER_PASSWORD
▪ AWS_ACCESS_KEY_ID
▪ AWS_SECRET_ACCESS_KEY
➢ Create the workflow file .github/workflows/master.yml below is a copy of it 
provided through my GitHub repo for your reference.
 https://github.com/MahmoudSamy0/node-hello/blob/master/.github/workflows/master.yml
➢ This workflow do the below in brief: -
▪ Trigger on Code Push
▪ Job: automate_build_and_deploy_simple_app
▪ Checkout the Repository
▪ Set Up Node.js
▪ Install Dependencies
▪ Code Linting
▪ Set Up Docker Buildx
▪ Log In to Docker Hub
▪ Build and Push Docker Image
▪ Set Up Terraform
▪ Initialized Terraform
▪ Deploy Using Terraform
.
5. Terraform setup
➢ Create the terraform folder and there are copies for all the files on the GitHub
repository.
➢ Important Note: - for the best practices it’s recommended to separate the build 
of the infrastructure and the deploy of the application, however as this is a test 
task I put them in one file.
6. AWS ECS logs into New Relic
➢ Update ECS Task Definition to Send Logs to CloudWatch
➢ Create New ECS Task Definition Revision
➢ Update ECS Service to Use New Task Definition
➢ Verify Logs in CloudWatch
➢ Integrate CloudWatch with New Relic (Lambda method)
➢ Lambda Subscribes to ECS Log Group
➢ View Logs in New Relic