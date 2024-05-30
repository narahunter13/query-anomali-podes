SELECT t1.level_1_name AS Provinsi, t1.level_2_name AS Kab_Kota, t1.level_3_name AS Kecamatan, t1.level_4_name AS Desa, 
STRING_AGG(SUBSTRING(t1.pair_label, CHARINDEX('R', t1.pair_label), CHARINDEX('#', t1.pair_label) - CHARINDEX('R', t1.pair_label)), ',') WITHIN GROUP (ORDER BY CAST(t1.pair_value AS INTEGER) ASC) AS SLS_2024, t2.r106c AS Jumlah_SLS_2024
FROM tiv_6a73e7cb.pair_label_value_0 t1
LEFT JOIN tiv_6a73e7cb.root_table t2
    ON t1.assignment_id = t2.assignment_id
WHERE t1.data_key = 'r201_prelist' AND t1.pair_value <> '0'
GROUP BY t1.level_1_name, t1.level_2_name, t1.level_3_name, t1.level_4_name, t2.r106c
ORDER BY t1.level_1_name, t1.level_2_name, t1.level_3_name, t1.level_4_name, t2.r106c