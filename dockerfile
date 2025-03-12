FROM python:3.11

# 创建虚拟环境目录
RUN mkdir /app/venv
# 创建虚拟环境
RUN python3 -m venv /app/venv
# 激活虚拟环境
ENV PATH="/app/venv/bin:$PATH"

WORKDIR /app

COPY requirements.txt.
RUN pip install -r requirements.txt

COPY. /app

EXPOSE 8501

CMD ["streamlit", "run", "chatbot.py", "--server.port", "8501", "--server.address", "0.0.0.0"]
