# data "aws_ami" "joindevops" {
#   owners      = ["973714476881"] # Or an AWS account ID, or an AWS owner alias like "amazon"
#   most_recent = true
 
#   filter {
#     name   = "name"
#     values = ["RHEL-9-DevOps-Practice"]
#   }

#   filter {
#     name   = "root-device-type"
#     values = ["ebs"]
#   }

#   filter {
#     name = "virtualization-type"
#     values = ["hvm"]
#   }
# }

# output "ami_id" {
#     value = data.aws_ami.joindevops.id
# }


data "aws_instance" "mongodb" {
    instance_id = "i-0e1a3b5143189ed1c"
}

output "instance_info" {
    value = data.aws_instance.mongodb.public_ip
}

