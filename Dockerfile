# 使用官方 Node.js 运行时作为基础镜像
FROM node:14-alpine

# 设置工作目录
WORKDIR /app

# 复制 package.json 和 package-lock.json（如果有）
COPY package*.json ./

# 安装依赖
RUN npm install

# 复制整个项目代码到工作目录
COPY . .

# 暴露应用运行端口（例如 3000）
EXPOSE 3000

# 启动应用
CMD ["npm", "start"]
