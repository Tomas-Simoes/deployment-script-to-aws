echo "Building application."
# package.json build-new script -> nx build
npm run build-new

echo "`n"
echo "Deploying to AWS Lambda using Serverless Framework"
serverless deploy --aws-profile default
