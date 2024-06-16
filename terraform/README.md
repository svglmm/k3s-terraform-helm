terraform init

terraform apply --auto-approve

namespace prometheus ya existe

Con terminal git bash:
kubectl api-resources --verbs=list --namespaced -o name | xargs -n 1 kubectl get --show-kind --ignore-not-found -n wordpress

Salian los dos svc de grafana y prometheus.

Para borrar:
kubectl delete svc stable-kube-prometheus-sta-prometheus stable-grafana -n prometheus

Se quedan stuck asi que:
kubectl patch service stable-grafana -n prometheus -p '{"metadata":{"finalizers":null}}'
kubectl patch service stable-kube-prometheus-sta-prometheus -n prometheus -p '{"metadata":{"finalizers":null}}'

Tras esto de nuevo:
terraform apply --auto-approve


Elimitar cosas
terraform destroy
