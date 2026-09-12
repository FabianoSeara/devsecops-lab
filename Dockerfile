FROM python:3.14-alpine

WORKDIR /app

COPY app.py .

RUN apk update && apk upgrade

RUN python -m pip install --no-cache-dir --upgrade pip==26.2.0 msgpack==1.2.1 setuptools==83.0.0

RUN adduser -D appuser

USER appuser

CMD ["python", "app.py"]

