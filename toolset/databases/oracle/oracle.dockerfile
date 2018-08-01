FROM sath89/oracle-xe-11g:latest

ADD create-oracle.sql /docker-entrypoint-initdb.d/
ADD create-oracle-database.sql /docker-entrypoint-initdb.d/