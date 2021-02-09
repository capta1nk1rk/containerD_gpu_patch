#!/bin/bash

# This script will make the necessary changes to the containerD runtime engine present in RKE2
# in order to support the NVIDIA K8 Device Driver. After running, stop and restart both RKE2 and ContainerD.

# Create Dir if not existing
mkdir -p /var/lib/rancher/rke2/agent/etc/containerd/

# Create config.toml.tmpl file
cp ./template/config.toml.tmpl /var/lib/rancher/rke2/agent/etc/containerd/config.toml.tmpl
