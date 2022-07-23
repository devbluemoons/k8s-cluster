## vagrant ssh
https://medium.com/@lizrice/ssh-to-vagrant-from-vscode-5b2c5996bc0e

## The connection to the server localhost:8080 was refused
- did you specify the right host or port?

```ShellSession
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
```
## change shell 

- install zsh
```ShellSession
sudo apt install zsh
```
- install oh my zsh
```ShellSession
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

- change zsh theme
```sh
vi ~/.zshrc

## change => ZSH_THEME="agnoster"

source ~/.zshrc
```

- set alias
```sh
vi ~/.zshrc

# kubectl
alias k = 'kubectl'

# helm
alias h = 'helm'

source ~/.zshrc
```
