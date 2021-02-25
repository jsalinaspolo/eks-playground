# eks-playground

## References
* [eksctl](https://eksctl.io/introduction/)
* [eks-workshop](https://www.eksworkshop.com/intermediate/)

 
## Tools

### aws-cli

Install or Update  aws-cli

Reference in [AWS](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-mac.html#cliv2-mac-install-cmd-current-user)
```
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
```


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

