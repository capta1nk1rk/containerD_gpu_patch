# containerD_gpu_patch
Ansible Playbooks and Bash Scripts to patch containerD for NVIDIA GPU passthrough

# Pre-Patch Setup
NVIDIA-Drivers must be installed prior to this driver patch.  Latest NVIDIA-Driver install instructions can be found here:
https://docs.nvidia.com/datacenter/tesla/tesla-installation-notes/index.html#rhel8

NVIDIA-Container-Runtime must also be installed prior to containerD patch.  Lastest install instructions can be found here:
https://github.com/NVIDIA/nvidia-container-runtime#installation

# RKE2 ContainerD patch
Simply run the ansible playbook or bash script to make the required containerD changes.  RKE2 must be restarted in order for the patch to take effect.

# Post-Patch Instructions
After the containerD patch is applied, the NVIDIA K8 Device Plugin needs to be installed in the cluster to expose the GPU(s) as a resource.  The Latest install instructions can be found here (Helm install recommended):
https://github.com/NVIDIA/k8s-device-plugin
