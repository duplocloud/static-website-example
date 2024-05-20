resource "duplocloud_aws_ssm_parameter" "ssm_param" {
  tenant_id = duplocloud_tenant.myapp.tenant_id
  name      = "ssm_param"
  type      = "String"
  value     = jsonencode({
    key1 = "value1",
    key2 = "value2",
  })
}