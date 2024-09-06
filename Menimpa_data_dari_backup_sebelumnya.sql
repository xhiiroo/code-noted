-- Menimpa data dari backup sebelumnya
insert ignore bm.icpos select * from bakbm_240906.icpos where becreff = 5213;
