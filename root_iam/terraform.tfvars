role_name        = "my-new-iam-role"
policies         = ["AdministratorAccess", "AmazonS3FullAccess", "IAMFullAccess", "CloudWatchFullAccess"]
region           = "us-east-1"
service_principal = ["ec2.amazonaws.com", "lambda.amazonaws.com"] 
