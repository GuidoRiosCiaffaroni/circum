/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `wp_term_taxonomy`; */
/* PRE_TABLE_NAME: `1672410860_wp_term_taxonomy`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1672410860_wp_term_taxonomy` ( `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `term_id` bigint(20) unsigned NOT NULL DEFAULT '0', `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL, `parent` bigint(20) unsigned NOT NULL DEFAULT '0', `count` bigint(20) NOT NULL DEFAULT '0', PRIMARY KEY (`term_taxonomy_id`), UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), KEY `taxonomy` (`taxonomy`)) /*!50100 TABLESPACE `cirspa_ei` */ ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1672410860_wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES (1,1,'category','',0,0),(2,2,'wp_theme','',0,1),(3,3,'category','',0,0),(4,4,'wp_theme','',0,1),(5,5,'category','',0,0),(6,6,'category','',0,9),(7,7,'category','',0,1),(8,8,'category','',0,11),(9,9,'ticket_channel','',0,0),(10,10,'ticket_channel','',0,0),(11,11,'ticket_channel','',0,0),(12,12,'ticket_channel','',0,0),(13,13,'ticket_channel','',0,0),(14,14,'ticket_channel','',0,0),(15,15,'ticket_channel','',0,0),(16,16,'ticket_channel','',0,0),(17,17,'ticket_channel','',0,0),(18,18,'ticket_channel','',0,0),(19,19,'ticket_channel','',0,0),(20,20,'ticket_channel','',0,0),(21,21,'ticket_channel','',0,0),(22,22,'ticket_channel','',0,0),(23,23,'ticket_channel','',0,0),(24,24,'ticket_channel','',0,0),(25,25,'ticket_channel','',0,0),(26,26,'ticket_channel','',0,1),(27,27,'ticket-tag','',0,0),(28,28,'ticket-tag','',0,1),(29,29,'ticket-tag','',0,0),(30,30,'ticket-tag','',0,0);