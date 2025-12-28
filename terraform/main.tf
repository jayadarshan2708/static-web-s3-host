provider "aws" {
	region = "us-east-1"
}
resource = "aws_s3_bucket_website_configuration" "website" {
	bucket = "devops-static-site"
}

resource "aws_s3_bucket_website_configuration" "website" {
	bucket = aws_s3_bucket.static_site.id
	index_document {
		suffix = "index.html"
	}
}

resource "aws_s3_bucket_public_access_block "public" {
	bucket = aws_s3_bucket.static.site.id
	block_public_acls = false
	block_public_policy = false
}

resource  "aws_s3_bucket_public_policy' "policy" {
	bucket = aws_s3_bucket.static_site.id

	policy = jsonencode({
		Version = "2012-10-17"
		Statement = [{
			Effect = "Allow"
			Principal = "*"
			Action = "s3.GetObject"
			Resource = "${aws_s3_bucket.static_site.arn}/*"
		}]
	})
}