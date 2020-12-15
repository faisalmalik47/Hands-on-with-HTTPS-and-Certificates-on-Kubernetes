output "vpc_id" {
  value       = "${aws_vpc.vpc.id}"
  description = "outputting the VPC ID just in case it's needed"
}

output "public_subnets" {
  value       = "${aws_subnet.public_subnets.*.id}"
  description = "List of public subnet IDs generated by the module"
}

output "private_subnets" {
  value       = "${aws_subnet.private_subnets.*.id}"
  description = "List of private subnet IDs generated by the module"
}

output "default_security_group_id" {
  value       = "${aws_vpc.vpc.default_security_group_id}"
  description = "The ID of the default security group created by AWS when creating the VPC"
}
