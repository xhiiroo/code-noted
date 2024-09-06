-- Menampilkan list BP pada import recieve bill
SELECT
m.nosj,
m.ontransit,
sum(
ifnull( frac2base10 ( s.qty, s.packing )- frac2base10 ( s.qtylastprd, s.packing ), 0 )) AS rcqty,
m.keterangan,
ifnull( t.qty, 0 ) AS qty 
FROM
	icrcm m
	LEFT JOIN icrcs s ON m.becreff = s.becreff
	LEFT JOIN ( SELECT reffso, sum( frac2base10 ( qty, packing )) AS qty FROM sthist WHERE tipetrans = 1 GROUP BY reffso ) t ON s.nourut = t.reffso 
WHERE
	m.suppid = '2302' 
	AND m.tanggal <= '2024/08/30' 
	AND m.whid = '00(MT)' 
GROUP BY
	s.nourut;
