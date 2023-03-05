#!/bin/bash
cd ~/egg-pack-demo
# 拉取代码
git pull

# 构建Docker镜像
docker build -t my-egg-app . &&

# 删除容器
docker stop my-egg-app
docker rm my-egg-app

# 运行Docker容器
docker run --name my-egg-app -d -p 7001:7001 --network=network1 my-egg-app
