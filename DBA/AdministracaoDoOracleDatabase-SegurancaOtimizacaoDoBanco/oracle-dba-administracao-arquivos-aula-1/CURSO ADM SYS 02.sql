create table system.mytable as select * from all_objects;

select tablespace_name, table_name from dba_tables where owner = 'SYSTEM' 
AND table_name = 'MYTABLE';

select tablespace_name, segment_type from dba_segments where owner = 'SYSTEM' 
AND segment_name = 'MYTABLE';

select file_name, extent_id, block_id from dba_data_files 
join dba_extents using (file_id) where owner = 'SYSTEM' 
AND segment_name = 'MYTABLE';

alter table system.mytable move tablespace sysaux;

select tablespace_name, segment_type from dba_segments where owner = 'SYSTEM' 
AND segment_name = 'MYTABLE';

select file_name, extent_id, block_id from dba_data_files 
join dba_extents using (file_id) where owner = 'SYSTEM' 
AND segment_name = 'MYTABLE';

drop table system.mytable;
