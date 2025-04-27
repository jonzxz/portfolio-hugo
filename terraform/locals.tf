locals {
  account_id = one([for account in data.cloudflare_accounts.this.accounts : account.id])

  project_name      = "portfolio-hugo"
  production_branch = "main"

  deployment_env_vars = {
    DART_SASS_VERSION = "1.62.1",
    HUGO_VERSION      = "0.146.7"
  }
}