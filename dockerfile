FROM python:3.7-slim-stretch

COPY ./requirements.txt /app/requirements.txt
WORKDIR /app

RUN apt update && apt install -qy libmariadbclient-dev gcc
RUN pip install -r requirements.txt
RUN pip install gunicorn

COPY . /app

CMD ["sh", "docker-entry.sh"]

# Run app.py when the container launches
# from python:3.9

# We copy just the requirements.txt first to leverage Docker cache
# COPY ./requirements.txt /app/requirements.txt

# WORKDIR /app

# RUN pip install -r requirements.txt

# COPY . /app

# ENTRYPOINT [ "python" ]

# CMD [ "app.py" ]