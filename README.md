# k8s `(kubernetes cluster)`

## minikube

* install
```zsh
# [!] single node for local test 
brew install minikube

# hypervior
brew install virtualbox --cask

# command tool
brew install kubectl
```

* set config
```sh
minikube config set vm-driver virtualbox
minikube config get vm-driver
```
[Guide : fail case on MacOS](https://stackoverflow.com/questions/52277019/how-to-fix-vm-issue-with-minikube-start)

* main commend
```sh
// start
minikube start

// stop
minikube stop

// delete
minikube delete
```

## kubeadm
```sh
# reset
kubeadm reset

# initialize
kubeadm init [flags]
```

[[!] related docker (case1)](https://boying-blog.tistory.com/3)  
[[!] related docker (case2)](https://almost-native.tistory.com/415)  
[[!] swapoff](https://stackoverflow.com/questions/47094861/error-while-executing-and-initializing-kubeadm)

## Concept
* [node (host/server)](node)
* [kubelet](kubelet)
* [kube-proxy](kube-proxy)
* [pod](pod)
* [replicationController](replicationController)
* [replicaSet](replicaSet)
* [daemonSet](daemonSet)
* [job](job)
* [cronJob](cronJob)
* [service](service)

## Resources
* [deployment]()
* [statefulSet]()
* [service]()
* [configMap]()
* [secret]()
* [storageClass]()
* [persistentVolumeClaim]()
* [serviceAccount]()
* [role]()
* [roleBinding]()
* [namespace]()

## Helm `(k8s package manager)`
```sh
# install (MacOs)
brew install helm

# check version
helm version

# add repository
helm repo add [NAME] [URL]

# update repostiroy
helm repo update

# get repository list
hlem repo list

# search chart version
helm search repo [CHART]

# install chart
helm install [RELEASE_NAME] [CHART] [flags]

# uninstall chart
helm uninstall [RELEASE_NAME] [flags]

# get chart list
helm list [flags]

# upgrade chart
helm upgrade [RELEASE_NAME] [CHART] [flags]

# create chart
helm create [CHART]

helm dependency update [CHART] [flags]

```

## kubectl
```sh
kubectl get [flags]

kubectl delete [flags]
```

## Local Test Environment

###### install
```sh
# minikube
brew install minikube

# kubectl
brew install kubernetes-cli

# virtualbox
brew install --cask virtualbox

# helm
brew install helm

brew install yamllint

brew install yamale

brew install chart-testing
```
