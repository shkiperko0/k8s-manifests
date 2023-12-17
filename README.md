agro xd

-- install argocd

kubectl create namespace argocd

kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml


-- get pass

kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}"


-- port forward during connection

kubectl port-forward svc/argocd-server -n argocd 8080:443


-- run own docker registry

docker run --restart='always' -d -p 5000:5000 --name=registry -e GUNICORN_OPTS=["--preload"] -v /srv/registry:/tmp/registry registry
