SELECT r1.level_1_code                                                                     AS KODE_PROV,
       r1.level_1_name                                                                     AS PROV,
       r1.level_2_code                                                                     AS KODE_KAB,
       r1.level_2_name                                                                     AS KAB,
       r1.level_3_code                                                                     AS KODE_KEC,
       r1.level_3_name                                                                     AS KEC,
       r1.level_4_code                                                                     AS KODE_DESA,
       r1.level_4_name                                                                     AS DESA,
       CONCAT(
        -- A1
        CASE WHEN (
            r1.r305c > 1 AND r1.r308a_value = 2
        ) THEN 'A1;' END,

        -- A2
        CASE WHEN (
            (cast(r1.r401d as decimal)/cast(r1.r401c as decimal) > 0.5) AND r1.r403a_value <> '01'
        ) THEN 'A2;' END,

        -- A3
        CASE WHEN (
            (r1.r503b_value = 7 AND r2.r1204a_value = 2) OR (r1.r503b_value IN (2, 3, 4) AND r2.r1204b_value = 2)
        ) THEN 'A3;' END,

        -- A4
        CASE WHEN (
            r2.r1206b2_value = 1 AND r2.r1403a = 0
        ) THEN 'A4;' END,

        -- A5.1
        CASE WHEN (
            (r701_n1.r701k4 < 1 AND r701_n1.r701k5_value IN (3,4)) OR (r701_n1.r701k4 > 50 AND r701_n1.r701k5_value IN (1,2))
        ) THEN 'A5.1;' END,

        -- A5.2
        CASE WHEN (
            (r701_n2.r701k4 < 1 AND r701_n2.r701k5_value IN (3,4)) OR (r701_n2.r701k4 > 50 AND r701_n2.r701k5_value IN (1,2))
        ) THEN 'A5.2;' END,

        -- A5.3
        CASE WHEN (
            (r701_n3.r701k4 < 1 AND r701_n3.r701k5_value IN (3,4)) OR (r701_n3.r701k4 > 50 AND r701_n3.r701k5_value IN (1,2))
        ) THEN 'A5.3;' END,

        -- A5.4
        CASE WHEN (
            (r701_n4.r701k4 < 1 AND r701_n4.r701k5_value IN (3,4)) OR (r701_n4.r701k4 > 50 AND r701_n4.r701k5_value IN (1,2))
        ) THEN 'A5.4;' END,

        -- A5.5
        CASE WHEN (
            (r701_n5.r701k4 < 1 AND r701_n5.r701k5_value IN (3,4)) OR (r701_n5.r701k4 > 50 AND r701_n5.r701k5_value IN (1,2))
        ) THEN 'A5.5;' END,

        -- A5.6
        CASE WHEN (
            (r701_n6.r701k4 < 1 AND r701_n6.r701k5_value IN (3,4)) OR (r701_n6.r701k4 > 50 AND r701_n6.r701k5_value IN (1,2))
        ) THEN 'A5.6;' END,

        -- A5.7
        CASE WHEN (
            (r701_n7.r701k4 < 1 AND r701_n7.r701k5_value IN (3,4)) OR (r701_n7.r701k4 > 50 AND r701_n7.r701k5_value IN (1,2))
        ) THEN 'A5.7;' END,

        -- A5.8
        CASE WHEN (
            (r701_n8.r701k4 < 1 AND r701_n8.r701k5_value IN (3,4)) OR (r701_n8.r701k4 > 50 AND r701_n8.r701k5_value IN (1,2))
        ) THEN 'A5.8;' END,

        -- A5.9
        CASE WHEN (
            (r701_n9.r701k4 < 1 AND r701_n9.r701k5_value IN (3,4)) OR (r701_n9.r701k4 > 50 AND r701_n9.r701k5_value IN (1,2))
        ) THEN 'A5.9;' END,

        -- A5.10
        CASE WHEN (
            (r701_n10.r701k4 < 1 AND r701_n10.r701k5_value IN (3,4)) OR (r701_n10.r701k4 > 50 AND r701_n10.r701k5_value IN (1,2))
        ) THEN 'A5.10;' END,

        -- A5.11
        CASE WHEN (
            (r701_n11.r701k4 < 1 AND r701_n11.r701k5_value IN (3,4)) OR (r701_n11.r701k4 > 50 AND r701_n11.r701k5_value IN (1,2))
        ) THEN 'A5.11;' END,

        -- A6.1
        CASE WHEN (
            (r704_n1.r704k3 < 1 AND r704_n1.r704k4_value IN (3,4)) OR (r704_n1.r704k3 > 50 AND r704_n1.r704k4_value IN (1,2))
        ) THEN 'A6.1;' END,

        -- A6.2
        CASE WHEN (
            (r704_n2.r704k3 < 1 AND r704_n2.r704k4_value IN (3,4)) OR (r704_n2.r704k3 > 50 AND r704_n2.r704k4_value IN (1,2))
        ) THEN 'A6.2;' END,

        -- A6.3
        CASE WHEN (
            (r704_n3.r704k3 < 1 AND r704_n3.r704k4_value IN (3,4)) OR (r704_n3.r704k3 > 50 AND r704_n3.r704k4_value IN (1,2))
        ) THEN 'A6.3;' END,

        -- A6.4
        CASE WHEN (
            (r704_n4.r704k3 < 1 AND r704_n4.r704k4_value IN (3,4)) OR (r704_n4.r704k3 > 50 AND r704_n4.r704k4_value IN (1,2))
        ) THEN 'A6.4;' END,

        -- A6.5
        CASE WHEN (
            (r704_n5.r704k3 < 1 AND r704_n5.r704k4_value IN (3,4)) OR (r704_n5.r704k3 > 50 AND r704_n5.r704k4_value IN (1,2))
        ) THEN 'A6.5;' END,

        -- A6.6
        CASE WHEN (
            (r704_n6.r704k3 < 1 AND r704_n6.r704k4_value IN (3,4)) OR (r704_n6.r704k3 > 50 AND r704_n6.r704k4_value IN (1,2))
        ) THEN 'A6.6;' END,

        -- A6.7
        CASE WHEN (
            (r704_n7.r704k3 < 1 AND r704_n7.r704k4_value IN (3,4)) OR (r704_n7.r704k3 > 50 AND r704_n7.r704k4_value IN (1,2))
        ) THEN 'A6.7;' END,

        -- A6.8
        CASE WHEN (
            (r704_n8.r704k3 < 1 AND r704_n8.r704k4_value IN (3,4)) OR (r704_n8.r704k3 > 50 AND r704_n8.r704k4_value IN (1,2))
        ) THEN 'A6.8;' END,

        -- A6.9
        CASE WHEN (
            (r704_n9.r704k3 < 1 AND r704_n9.r704k4_value IN (3,4)) OR (r704_n9.r704k3 > 50 AND r704_n9.r704k4_value IN (1,2))
        ) THEN 'A6.9;' END,

        -- A6.10
        CASE WHEN (
            (r704_n10.r704k3 < 1 AND r704_n10.r704k4_value IN (3,4)) OR (r704_n10.r704k3 > 50 AND r704_n10.r704k4_value IN (1,2))
        ) THEN 'A6.10;' END,

        -- A6.11
        CASE WHEN (
            (r704_n11.r704k3 < 1 AND r704_n11.r704k4_value IN (3,4)) OR (r704_n11.r704k3 > 50 AND r704_n11.r704k4_value IN (1,2))
        ) THEN 'A6.11;' END,

        -- A6.12
        CASE WHEN (
            (r704_n12.r704k3 < 1 AND r704_n12.r704k4_value IN (3,4)) OR (r704_n12.r704k3 > 50 AND r704_n12.r704k4_value IN (1,2))
        ) THEN 'A6.12;' END,

        -- A6.13
        CASE WHEN (
            (r704_n13.r704k3 < 1 AND r704_n13.r704k4_value IN (3,4)) OR (r704_n13.r704k3 > 50 AND r704_n13.r704k4_value IN (1,2))
        ) THEN 'A6.13;' END,

        -- A7.1
        CASE WHEN (
            (r1208_n1.r1208_k3 < 1 AND r1208_n1.r1208_k4_value IN (3,4)) OR (r1208_n1.r1208_k3 > 50 AND r1208_n1.r1208_k4_value IN (1,2))
        ) THEN 'A7.1;' END,

        -- A7.2
        CASE WHEN (
            (r1208_n2.r1208_k3 < 1 AND r1208_n2.r1208_k4_value IN (3,4)) OR (r1208_n2.r1208_k3 > 50 AND r1208_n2.r1208_k4_value IN (1,2))
        ) THEN 'A7.2;' END,

        -- A7.3
        CASE WHEN (
            (r1208_n3.r1208_k3 < 1 AND r1208_n3.r1208_k4_value IN (3,4)) OR (r1208_n3.r1208_k3 > 50 AND r1208_n3.r1208_k4_value IN (1,2))
        ) THEN 'A7.3;' END,

        -- A7.4
        CASE WHEN (
            (r1208_n4.r1208_k3 < 1 AND r1208_n4.r1208_k4_value IN (3,4)) OR (r1208_n4.r1208_k3 > 50 AND r1208_n4.r1208_k4_value IN (1,2))
        ) THEN 'A7.4;' END,

        -- A7.5
        CASE WHEN (
            (r1208_n5.r1208_k3 < 1 AND r1208_n5.r1208_k4_value IN (3,4)) OR (r1208_n5.r1208_k3 > 50 AND r1208_n5.r1208_k4_value IN (1,2))
        ) THEN 'A7.5;' END,

        -- A7.6
        CASE WHEN (
            (r1208_n6.r1208_k3 < 1 AND r1208_n6.r1208_k4_value IN (3,4)) OR (r1208_n6.r1208_k3 > 50 AND r1208_n6.r1208_k4_value IN (1,2))
        ) THEN 'A7.6;' END,

        -- A7.7
        CASE WHEN (
            (r1208_n7.r1208_k3 < 1 AND r1208_n7.r1208_k4_value IN (3,4)) OR (r1208_n7.r1208_k3 > 50 AND r1208_n7.r1208_k4_value IN (1,2))
        ) THEN 'A7.7;' END,

        -- A7.8
        CASE WHEN (
            (r1208_n8.r1208_k3 < 1 AND r1208_n8.r1208_k4_value IN (3,4)) OR (r1208_n8.r1208_k3 > 50 AND r1208_n8.r1208_k4_value IN (1,2))
        ) THEN 'A7.8;' END,

        -- A7.9
        CASE WHEN (
            (r1208_n9.r1208_k3 < 1 AND r1208_n9.r1208_k4_value IN (3,4)) OR (r1208_n9.r1208_k3 > 50 AND r1208_n9.r1208_k4_value IN (1,2))
        ) THEN 'A7.9;' END,

        -- A8.1
        CASE WHEN (
            (r1209_n1.r1209_k3 < 1 AND r1209_n1.r1209_k4_value IN (3,4)) OR (r1209_n1.r1209_k3 > 50 AND r1209_n1.r1209_k4_value IN (1,2))
        ) THEN 'A8.1;' END,

        -- A8.2
        CASE WHEN (
            (r1209_n2.r1209_k3 < 1 AND r1209_n2.r1209_k4_value IN (3,4)) OR (r1209_n2.r1209_k3 > 50 AND r1209_n2.r1209_k4_value IN (1,2))
        ) THEN 'A8.2;' END,

        -- A8.3
        CASE WHEN (
            (r1209_n3.r1209_k3 < 1 AND r1209_n3.r1209_k4_value IN (3,4)) OR (r1209_n3.r1209_k3 > 50 AND r1209_n3.r1209_k4_value IN (1,2))
        ) THEN 'A8.3;' END,

        -- A8.4
        CASE WHEN (
            (r1209_n4.r1209_k3 < 1 AND r1209_n4.r1209_k4_value IN (3,4)) OR (r1209_n4.r1209_k3 > 50 AND r1209_n4.r1209_k4_value IN (1,2))
        ) THEN 'A8.4;' END,

        -- A8.5
        CASE WHEN (
            (r1209_n5.r1209_k3 < 1 AND r1209_n5.r1209_k4_value IN (3,4)) OR (r1209_n5.r1209_k3 > 50 AND r1209_n5.r1209_k4_value IN (1,2))
        ) THEN 'A8.5;' END,

        -- A8.6
        CASE WHEN (
            (r1209_n6.r1209_k3 < 1 AND r1209_n6.r1209_k4_value IN (3,4)) OR (r1209_n6.r1209_k3 > 50 AND r1209_n6.r1209_k4_value IN (1,2))
        ) THEN 'A8.6;' END,

        -- A8.7
        CASE WHEN (
            (r1209_n7.r1209_k3 < 1 AND r1209_n7.r1209_k4_value IN (3,4)) OR (r1209_n7.r1209_k3 > 50 AND r1209_n7.r1209_k4_value IN (1,2))
        ) THEN 'A8.7;' END,

        -- A8.8
        CASE WHEN (
            (r1209_n8.r1209_k3 < 1 AND r1209_n8.r1209_k4_value IN (3,4)) OR (r1209_n8.r1209_k3 > 50 AND r1209_n8.r1209_k4_value IN (1,2))
        ) THEN 'A8.8;' END,

        -- A8.9
        CASE WHEN (
            (r1209_n9.r1209_k3 < 1 AND r1209_n9.r1209_k4_value IN (3,4)) OR (r1209_n9.r1209_k3 > 50 AND r1209_n9.r1209_k4_value IN (1,2))
        ) THEN 'A8.9;' END,

        -- A8.10
        CASE WHEN (
            (r1209_n10.r1209_k3 < 1 AND r1209_n10.r1209_k4_value IN (3,4)) OR (r1209_n10.r1209_k3 > 50 AND r1209_n10.r1209_k4_value IN (1,2))
        ) THEN 'A8.10;' END,

        -- A9
        CASE WHEN (
            r1.r401c < ((r1.r401a + r1.r401b) / 13)
        ) THEN 'A9;' END,

        -- A10
        CASE WHEN (
            r2.r1203b1 IS NOT NULL AND (r2.r1201a8 + r2.r1201a9) = 0
        ) THEN 'A10;' END,

        -- A11
        CASE WHEN (
            r1.r305a_value = 1 AND r1.r307b2 < 10
        ) THEN 'A11;' END,

        -- A12
        CASE WHEN (
            r1.r603 > 0 AND (r1.r1101a + r1.r1101b) = 0
        ) THEN 'A12;' END,

        -- A13
        CASE WHEN (
            r1.r403b1_value = 6 AND r1.r309a_value = 3
        ) THEN 'A13;' END,

        -- A14
        CASE WHEN (
            r1.r403c1_value = 5 AND r1.r403c2_value = 1
        ) THEN 'A14;' END,

        -- A15
        CASE WHEN (
            r1.r508a_value = 7 AND r1.r512a_value = 3
        ) THEN 'A15;' END,

        -- A16
        CASE WHEN (
            r1.r508b_value = 5 AND r1.r512a_value = 3
        ) THEN 'A16;' END,

        -- A17
        CASE WHEN (
            r1.r511c1_value = 1 AND r1.r514a_k2_value = 2
        ) THEN 'A17;' END,

        -- A18
        CASE WHEN (
            r1.r504d_value = 1 AND r1.r515b_value = 3
        ) THEN 'A18;' END,

        -- A19
        CASE WHEN (
            r1.r403a_value <> '01' AND r1.r517_value = 1
        ) THEN 'A19;' END,

        -- A20
        CASE WHEN (
            r1.r308a_value = 2 AND r1.r604b_value = 1
        ) THEN 'A20;' END,

        -- A21
        CASE WHEN (
            r1.r308a_value = 2 AND r1.r605c_value = 1
        ) THEN 'A21;' END,

        -- A22
        CASE WHEN (
            r1.r511a_value = 1 AND r1.r513a_value = 2
        ) THEN 'A22;' END,

        -- A23
        CASE WHEN (
            r704_n9.r704k2 > 0 AND r1.r706c = 0
        ) THEN 'A23;' END,

        -- A24
        CASE WHEN (
            r1.r515c_value IN (1, 2) AND (r1.r1101a = 0 AND r1.r1101b = 0)
        ) THEN 'A24;' END,

        -- A25
        CASE WHEN (
            r2.r1403f_value = 1 AND r1.r309a_value = 3
        ) THEN 'A25;' END,

        -- A26
        CASE WHEN (
            r2.r1403g_value = 1 AND r1.r512a_value = 3
        ) THEN 'A26;' END,

        -- A27
        CASE WHEN (
            r3_a27.data_key = 'r601_k2' and r3_a27.r1_pair_value = '02' AND r1.r308a_value = 2 AND r3_a27.pair_value IS NULL
        ) THEN 'A27;' END,

        -- A28
        CASE WHEN (
            r3_a28.data_key = 'r601_k2' AND r3_a28.pair_value = '11' AND r1.r308a_value = 2
        ) THEN 'A28;' END,

        -- A29
        CASE WHEN (
            r3_a29.data_key = 'r601_k2' AND r3_a29.pair_value = '06' AND r1.r308a_value = 2
        ) THEN 'A29;' END,

        -- A30
        CASE WHEN (
            r3_a30.data_key = 'r601_k2' AND r3_a30.pair_value = '09' AND r1.r309a_value = 3
        ) THEN 'A30;' END,

        -- A31
        CASE WHEN (
            (r1.r803a <> 0 OR r1.r803b <> 0) AND r3_a31.pair_value IS NULL
        ) THEN 'A31;' END,

        -- A32
        CASE WHEN (
            r1.r304 > 1000
        ) THEN 'A32;' END,

        -- A33
        CASE WHEN (
            r1.r705a = 0 AND r1.r705e > 0
        ) THEN 'A33;' END,

        -- A34
        CASE WHEN (
            (r1.r508b_value = 1 OR r1.r508b_value = 2) AND (r1.r508a_value = 8 OR r1.r508a_value = 9 OR r1.r508a_value = 10)
        ) THEN 'A34;' END,

        -- A35
        CASE WHEN (
            ISNULL(r1.r509c1, 0) > 0 AND ((CAST(r1.r509c2 as DECIMAL)/CAST(ISNULL(r1.r509c1, 0) as DECIMAL)) < 2)
        ) THEN 'A35;' END,

        -- A36
        CASE WHEN (
            ISNULL(r1.r511b1, 0) > 0 AND ((CAST(r1.r511b2 as DECIMAL)/CAST(ISNULL(r1.r511b1, 0) as DECIMAL)) < 2)
        ) THEN 'A36;' END,

        -- A37
        CASE WHEN (
            ISNULL(r1.r513b1, 0) > 0 AND ((CAST(r1.r513b2 as DECIMAL)/CAST(ISNULL(r1.r513b1, 0) as DECIMAL)) < 2)
        ) THEN 'A37;' END,

        -- A38
        CASE WHEN (
            r1.r503b_value = 1
        ) THEN 'A38;' END,

        -- A39
        CASE WHEN (
            r1.r517_value = 1 AND r1.r1101a = 0 AND r1.r1101b = 0
        ) THEN 'A39;' END,

        -- A40
        CASE WHEN (
            r1002_n1.r1002k5 < 5 AND (r1002_n1.r1002k6a + (r1002_n1.r1002k6b)/60) > 1
        ) THEN 'A40;' END,

        -- A41
        CASE WHEN (
            r1002_n2.r1002k5 < 5 AND (r1002_n2.r1002k6a + (r1002_n2.r1002k6b)/60) > 1
        ) THEN 'A41;' END,

        -- A42
        CASE WHEN (
            r1002_n3.r1002k5 < 5 AND (r1002_n3.r1002k6a + (r1002_n3.r1002k6b)/60) > 1
        ) THEN 'A42;' END,

        -- A43
        CASE WHEN (
            r1002_n4.r1002k5 < 5 AND (r1002_n4.r1002k6a + (r1002_n4.r1002k6b)/60) > 1
        ) THEN 'A43;' END
       ) AS Anomali,
       CONCAT('https://fasih-sm.bps.go.id/survey-collection/assignment-detail/',
              r1.assignment_id
           , '/1a8fde37-032e-4ae3-85f7-e677337fbb76') AS Link
FROM tnk_e7a35bd4.root_table r1
        LEFT JOIN tnk_e7a35bd4.root_table_2 r2
                ON r2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_1 WHERE r701_1.index1 = 1) r701_n1
                ON r701_n1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_2 WHERE r701_2.index1 = 2) r701_n2
                ON r701_n2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_3 WHERE r701_3.index1 = 3) r701_n3
                ON r701_n3.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_4 WHERE r701_4.index1 = 4) r701_n4
                ON r701_n4.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_5 WHERE r701_5.index1 = 5) r701_n5
                ON r701_n5.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_6 WHERE r701_6.index1 = 6) r701_n6
                ON r701_n6.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_7 WHERE r701_7.index1 = 7) r701_n7
                ON r701_n7.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_8 WHERE r701_8.index1 = 8) r701_n8
                ON r701_n8.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_9 WHERE r701_9.index1 = 9) r701_n9
                ON r701_n9.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_10 WHERE r701_10.index1 = 10) r701_n10
                ON r701_n10.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r701_nested r701_11 WHERE r701_11.index1 = 11) r701_n11
                ON r701_n11.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_1 WHERE r704_1.index1 = 1) r704_n1
                ON r704_n1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_2 WHERE r704_2.index1 = 2) r704_n2
                ON r704_n2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_3 WHERE r704_3.index1 = 3) r704_n3
                ON r704_n3.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_4 WHERE r704_4.index1 = 4) r704_n4
                ON r704_n4.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_5 WHERE r704_5.index1 = 5) r704_n5
                ON r704_n5.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_6 WHERE r704_6.index1 = 6) r704_n6
                ON r704_n6.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_7 WHERE r704_7.index1 = 7) r704_n7
                ON r704_n7.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_8 WHERE r704_8.index1 = 8) r704_n8
                ON r704_n8.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_9 WHERE r704_9.index1 = 9) r704_n9
                ON r704_n9.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_10 WHERE r704_10.index1 = 10) r704_n10
                ON r704_n10.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_11 WHERE r704_11.index1 = 11) r704_n11
                ON r704_n11.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_12 WHERE r704_12.index1 = 12) r704_n12
                ON r704_n12.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r704_nested r704_13 WHERE r704_13.index1 = 13) r704_n13
                ON r704_n13.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_1 WHERE r1208_1.index1 = 1) r1208_n1
                ON r1208_n1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_2 WHERE r1208_2.index1 = 2) r1208_n2
                ON r1208_n2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_3 WHERE r1208_3.index1 = 3) r1208_n3
                ON r1208_n3.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_4 WHERE r1208_4.index1 = 4) r1208_n4
                ON r1208_n4.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_5 WHERE r1208_5.index1 = 5) r1208_n5
                ON r1208_n5.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_6 WHERE r1208_6.index1 = 6) r1208_n6
                ON r1208_n6.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_7 WHERE r1208_7.index1 = 7) r1208_n7
                ON r1208_n7.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_8 WHERE r1208_8.index1 = 8) r1208_n8
                ON r1208_n8.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1208_nested r1208_9 WHERE r1208_9.index1 = 9) r1208_n9
                ON r1208_n9.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_1 WHERE r1209_1.index1 = 1) r1209_n1
                ON r1209_n1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_2 WHERE r1209_2.index1 = 2) r1209_n2
                ON r1209_n2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_3 WHERE r1209_3.index1 = 3) r1209_n3
                ON r1209_n3.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_4 WHERE r1209_4.index1 = 4) r1209_n4
                ON r1209_n4.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_5 WHERE r1209_5.index1 = 5) r1209_n5
                ON r1209_n5.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_6 WHERE r1209_6.index1 = 6) r1209_n6
                ON r1209_n6.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_7 WHERE r1209_7.index1 = 7) r1209_n7
                ON r1209_n7.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_8 WHERE r1209_8.index1 = 8) r1209_n8
                ON r1209_n8.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_9 WHERE r1209_9.index1 = 9) r1209_n9
                ON r1209_n9.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1209_nested r1209_10 WHERE r1209_10.index1 = 10) r1209_n10
                ON r1209_n10.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT r1.data_key, r1.assignment_id, r3.pair_value, r1.pair_value AS r1_pair_value FROM tnk_e7a35bd4.pair_label_value_0 r1 LEFT JOIN tnk_e7a35bd4.root_table r2 ON r2.assignment_id = r1.assignment_id LEFT JOIN (SELECT assignment_id, pair_value, pair_label FROM tnk_e7a35bd4.pair_label_value_0 r1 WHERE r1.data_key = 'r510a' AND r1.pair_value = '1') r3 ON r3.assignment_id = r1.assignment_id WHERE r1.data_key = 'r601_k2' AND r1.pair_value = '02') r3_a27
                ON r3_a27.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT r1.data_key, r1.assignment_id, r1.pair_value FROM tnk_e7a35bd4.pair_label_value_0 r1 LEFT JOIN tnk_e7a35bd4.root_table r2 ON r2.assignment_id = r1.assignment_id WHERE r1.data_key = 'r601_k2' AND r1.pair_value = '11') r3_a28
                ON r3_a28.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT r1.data_key, r1.assignment_id, r1.pair_value FROM tnk_e7a35bd4.pair_label_value_0 r1 LEFT JOIN tnk_e7a35bd4.root_table r2 ON r2.assignment_id = r1.assignment_id WHERE r1.data_key = 'r601_k2' AND r1.pair_value = '06') r3_a29
                ON r3_a29.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT r1.data_key, r1.assignment_id, r1.pair_value FROM tnk_e7a35bd4.pair_label_value_0 r1 LEFT JOIN tnk_e7a35bd4.root_table r2 ON r2.assignment_id = r1.assignment_id WHERE r1.data_key = 'r601_k2' AND r1.pair_value = '09') r3_a30
                ON r3_a30.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT assignment_id, pair_value, pair_label FROM tnk_e7a35bd4.pair_label_value_0 r1 WHERE r1.data_key = 'r801' and r1.pair_value = '1' ) r3_a31
                ON r3_a31.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1002_nested r1002_1 WHERE r1002_1.index1 = 1) r1002_n1
                ON r1002_n1.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1002_nested r1002_2 WHERE r1002_2.index1 = 2) r1002_n2
                ON r1002_n2.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1002_nested r1002_3 WHERE r1002_3.index1 = 3) r1002_n3
                ON r1002_n3.assignment_id = r1.assignment_id
        LEFT JOIN (SELECT * FROM tnk_e7a35bd4.r1002_nested r1002_4 WHERE r1002_4.index1 = 4) r1002_n4
                ON r1002_n4.assignment_id = r1.assignment_id

ORDER BY r1.level_2_code, r1.level_3_code, r1.level_4_code