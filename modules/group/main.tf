resource "aws_iam_group" "this" {
  name = var.name_group
}

resource "aws_iam_group_policy_attachment" "this" {
  group      = aws_iam_group.this.name
  policy_arn = var.policy_arn
}

resource "aws_iam_group_membership" "this" {
  name = "tf-testing-group-membership"
  users = [
    var.user_name,
  ]
  group = aws_iam_group.this.name
}