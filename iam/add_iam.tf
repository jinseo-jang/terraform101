resource "aws_iam_user" "david_lee" {
  name = "david.lee"
}

resource "aws_iam_user_policy" "art_devops_black_david" {
  name = "super-admin"
  user = aws_iam_user.david_lee.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
        "*"
      ],
      "Resource": [
        "*"
      ]
    }
  ]
}
EOF

}
