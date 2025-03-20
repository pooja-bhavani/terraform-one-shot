variable "ec2_instance_type" {
    default = "t2.micro"
    type = string
}

variable "ec2_root_storage_size" {
    default = "10"
    type = number
}

variable "ec2_ami_id" {
    default = "ami-00bb6a80f01f03502" # this for ubuntu
    type = string
} 
