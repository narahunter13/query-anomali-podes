SELECT t1.level_2_name AS KAB_KOTA, t1.level_3_name AS KECAMATAN, t1.level_4_name AS DESA,
(CASE
    WHEN t1.index1 = 1 THEN 'Pos PAUD'
    WHEN t1.index1 = 2 THEN 'TK'
    WHEN t1.index1 = 3 THEN 'RA'
    WHEN t1.index1 = 4 THEN 'SD'
    WHEN t1.index1 = 5 THEN 'MI'
    WHEN t1.index1 = 6 THEN 'SMP'
    WHEN t1.index1 = 7 THEN 'MTs'
    WHEN t1.index1 = 8 THEN 'SMA'
    WHEN t1.index1 = 9 THEN 'MA'
    WHEN t1.index1 = 10 THEN 'SMK'
    WHEN t1.index1 = 11 THEN 'Akademi/Perguruan Tinggi'
END) AS JENIS_SARANA,
SUBSTRING(t1.pair_label, 1, CHARINDEX('#', t1.pair_label)-1) AS NAMA
FROM tnk_e7a35bd4.pair_label_value_1 t1
WHERE t1.data_key IN ('r701k2_prelist', 'r701k3_prelist') AND pair_value <> '0'
ORDER BY t1.level_2_name, t1.level_3_name, t1.level_4_name, t1.index1, t1.pair_label