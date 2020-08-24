#!/bin/bash
# invoke the lambda function
set -eo pipefail
FUNCTION=$(aws cloudformation describe-stack-resource --stack-name kondoboard-etl-cron --logical-resource-id function --query 'StackResourceDetail.PhysicalResourceId' --output text)

while true; do
  aws lambda invoke --function-name $FUNCTION --payload file://event.json out.json
  cat out.json
  echo ""
  sleep 2
done
