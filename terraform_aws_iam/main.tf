# Create IAM Role
resource "aws_iam_role" "this" {
  name               = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
}

# Define Assume Role Policy (trust relationship)
data "aws_iam_policy_document" "assume_role_policy" {
  statement {
    actions   = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = var.service_principal
    }
  }
}

# Attach policies to IAM Role securely
resource "aws_iam_role_policy_attachment" "this" {
  for_each = toset(var.policies)

  role       = aws_iam_role.this.name
  policy_arn = "arn:aws:iam::aws:policy/${each.value}"
}
