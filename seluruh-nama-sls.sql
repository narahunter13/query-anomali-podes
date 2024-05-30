SELECT t1.level_1_name AS Provinsi, t1.level_2_name AS Kab_Kota, t1.level_3_name AS Kecamatan, t1.level_4_name AS Desa, SUBSTRING(t1.pair_label, CHARINDEX('R', t1.pair_label), 5) AS SLS
FROM tiv_6a73e7cb.pair_label_value_0 t1
WHERE t1.data_key = 'r201_prelist' AND t1.pair_value <> '0'
GROUP BY t1.level_1_name, t1.level_2_name, t1.level_3_name, t1.level_4_name, CAST(t1.pair_value AS INTEGER), t1.pair_label
ORDER BY t1.level_1_name, t1.level_2_name, t1.level_3_name, t1.level_4_name, CAST(t1.pair_value AS INTEGER), t1.pair_label