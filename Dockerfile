FROM python:3.13-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .
COPY requirements.txt . 

RUN pip install --no-cache-dir -r requirements.txt
RUN python manage.py collectstatic
RUN python manage.py makemigrations
RUN python manage.py migrate

EXPOSE 8000

CMD ["gunicorn", "-b", "0.0.0.0:8000", "calculadora.wsgi:application"]

