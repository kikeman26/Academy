resource "aws_s3_bucket" "project_buckets" {
    # bucket = "academy-terraform-123-${count.index}"
    # bucket = var.bucket_names[count.index]
    # count = 2
    for_each = toset(var.bucket_names)
    bucket = each.key
    # acl = each.value
    acl = "private"
}
