# go-grpc-dockerfile 

## 项目描述

#### 它可以让你十分简单地启动一个golang 的 grpc 环境 

#### 英文文档[English Document](README.md)



## 怎么使用

1. 首先在你的电脑上必须安装了docker,并且它是启动的


2. 使用这条命令为你的项目启动一个容器。然后你就可以在本地开发，开发完后进入你的容器运行你的代码。
### 
```bash
$ docker run --name <要启动的容器名称>  -v <你的项目本地地址>:/gopath/src/<你的项目名称> -d zengyifei/go-grpc:latest
```

3. 你可以使用这条命令进入之前你创建好的容器
```
$ docker exec -it <要进入的容器名称> bash
```
