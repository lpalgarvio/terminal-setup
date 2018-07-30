#!/bin/bash
# https://rancher.com/docs/rancher/v2.x/en/installation/single-node-install/

# Install software (main server)
docker run -d --restart=unless-stopped \
  -p 8080:80 -p 8443:443 \
  rancher/rancher:latest

# li670-112
docker run -d --privileged --restart=unless-stopped \
  --net=host \
  -v /etc/kubernetes:/etc/kubernetes \
  -v /var/run:/var/run rancher/rancher-agent:v2.0.6 \
  --server https://li670-112.members.linode.com:8443 \
  --token jwrj8wsflm9htc9bpzd25gw27hnbp6sfvcqch75gltks7vnxsbr76q \
  --ca-checksum 0de118f3e0db162e01721a5427ff029f868e0a2ae672d5fbe1e66e8151197c93 \
  --address 212.71.238.112 \
  --internal-address 192.168.132.188 \
  --etcd --controlplane

# li145-248
docker run -d --privileged --restart=unless-stopped \
  --net=host \
  -v /etc/kubernetes:/etc/kubernetes \
  -v /var/run:/var/run rancher/rancher-agent:v2.0.6 \
  --server https://li670-112.members.linode.com:8443 \
  --token jwrj8wsflm9htc9bpzd25gw27hnbp6sfvcqch75gltks7vnxsbr76q \
  --ca-checksum 0de118f3e0db162e01721a5427ff029f868e0a2ae672d5fbe1e66e8151197c93 \
  --address 109.74.198.248 \
  --internal-address 192.168.193.139 \
  --worker

# li148-108
docker run -d --privileged --restart=unless-stopped \
  --net=host \
  -v /etc/kubernetes:/etc/kubernetes \
  -v /var/run:/var/run rancher/rancher-agent:v2.0.6 \
  --server https://li670-112.members.linode.com:8443 \
  --token jwrj8wsflm9htc9bpzd25gw27hnbp6sfvcqch75gltks7vnxsbr76q \
  --ca-checksum 0de118f3e0db162e01721a5427ff029f868e0a2ae672d5fbe1e66e8151197c93 \
  --address 109.74.201.108 \
  --internal-address 192.168.131.205 \
  --worker

