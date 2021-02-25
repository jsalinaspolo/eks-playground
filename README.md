# eks-playground

## References
* [eksctl](https://eksctl.io/introduction/)
* [eks-workshop](https://www.eksworkshop.com/intermediate/)

 
## Tools

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

