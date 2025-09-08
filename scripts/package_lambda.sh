#!/bin/bash
set -e

echo "Packaging AWS Lambda function..."

cd lambda
pip install -r requirements.txt -t .
zip -r ../lambda_package.zip .
cd ..
