# 使用Python3.10作为基础镜像
FROM python:3.10.0-alpine
RUN pip install --upgrade pip
RUN pip config set global.index-url https://mirrors.aliyun.com/pypi/simple/

# 设置工作目录
WORKDIR /app

# 将当前目录下的文件复制到容器中的/app目录下
COPY . /app

# 安装所需的Python依赖
RUN pip install --no-cache-dir -r requirement.txt

# 设置容器启动时要执行的命令
CMD ["python", "app.py"]
