FROM python:3.7.5


# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install psycopg2 dependencies
RUN apt-get update \
    && apt-get install --no-install-recommends -y python3-dev libpq-dev unixodbc-dev

# install dependencies
RUN pip install --upgrade pip setuptools
RUN pip install poetry

# copy project
COPY . /apps/app_scrapping

# set work directory
WORKDIR /apps/app_scrapping

RUN poetry install --no-dev
