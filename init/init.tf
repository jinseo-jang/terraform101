provider "aws" {
	region = "ap-northeast-2"
}

resource "aws_s3_bucket" "tfstate" {
	bucket = "tf101-jinseo-tfstate"

	versioning {
		enabled = true
	}
}

resource "aws_dynamodb_table" "terraform_state_lock" {
	name = "terraform-lock"
	hash_key = "LockID"
	billing_mode = "PAY_PER_REQUEST"

	attribute {
		name = "LockID"
		type = "S"
	}
}
