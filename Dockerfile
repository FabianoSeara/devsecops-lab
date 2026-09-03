FROM ubuntu:24.04

RUN apt-get update && apt-get upgrade -y && apt-get install -y python3

COPY app.py /app.py

CMD ["python3", "/app.py"]


