output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_id" {
  value = aws_instance.example.id
}

# Lambda Function Code (Python)

# Save the following code in a file named `lambda_function.py` and zip it as `lambda_function_payload.zip`.
import boto3
import os

def lambda_handler(event, context):
    ec2 = boto3.client('ec2')
    instance_id = os.environ['INSTANCE_ID']

    response = ec2.stop_instances(InstanceIds=[instance_id])

    return {
        'statusCode': 200,
        'body': f"Instance {instance_id} is shutting down."
    }