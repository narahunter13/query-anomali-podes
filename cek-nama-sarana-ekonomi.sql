SELECT t1.level_2_name AS KAB_KOTA, t1.level_3_name AS KECAMATAN, t1.level_4_name AS DESA, LEFT(t1.pair_label, LEN(t1.pair_label) - 2) AS NAMA
FROM tnk_e7a35bd4.pair_label_value_1 t1
WHERE t1.data_key = 'r1209k2_prelist' AND pair_value = '1'
ORDER BY t1.level_2_name, t1.level_3_name, t1.level_4_name, t1.index1, t1.pair_label