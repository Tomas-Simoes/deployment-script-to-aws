Write-Output "Building application."
# package.json build-new script -> nx build
npm run build-new

Write-Output "`n"
Write-Output "Running application offline using Serverless Framework"
serverless offline
