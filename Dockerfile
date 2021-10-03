# python runtime

FROM python:3.9

 

# working directory

WORKDIR /app
COPY ./requirements.txt /app/requirements.txt

# install requirements
RUN pip install --upgrade pip
RUN pip install gunicorn

RUN pip install -r app/requirements.txt

# copy current directory into the container

COPY . /app

 



 

# make port 8000 available to the world outside

EXPOSE 8000

 

CMD ["gunicorn", "--config", "./conf/gunicorn_conf.py", "src:app"]
