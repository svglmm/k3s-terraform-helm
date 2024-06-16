## Launch Terraform - Iniciar Terraform

```bash
terraform init

## Apply Terraform - Aplicar Terraform
kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found -n wordpress


## If services remain in Stuck - Si los servicios quedan atascados
kubectl patch service stable-grafana -n prometheus -p '{"metadata":{"finalizers":null}}'
kubectl patch service stable-kube-prometheus-sta-prometheus -n prometheus -p '{"metadata":{"finalizers":null}}'


## Apply Terraform again - Aplicar Terraform de nuevo
terraform apply --auto-approve



