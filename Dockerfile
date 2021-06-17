# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirement.txt requirement.txt
RUN pip install -r requirement.txt

COPY . .

# ENV SNOWFLAKE_PASSWORD=Asuccess34@
ARG SNOWFLAKE_PASSWORD=Asuccess34@
ARG account=dwa31784.us-east-1
ARG user=akrishna34
ARG role=ACCOUNTADMIN
ARG warehouse=compute_wh

ENV account=$account
ENV user=$user
ENV role=$role
ENV warehouse=$warehouse

ENV SNOWFLAKE_PASSWORD=$SNOWFLAKE_PASSWORD

# ENTRYPOINT schemachange  -f './'  -a 'dwa31784.us-east-1' -u 'akrishna34' -r 'ACCOUNTADMIN' -w 'compute_wh'  -d 'METADATA' -c 'METADATA.SCHEMACHANGE.CHANGE_HISTORY'

ENTRYPOINT schemachange  -f './'  -a $account -u $user -r $role -w $warehouse  -d 'METADATA' -c 'METADATA.SCHEMACHANGE.CHANGE_HISTORY'