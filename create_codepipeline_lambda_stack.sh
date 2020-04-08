#!/bin/bash
echo "Create Codepipeline Lambda Stack"
echo "Can you create Codepipeline Lambda Stack"
read -p 'Y/N: ' accept
if [[ "$accept" == "Y" ]]; then
    echo "Creating Codepipeline Lambda Stack CloudFormation."
    aws cloudformation create-stack --stack-name CodePipelineLambdaStack  --template-body file://./codepipeline.yml --parameters ParameterKey=LambdabucketName,ParameterValue=$BUCKET --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
else
    echo "Operation canceled."
fi