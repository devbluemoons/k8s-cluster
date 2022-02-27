# k8s

## minikube

* install
```zsh
# [!] single node for local test 
brew install minikube

# hypervior
brea install virtualbox --cask

# command tool
brew install kubectl
```

* set config
```sh
minikube config set vm-driver virtualbox
minikube config get vm-driver

# when fail issue => https://stackoverflow.com/questions/52277019/how-to-fix-vm-issue-with-minikube-start
```

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

## Concept
* [node](node)
* [pod](pod)
* [ReplicationController](ReplicationController)

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

# get repository list
hlem repo list

# search chart version
helm search repo [CHART]

# install chart
helm install [RELEASE_NAME] [CHART] [flags]

# get chart list
helm list [flags]

# upgrade chart
helm upgrade [RELEASE_NAME] [CHART] [flags]

# create chart
helm create [CHART_NAME]
```

## Test Environment
```sh
# Virtual Box
brew install --cask virtualbox

# Vagrant
brew install --cask vagrant
```
