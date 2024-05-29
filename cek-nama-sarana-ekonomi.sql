SELECT t1.level_2_name AS KAB_KOTA, t1.level_3_name AS KECAMATAN, t1.level_4_name AS DESA,
(CASE
    WHEN t1.index1 = 1 THEN 'Kelompok Pertokoan'
    WHEN t1.index1 = 2 THEN 'Pasar dengan Bangunan Permanen'
    WHEN t1.index1 = 3 THEN 'Pasar dengan Bangunan Semi Permanen'
    WHEN t1.index1 = 4 THEN 'Pasar Tanpa Bangunan'
    WHEN t1.index1 = 5 THEN 'Minimarket/Swalayan/Supermarket'
    WHEN t1.index1 = 6 THEN 'Restoran/Rumah Makan'
    WHEN t1.index1 = 7 THEN 'Warung/Kedai Makanan Minuman'
    WHEN t1.index1 = 8 THEN 'Hotel'
    WHEN t1.index1 = 9 THEN 'Penginapan (Hostel/Motel/Losmen/Wisma)'
    WHEN t1.index1 = 10 THEN 'Toko/Warung Kelontong'
END) AS JENIS_SARANA,
SUBSTRING(t1.pair_label, 1, CHARINDEX('#', t1.pair_label)-1) AS NAMA
FROM tnk_e7a35bd4.pair_label_value_1 t1
WHERE t1.data_key = 'r1209k2_prelist' AND pair_value <> '0'
ORDER BY t1.level_2_name, t1.level_3_name, t1.level_4_name, t1.index1, t1.pair_label