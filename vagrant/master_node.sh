#!/usr/bin/env bash

# pre set-up
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

# init kubernetes 
kubeadm init --token 123456.1234567890123456 --token-ttl 0 \
--pod-network-cidr=172.16.0.0/16 --apiserver-advertise-address=192.168.1.10 

# config for master node only 
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $(id -u):$(id -g) $HOME/.kube/config

# config network
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml
