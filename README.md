# eks-playground

## References
* [eksctl](https://eksctl.io/introduction/)
* [eks-workshop](https://www.eksworkshop.com/intermediate/)

## AWS

> Create an user with admin privilages

Configure aws-cli

```
aws configure --profile [profile-name]
```

 
## Tools

### aws-cli

Install or Update  aws-cli

Reference in [AWS](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd-current-user)
```
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```
 
### IAM role

Create an IAM role following [this deep link to create an IAM role with Admin access](https://www.eksworkshop.com/020_prerequisites/iamrole/)

### eksctl

Install eksctl

```
brew tap weaveworks/tap
brew install weaveworks/tap/eksctl
```

Check version

```
eksctl version
```

Shell completion

```
mkdir -p ~/.zsh/completion/
eksctl completion zsh > ~/.zsh/completion/_eksctl
```

Add into `~/.zshrc`

```
fpath=($fpath ~/.zsh/completion)
```


## EKS cluster

Default 

```
 eksctl create cluster --version=1.18 --profile [admin-profile]
```


