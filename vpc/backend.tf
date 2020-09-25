terraform {
        backend "s3" {
                bucket = "tf101-jinseo-tfstate"
                key = "terraform101/vpc/terraform.tfstate"
                region = "ap-northeast-2"
                encrypt = true
                dynamodb_table = "terraform-lock"
        }
}
