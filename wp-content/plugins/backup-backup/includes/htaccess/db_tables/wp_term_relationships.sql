/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `wp_term_relationships`; */
/* PRE_TABLE_NAME: `1672410860_wp_term_relationships`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1672410860_wp_term_relationships` ( `object_id` bigint(20) unsigned NOT NULL DEFAULT '0', `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0', `term_order` int(11) NOT NULL DEFAULT '0', PRIMARY KEY (`object_id`,`term_taxonomy_id`), KEY `term_taxonomy_id` (`term_taxonomy_id`)) /*!50100 TABLESPACE `cirspa_ei` */ ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1672410860_wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES (11,2,0),(41,6,0),(52,4,0),(85,6,0),(96,6,0),(100,6,0),(103,6,0),(106,6,0),(109,6,0),(112,6,0),(118,6,0),(132,7,0),(154,8,0),(160,8,0),(162,8,0),(164,8,0),(166,8,0),(168,8,0),(170,8,0),(172,8,0),(174,8,0),(176,8,0),(204,8,0),(219,26,0),(219,28,0);
