module "argocd_xarv" {
    source = "./terraform_argocd_xarv"
    cluster_name = "xarv-default"
    chart_version = "5.46.7"
}

# Can be deployed ONLY after ArgoCD deployment: depends_on = [module.argocd_prod]
module "argocd_prod_root" {
  source             = "./terraform_argocd_root_eks"
  eks_cluster_name   = "demo-prod"
  git_source_path    = "demo-prod/applications"
  git_source_repoURL = "git@github.com:adv4000/argocd.git"
}