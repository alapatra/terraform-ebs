vol=vol-03b76bce20fb6e760
mount_dir = /subash
device=/dev/xvdf/

if [ ! -d $mount_dir ]
then 
mkdir $mount_dir
fi
echo "this command is to fetch instance id"
intance_id = `curl http://169.254.169.254/latest/meta-data/instance-id`

echo "this command is to attach EBS to EC2"
aws ec2 attach-volume --volume-id $vol --instance-id $instance_id --device /dev/sdf

sleep 60
mount $device $mount_dir
