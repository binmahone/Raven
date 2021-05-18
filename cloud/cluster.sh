aws emr create-cluster --auto-scaling-role EMR_AutoScaling_DefaultRole --applications Name=Hadoop Name=Hive Name=Spark Name=ZooKeeper Name=HBase --ebs-root-volume-size 100 --ec2-attributes file://cloud/ec2-attributes.json --service-role EMR_DefaultRole --release-label emr-5.29.0 --name olap_test --instance-groups file://cloud/instance-groups.json --scale-down-behavior TERMINATE_AT_TASK_COMPLETION --region ap-southeast-1