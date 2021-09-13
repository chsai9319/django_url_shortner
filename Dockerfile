#init a base image (Alpine -> Small Linux distro)
FROM python:3.6.7-alpine
#define the present working directory
WORKDIR /django_url_shortner
#copy contents into present working dir
COPY .  /django_url_shortner
#installing dependencies of Flask
RUN pip install -r requirements.txt

EXPOSE  5000
#define command to start container
CMD ["python","apps.py","asgi.py","settings.py","urls.py","wsgi.py"]
