variable "allowed_cidr" {
  type = list(string)

  default = [
    "0.0.0.0/0",
  ]

  description = "A list of CIDR Networks to allow ssh access to."
}

variable "allowed_ipv6_cidr" {
  type = list(string)

  default = [
    "::/0",
  ]

  description = "A list of IPv6 CIDR Networks to allow ssh access to."
}

variable "allowed_security_groups" {
  type        = list(string)
  default     = []
  description = "A list of Security Group ID's to allow access to."
}

variable "name" {
  type = string

  default = "bastion"
}

variable "extra_tags" {
  type        = list(string)
  default     = []
  description = "A list of tags to associate to the bastion instance."
}

variable "ami" {
  type = string
}

variable "instance_type" {
  type = string

  default = "t3.micro"
}

variable "instance_volume_size_gb" {
  description = "The root volume size, in gigabytes"
  default     = "8"
}

variable "iam_instance_profile" {
  type = string
}

variable "user_data_file" {
  type = string

  default = "user_data.sh"
}

variable "s3_bucket_name" {
  type = string
}

variable "s3_bucket_uri" {
  type = string

  default = ""
}

variable "enable_monitoring" {
  default = true
}

variable "ssh_user" {
  type = string

  default = "ubuntu"
}

variable "enable_hourly_cron_updates" {
  default = "false"
}

variable "keys_update_frequency" {
  default = ""
}

variable "additional_user_data_script" {
  default = ""
}

variable "vpc_id" {
  type = string
}

variable "security_group_ids" {
  description = "Comma seperated list of security groups to apply to the bastion."
  default     = ""
}

variable "subnet_ids" {
  type = list(string)

  description = "A list of subnet ids"

  default = []
}

variable "eip" {
  type = string

  default = ""
}

variable "associate_public_ip_address" {
  default = false
}

variable "key_name" {
  type = string

  default = ""
}

variable "apply_changes_immediately" {
  description = "Whether to apply the changes at once and recreate auto-scaling group"
  default     = false
}

