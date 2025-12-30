# Static Website Hosting Using AWS S3 (DevOps CI/CD)

This project demonstrates **automated static website hosting on AWS S3**
using a **DevOps CI/CD pipeline**.\
The infrastructure is provisioned using **Terraform**, and deployment is
automated using **Jenkins**, with source code managed in **GitHub**.

------------------------------------------------------------------------

## 🚀 Project Overview

The goal of this project is to build an **end-to-end DevOps workflow**
where: - Infrastructure is created using **Infrastructure as Code
(IaC)** - Website deployment is fully automated - AWS credentials are
handled securely - The website is publicly accessible via an S3 static
website endpoint

Any change pushed to GitHub triggers Jenkins to automatically deploy the
updated website.

------------------------------------------------------------------------

## 🧱 Architecture

Developer → GitHub → Jenkins → Terraform → AWS S3 (Static Website)

------------------------------------------------------------------------

## 🛠 Tools & Technologies

-   **Cloud Provider**: AWS
-   **Services**: S3, IAM
-   **CI/CD Tool**: Jenkins
-   **Infrastructure as Code**: Terraform
-   **Version Control**: Git & GitHub
-   **Scripting**: Shell, AWS CLI
-   **Operating System**: Linux

------------------------------------------------------------------------

## 📂 Project Structure

static-website-hosting-using-s3/ - terraform/main.tf -
website/index.html - website/style.css - Jenkinsfile - README.md

------------------------------------------------------------------------

## ⚙️ Terraform Configuration

Terraform is used to: - Create an S3 bucket - Enable static website
hosting - Configure public read access - Attach bucket policy

------------------------------------------------------------------------

## 🔁 Jenkins Pipeline Stages

1.  Clone Repository\
2.  Terraform Init and Apply\
3.  Upload Website Files to S3

------------------------------------------------------------------------

## 🔐 Security Best Practices

-   AWS credentials stored in Jenkins Credentials Manager
-   No hardcoded secrets
-   Read-only public access
-   Infrastructure managed via code

------------------------------------------------------------------------

## 🌍 Website Access

http://`<bucket-name>`{=html}.s3-website-`<region>`{=html}.amazonaws.com

Example:\
http://jd-devops-static-site.s3-website-us-east-1.amazonaws.com

------------------------------------------------------------------------

## 📦 Use Cases

-   Portfolio websites
-   Landing pages
-   Documentation sites

------------------------------------------------------------------------

## 📈 Future Enhancements

-   CloudFront CDN
-   HTTPS with ACM
-   Custom domain using Route 53
-   Terraform remote backend

------------------------------------------------------------------------

## 👨‍💻 Author

**Jaya Darshan**\
DevOps Engineer (Fresher)

------------------------------------------------------------------------