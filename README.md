# <img src="https://landscape.cncf.io/logos/kubernetes.svg" width="200" />
automating deployment, scaling, and management of containerized applications  


## <img src="https://d33wubrfki0l68.cloudfront.net/e4a8ddb49f07de8b2c2dbbfc7c9bedcfe0816701/600b1/images/kubeadm-stacked-color.png" width="150" />
build tool for kubernetes cluster  

## install `(ubuntu/debian)`
```sh
# to be continue...
```

```sh
# reset
kubeadm reset

# initialize
kubeadm init [flags]
```

- [x] [related docker (case1)](https://boying-blog.tistory.com/3):heavy_exclamation_mark:  
- [x] [related docker (case2)](https://almost-native.tistory.com/415):heavy_exclamation_mark:  
- [x] [swapoff](https://stackoverflow.com/questions/47094861/error-while-executing-and-initializing-kubeadm):heavy_exclamation_mark:  
- [x] [connection error](https://jmholly.tistory.com/entry/%EC%97%90%EB%9F%AC%ED%95%B4%EA%B2%B0-Unable-to-connect-to-the-server-x509-certificate-signed-by-unknown-authority-possibly-because-of-cryptorsa-verification-error-while-trying-to-verify-candidate-authority-certificate-kubernetes):heavy_exclamation_mark:  
- [x] [core-dns issue](https://stackoverflow.com/questions/52609257/coredns-in-pending-state-in-kubernetes-cluster):heavy_exclamation_mark:  
- [x] [after reboot](https://stackoverflow.com/questions/55555987/my-kubernetes-cluster-is-down-after-reboot):heavy_exclamation_mark:

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
  - LimitRange
  - ResourceQuota
* [autoScaling](autoScaling)
  - metric
* [scheduling](scheduling)
  - taint
  - toleration

## Structure
* master node (control plane)
  - etcd
  - api server
  - controller manager
  - scheduler
* worker node
  - kube-proxy
  - kubelet
  - controller-runtime

## kubectl
```sh
kubectl get [flags]

kubectl delete [flags]
```
