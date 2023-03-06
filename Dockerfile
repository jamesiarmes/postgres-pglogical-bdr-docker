FROM postgres:14

RUN apt update -y && \
    apt upgrade -y && \
    apt install -y postgresql-14-pglogical
