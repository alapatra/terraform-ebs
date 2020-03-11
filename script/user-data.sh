#!/bin/bash
pip install awscli
vol="vol-0d36907ff06fed912"
mount_dir="/subash"
device="/dev/xvdf"
region="us-east-1"
if [ ! -d $mount_dir ]
then 
mkdir $mount_dir 
fi 
echo "this command is to fetch instance id"
instance_id=`curl http://169.254.169.254/latest/meta-data/instance-id`
echo "this command is to attach EBS to EC2"
aws ec2 attach-volume --volume-id $vol --instance-id $instance_id --device /dev/sdf --region $region
sleep 60 
echo "mount filesystem to folder" 
mount $device $mount_dir
