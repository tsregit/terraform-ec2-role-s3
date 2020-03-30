variable "name" {
  type  = string
}

variable "create_iam_user_login_profile" {
  type        = bool
  default     = true
}

variable "create_iam_access_key" {
  type        = bool
  default     = true
}

variable "path" {
  type        = string
  default     = "/"
}

variable "force_destroy" {
  type        = bool
  default     = false
}

variable "pgp_key" {
  type        = string
  default     = ""
}

variable "password_reset_required" {
  type        = bool
  default     = true
}

variable "password_length" {
  type        = number
  default     = 20
}

variable "upload_iam_user_ssh_key" {
  type        = bool
  default     = false
}

variable "ssh_key_encoding" {
  type        = string
  default     = "SSH"
}

variable "ssh_public_key" {
  type        = string
  default     = ""
}

variable "permissions_boundary" {
  type        = string
  default     = ""
}

variable "tags" {
  type = map(string)
}