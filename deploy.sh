#!/bin/bash


echo "Authentication to ECR..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin 783764617335.dkr.ecr.eu-north-1.amazonaws.com

echo "Building docker image..."
docker build -t 783764617335.dkr.ecr.eu-north-1.amazonaws.com/my-node-app:latest .

echo "Pushing docker image to ECR..."
docker push 783764617335.dkr.ecr.eu-north-1.amazonaws.com/my-node-app:latest

echo "Cleaning up..."

docker image remove -f 783764617335.dkr.ecr.eu-north-1.amazonaws.com/my-node-app:latest

