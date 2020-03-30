variable "aws_region" {
   type = string
}

variable "aws_id" {
  type = string
}

variable "pgp_key" {
  type = string
}

variable "policy_arn" {
  type = string
}

variable "name_group" {
  type = string
}

variable "force_destroy" {
  type = bool
}

variable "ssh_public_key" {
  type = string
}

variable "password_reset_required" {
  type = bool
}

variable "upload_iam_user_ssh_key" {
  type = bool
}
