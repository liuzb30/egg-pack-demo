# 使用Node.js官方的Docker镜像作为基础镜像
FROM node:16

# 在镜像中创建并设置工作目录
WORKDIR /app

# 将应用程序的依赖项文件复制到镜像中
COPY package*.json ./

# 安装应用程序的依赖项
RUN npm install -g npm@9.6.0
RUN npm install --registry=https://registry.npm.taobao.org

# 将应用程序的所有文件复制到镜像中
COPY . .

# 暴露应用程序运行的端口
EXPOSE 7001

# 运行应用程序
CMD ["npm", "run", "dev"]
