# go-grpc-dockerfile 

## Description

#### Easy to start a go grpc environment. 

#### You can also read a translated version of this file in Chinese [中文文档](README_Chinese.md)


## How To Use

1. First you have to install Docker, and start it


2. Use this command to start a container for your project. And you can write code in your local workspace and come into your container to run your code when you finish.
### 
```bash
$ docker run --name <container-name>  -v <your project local path>:/gopath/src/<your project name> -d zengyifei/go-grpc:latest
```

3. You can use this command to come into the container you created before
```
$ docker exec -it <container-name> bash
```
