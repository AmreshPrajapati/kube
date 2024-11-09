resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "argocd"
  create_namespace = "true"
  values = [
    file("argocd-values.yaml")
  ]

}


# resource "kubernetes_manifest" "git-auth" {
#   manifest = yamldecode(file("git-auth.yaml"))  
# }

resource "kubernetes_manifest" "git-repo" {
  manifest = yamldecode(file("git-repo.yaml"))  
}


