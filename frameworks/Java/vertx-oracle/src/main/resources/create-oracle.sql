BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE World';
  EXCEPTION
  WHEN OTHERS
  THEN
    IF SQLCODE != -942
    THEN
      RAISE;
    END IF;
END;
/
CREATE TABLE benchmarkdbuser.World AS
  (SELECT id, DBMS_RANDOM.RANDOM() * 10000 + 1 as randomnumber
   FROM (SELECT ROWNUM id FROM dual CONNECT BY ROWNUM <= 10000));

ALTER TABLE benchmarkdbuser.World ADD CONSTRAINT world_pk PRIMARY KEY (id);

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE Fortune';
  EXCEPTION
  WHEN OTHERS
  THEN
    IF SQLCODE != -942
    THEN
      RAISE;
    END IF;
END;
/
CREATE TABLE benchmarkdbuser.Fortune (
  id      integer       NOT NULL,
  message varchar(2048) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (1, 'fortune: No such file or directory');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (2, 'A computer scientist is someone who fixes things that aren''t broken.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (3, 'After enough decimal places, nobody gives a damn.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (4, 'A bad random number generator: 1, 1, 1, 1, 1, 4.33e+67, 1, 1, 1');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (5, 'A computer program does what you tell it to do, not what you want it to do.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (6, 'Emacs is a nice operating system, but I prefer UNIX. — Tom Christaensen');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (7, 'Any program that runs right is obsolete.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (8, 'A list is only as strong as its weakest link. — Donald Knuth');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (9, 'Feature: A bug with seniority.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (10, 'Computers make very fast, very accurate mistakes.');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (11, '<script>alert("This should not be displayed in a browser alert box.");</script>');
INSERT INTO benchmarkdbuser.Fortune (id, message)
VALUES (12, 'フレームワークのベンチマーク');
