#docker buildx build --push --platform linux/arm64,linux/amd64 --tag clarknova9/mlflow:2.11.0 .
FROM ghcr.io/mlflow/mlflow:v2.13.2

RUN apt-get -y update && \
    apt-get -y install python3-dev default-libmysqlclient-dev build-essential pkg-config && \
    pip install --upgrade pip && \
    pip install mysqlclient && \
    pip install psycopg2-binary

CMD ["bash"]
