output "this_iam_user_name" {
  value       = module.iam_user.this_iam_user_name
}

output "this_iam_user_arn" {
  value       = module.iam_user.this_iam_user_arn
}

output "this_iam_user_unique_id" {
  value       = module.iam_user.this_iam_user_unique_id
}

output "this_iam_user_login_profile_key_fingerprint" {
  value       = module.iam_user.this_iam_user_login_profile_key_fingerprint
}

output "this_iam_access_key_id" {
  value       = module.iam_user.this_iam_access_key_id
}

output "this_iam_access_key_key_fingerprint" {
  value       = module.iam_user.this_iam_access_key_key_fingerprint
}

output "this_iam_access_key_encrypted_secret" {
  value       = module.iam_user.this_iam_access_key_encrypted_secret
}

output "this_iam_access_key_secret" {
  value       = module.iam_user.this_iam_access_key_secret
}

output "this_iam_access_key_ses_smtp_password" {
  value       = module.iam_user.this_iam_access_key_ses_smtp_password
}

output "this_iam_access_key_status" {
  value       = module.iam_user.this_iam_access_key_status
}

output "pgp_key" {
  value       = module.iam_user.pgp_key
}

output "keybase_password_pgp_message" {
  value = module.iam_user.keybase_password_pgp_message
}

output "keybase_secret_key_pgp_message" {
  value = module.iam_user.keybase_secret_key_pgp_message
}

output "password" {
  value = module.iam_user.password
}