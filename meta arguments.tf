# To create multiple ec2 instances
resource "aws_instance" "my_instance" {
  cuont = 2
  key_name = aws_key_pair.my-key.key_name
    security_groups = [aws_security_group.my_security_group.name]  
    instance_type = each.value
    ami = var.ec2_ami_id
    user_data = file("install_nginx.sh") 

# To create multiple type of ec2 instances with different tags    
resource "aws_instance" "my_instance" {
    for_each = tomap ({
      ec2-automate-micro = "t2.micro"
      ec2-automate-medium = "t2.medium"
    })
