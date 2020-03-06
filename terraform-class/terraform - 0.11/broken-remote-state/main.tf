resource "aws_s3_bucket" "s3-backend" {
    bucket = "mcaba-s3-bucket"
    versioning = {
        enabled = true
    }

    force_destroy = true

}