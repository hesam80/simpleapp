# Python image to use.
#FROM python:3.6.5-alpine
#  FROM python:3.9
# copy the requirements file used for dependencies
#COPY ./requirements.txt  /app/requirements.txt

# Set the working directory to /app
#WORKDIR /app

#RUN apk update && apk upgrade && apk add bash

# Install any needed packages specified in requirements.txt
# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt
# RUN pip install gunicorn
# Copy the rest of the working directory contents into the container at /app
#COPY .  /app

#CMD ["sh" , "docker-entry.sh"]

# Run app.py when the container launches
from python:3.9

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]