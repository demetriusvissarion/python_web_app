FROM python:3.11
# to get logs and see what is happening:
ENV PYTHONNUNBUFFERED 1
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

CMD python manage.py runserver 0.0.0.0:8000