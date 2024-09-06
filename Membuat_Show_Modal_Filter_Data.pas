(* Membuat table kemudian *)
tbl := gettemptablename;
mastdata.qscript.sql.clear;
mastdata.qscript.sql.add('drop table if exists ' + tbl + 'c;');
mastdata.qscript.sql.add('create table ' + tbl + 'c select id, name from vendor;');
mastdata.qscript.sql.add('alter table ' + tbl + 'c add primary key (id), add column isselect tinyint(4) not null default 1;');
mastdata.qscript.execute;

(* Masukkan data pada table ke dalam show modal filter data *)
mastdata.filterdata(mvdr, tbl + 'c');

(* Mengambil 1 / multiple data yang di select dari filter data show modal *)
m.suppid in (select id from ' + tblc + ' where isselect > 0)
