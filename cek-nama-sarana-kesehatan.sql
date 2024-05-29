SELECT t1.level_2_name AS KAB_KOTA, t1.level_3_name AS KECAMATAN, t1.level_4_name AS DESA,
(CASE
    WHEN t1.index1 = 1 THEN 'Rumah Sakit'
    WHEN t1.index1 = 2 THEN 'Rumah Sakit Bersalin'
    WHEN t1.index1 = 3 THEN 'Puskesmas dengan Rawat Inap'
    WHEN t1.index1 = 4 THEN 'Puskesmas tanpa Rawat Inap'
    WHEN t1.index1 = 5 THEN 'Puskesmas Pembantu'
    WHEN t1.index1 = 6 THEN 'Poliklinik/Balai Pengobatan'
    WHEN t1.index1 = 7 THEN 'Tempat Praktik Dokter'
    WHEN t1.index1 = 8 THEN 'Rumah Bersalin'
    WHEN t1.index1 = 9 THEN 'Tempat Praktik Bidan'
    WHEN t1.index1 = 10 THEN 'Poskesdes'
    WHEN t1.index1 = 11 THEN 'Polindes'
    WHEN t1.index1 = 12 THEN 'Apotek'
    WHEN t1.index1 = 13 THEN 'Toko Khusus Obat (Jamu)'
END) AS JENIS_SARANA,
SUBSTRING(t1.pair_label, 1, CHARINDEX('#', t1.pair_label)-1) AS NAMA
FROM tnk_e7a35bd4.pair_label_value_1 t1
WHERE t1.data_key = 'r704k2_prelist' AND pair_value <> '0'
ORDER BY t1.level_2_name, t1.level_3_name, t1.level_4_name, t1.index1, t1.pair_label