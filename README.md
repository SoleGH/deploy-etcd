# deploy-etcd

[官方文档](https://etcd.io/docs/v2.3/docker_guide/)

-- quay.io/coreos/etcd：使用的 Docker 镜像地址。

--/usr/local/bin/etcd：在容器中执行的 etcd 可执行文件路径（即启动 etcd 服务）

--name	当前节点名称

--initial-advertise-peer-urls	广播给其他节点的通信地址

--listen-peer-urls	监听其他节点通信的地址

--advertise-client-urls	对外暴露的客户端访问地址

--listen-client-urls	监听客户端连接的地址

--initial-cluster	初始集群成员列表

--initial-cluster-state	集群状态（new / existing）

[UI 管理工具](https://github.com/evildecay/etcdkeeper)