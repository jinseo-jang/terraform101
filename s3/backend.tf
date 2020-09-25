terraform {
        backend "s3" {
                bucket = "tf101-jinseo-tfstate"
                key = "terraform101/s3/terraform.tfstate"
                region = "ap-northeast-2"
                encrypt = true
                dynamodb_table = "terraform-lock"
        }
}
