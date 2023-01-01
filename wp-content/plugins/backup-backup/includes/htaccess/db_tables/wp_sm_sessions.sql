/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `wp_sm_sessions`; */
/* PRE_TABLE_NAME: `1672410860_wp_sm_sessions`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1672410860_wp_sm_sessions` ( `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL, `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL, `session_expiry` bigint(20) unsigned NOT NULL, PRIMARY KEY (`session_key`)) /*!50100 TABLESPACE `cirspa_ei` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
