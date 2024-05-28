SELECT t1.level_2_name AS KAB_KOTA, t1.level_3_name AS KECAMATAN, t1.level_4_name AS DESA, LEFT(t1.pair_label, LEN(t1.pair_label) - 2) AS NAMA
FROM tnk_e7a35bd4.pair_label_value_0 t1
WHERE t1.data_key IN ('r1205a1_prelist', 'r1205a2_prelist', 'r1205a3_prelist') AND pair_value <> '0'
ORDER BY t1.level_2_name, t1.level_3_name, t1.level_4_name, t1.pair_label