-- Mencari becreff nofaktur icsom di icsos

-- Cara 1
select * from icsos 
  where becreff in 
    (select becreff from icsom where nofaktur = 'SO24090001');

-- Cara 2
select * from icsos where becreff = 654245;
