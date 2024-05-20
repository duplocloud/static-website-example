resource "duplocloud_s3_bucket" "mydata" {
  tenant_id = duplocloud_tenant.myapp.tenant_id
  name      = "myapp"

  allow_public_access = false
  enable_access_logs  = false
  enable_versioning   = false
  managed_policies    = ["ssl"]
  default_encryption {
    method = "Sse" # For even stricter security, use "TenantKms" here.
  }
}