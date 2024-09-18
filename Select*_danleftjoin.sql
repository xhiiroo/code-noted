-- Menampilkan semua kolom pada suatu tabel kemudian menambahkan leftjoin kolom lain

SELECT r.*, k.addnik, k.other_column
FROM customer r
LEFT JOIN custnik k ON k.custid = r.custid;
