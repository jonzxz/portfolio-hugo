# Summary
Terraform IaC configurations for `portfolio-hugo`.

We are currently using Cloudflare Provider major v4, because v5 is kind of really unusable at this moment.

The modules here creates a `cloudflare_pages_project`, which is the actual Pages project that links the Git repository to a newly create Project. This handles automatic deployments on any new feature branches to a "Preview", and any `main` to Production.

It also creates a `cloudflare_pages_domain` to associate the Pages project with a domain name, but interestingly [it does not created a DNS record](https://registry.terraform.io/providers/cloudflare/cloudflare/4.52.0/docs/resources/pages_domain). I will very likely create a separate repository to house all the DNS records along with other settings, so I will not create it here.

For actual deployment / changes to the contents of the site, we do not have to invoke Terraform at all, since Cloudflare Pages is linked to the GitHub repository. It listens for new commits and then auto-deploys, so we can treat the Terraform as an init-time thing.