FROM python:3.13-slim

RUN mkdir -p /home/app
WORKDIR /home/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python3", "manage.py", "runserver", "8000"]

