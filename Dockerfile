FROM python:3-slim-buster 

RUN mkdir -p /home/app
WORKDIR /home/app

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8000
CMD ["python3", "manage.py", "runserver", "8000"]

