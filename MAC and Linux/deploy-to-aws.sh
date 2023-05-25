#!/bin/sh

echo "Deploying application to AWS ECS using Docker Cloud Integration."

echo "`n"
echo "Building and pushing containers."
docker context use default
docker compose build
docker compose push


echo "`n"
echo "Image pushed to repository successfully."
echo "Change to docker context to 'ecscontext'" 
docker context use ecscontext # if you want to use your own docker context change 'ecscontext' to use your context name

echo "`n"
echo "Deploying to AWS"
docker compose up 
docker compose logs