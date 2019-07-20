kubectl delete namespace/velero clusterrolebinding/velero --context=sg
kubectl delete crds -l component=velero --context=sg

kubectl delete namespace/velero clusterrolebinding/velero --context=eu
kubectl delete crds -l component=velero --context=eu
