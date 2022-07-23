#!/usr/bin/env bash

# pre set-up
sudo rm /etc/containerd/config.toml
sudo systemctl restart containerd

# config for work_nodes only 
kubeadm join --token 123456.1234567890123456 \
             --discovery-token-unsafe-skip-ca-verification 192.168.1.10:6443
