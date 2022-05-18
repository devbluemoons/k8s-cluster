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
[[!] connection error](https://jmholly.tistory.com/entry/%EC%97%90%EB%9F%AC%ED%95%B4%EA%B2%B0-Unable-to-connect-to-the-server-x509-certificate-signed-by-unknown-authority-possibly-because-of-cryptorsa-verification-error-while-trying-to-verify-candidate-authority-certificate-kubernetes)  
[[!] core-dns issue](https://stackoverflow.com/questions/52609257/coredns-in-pending-state-in-kubernetes-cluster)  
[[!] after reboot](https://stackoverflow.com/questions/55555987/my-kubernetes-cluster-is-down-after-reboot)

###### version issue
```sh
apt update && apt upgrade
```

## Concept
* [node (host/server)](node)
* [api-server](api-server)
* [kubelet](kubelet)
* [kube-proxy](kube-proxy)
* [pod](pod)
* [label](label)
* [label-selector](label-selector)
* [annotation](annotation)
* [namespace](namespace)
* [livenessProbe](livenessProbe)
* [replicaSet](replicaSet)
* [daemonSet](daemonSet)
* [job](job)
* [cronJob](cronJob)
* [service](service)
  - ClusterIP
  - NodePort
  - LoadBalancer
  - Ingress
* [volume](volume)
  - pv
  - pvc
  - storageClass
* [configMap](configMap)
* [secret](secret)
* [downwardAPI](downwardAPI)
* [deployment](deployment)
* [statefulSet](statefulSet)
* [serviceAccount](serviceAccount)
* [RBAC](RBAC)
  - role
  - role-binding
  - cluster-role
  - cluster-role- binding
* [resources](resources)
  - request
    - cpu
    - memory
  - limits
    - cpu
    - memory
  - pod-Qos-class
    - BestEffort
    - Burstable
    - Guaranteed

## Structure
* master node (control plane)
  - etcd
  - api server
  - controller manager
  - scheduler
* worker node

## Helm `(k8s package manager)`
```sh
# uninstall (Debian/Ubuntu)
$ which helm
/some/path/to/helm
$ rm -rf /some/path/to/helm

# install (Debian/Ubuntu)
curl https://baltocdn.com/helm/signing.asc | sudo apt-key add -
sudo apt-get install apt-transport-https --yes
echo "deb https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm

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

# install chart directory `An unpacked chart directory`
helm install [CHART_DIREACTORY] [flags]

# uninstall chart
helm uninstall [RELEASE_NAME] [flags]

# get chart list
helm list [flags]

# upgrade chart
helm upgrade [RELEASE_NAME] [CHART] [flags]

# create chart
helm create [CHART]

helm dependency update [CHART_DIREACTORY]

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
