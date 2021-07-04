
select * from v$controlfile;

select member, bytes from v$logfile
join v$log using (group#);

select t.name, d.name, d.bytes from v$tablespace t
join v$datafile d using (TS#)
union all
select t.name, d.name, d.bytes from v$tablespace t
join v$tempfile d using (TS#);

select tablespace_name, t.contents, d.file_name, d.bytes from dba_tablespaces T
join dba_data_files d using (tablespace_name)
union all
select tablespace_name, t.contents, d.file_name, d.bytes from dba_tablespaces T
join dba_temp_files d using (tablespace_name);
