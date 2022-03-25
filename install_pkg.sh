#! /usr/bin/env bash
# install packages

export DEBIAN_FRONTEND=noninteractive

apt-get update && apt-get upgrade -y

apt-get install -y git net-tools openssh-server
apt-get install -y apt-transport-https

# docker
apt-get remove docker docker-engine docker.io containerd runc
apt-get install -y ca-certificates curl gnupg lsb-release
apt-get install -y docker-ce docker-ce-cli containerd.io

systemctl enable docker
systemctl daemon-reload
systemctl restart docker

# k8s
apt-get install -y kubelet kubeadm kubectl
apt-mark hold kubelet kubeadm kubectl