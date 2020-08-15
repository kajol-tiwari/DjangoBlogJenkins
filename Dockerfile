FROM python:3.7
ADD . /app
WORKDIR /app
COPY ./requirements.txt .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD gunicorn mysite.wsgi:application --bind=0.0.0.0:8000
