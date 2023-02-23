# v1
FROM python:3

WORKDIR /python
COPY python /python
WORKDIR /python/server

# v2
RUN pip install -r requirements.txt && \
    python3 manage.py makemigrations && \
    python3 manage.py migrate


