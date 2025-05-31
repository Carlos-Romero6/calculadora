FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .
COPY requirements.txt . 

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000


