#!/bin/bash
echo "Delete Codepipeline Lambda Stack"
echo "Can you delete Codepipeline Lambda Stack"
read -p 'Y/N: ' accept
if [[ "$accept" == "Y" ]]; then
    echo "Deliting Codepipeline Lambda Stack CloudFormation."
    aws cloudformation delete-stack --stack-name CodePipelineLambdaStack
    aws s3 rm s3://$BUCKET --recursive
    aws s3api delete-bucket --bucket $BUCKET --region us-east-1
else
    echo "Operation canceled."
fi

