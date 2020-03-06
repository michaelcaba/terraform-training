terraform {
    
    backend "s3" {
        bucket = "mcaba-s3-bucket"
        key = "terraform/tfstate.tfstate"
        access_key = "AKIA2CAQFNM5VPC3L56K"
        secret_key = "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"
        region = "us-east-1"
    }
}