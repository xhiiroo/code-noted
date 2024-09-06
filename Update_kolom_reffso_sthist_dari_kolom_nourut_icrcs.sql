-- Update kolom reffso sthist dari kolom nourut icrcs

drop table _tmpicrcsicrcm;
create table _tmpicrcsicrcm select nosj,a.becreff,nourut,stockid,uraian,qty from icrcs a left join icrcm b on b.becreff=a.becreff;
alter table _tmpicrcsicrcm add primary key(nosj,stockid,nourut);
update sthist s, _tmpicrcsicrcm t set s.reffso=t.nourut where s.stockid=t.stockid and s.nopo=t.nosj;
