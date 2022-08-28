
# put-event aws cloudwatch notification issue
aws events put-rule --name test-cli --event-pattern "{   \"source\": [\"aws.health\"],   \"detail-type\": [\"AWS Health Event\"],   \"detail\": {     \"service\": [\"CLOUDWATCH\"],     \"eventTypeCategory\": [\"issue\"]   } }" --state ENABLED --description test-cli

# put-target aws cloudwatch notification issue
aws events put-targets --rule test-cli --targets "Id"="Target1","Arn"="arn:aws:sns:ap-northeast-1:817023884338:test-cli","InputTransformer":"{\"InputPathsMap\": {\"EventTypeCategory\": \"$.detail.eventTypeCategory\"},\"InputTemplate\": \"<EventTypeCategory>\"}"


