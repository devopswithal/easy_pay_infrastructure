1. Configure AWS CLI
   sudo aws configure
   - enter access key
   - enter secret key
   - enter region
   - enter log type 
2. Create s3 bucket for backend state store \
   sudo aws s3 mb s3://ep-eks-state-store --region us-east-1
3. Create DynamoDB Table for State Locking \
   sudo aws dynamodb create-table \\ \
   --table-name ep-eks-state-lock \\ \
   --attribute-definitions AttributeName=LockID,AttributeType=S \\ \
   --key-schema AttributeName=LockID,KeyType=HASH \\ \
   --provisioned-throughput ReadCapacityUnits=5,WriteCapacityUnits=5
4. Initialize Backend and "Dev" Workspace n\
   sudo terraform init -backend-config=backend.tfvars \
   sudo terraform workspace new development
5. Create providers.tf
6. Create local-vars.tf
7. Create vpc.tf
8. Create eks.tf
9. Create bastion.tf
10. Create bastion-sg.tf
11. Create key.tf
12. Create vars.tf
13. Create iam.tf
14. Terraform Plan the IAC for verification \
    sudo terraform validate \
    sudo terraform plan -out=base-infra.tfplan 
15. Apply plan to create cluster & save the output to a file for later review \
    sudo terraform apply base-infra.tfplan | sudo tee apply-v1.md 
16. Create autoscaler-role.tf
17. Create autoscaler-manifest.tf
18. Plan autoscaler resources
19. Apply autoscaler resources
20. Test autoscaler
21. Create helm-provider.tf
22. Create alb-controller.tf
23. Plan alb resources
24. Apply alb resources
25. Test alb 