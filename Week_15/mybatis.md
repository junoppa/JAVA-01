什么是Mybatis
持久层框架，半ORM框架，数据库和对象的映射
优点：xml适合统一管理，国内使用多，相比hibernate分库分表的事务管理要方便
hibernate可以说是对象就是表结构，直接对对象进行操作适合简单的crud
过程：
创建SqlSessionFactory
通过SqlSessionFactory创建SqlSession
通过sqlsession执行数据库操作
调用session.commit()提交事务
调用session.close()关闭会话
预编译：预编译后的sql大部分情况下是可以直接执行的，可以合并多次操作，可以重复利用，防止sql注入
有哪些executor：
simpleExecutor：每次执行都用新的statement
reuseExecutor：复用statement
batchExecutor：缓存多个statement
如何配置executor：mybatis.configuration.default-executor-type=simple
支持延迟加载：也是配置打开就好，原理：使用A是需要调用B，发现B还没有，则把B先查出来再执行前面的操作
#和$的区别：
#{}是占位符，预编译处理；${}是拼接符，字符串替换，没有预编译处理。
Mybatis在处理#{}时，#{}传入参数是以字符串传入，会将SQL中的#{}替换为?号，调用PreparedStatement的set方法来赋值。

Mybatis在处理时 ， 是 原 值 传 入 ， 就 是 把 {}时，是原值传入，就是把时，是原值传入，就是把{}替换成变量的值，相当于JDBC中的Statement编译

变量替换后，#{} 对应的变量自动加上单引号 ‘’；变量替换后，${} 对应的变量不会加上单引号 ‘’

#{} 可以有效的防止SQL注入，提高系统安全性；${} 不能防止SQL 注入

#{} 的变量替换是在DBMS 中；${} 的变量替换是在 DBMS 外

like语句：外面加双引号，或CONCAT函数，或用bind标签

mapper中传参方法：顺序传#{0},#{1}，@Param(“aaa”)传#{aaa}，Map传，实例对象传

批量操作：foreach

自动生成的mapper目录，建议继承接口去自定义方法，那样不用对象被覆盖的问题

一对一，一对多：通过在resultMap里面的association，collection

动态标签：trim|where|set|foreach|if|choose|when|otherwise|bind

分页：第一种sql分页（limit offset），第二种内存分页（rowbound）

缓存：一级缓存默认开启，作用域session；二级缓存<cache/>，对象需要实现序列化，作用域namespace