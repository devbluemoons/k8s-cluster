# k8s

#### install (macOS)
```sh
# minikube (k8s cluster) [!!!] single node
brew install minikube

# kubectl (k8s client)
brew install kubectl
```
#### `minikube` main commend
```sh
// start
minikube start

// stop
minikube stop

// delete
minikube delete
```

#### Concept
* [node](node)
* [pod](pod)
* [ReplicationController](ReplicationController)

#### Resources
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

#### Helm `(k8s package manager)`
```sh
# install (MacOs)
brew install helm

# check version
helm version
```

###### Test Environment
```sh
# Virtual Box
brew install --cask virtualbox

# Vagrant
brew install --cask vagrant
```
