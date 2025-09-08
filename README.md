# GitLab + AWS Lambda DevOps Hub

This template demonstrates deploying an **AWS Lambda function** with **Terraform** and automating the workflow using **GitLab CI/CD**.

---

## 🚀 Features
- Package Python Lambda with dependencies
- Deploy Lambda via Terraform
- GitLab CI/CD pipeline with stages:
  - `package` → build Lambda zip
  - `validate` → Terraform syntax check
  - `plan` → preview changes
  - `apply` → manual approval for deployment
- CloudWatch log group created automatically

---

## 🔐 Setup
1. Create an AWS IAM user with programmatic access.
2. Store credentials in GitLab CI/CD Variables:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_DEFAULT_REGION`
3. Optional variables:
   - `TF_VAR_project_name`
   - `TF_VAR_env`

---

## 🧪 Usage
### Run pipeline
- Push to GitLab → pipeline packages Lambda and runs Terraform plan.
- Manual approval needed for `apply` to deploy Lambda.

### Run locally
```bash
cd lambda
pip install -r requirements.txt -t .
zip -r ../lambda_package.zip .

cd ../terraform
terraform init
terraform plan
terraform apply
