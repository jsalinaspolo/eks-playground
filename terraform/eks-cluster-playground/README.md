##

Run bootstrap commands to create s3 bucket and dynamoDB table for terraform state

```shell
aws s3api create-bucket --acl private --bucket "eks-cluster-playground-1" --region us-east-1
```

```shell
terraform init
terraform plan
terraform apply
```


Update kube-config

```shell
aws eks --region us-east-2 update-kubeconfig --name $(terraform output -raw cluster_name) --alias $(terraform output -raw cluster_name)
```

## Kubernetes Dashboard

Follow best practices https://blog.heptio.com/on-securing-the-kubernetes-dashboard-16b09b1b7aca
Avoid dashboard to be public and use `kubectl proxy` to access it



