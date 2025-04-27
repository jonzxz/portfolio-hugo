data "cloudflare_accounts" "this" {}

resource "cloudflare_pages_domain" "primary_domain" {
  account_id   = local.account_id
  project_name = local.project_name
  domain       = var.domain_name
}

resource "cloudflare_pages_project" "hugo" {
  account_id        = local.account_id
  name              = local.project_name
  production_branch = local.production_branch

  source {
    type = "github"
    config {
      owner                      = var.github_repo_owner
      repo_name                  = local.project_name
      production_branch          = local.production_branch
      deployments_enabled        = true
      preview_branch_includes    = ["*"]
      preview_deployment_setting = "all"
    }
  }

  build_config {
    build_caching   = false
    build_command   = "make install-theme; hugo"
    destination_dir = "public"
  }

  deployment_configs {
    preview {
      environment_variables = local.deployment_env_vars
      fail_open             = true
      usage_model           = "standard"
    }

    production {
      environment_variables = local.deployment_env_vars
      fail_open             = true
      usage_model           = "standard"
    }
  }
}
