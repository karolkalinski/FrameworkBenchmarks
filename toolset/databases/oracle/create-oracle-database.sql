CREATE USER benchmarkdbuser IDENTIFIED BY benchmarkdbuser;

GRANT CREATE SESSION TO benchmarkdbuser WITH ADMIN OPTION;

ALTER USER benchmarkdbuser IDENTIFIED BY benchmarkdbuser ACCOUNT UNLOCK;
