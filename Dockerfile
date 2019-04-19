
FROM python:3.6
MAINTAINER SG

# Creating Application Source Code Directory
RUN mkdir -p /pythonApp/src

# Setting Home Directory for containers
WORKDIR /pythonApp/src

# Installing python dependencies
COPY requirements.txt /pythonApp/src
RUN pip install --no-cache-dir -r requirements.txt

# Copying src code to Container
COPY ./app.py /pythonApp/src/app

# Application Environment variables
ENV APP_ENV development

# Exposing Ports
EXPOSE 5035

# Setting Persistent data
VOLUME ["/app-data"]

# Running Python Application
CMD ["python", "app.py"]