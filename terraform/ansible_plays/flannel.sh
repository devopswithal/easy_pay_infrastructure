#!/bin/bash

ip link show type veth
ip link show type bridge
bridge link show | grep cni0
kubectl get pods -o wide | grep kube-node-fl
ip route
