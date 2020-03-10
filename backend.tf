terraform {
    backend "s3" {
        bucket = "terraform-subash"
        key    = "terraform/dev/ebs"
        region = "us-east-1"
        profile = "subash"
    }
}
