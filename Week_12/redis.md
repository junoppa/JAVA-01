以下搭建环境均为windows

### 主从复制

1. 启动master实例

```
port 6379
```


2. 启动slave-1


```
port 6380
slaveof 127.0.0.1 6379
```


3. 启动slave-2

```
port 6381
slaveof 127.0.0.1 6379
```


4. 主节点写入数据

```
set test 123
```


5. 从节点读取数据

```
get test
结果为“123”
```


### 哨兵模式

哨兵配置文件如下

```
port 26379
sentinel monitor mymaster 127.0.0.1 6379 1
sentinel down-after-milliseconds mymaster 5000
sentinel config-epoch mymaster 12
sentinel leader-epoch mymaster 13
```

本次测试共启动三个哨兵，启动命令如下

```
redis-server.exe sentinel.conf --sentinel
```

停止6379的master结点，发现master变为6380，主从自动failover

### 集群模式

配置文件如下

```
cluster-enabled yes
cluster-config-file nodes-6379.conf
cluster-node-timeout 15000
appendonly yes
```


启动集群

```
redis-cli --cluster create 127.0.0.1:6379 127.0.0.1:6380 127.0.0.1:6381 12

1:6382 127.0.0.1:6383 127.0.0.1:6384 --cluster-replicas 1
```




