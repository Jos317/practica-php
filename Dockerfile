# syntax=docker/dockerfile:1.4
FROM python:3.10-alpine

WORKDIR /code

ENV FLASK_APP app.py

ENV FLASK_RUN_HOST 0.0.0.0

RUN apk add --no-cache gcc musl-dev linux-headers

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY . .

CMD ["flask", "run"]
