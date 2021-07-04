
CREATE SMALLFILE TABLESPACE EXAMPLE
DATAFILE 'C:\app\oracle12c\oradata\EXAMPLE_01.dbf'
SIZE 50M AUTOEXTEND ON NEXT 50M MAXSIZE 500M;

CREATE USER ALOIS IDENTIFIED BY alois
DEFAULT TABLESPACE EXAMPLE
PASSWORD EXPIRE;

CREATE USER AFRA IDENTIFIED BY afra
DEFAULT TABLESPACE EXAMPLE
QUOTA UNLIMITED ON EXAMPLE;

CREATE USER ANJA IDENTIFIED BY anja;

