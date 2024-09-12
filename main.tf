provider "aws" {
  region = "us-east-1"
  profile = "test-account-terraform"
}

resource "aws_s3_object" "website_files" {
  for_each = fileset("${path.module}/website", "**")

  bucket = "my-cloudops123-bucket"   # Your existing S3 bucket name
  key    = each.value            # This will include the full folder path
  source = "${path.module}/website/${each.value}"  # Local path to the file you're uploading
#   acl    = "public-read"              # Make file public (if needed)

  # Extract the file extension using regex and use it in lookup
  content_type = lookup(
    {
      "html" = "text/html",
      "css"  = "text/css",
      "js"   = "application/javascript",
      "png"  = "image/png",
      "jpg"  = "image/jpeg",
    },
    regex("^.*\\.([^.]+)$", each.value)[0],
    "application/octet-stream"
  )
}

output "uploaded_files" {
  value = [for f in aws_s3_object.website_files : f.key]  # Updated to reference aws_s3_object
}
