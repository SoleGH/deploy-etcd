
CURRENT_POD_NAME="etcd1"
CURRENT_POD_IP="127.0.0.1"
OTHER_POD_IP1="127.0.0.2"
OTHER_POD_IP2="127.0.0.3"

docker run -d --name ${CURRENT_POD_NAME} \
  -p 2379:2379 \
  -p 2380:2380 \
  quay.io/coreos/etcd \
  /usr/local/bin/etcd \
  --advertise-client-urls http://${CURRENT_POD_IP}:2379 \
  --listen-client-urls http://0.0.0.0:2379 \
  --initial-advertise-peer-urls http://${CURRENT_POD_IP}:2380 \
  --listen-peer-urls http://0.0.0.0:2380 \
  --initial-cluster-state new  \
  --initial-cluster etcd1=http://${CURRENT_POD_IP}:2380,etcd2=http://${OTHER_POD_IP1}:2380,etcd3=http://${OTHER_POD_IP2}:2380 \
  