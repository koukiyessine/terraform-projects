resource "aws_iam_policy" "iampolicy_ammar" {
  name        = "iampolicy_ammar"
  description = "IAM policy that allows read-only access to EC2 console (instances, AMIs, snapshots)"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = [
          "ec2:DescribeInstances",
          "ec2:DescribeImages",
          "ec2:DescribeSnapshots"
        ]
        Resource = "*"
      }
    ]
  })
}
