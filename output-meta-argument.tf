# output for meta argument

output "ec2_public_ip" {
   value = [
    for each in aws_instance.my_instance : key.public_ip
   ]
}
