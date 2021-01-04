sed -i 's/2379/6443/' /root/.kube/config
sed -i 's/ca-authority.crt/ca.crt/' /etc/kubernetes/manifests/kube-apiserver.yaml
kubectl -n kube-system get deploy coredns -o yaml | sed 's/kubedns/coredns/' | kubectl replace -f -
