#!/bin/bash

AMI_ID="ami-09c813fb71547fc4f"
SG_ID="sg-06e84bd831dbdd270"
INSTANCES=("MONGODB" "RAMA")
ZONE_ID="Z0010418S0UYRSNAO6BL"
DOMAIN_NAME="teluguveera.site"

aws ec2 run-instances --image-id ami-09c813fb71547fc4f --instance-type t2.micro --security-group-ids sg-06e84bd831dbdd270 --tag-specifications "ResourceType=instance,Tags=[{Key=Name, Value=$instance}]" --query "Instances[0].InstanceId" --output text
