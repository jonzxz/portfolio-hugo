data "cloudflare_accounts" "this" {}

locals {
  account_id = one([for result in data.cloudflare_accounts.this.result : result.id])
}

output "account_id" {
  value = local.account_id
}

