module "iam_user" {
  source = "./modules/iam"

  name          = "Miguel.hernandez"

  force_destroy = var.force_destroy

  pgp_key = var.pgp_key

  password_reset_required = var.password_reset_required

  upload_iam_user_ssh_key = var.upload_iam_user_ssh_key

  ssh_public_key = var.ssh_public_key

  tags = merge({
      Name = "${local.name_prefix}-USER-S3"
    },
    local.default_tags,
    )

}

module "group_user" {
  source = "./modules/group"

  name_group = var.name_group
  policy_arn = var.policy_arn
  user_name = module.iam_user.this_iam_user_name

}