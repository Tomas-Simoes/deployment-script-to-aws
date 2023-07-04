echo "Building application."
# package.json build-new script -> nx build
sudo npm run build

echo "`n"
echo "Running application offline using Serverless Framework"
serverless offline
