# AWS Docker container configuration
# Author Ron. A @0xADADA
# Container OS: Debian Jessie
# Docker: 1.6.2
# Python: 3.4
# Application Server: ./manage.py runserver_plus

FROM            python:3.4

MAINTAINER      Ron. A @0xADADA

WORKDIR         /var/app

ADD             . /var/app

# Install apt, Python then NodeJS dependencies.
RUN             apt-get update && \
                curl -sL https://deb.nodesource.com/setup_0.12 | bash - && \
                apt-get install -y nodejs && \
                pip install --upgrade pip && \
                pip install -r \
                    environments/dev/requirements.txt && \
                npm update && \
                npm install -g gulp && \
                npm install

# Add our initialization script to the image and run it upon startup.
ADD             docker/django/start.sh /
CMD             ["/start.sh"]