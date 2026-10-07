FROM python:3.14-alpine

WORKDIR /app

COPY app.py .

RUN apk update && apk upgrade

RUN python -m pip install --no-cache-dir --upgrade pip==26.2.0 flask==3.1.3

RUN adduser -D appuser

USER appuser

EXPOSE 5000

CMD ["python", "app.py"]
