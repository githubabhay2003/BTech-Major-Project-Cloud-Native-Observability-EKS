#!/bin/bash

echo "Triggering deployment..."

git commit --allow-empty -m "trigger deployment"
git push
