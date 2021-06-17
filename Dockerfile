# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip install -r requirement.txt

COPY . .


ARG SNOWFLAKE_PASSWORD
ARG account
ARG user
ARG role
ARG warehouse

ENV account=$account
ENV user=$user
ENV role=$role
ENV warehouse=$warehouse

ENV SNOWFLAKE_PASSWORD=$SNOWFLAKE_PASSWORD


ENTRYPOINT schemachange  -f './'  -a $account -u $user -r $role -w $warehouse  -d 'METADATA' -c 'METADATA.SCHEMACHANGE.CHANGE_HISTORY'