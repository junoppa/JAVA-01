Config：集中配置管理工具，分布式系统中统一的外部配置管理，默认使用Git来存储配置，可以支持客户端配置的刷新及加密、解密操作。
Netflix：Netflix OSS 开源组件集成，包括Eureka、Hystrix、Ribbon、Feign、Zuul等核心组件。
Eureka：服务治理组件，包括服务端的注册中心和客户端的服务发现机制；
Ribbon：负载均衡的服务调用组件，具有多种负载均衡调用策略；
Hystrix：服务容错组件，实现了断路器模式，为依赖服务的出错和延迟提供了容错能力；
Feign：基于Ribbon和Hystrix的声明式服务调用组件；
Zuul：API网关组件，对请求提供路由及过滤功能。
Bus：用于传播集群状态变化的消息总线，使用轻量级消息代理链接分布式系统中的节点，可以用来动态刷新集群中的服务配置。
Consul：基于Hashicorp Consul的服务治理组件。
Security：安全工具包，对Zuul代理中的负载均衡OAuth2客户端及登录认证进行支持。
Sleuth：Spring Cloud应用程序的分布式请求链路跟踪，支持使用Zipkin、HTrace和基于日志（例如ELK）的跟踪。
Stream：轻量级事件驱动微服务框架，可以使用简单的声明式模型来发送及接收消息，主要实现为Apache Kafka及RabbitMQ。
Task：用于快速构建短暂、有限数据处理任务的微服务框架，用于向应用中添加功能性和非功能性的特性。
zookeeper：基于Apache Zookeeper的服务治理组件。
Gateway：API网关组件，对请求提供路由及过滤功能。
OpenFeign：基于Ribbon和Hystrix的声明式服务调用组件，可以动态创建基于Spring MVC注解的接口实现用于服务调用，在Spring Cloud 2.0中已经取代Feign成为了一等公民。
和dubbo的区别：服务调用的方式dubbo是RPC，spring cloud是RestAPI，默认注册中心dubbo是zk，springcloud是eureka