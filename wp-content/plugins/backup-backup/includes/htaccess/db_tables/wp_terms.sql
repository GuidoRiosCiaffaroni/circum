/* CUSTOM VARS START */
/* REAL_TABLE_NAME: `wp_terms`; */
/* PRE_TABLE_NAME: `1672410860_wp_terms`; */
/* CUSTOM VARS END */

CREATE TABLE IF NOT EXISTS `1672410860_wp_terms` ( `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT, `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '', `term_group` bigint(10) NOT NULL DEFAULT '0', PRIMARY KEY (`term_id`), KEY `slug` (`slug`(191)), KEY `name` (`name`(191))) /*!50100 TABLESPACE `cirspa_ei` */ ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
INSERT INTO `1672410860_wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES (1,'Uncategorized','uncategorized',0),(2,'avail','avail',0),(3,'BCI','bci',0),(4,'kikin','kikin',0),(5,'Nemotecnico','nemotecnico',0),(6,'Folio','folio',0),(7,'Reporte','reporte',0),(8,'Diccionario','diccionario',0),(9,'Standard Ticket Form','standard-ticket-form',0),(10,'Email','email',0),(11,'Chat','chat',0),(12,'WordPress.org','wordpress-org',0),(13,'Contact Form (Website)','contact-form-website',0),(14,'Gravity Forms add-on','gravity-forms-add-on',0),(15,'Twitter','twitter',0),(16,'Twitter DM (direct message)','twitter-dm-direct-message',0),(17,'Twitter Favorite','twitter-favorite',0),(18,'Voicemail','voicemail',0),(19,'Phone call (incoming)','phone-call-incoming',0),(20,'Feedback Form','feedback-form',0),(21,'Web service (API)','web-service-api',0),(22,'Trigger or automation','trigger-or-automation',0),(23,'Forum topic','forum-topic',0),(24,'Facebook Post','facebook-post',0),(25,'Facebook Message','facebook-message',0),(26,'Other','other',0),(27,'Urgente - Importante','urgente-importante',0),(28,'No Urgente - Importante','no-urgente-importante',0),(29,'Urgente-No Importante','urgente-no-importante',0),(30,'No Urgente - No Importante','no-urgente-no-importante',0);