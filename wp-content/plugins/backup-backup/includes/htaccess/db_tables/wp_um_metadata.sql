/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `wp_um_metadata`; */
/* PRE_TABLE_NAME: `1672410860_wp_um_metadata`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1672410860_wp_um_metadata` ( `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `user_id` bigint(20) unsigned NOT NULL DEFAULT '0', `um_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL, `um_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci, PRIMARY KEY (`umeta_id`), KEY `user_id_indx` (`user_id`), KEY `meta_key_indx` (`um_key`), KEY `meta_value_indx` (`um_value`(191))) /*!50100 TABLESPACE `cirspa_ei` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
