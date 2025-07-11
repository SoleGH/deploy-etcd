POD_NAME="etcd-server"
POD_IP="172.27.13.161"

docker run -d --name ${POD_NAME} \
  -p 2379:2379 \
  -p 2380:2380 \
  bitnami/etcd:latest \
  etcd \
  -advertise-client-urls http://${POD_IP}:2379 \
  -initial-advertise-peer-urls http://${POD_IP}:2380 \
  -initial-cluster-state new


# bitnami/etcd:latest 该镜像的ENVIRONMENT 已经包含了以下参数,无法再次设置
  # -listen-client-urls http://${POD_IP}:2379 \
  # -listen-peer-urls http://${POD_IP}:2380 \