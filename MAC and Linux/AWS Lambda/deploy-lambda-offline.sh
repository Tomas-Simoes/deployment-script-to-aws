echo "Building application."
# package.json build-new script -> nx build
npm run build-new

echo "`n"
echo "Running application offline using Serverless Framework"
serverless offline
