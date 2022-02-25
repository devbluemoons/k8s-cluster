# k8s

#### install (macOS)
```sh
# [!] single node for local test
# minikube (k8s cluster) 
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

# add repository
helm repo add [NAME] [URL]

# install chart
helm install [RELEASE_NAME] [CHART] [flags]

# upgrade chart
helm upgrade [RELEASE_NAME] [CHART] [flags]
```

###### Test Environment
```sh
# Virtual Box
brew install --cask virtualbox

# Vagrant
brew install --cask vagrant
```
