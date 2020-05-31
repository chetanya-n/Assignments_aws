provider "aws" {
  profile    = "default"
  region     = "eu-central-1"
}

resource "aws_iam_user" "chetanya_iam" {
  name = "test-chetanya_iam"
}

resource "aws_iam_policy" "policy" {
 name = "test-policy"
 policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {  "Action": [

        "lambda:*",

		
		"s3:Get*",
        "s3:List*",
		
	    "cloudwatch:Get*",
        "cloudwatch:List*"
        
      ],

      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}


resource "aws_iam_user_policy_attachment" "test-attach" {
  user       = "${aws_iam_user.chetanya_iam.name}"
  policy_arn = "${aws_iam_policy.policy.arn}"
}