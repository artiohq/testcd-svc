FROM python

RUN apt-get update -y && apt-get update -y

ADD requirements.txt /tmp
RUN pip install -r /tmp/requirements.txt

RUN mkdir -p /app
COPY testcd/ /app/
WORKDIR /app

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
