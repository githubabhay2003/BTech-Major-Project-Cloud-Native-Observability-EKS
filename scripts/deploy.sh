#!/bin/bash

echo "Triggering deployment..."

git commit --allow-empty -m "Trigger deployment"
git push
