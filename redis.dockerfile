FROM redis:5.0.7

WORKDIR /app

RUN apt update \
 && apt install -y python python-pip \
 && pip install flask

COPY health.py ./

ENV FLASK_APP=health.py
ENV FLASK_ENV=development

CMD ["redis-server", "/etc/redis.conf"]