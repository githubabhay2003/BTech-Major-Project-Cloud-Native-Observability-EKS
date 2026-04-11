#!/bin/bash

echo "🚀 Applying Terraform..."
cd terraform/infra
terraform init
terraform validate

terraform apply -auto-approve

echo "🔗 Connecting to cluster..."
cd ../..
bash scripts/connect.sh

echo "🚀 Triggering deployment..."
bash scripts/deploy.sh

echo "✅ Setup complete!"
