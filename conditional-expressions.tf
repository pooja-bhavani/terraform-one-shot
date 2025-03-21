    key_name = aws_key_pair.my-key.key_name
    security_groups = [aws_security_group.my_security_group.name]
    instance_type = each.value
    ami = var.ec2_ami_id
    user_data = file("install_nginx.sh")
    root_block_device {
        volume_size = var.env== "prod" ? 20 : var.ec2_default_root_storage_size # if the env is prod then true_value (volume size= 20) if env is not prod then false_value 
        volume_type = "gp3"
