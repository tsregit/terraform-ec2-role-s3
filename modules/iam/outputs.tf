output "this_iam_user_name" {
  value       = element(concat(aws_iam_user.this.*.name, [""]), 0)
}

output "this_iam_user_arn" {
  value       = element(concat(aws_iam_user.this.*.arn, [""]), 0)
}

output "this_iam_user_unique_id" {
  value       = element(concat(aws_iam_user.this.*.unique_id, [""]), 0)
}

output "this_iam_user_login_profile_key_fingerprint" {
  value = element(
    concat(aws_iam_user_login_profile.this.*.key_fingerprint, [""]),
    0,
  )
}

output "this_iam_access_key_id" {
  value = element(
    concat(
      aws_iam_access_key.this.*.id,
      aws_iam_access_key.this_no_pgp.*.id,
      [""],
    ),
    0,
  )
}

output "this_iam_access_key_secret" {
  value       = element(concat(aws_iam_access_key.this_no_pgp.*.secret, [""]), 0)
}

output "this_iam_access_key_key_fingerprint" {
  value       = element(concat(aws_iam_access_key.this.*.key_fingerprint, [""]), 0)
}

output "this_iam_access_key_encrypted_secret" {
  value       = element(concat(aws_iam_access_key.this.*.encrypted_secret, [""]), 0)
}

output "this_iam_access_key_ses_smtp_password" {
  value = element(
    concat(
      aws_iam_access_key.this.*.ses_smtp_password,
      aws_iam_access_key.this_no_pgp.*.ses_smtp_password,
      [""],
    ),
    0,
  )
}

output "this_iam_access_key_status" {
  value = element(
    concat(
      aws_iam_access_key.this.*.status,
      aws_iam_access_key.this_no_pgp.*.status,
      [""],
    ),
    0,
  )
}

output "pgp_key" {
  value       = var.pgp_key

}

output "keybase_password_pgp_message" {
  value = <<EOF
-----BEGIN PGP MESSAGE-----
Version: Keybase OpenPGP v2.0.76
Comment: https://keybase.io/crypto
${element(
  concat(aws_iam_user_login_profile.this.*.encrypted_password, [""]),
  0,
)}
-----END PGP MESSAGE-----
EOF

}


output "keybase_secret_key_pgp_message" {
  value = <<EOF
-----BEGIN PGP MESSAGE-----
Version: Keybase OpenPGP v2.0.76
Comment: https://keybase.io/crypto
${element(concat(aws_iam_access_key.this.*.encrypted_secret, [""]), 0)}
-----END PGP MESSAGE-----
EOF

}

output "this_iam_user_ssh_key_ssh_public_key_id" {
  value = element(
    concat(aws_iam_user_ssh_key.this.*.ssh_public_key_id, [""]),
    0,
  )
}

output "this_iam_user_ssh_key_fingerprint" {
  value       = element(concat(aws_iam_user_ssh_key.this.*.fingerprint, [""]), 0)
}

output "password" {
  value = <<EOF
echo "${element(concat(aws_iam_user_login_profile.this.*.encrypted_password, [""]), 0)}" | base64 --decode | keybase pgp decrypt > password.txt
EOF

}