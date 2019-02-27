FROM gethue/hue

# 自定义参数
ARG hadoop_master=localhost
ARG hbase_docker=localhost

ENV HADOOP_MASTER=$hadoop_master \
    HBASE_DOCKER=$hbase_docker

COPY entrypoint.sh pseudo-distributed.ini.template /tmp/

RUN apt-get install -y gettext \
    && mv /tmp/entrypoint.sh /usr/bin

ENTRYPOINT ["entrypoint.sh"]
CMD ["build/env/bin/hue", "runserver_plus", "0.0.0.0:8888"]
