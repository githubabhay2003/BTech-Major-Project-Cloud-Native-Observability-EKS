#!/bin/bash

echo "Connecting to EKS cluster..."

aws eks update-kubeconfig   --region us-east-1   --name eks-observability-cluster

echo "Connected! Verifying..."

kubectl get nodes
