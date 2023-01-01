-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 10.123.0.78:3307
-- Tiempo de generación: 01-01-2023 a las 18:04:04
-- Versión del servidor: 8.0.16
-- Versión de PHP: 7.0.33-0+deb9u9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cirspa_ei`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(229, 'action_scheduler/migration_hook', 'complete', '2022-12-30 16:55:29', '2022-12-30 16:55:29', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1672419329;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1672419329;}', 1, 1, '2022-12-30 16:55:57', '2022-12-30 16:55:57', 0, NULL),
(230, 'wp_mail_smtp_summary_report_email', 'pending', '2023-01-02 14:00:00', '2023-01-02 14:00:00', '[null]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1672668000;s:18:\"\0*\0first_timestamp\";i:1672668000;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1672668000;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(231, 'wp_mail_smtp_admin_notifications_update', 'complete', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '[1]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2022-12-30 16:57:26', '2022-12-30 16:57:26', 0, NULL),
(232, 'action_scheduler/migration_hook', 'complete', '2022-12-30 17:23:25', '2022-12-30 17:23:25', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1672421005;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1672421005;}', 1, 1, '2022-12-30 17:23:35', '2022-12-30 17:23:35', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration'),
(2, 'wp_mail_smtp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 229, 'action created', '2022-12-30 16:54:29', '2022-12-30 16:54:29'),
(2, 229, 'action started via WP Cron', '2022-12-30 16:55:57', '2022-12-30 16:55:57'),
(3, 229, 'action complete via WP Cron', '2022-12-30 16:55:57', '2022-12-30 16:55:57'),
(4, 230, 'action created', '2022-12-30 16:55:59', '2022-12-30 16:55:59'),
(5, 231, 'action created', '2022-12-30 16:56:01', '2022-12-30 16:56:01'),
(6, 231, 'action started via WP Cron', '2022-12-30 16:57:26', '2022-12-30 16:57:26'),
(7, 231, 'action complete via WP Cron', '2022-12-30 16:57:26', '2022-12-30 16:57:26'),
(8, 232, 'action created', '2022-12-30 17:22:25', '2022-12-30 17:22:25'),
(9, 232, 'action started via WP Cron', '2022-12-30 17:23:35', '2022-12-30 17:23:35'),
(10, 232, 'action complete via WP Cron', '2022-12-30 17:23:35', '2022-12-30 17:23:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_db7_forms`
--

CREATE TABLE `wp_db7_forms` (
  `form_id` bigint(20) NOT NULL,
  `form_post_id` bigint(20) NOT NULL,
  `form_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_db7_forms`
--

INSERT INTO `wp_db7_forms` (`form_id`, `form_post_id`, `form_value`, `form_date`) VALUES
(1, 228, 'a:9:{s:12:\"cfdb7_status\";s:4:\"read\";s:9:\"your-name\";s:22:\"Guido Ríos Ciaffaroni\";s:10:\"your-email\";s:29:\"guidoriosciaffaroni@gmail.com\";s:8:\"telefono\";s:9:\"997784204\";s:9:\"Direccion\";s:14:\"Cienfuegos 230\";s:11:\"EstadoCivil\";a:1:{i:0;s:17:\"soltero o soltera\";}s:16:\"profesion_oficio\";s:20:\"Ing Civil Industrial\";s:12:\"your-subject\";s:18:\"Correo de prueba 2\";s:12:\"your-message\";s:30:\"Este es un mensaje de prueba 2\";}', '2022-12-30 21:41:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_attachments`
--

CREATE TABLE `wp_mailster_attachments` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `disposition` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` varchar(127) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_digests`
--

CREATE TABLE `wp_mailster_digests` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_core_user` tinyint(1) NOT NULL,
  `digest_freq` tinyint(1) NOT NULL,
  `last_send_date` timestamp NULL DEFAULT NULL,
  `next_send_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_digest_queue`
--

CREATE TABLE `wp_mailster_digest_queue` (
  `digest_id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `digest_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_groups`
--

CREATE TABLE `wp_mailster_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_core_group` tinyint(1) NOT NULL,
  `core_group_id` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_group_users`
--

CREATE TABLE `wp_mailster_group_users` (
  `group_id` int(11) NOT NULL,
  `user_id` int(200) NOT NULL,
  `is_core_user` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_lists`
--

CREATE TABLE `wp_mailster_lists` (
  `id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `admin_mail` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `public_registration` tinyint(1) DEFAULT NULL,
  `sending_public` tinyint(1) DEFAULT NULL,
  `sending_recipients` tinyint(1) DEFAULT NULL,
  `sending_admin` tinyint(1) DEFAULT NULL,
  `sending_group` tinyint(1) DEFAULT NULL,
  `sending_group_id` int(11) DEFAULT NULL,
  `mod_mode` tinyint(1) DEFAULT '0',
  `mod_moderated_group` int(11) DEFAULT '0',
  `mod_approve_recipients` tinyint(1) DEFAULT '0',
  `mod_approve_group` tinyint(1) DEFAULT '0',
  `mod_approve_group_id` int(11) DEFAULT '0',
  `mod_info_sender_moderation` tinyint(1) DEFAULT '0',
  `mod_info_sender_approval` tinyint(1) DEFAULT '0',
  `mod_info_sender_rejection` tinyint(1) DEFAULT '0',
  `disable_mail_footer` tinyint(1) DEFAULT NULL,
  `allow_subscribe` tinyint(1) DEFAULT '1',
  `allow_unsubscribe` tinyint(1) DEFAULT '1',
  `reply_to_sender` tinyint(1) DEFAULT NULL,
  `list_mail` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `subject_prefix` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `use_cms_mailer` tinyint(1) DEFAULT NULL,
  `copy_to_sender` tinyint(1) DEFAULT NULL,
  `mail_in_user` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mail_in_pw` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mail_out_user` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mail_out_pw` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `server_inb_id` int(11) DEFAULT NULL,
  `server_out_id` int(11) DEFAULT NULL,
  `custom_header_plain` text COLLATE utf8mb4_unicode_520_ci,
  `custom_footer_plain` text COLLATE utf8mb4_unicode_520_ci,
  `custom_header_html` text COLLATE utf8mb4_unicode_520_ci,
  `custom_footer_html` text COLLATE utf8mb4_unicode_520_ci,
  `mail_format_conv` int(11) DEFAULT '1',
  `mail_format_altbody` tinyint(1) DEFAULT '1',
  `alibi_to_mail` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `addressing_mode` tinyint(1) DEFAULT NULL,
  `mail_from_mode` tinyint(1) DEFAULT '0',
  `name_from_mode` tinyint(1) DEFAULT '0',
  `archive_mode` int(11) DEFAULT '0',
  `archive_retention` int(11) DEFAULT '0',
  `archive2article` tinyint(1) DEFAULT '0',
  `archive2article_author` int(11) DEFAULT '0',
  `archive2article_cat` int(11) DEFAULT '0',
  `archive2article_state` tinyint(3) DEFAULT '1',
  `archive_offline` int(11) DEFAULT '0',
  `bounce_mode` int(11) DEFAULT NULL,
  `bounce_mail` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `bcc_count` int(11) DEFAULT NULL,
  `incl_orig_headers` tinyint(1) DEFAULT '0',
  `max_send_attempts` int(11) DEFAULT NULL,
  `filter_mails` tinyint(1) DEFAULT NULL,
  `allow_bulk_precedence` tinyint(1) DEFAULT '0',
  `clean_up_subject` tinyint(1) DEFAULT NULL,
  `lock_id` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  `last_lock` timestamp NULL DEFAULT NULL,
  `last_check` timestamp NULL DEFAULT NULL,
  `last_mail_retrieved` timestamp NULL DEFAULT NULL,
  `last_mail_sent` timestamp NULL DEFAULT NULL,
  `cstate` int(11) DEFAULT '0',
  `mail_size_limit` int(11) DEFAULT '0',
  `notify_not_fwd_sender` tinyint(1) DEFAULT '1',
  `save_send_reports` int(11) DEFAULT '7',
  `subscribe_mode` int(11) DEFAULT '1',
  `unsubscribe_mode` int(11) DEFAULT '1',
  `welcome_msg` int(11) DEFAULT '1',
  `welcome_msg_admin` int(11) DEFAULT '0',
  `goodbye_msg` int(11) DEFAULT '1',
  `goodbye_msg_admin` int(11) DEFAULT '0',
  `allow_digests` tinyint(1) DEFAULT '0',
  `front_archive_access` tinyint(1) DEFAULT '0',
  `mail_content` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_list_groups`
--

CREATE TABLE `wp_mailster_list_groups` (
  `list_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `receive_mails` tinyint(1) DEFAULT NULL,
  `send_mails` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_list_members`
--

CREATE TABLE `wp_mailster_list_members` (
  `list_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_core_user` tinyint(1) NOT NULL,
  `receive_mails` tinyint(1) DEFAULT NULL,
  `send_mails` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_list_stats`
--

CREATE TABLE `wp_mailster_list_stats` (
  `id` int(11) NOT NULL,
  `list_id` varchar(45) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `stat_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `stat_hour` tinyint(2) NOT NULL,
  `stat_minute` tinyint(2) NOT NULL,
  `send_mails` int(11) NOT NULL DEFAULT '0',
  `send_recipients` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_mails`
--

CREATE TABLE `wp_mailster_mails` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `hashkey` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_reply_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `references_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `receive_timestamp` timestamp NULL DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sender_user_id` int(11) NOT NULL DEFAULT '0',
  `sender_is_core_user` tinyint(1) NOT NULL DEFAULT '0',
  `sender_dmarc_relevant` tinyint(1) NOT NULL DEFAULT '0',
  `orig_to_recips` text COLLATE utf8mb4_unicode_520_ci,
  `orig_cc_recips` text COLLATE utf8mb4_unicode_520_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `html` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `has_attachments` tinyint(1) DEFAULT NULL,
  `fwd_errors` tinyint(1) DEFAULT NULL,
  `fwd_completed` tinyint(1) DEFAULT NULL,
  `fwd_completed_timestamp` timestamp NULL DEFAULT NULL,
  `blocked_mail` tinyint(1) DEFAULT NULL,
  `bounced_mail` tinyint(1) DEFAULT NULL,
  `moderation_status` tinyint(1) NOT NULL DEFAULT '0',
  `no_content` tinyint(1) DEFAULT '0',
  `has_send_report` tinyint(1) DEFAULT '0',
  `size_in_bytes` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_notifies`
--

CREATE TABLE `wp_mailster_notifies` (
  `id` int(11) NOT NULL,
  `notify_type` int(11) DEFAULT NULL,
  `trigger_type` int(11) DEFAULT NULL,
  `target_type` int(11) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_oa_attachments`
--

CREATE TABLE `wp_mailster_oa_attachments` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `disposition` tinyint(1) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` varchar(127) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_oa_mails`
--

CREATE TABLE `wp_mailster_oa_mails` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `hashkey` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `message_id` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `in_reply_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `references_to` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `receive_timestamp` timestamp NULL DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sender_user_id` int(11) NOT NULL DEFAULT '0',
  `sender_is_core_user` tinyint(1) NOT NULL DEFAULT '0',
  `sender_dmarc_relevant` tinyint(1) NOT NULL DEFAULT '0',
  `orig_to_recips` text COLLATE utf8mb4_unicode_520_ci,
  `orig_cc_recips` text COLLATE utf8mb4_unicode_520_ci,
  `subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `html` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `has_attachments` tinyint(1) DEFAULT NULL,
  `fwd_errors` tinyint(1) DEFAULT NULL,
  `fwd_completed` tinyint(1) DEFAULT NULL,
  `fwd_completed_timestamp` timestamp NULL DEFAULT NULL,
  `blocked_mail` tinyint(1) DEFAULT NULL,
  `bounced_mail` tinyint(1) DEFAULT NULL,
  `moderation_status` tinyint(1) NOT NULL DEFAULT '0',
  `no_content` tinyint(1) DEFAULT '0',
  `has_send_report` tinyint(1) DEFAULT '0',
  `size_in_bytes` int(11) DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_queued_mails`
--

CREATE TABLE `wp_mailster_queued_mails` (
  `mail_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `error_count` int(11) DEFAULT NULL,
  `lock_id` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  `last_lock` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_send_reports`
--

CREATE TABLE `wp_mailster_send_reports` (
  `id` int(11) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `event_type` int(11) NOT NULL DEFAULT '0',
  `recips` text COLLATE utf8mb4_unicode_520_ci,
  `int_val1` int(11) NOT NULL,
  `int_val2` int(11) NOT NULL,
  `int_val3` int(11) NOT NULL,
  `int_val4` int(11) NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_servers`
--

CREATE TABLE `wp_mailster_servers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `provider_type` int(11) NOT NULL DEFAULT '0',
  `user_edited` tinyint(1) NOT NULL DEFAULT '1',
  `server_type` int(11) NOT NULL,
  `server_host` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `server_port` int(11) DEFAULT NULL,
  `secure_protocol` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `secure_authentication` tinyint(1) DEFAULT NULL,
  `protocol` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `connection_parameter` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `api_endpoint` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_mailster_servers`
--

INSERT INTO `wp_mailster_servers` (`id`, `name`, `published`, `provider_type`, `user_edited`, `server_type`, `server_host`, `server_port`, `secure_protocol`, `secure_authentication`, `protocol`, `connection_parameter`, `api_key1`, `api_key2`, `api_endpoint`) VALUES
(1, 'AOL (POP3)', 1, 1, 0, 0, 'pop.aol.com', 995, 'ssl', 0, 'pop3', NULL, NULL, NULL, NULL),
(2, 'AOL (SMTP)', 1, 2, 0, 1, 'smtp.aol.com', 587, '', 1, 'smtp', NULL, NULL, NULL, NULL),
(3, 'Gmail (IMAP)', 1, 3, 0, 0, 'imap.gmail.com', 993, 'ssl', 0, 'imap', NULL, NULL, NULL, NULL),
(4, 'Gmail (SMTP)', 1, 4, 0, 1, 'smtp.gmail.com', 465, 'ssl', 1, 'smtp', NULL, NULL, NULL, NULL),
(5, 'One.com (IMAP)', 1, 5, 0, 0, 'imap.one.com', 993, 'ssl', 0, 'imap', '/novalidate-cert', NULL, NULL, NULL),
(6, 'One.com (SMTP)', 1, 6, 0, 1, 'send.one.com', 465, 'ssl', 1, 'smtp', NULL, NULL, NULL, NULL),
(7, 'Outlook.com (IMAP)', 1, 7, 0, 0, 'imap-mail.outlook.com', 993, 'ssl', 0, 'imap', NULL, NULL, NULL, NULL),
(8, 'Outlook.com (SMTP)', 1, 8, 0, 1, 'smtp-mail.outlook.com', 587, 'tls', 1, 'smtp', NULL, NULL, NULL, NULL),
(9, 'Yahoo (IMAP)', 1, 9, 0, 0, 'imap.mail.yahoo.com', 993, 'ssl', 0, 'imap', NULL, NULL, NULL, NULL),
(10, 'Yahoo (SMTP)', 1, 10, 0, 1, 'smtp.mail.yahoo.com', 465, 'ssl', 1, 'smtp', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_subscriptions`
--

CREATE TABLE `wp_mailster_subscriptions` (
  `id` int(11) NOT NULL,
  `list_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `add2group` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sub_type` int(11) DEFAULT NULL,
  `sub_date` timestamp NULL DEFAULT NULL,
  `hashkey` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `digest_freq` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_threads`
--

CREATE TABLE `wp_mailster_threads` (
  `id` int(11) NOT NULL,
  `first_mail_id` int(11) NOT NULL,
  `last_mail_id` int(11) NOT NULL,
  `ref_message_id` varchar(45) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_mailster_users`
--

CREATE TABLE `wp_mailster_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://circum.cl', 'yes'),
(2, 'home', 'http://circum.cl', 'yes'),
(3, 'blogname', 'Circum', 'yes'),
(4, 'blogdescription', 'Sabemos para quienes trabajamos', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'guidoriosciaffaroni@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:264:{s:46:\"um-download/([^/]+)/([^/]+)/([^/]+)/([^/]+)/?$\";s:111:\"index.php?um_action=download&um_form=$matches[1]&um_field=$matches[2]&um_user=$matches[3]&um_verify=$matches[4]\";s:15:\"user/([^/]+)/?$\";s:40:\"index.php?page_id=19&um_user=$matches[1]\";s:17:\"account/([^/]+)?$\";s:39:\"index.php?page_id=24&um_tab=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"ticket/?$\";s:26:\"index.php?post_type=ticket\";s:39:\"ticket/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=ticket&feed=$matches[1]\";s:34:\"ticket/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=ticket&feed=$matches[1]\";s:26:\"ticket/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=ticket&paged=$matches[1]\";s:12:\"dashboard/?$\";s:26:\"index.php?action=dashboard\";s:8:\"login/?$\";s:37:\"index.php?action=login&pagename=login\";s:9:\"logout/?$\";s:39:\"index.php?action=logout&pagename=logout\";s:11:\"register/?$\";s:43:\"index.php?action=register&pagename=register\";s:15:\"lostpassword/?$\";s:29:\"index.php?action=lostpassword\";s:12:\"resetpass/?$\";s:26:\"index.php?action=resetpass\";s:16:\"confirmaction/?$\";s:30:\"index.php?action=confirmaction\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/um-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&um-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/um-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&um-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"um_form/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"um_form/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"um_form/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"um_form/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"um_form/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"um_form/([^/]+)/embed/?$\";s:40:\"index.php?um_form=$matches[1]&embed=true\";s:28:\"um_form/([^/]+)/trackback/?$\";s:34:\"index.php?um_form=$matches[1]&tb=1\";s:36:\"um_form/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&paged=$matches[2]\";s:43:\"um_form/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?um_form=$matches[1]&cpage=$matches[2]\";s:33:\"um_form/([^/]+)/um-api(/(.*))?/?$\";s:48:\"index.php?um_form=$matches[1]&um-api=$matches[3]\";s:39:\"um_form/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:50:\"um_form/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:32:\"um_form/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?um_form=$matches[1]&page=$matches[2]\";s:24:\"um_form/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"um_form/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"um_form/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"um_form/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"um_form/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"um_directory/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"um_directory/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"um_directory/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"um_directory/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"um_directory/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"um_directory/([^/]+)/embed/?$\";s:45:\"index.php?um_directory=$matches[1]&embed=true\";s:33:\"um_directory/([^/]+)/trackback/?$\";s:39:\"index.php?um_directory=$matches[1]&tb=1\";s:41:\"um_directory/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&paged=$matches[2]\";s:48:\"um_directory/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?um_directory=$matches[1]&cpage=$matches[2]\";s:38:\"um_directory/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?um_directory=$matches[1]&um-api=$matches[3]\";s:44:\"um_directory/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"um_directory/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"um_directory/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?um_directory=$matches[1]&page=$matches[2]\";s:29:\"um_directory/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"um_directory/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"um_directory/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"um_directory/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"um_directory/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"ticket/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"ticket/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"ticket/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"ticket/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"ticket/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"ticket/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"ticket/([^/]+)/embed/?$\";s:39:\"index.php?ticket=$matches[1]&embed=true\";s:27:\"ticket/([^/]+)/trackback/?$\";s:33:\"index.php?ticket=$matches[1]&tb=1\";s:47:\"ticket/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?ticket=$matches[1]&feed=$matches[2]\";s:42:\"ticket/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?ticket=$matches[1]&feed=$matches[2]\";s:35:\"ticket/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?ticket=$matches[1]&paged=$matches[2]\";s:42:\"ticket/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?ticket=$matches[1]&cpage=$matches[2]\";s:32:\"ticket/([^/]+)/um-api(/(.*))?/?$\";s:47:\"index.php?ticket=$matches[1]&um-api=$matches[3]\";s:38:\"ticket/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:49:\"ticket/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:31:\"ticket/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?ticket=$matches[1]&page=$matches[2]\";s:23:\"ticket/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"ticket/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"ticket/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"ticket/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"ticket/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"ticket/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"ticket_reply/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"ticket_reply/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"ticket_reply/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"ticket_reply/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"ticket_reply/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"ticket_reply/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"ticket_reply/([^/]+)/embed/?$\";s:45:\"index.php?ticket_reply=$matches[1]&embed=true\";s:33:\"ticket_reply/([^/]+)/trackback/?$\";s:39:\"index.php?ticket_reply=$matches[1]&tb=1\";s:41:\"ticket_reply/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?ticket_reply=$matches[1]&paged=$matches[2]\";s:48:\"ticket_reply/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?ticket_reply=$matches[1]&cpage=$matches[2]\";s:38:\"ticket_reply/([^/]+)/um-api(/(.*))?/?$\";s:53:\"index.php?ticket_reply=$matches[1]&um-api=$matches[3]\";s:44:\"ticket_reply/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:55:\"ticket_reply/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:37:\"ticket_reply/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?ticket_reply=$matches[1]&page=$matches[2]\";s:29:\"ticket_reply/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"ticket_reply/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"ticket_reply/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"ticket_reply/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"ticket_reply/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"ticket_reply/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"ticket_history/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"ticket_history/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"ticket_history/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"ticket_history/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"ticket_history/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"ticket_history/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"ticket_history/([^/]+)/embed/?$\";s:47:\"index.php?ticket_history=$matches[1]&embed=true\";s:35:\"ticket_history/([^/]+)/trackback/?$\";s:41:\"index.php?ticket_history=$matches[1]&tb=1\";s:43:\"ticket_history/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?ticket_history=$matches[1]&paged=$matches[2]\";s:50:\"ticket_history/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?ticket_history=$matches[1]&cpage=$matches[2]\";s:40:\"ticket_history/([^/]+)/um-api(/(.*))?/?$\";s:55:\"index.php?ticket_history=$matches[1]&um-api=$matches[3]\";s:46:\"ticket_history/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:57:\"ticket_history/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:39:\"ticket_history/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?ticket_history=$matches[1]&page=$matches[2]\";s:31:\"ticket_history/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"ticket_history/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"ticket_history/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"ticket_history/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"ticket_history/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"ticket_history/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"ticket_log/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"ticket_log/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"ticket_log/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"ticket_log/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"ticket_log/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"ticket_log/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"ticket_log/([^/]+)/embed/?$\";s:43:\"index.php?ticket_log=$matches[1]&embed=true\";s:31:\"ticket_log/([^/]+)/trackback/?$\";s:37:\"index.php?ticket_log=$matches[1]&tb=1\";s:39:\"ticket_log/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?ticket_log=$matches[1]&paged=$matches[2]\";s:46:\"ticket_log/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?ticket_log=$matches[1]&cpage=$matches[2]\";s:36:\"ticket_log/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?ticket_log=$matches[1]&um-api=$matches[3]\";s:42:\"ticket_log/[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:53:\"ticket_log/[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:35:\"ticket_log/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?ticket_log=$matches[1]&page=$matches[2]\";s:27:\"ticket_log/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"ticket_log/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"ticket_log/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"ticket_log/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"ticket_log/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"ticket_log/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:49:\"Etiqueta/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ticket-tag=$matches[1]&feed=$matches[2]\";s:44:\"Etiqueta/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?ticket-tag=$matches[1]&feed=$matches[2]\";s:25:\"Etiqueta/([^/]+)/embed/?$\";s:43:\"index.php?ticket-tag=$matches[1]&embed=true\";s:37:\"Etiqueta/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?ticket-tag=$matches[1]&paged=$matches[2]\";s:19:\"Etiqueta/([^/]+)/?$\";s:32:\"index.php?ticket-tag=$matches[1]\";s:51:\"department/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?department=$matches[1]&feed=$matches[2]\";s:46:\"department/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?department=$matches[1]&feed=$matches[2]\";s:27:\"department/([^/]+)/embed/?$\";s:43:\"index.php?department=$matches[1]&embed=true\";s:39:\"department/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?department=$matches[1]&paged=$matches[2]\";s:21:\"department/([^/]+)/?$\";s:32:\"index.php?department=$matches[1]\";s:56:\"ticket_priority/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?ticket_priority=$matches[1]&feed=$matches[2]\";s:51:\"ticket_priority/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?ticket_priority=$matches[1]&feed=$matches[2]\";s:32:\"ticket_priority/([^/]+)/embed/?$\";s:48:\"index.php?ticket_priority=$matches[1]&embed=true\";s:44:\"ticket_priority/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?ticket_priority=$matches[1]&paged=$matches[2]\";s:26:\"ticket_priority/([^/]+)/?$\";s:37:\"index.php?ticket_priority=$matches[1]\";s:55:\"ticket_channel/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?ticket_channel=$matches[1]&feed=$matches[2]\";s:50:\"ticket_channel/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?ticket_channel=$matches[1]&feed=$matches[2]\";s:31:\"ticket_channel/([^/]+)/embed/?$\";s:47:\"index.php?ticket_channel=$matches[1]&embed=true\";s:43:\"ticket_channel/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?ticket_channel=$matches[1]&paged=$matches[2]\";s:25:\"ticket_channel/([^/]+)/?$\";s:36:\"index.php?ticket_channel=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/um-api(/(.*))?/?$\";s:29:\"index.php?&um-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/um-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&um-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/um-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&um-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&um-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/um-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&um-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/um-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&um-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/um-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&um-api=$matches[3]\";s:31:\".?.+?/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/um-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&um-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/um-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&um-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:35:\"awesome-support/awesome-support.php\";i:2;s:31:\"backup-backup/backup-backup.php\";i:3;s:25:\"clever-fox/clever-fox.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";i:6;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:7;s:33:\"theme-my-login/theme-my-login.php\";i:8;s:35:\"ultimate-member/ultimate-member.php\";i:9;s:29:\"wp-mail-smtp/wp_mail_smtp.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:69:\"/home/www/circum.cl/wp-content/plugins/advanced-custom-fields/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'kikin', 'yes'),
(41, 'stylesheet', 'kikin', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:3:{i:1;a:1:{s:5:\"title\";s:10:\"Categories\";}i:2;a:1:{s:5:\"title\";s:10:\"Categories\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:4:{i:1;a:2:{s:5:\"title\";s:0:\"\";s:4:\"text\";s:330:\"<div class=\"footer-logo\"><img src=\"http://circum.cl/wp-content/plugins/clever-fox/inc/avail/images/logo.png\" alt=\"\"></div>\r\n                        <p>There are many variations of dummy passages of Lorem Ipsum a available, but the majority have suffered that is alteration in some that form  injected humour or randomised.</p>\r\n		\";}i:2;a:1:{s:5:\"title\";s:12:\"Recent Posts\";}i:3;a:1:{s:5:\"title\";s:10:\"Categories\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:31:\"backup-backup/backup-backup.php\";s:21:\"bmi_uninstall_handler\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1681235215', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:9:{s:13:\"administrator\";a:16:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:105:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_security\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"delete_ticket\";b:1;s:12:\"delete_reply\";b:1;s:21:\"delete_private_ticket\";b:1;s:19:\"delete_other_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:16:\"settings_tickets\";b:1;s:15:\"ticket_taxonomy\";b:1;s:13:\"create_ticket\";b:1;s:12:\"attach_files\";b:1;s:23:\"view_unassigned_tickets\";b:1;s:35:\"manage_licenses_for_awesome_support\";b:1;s:26:\"administer_awesome_support\";b:1;s:18:\"ticket_manage_tags\";b:1;s:16:\"ticket_edit_tags\";b:1;s:18:\"ticket_delete_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:20:\"ticket_edit_products\";b:1;s:22:\"ticket_delete_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:23:\"ticket_edit_departments\";b:1;s:25:\"ticket_delete_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_edit_priorities\";b:1;s:24:\"ticket_delete_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:20:\"ticket_edit_channels\";b:1;s:22:\"ticket_delete_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;s:23:\"ticket_edit_ticket_type\";b:1;s:25:\"ticket_delete_ticket_type\";b:1;s:30:\"ticket_manage_ticket_templates\";b:1;s:13:\"config_postie\";b:1;s:15:\"post_via_postie\";b:1;s:12:\"cfdb7_access\";b:1;}s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:6:\"editor\";a:16:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:6:\"author\";a:16:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:11:\"contributor\";a:16:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:10:\"subscriber\";a:16:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:12:\"wpas_manager\";a:2:{s:4:\"name\";s:21:\"Supervisor de soporte\";s:12:\"capabilities\";a:75:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"delete_ticket\";b:1;s:12:\"delete_reply\";b:1;s:21:\"delete_private_ticket\";b:1;s:19:\"delete_other_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:16:\"settings_tickets\";b:1;s:15:\"ticket_taxonomy\";b:1;s:13:\"create_ticket\";b:1;s:12:\"attach_files\";b:1;s:16:\"view_all_tickets\";b:1;s:23:\"view_unassigned_tickets\";b:1;s:35:\"manage_licenses_for_awesome_support\";b:1;s:26:\"administer_awesome_support\";b:1;s:18:\"ticket_manage_tags\";b:1;s:16:\"ticket_edit_tags\";b:1;s:18:\"ticket_delete_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:20:\"ticket_edit_products\";b:1;s:22:\"ticket_delete_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:23:\"ticket_edit_departments\";b:1;s:25:\"ticket_delete_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_edit_priorities\";b:1;s:24:\"ticket_delete_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:20:\"ticket_edit_channels\";b:1;s:22:\"ticket_delete_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;s:23:\"ticket_edit_ticket_type\";b:1;s:25:\"ticket_delete_ticket_type\";b:1;s:30:\"ticket_manage_ticket_templates\";b:1;}}s:20:\"wpas_support_manager\";a:2:{s:4:\"name\";s:19:\"Director de soporte\";s:12:\"capabilities\";a:43:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"delete_ticket\";b:1;s:12:\"delete_reply\";b:1;s:21:\"delete_private_ticket\";b:1;s:19:\"delete_other_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:16:\"settings_tickets\";b:1;s:15:\"ticket_taxonomy\";b:1;s:13:\"create_ticket\";b:1;s:12:\"attach_files\";b:1;s:16:\"view_all_tickets\";b:1;s:23:\"view_unassigned_tickets\";b:1;s:35:\"manage_licenses_for_awesome_support\";b:1;s:26:\"administer_awesome_support\";b:1;s:18:\"ticket_manage_tags\";b:1;s:16:\"ticket_edit_tags\";b:1;s:18:\"ticket_delete_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:20:\"ticket_edit_products\";b:1;s:22:\"ticket_delete_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:23:\"ticket_edit_departments\";b:1;s:25:\"ticket_delete_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_edit_priorities\";b:1;s:24:\"ticket_delete_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:20:\"ticket_edit_channels\";b:1;s:22:\"ticket_delete_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;s:23:\"ticket_edit_ticket_type\";b:1;s:25:\"ticket_delete_ticket_type\";b:1;s:30:\"ticket_manage_ticket_templates\";b:1;}}s:10:\"wpas_agent\";a:2:{s:4:\"name\";s:17:\"Agente de soporte\";s:12:\"capabilities\";a:29:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:13:\"create_ticket\";b:1;s:12:\"delete_reply\";b:1;s:12:\"attach_files\";b:1;s:18:\"ticket_manage_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;}}s:9:\"wpas_user\";a:2:{s:4:\"name\";s:18:\"Usuario de soporte\";s:12:\"capabilities\";a:7:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:11:\"view_ticket\";b:1;s:13:\"create_ticket\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:12:\"attach_files\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '7', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:14:{i:0;s:10:\"archives-2\";i:1;s:8:\"search-2\";i:2;s:6:\"text-2\";i:3;s:6:\"text-3\";i:4;s:12:\"categories-2\";i:5;s:7:\"block-2\";i:6;s:7:\"block-3\";i:7;s:7:\"block-4\";i:8;s:7:\"block-5\";i:9;s:7:\"block-6\";i:10;s:6:\"text-1\";i:11;s:12:\"categories-1\";i:12;s:10:\"archives-1\";i:13;s:8:\"search-1\";}s:19:\"primary-widget-area\";a:3:{i:0;s:8:\"search-1\";i:1;s:14:\"recent-posts-1\";i:2;s:10:\"archives-1\";}s:13:\"array_version\";i:3;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(105, 'cron', 'a:12:{i:1672594824;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1672595216;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1672595226;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1672595227;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672595630;a:1:{s:22:\"wp_session_database_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1672598072;a:3:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1672603681;a:1:{s:20:\"rsssl_every_day_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"rsssl_daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1672754216;a:1:{s:21:\"rsssl_every_week_hook\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"rsssl_weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1672943672;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1673027216;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1677571200;a:1:{s:23:\"bmi_do_backup_right_now\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:3:{i:1;a:1:{s:5:\"title\";s:8:\"Archives\";}i:2;a:1:{s:5:\"title\";s:8:\"Archives\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:3:{i:1;a:1:{s:5:\"title\";s:6:\"Search\";}i:2;a:1:{s:5:\"title\";s:6:\"Search\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'nonce_key', 'Mt*^fg!-r[Y@ZSUwu&?*7HoQd_(c)64e|qVQ`vygsru;sde]-v!Q:i0dX{o&1h<!', 'no'),
(116, 'nonce_salt', 'K~xa?X[YTC<mohc~ZrDUmm([([un.7_u2eOa?7pmJAvimT=!H}fQwubZ@Bn*yat=', 'no'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:24:\"Solicitud HTTPS fallida.\";}}', 'yes'),
(128, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1665683254;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(135, 'auth_key', 't#b`<>v.K2?5-*&tt6semk.!:(_@@`6M([7/W3c&v;P3 *rJ&=UA2V^3qyN#,e93', 'no'),
(136, 'auth_salt', '3en /b|ng7mw5DGV,s1r.A}rgnPG]]~p5wHq:uOs8SqxE<|US}gE5 -1=XpS2>sA', 'no'),
(137, 'logged_in_key', 'kX;&oc7hMmC%L61!Atn<tW`cJj~,/3.5Oajapt|7mFzclcGSR0w])A]r+rS/T##r', 'no'),
(138, 'logged_in_salt', '~`f?g8~..l2UA+`GUb )7T=Y9w$r=4MEFI9k$EL]Mz@%!0v#}); TF*WK9aTa:XP', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(160, 'current_theme', 'kikin', 'yes'),
(161, 'theme_mods_avail', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1667283090;s:4:\"data\";a:2:{s:21:\"avril-sidebar-primary\";a:3:{i:0;s:8:\"search-1\";i:1;s:14:\"recent-posts-1\";i:2;s:10:\"archives-1\";}s:24:\"avril-footer-widget-area\";a:4:{i:0;s:6:\"text-1\";i:1;s:12:\"categories-1\";i:2;s:10:\"archives-1\";i:3;s:8:\"search-1\";}}}}', 'yes'),
(162, 'theme_switched', '', 'yes'),
(164, 'avril_media_id', 'a:1:{i:0;i:5;}', 'yes'),
(165, 'site_logo', '5', 'yes'),
(166, 'item_details_page', 'Done', 'yes'),
(167, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(168, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(178, 'finished_updating_comment_type', '1', 'yes'),
(184, 'dismissed-get_started', '1', 'yes'),
(260, 'recently_activated', 'a:2:{s:27:\"wp-mailster/wp-mailster.php\";i:1672420916;s:17:\"postie/postie.php\";i:1672420572;}', 'yes'),
(268, 'um_last_version_upgrade', '2.5.0', 'yes'),
(269, 'um_first_activation_date', '1665686045', 'yes'),
(270, 'um_version', '2.5.0', 'yes'),
(271, '__ultimatemember_sitekey', 'circum.cl-BtHrrVtQJvJQQEGH6ZbV', 'yes'),
(272, 'um_is_installed', '1', 'yes'),
(273, 'um_core_forms', 'a:3:{s:8:\"register\";i:15;s:5:\"login\";i:16;s:7:\"profile\";i:17;}', 'yes'),
(274, 'um_core_directories', 'a:1:{s:7:\"members\";i:18;}', 'yes'),
(275, 'um_options', 'a:174:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:31:\"disable_restriction_pre_queries\";i:0;s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:18:\"require_strongpass\";i:0;s:18:\"password_min_chars\";i:8;s:18:\"password_max_chars\";i:30;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:151:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account enter your password below.\";s:36:\"delete_account_no_pass_required_text\";s:152:\"Are you sure you want to delete your account? This will erase all of your account data from the site. To delete your account, click on the button below.\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:24:\"account_general_password\";i:0;s:25:\"account_hide_in_directory\";i:1;s:33:\"account_hide_in_directory_default\";s:2:\"No\";s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:29:\"restricted_post_title_replace\";i:1;s:28:\"restricted_access_post_title\";s:18:\"Restricted content\";s:25:\"restricted_access_message\";s:0:\"\";s:17:\"restricted_blocks\";i:0;s:13:\"enable_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:24:\"allowed_choice_callbacks\";s:0:\"\";s:26:\"allow_url_redirect_confirm\";i:1;s:14:\"default_avatar\";a:5:{s:2:\"id\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:3:\"url\";s:0:\"\";}s:13:\"default_cover\";a:5:{s:2:\"id\";s:0:\"\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";s:3:\"url\";s:0:\"\";}s:28:\"disable_profile_photo_upload\";b:0;s:21:\"profile_show_metaicon\";b:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:29:\"guidoriosciaffaroni@gmail.com\";s:9:\"mail_from\";s:6:\"Circum\";s:14:\"mail_from_addr\";s:29:\"guidoriosciaffaroni@gmail.com\";s:10:\"email_html\";i:1;s:25:\"image_orientation_by_exif\";i:0;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"rest_api_version\";s:3:\"2.0\";s:26:\"member_directory_own_table\";i:0;s:21:\"profile_show_html_bio\";b:0;s:15:\"profile_noindex\";i:0;s:27:\"activation_link_expiry_time\";s:0:\"\";s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";i:19;s:10:\"core_login\";i:20;s:13:\"core_register\";i:21;s:12:\"core_members\";i:22;s:11:\"core_logout\";i:23;s:12:\"core_account\";i:24;s:19:\"core_password-reset\";i:25;s:17:\"profile_show_name\";b:0;s:25:\"profile_show_social_links\";b:0;s:16:\"profile_show_bio\";b:0;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";b:1;s:22:\"profile_empty_text_emo\";b:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:28:\"profile_disable_photo_upload\";i:0;s:17:\"profile_photosize\";i:190;s:21:\"profile_cover_enabled\";b:1;s:17:\"profile_coversize\";i:300;s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:14:\"Update Profile\";s:21:\"profile_secondary_btn\";b:1;s:26:\"profile_secondary_btn_word\";s:6:\"Cancel\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:8:\"Register\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:5:\"Login\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:5:\"right\";s:11:\"login_icons\";s:3:\"off\";s:22:\"login_primary_btn_word\";s:8:\"Ingresar\";s:22:\"login_forgot_pass_link\";b:0;s:21:\"login_show_rememberme\";b:0;s:19:\"login_secondary_btn\";b:0;s:24:\"login_secondary_btn_word\";s:8:\"Register\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:21:\"{total_users} Members\";s:23:\"directory_header_single\";s:20:\"{total_users} Member\";s:14:\"pages_settings\";s:1:\"1\";}', 'yes'),
(276, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(277, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(278, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(279, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(280, 'um_role_administrator_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:1;s:24:\"_um_can_not_see_adminbar\";i:0;s:21:\"_um_can_edit_everyone\";i:1;s:23:\"_um_can_delete_everyone\";i:1;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:20:\"_um_default_homepage\";i:1;s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:1;s:30:\"_um_can_access_private_profile\";i:1;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(284, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(305, 'WPLANG', 'es_ES', 'yes'),
(306, 'new_admin_email', 'guidoriosciaffaroni@gmail.com', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(360, 'um_cache_fonticons', 'a:1283:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-wordpress\";i:689;s:32:\"um-icon-social-wordpress-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:21:\"um-faicon-sticky-note\";i:734;s:15:\"um-faicon-glass\";i:735;s:15:\"um-faicon-music\";i:736;s:16:\"um-faicon-search\";i:737;s:20:\"um-faicon-envelope-o\";i:738;s:15:\"um-faicon-heart\";i:739;s:14:\"um-faicon-star\";i:740;s:16:\"um-faicon-star-o\";i:741;s:14:\"um-faicon-user\";i:742;s:14:\"um-faicon-film\";i:743;s:18:\"um-faicon-th-large\";i:744;s:12:\"um-faicon-th\";i:745;s:17:\"um-faicon-th-list\";i:746;s:15:\"um-faicon-check\";i:747;s:16:\"um-faicon-remove\";i:748;s:15:\"um-faicon-close\";i:749;s:15:\"um-faicon-times\";i:750;s:21:\"um-faicon-search-plus\";i:751;s:22:\"um-faicon-search-minus\";i:752;s:19:\"um-faicon-power-off\";i:753;s:16:\"um-faicon-signal\";i:754;s:14:\"um-faicon-gear\";i:755;s:13:\"um-faicon-cog\";i:756;s:17:\"um-faicon-trash-o\";i:757;s:14:\"um-faicon-home\";i:758;s:16:\"um-faicon-file-o\";i:759;s:17:\"um-faicon-clock-o\";i:760;s:14:\"um-faicon-road\";i:761;s:18:\"um-faicon-download\";i:762;s:29:\"um-faicon-arrow-circle-o-down\";i:763;s:27:\"um-faicon-arrow-circle-o-up\";i:764;s:15:\"um-faicon-inbox\";i:765;s:23:\"um-faicon-play-circle-o\";i:766;s:22:\"um-faicon-rotate-right\";i:767;s:16:\"um-faicon-repeat\";i:768;s:17:\"um-faicon-refresh\";i:769;s:18:\"um-faicon-list-alt\";i:770;s:14:\"um-faicon-lock\";i:771;s:14:\"um-faicon-flag\";i:772;s:20:\"um-faicon-headphones\";i:773;s:20:\"um-faicon-volume-off\";i:774;s:21:\"um-faicon-volume-down\";i:775;s:19:\"um-faicon-volume-up\";i:776;s:16:\"um-faicon-qrcode\";i:777;s:17:\"um-faicon-barcode\";i:778;s:13:\"um-faicon-tag\";i:779;s:14:\"um-faicon-tags\";i:780;s:14:\"um-faicon-book\";i:781;s:18:\"um-faicon-bookmark\";i:782;s:15:\"um-faicon-print\";i:783;s:16:\"um-faicon-camera\";i:784;s:14:\"um-faicon-font\";i:785;s:14:\"um-faicon-bold\";i:786;s:16:\"um-faicon-italic\";i:787;s:21:\"um-faicon-text-height\";i:788;s:20:\"um-faicon-text-width\";i:789;s:20:\"um-faicon-align-left\";i:790;s:22:\"um-faicon-align-center\";i:791;s:21:\"um-faicon-align-right\";i:792;s:23:\"um-faicon-align-justify\";i:793;s:14:\"um-faicon-list\";i:794;s:16:\"um-faicon-dedent\";i:795;s:17:\"um-faicon-outdent\";i:796;s:16:\"um-faicon-indent\";i:797;s:22:\"um-faicon-video-camera\";i:798;s:15:\"um-faicon-photo\";i:799;s:15:\"um-faicon-image\";i:800;s:19:\"um-faicon-picture-o\";i:801;s:16:\"um-faicon-pencil\";i:802;s:20:\"um-faicon-map-marker\";i:803;s:16:\"um-faicon-adjust\";i:804;s:14:\"um-faicon-tint\";i:805;s:14:\"um-faicon-edit\";i:806;s:25:\"um-faicon-pencil-square-o\";i:807;s:24:\"um-faicon-share-square-o\";i:808;s:24:\"um-faicon-check-square-o\";i:809;s:16:\"um-faicon-arrows\";i:810;s:23:\"um-faicon-step-backward\";i:811;s:23:\"um-faicon-fast-backward\";i:812;s:18:\"um-faicon-backward\";i:813;s:14:\"um-faicon-play\";i:814;s:15:\"um-faicon-pause\";i:815;s:14:\"um-faicon-stop\";i:816;s:17:\"um-faicon-forward\";i:817;s:22:\"um-faicon-fast-forward\";i:818;s:22:\"um-faicon-step-forward\";i:819;s:15:\"um-faicon-eject\";i:820;s:22:\"um-faicon-chevron-left\";i:821;s:23:\"um-faicon-chevron-right\";i:822;s:21:\"um-faicon-plus-circle\";i:823;s:22:\"um-faicon-minus-circle\";i:824;s:22:\"um-faicon-times-circle\";i:825;s:22:\"um-faicon-check-circle\";i:826;s:25:\"um-faicon-question-circle\";i:827;s:21:\"um-faicon-info-circle\";i:828;s:20:\"um-faicon-crosshairs\";i:829;s:24:\"um-faicon-times-circle-o\";i:830;s:24:\"um-faicon-check-circle-o\";i:831;s:13:\"um-faicon-ban\";i:832;s:20:\"um-faicon-arrow-left\";i:833;s:21:\"um-faicon-arrow-right\";i:834;s:18:\"um-faicon-arrow-up\";i:835;s:20:\"um-faicon-arrow-down\";i:836;s:22:\"um-faicon-mail-forward\";i:837;s:15:\"um-faicon-share\";i:838;s:16:\"um-faicon-expand\";i:839;s:18:\"um-faicon-compress\";i:840;s:14:\"um-faicon-plus\";i:841;s:15:\"um-faicon-minus\";i:842;s:18:\"um-faicon-asterisk\";i:843;s:28:\"um-faicon-exclamation-circle\";i:844;s:14:\"um-faicon-gift\";i:845;s:14:\"um-faicon-leaf\";i:846;s:14:\"um-faicon-fire\";i:847;s:13:\"um-faicon-eye\";i:848;s:19:\"um-faicon-eye-slash\";i:849;s:17:\"um-faicon-warning\";i:850;s:30:\"um-faicon-exclamation-triangle\";i:851;s:15:\"um-faicon-plane\";i:852;s:18:\"um-faicon-calendar\";i:853;s:16:\"um-faicon-random\";i:854;s:17:\"um-faicon-comment\";i:855;s:16:\"um-faicon-magnet\";i:856;s:20:\"um-faicon-chevron-up\";i:857;s:22:\"um-faicon-chevron-down\";i:858;s:17:\"um-faicon-retweet\";i:859;s:23:\"um-faicon-shopping-cart\";i:860;s:16:\"um-faicon-folder\";i:861;s:21:\"um-faicon-folder-open\";i:862;s:18:\"um-faicon-arrows-v\";i:863;s:18:\"um-faicon-arrows-h\";i:864;s:21:\"um-faicon-bar-chart-o\";i:865;s:19:\"um-faicon-bar-chart\";i:866;s:24:\"um-faicon-twitter-square\";i:867;s:25:\"um-faicon-facebook-square\";i:868;s:22:\"um-faicon-camera-retro\";i:869;s:13:\"um-faicon-key\";i:870;s:15:\"um-faicon-gears\";i:871;s:14:\"um-faicon-cogs\";i:872;s:18:\"um-faicon-comments\";i:873;s:21:\"um-faicon-thumbs-o-up\";i:874;s:23:\"um-faicon-thumbs-o-down\";i:875;s:19:\"um-faicon-star-half\";i:876;s:17:\"um-faicon-heart-o\";i:877;s:18:\"um-faicon-sign-out\";i:878;s:25:\"um-faicon-linkedin-square\";i:879;s:20:\"um-faicon-thumb-tack\";i:880;s:23:\"um-faicon-external-link\";i:881;s:17:\"um-faicon-sign-in\";i:882;s:16:\"um-faicon-trophy\";i:883;s:23:\"um-faicon-github-square\";i:884;s:16:\"um-faicon-upload\";i:885;s:17:\"um-faicon-lemon-o\";i:886;s:15:\"um-faicon-phone\";i:887;s:18:\"um-faicon-square-o\";i:888;s:20:\"um-faicon-bookmark-o\";i:889;s:22:\"um-faicon-phone-square\";i:890;s:17:\"um-faicon-twitter\";i:891;s:18:\"um-faicon-facebook\";i:892;s:16:\"um-faicon-github\";i:893;s:16:\"um-faicon-unlock\";i:894;s:21:\"um-faicon-credit-card\";i:895;s:13:\"um-faicon-rss\";i:896;s:15:\"um-faicon-hdd-o\";i:897;s:18:\"um-faicon-bullhorn\";i:898;s:14:\"um-faicon-bell\";i:899;s:21:\"um-faicon-certificate\";i:900;s:22:\"um-faicon-hand-o-right\";i:901;s:21:\"um-faicon-hand-o-left\";i:902;s:19:\"um-faicon-hand-o-up\";i:903;s:21:\"um-faicon-hand-o-down\";i:904;s:27:\"um-faicon-arrow-circle-left\";i:905;s:28:\"um-faicon-arrow-circle-right\";i:906;s:25:\"um-faicon-arrow-circle-up\";i:907;s:27:\"um-faicon-arrow-circle-down\";i:908;s:15:\"um-faicon-globe\";i:909;s:16:\"um-faicon-wrench\";i:910;s:15:\"um-faicon-tasks\";i:911;s:16:\"um-faicon-filter\";i:912;s:19:\"um-faicon-briefcase\";i:913;s:20:\"um-faicon-arrows-alt\";i:914;s:15:\"um-faicon-group\";i:915;s:15:\"um-faicon-users\";i:916;s:15:\"um-faicon-chain\";i:917;s:14:\"um-faicon-link\";i:918;s:15:\"um-faicon-cloud\";i:919;s:15:\"um-faicon-flask\";i:920;s:13:\"um-faicon-cut\";i:921;s:18:\"um-faicon-scissors\";i:922;s:14:\"um-faicon-copy\";i:923;s:17:\"um-faicon-files-o\";i:924;s:19:\"um-faicon-paperclip\";i:925;s:14:\"um-faicon-save\";i:926;s:18:\"um-faicon-floppy-o\";i:927;s:16:\"um-faicon-square\";i:928;s:17:\"um-faicon-navicon\";i:929;s:17:\"um-faicon-reorder\";i:930;s:14:\"um-faicon-bars\";i:931;s:17:\"um-faicon-list-ul\";i:932;s:17:\"um-faicon-list-ol\";i:933;s:23:\"um-faicon-strikethrough\";i:934;s:19:\"um-faicon-underline\";i:935;s:15:\"um-faicon-table\";i:936;s:15:\"um-faicon-magic\";i:937;s:15:\"um-faicon-truck\";i:938;s:19:\"um-faicon-pinterest\";i:939;s:26:\"um-faicon-pinterest-square\";i:940;s:28:\"um-faicon-google-plus-square\";i:941;s:21:\"um-faicon-google-plus\";i:942;s:15:\"um-faicon-money\";i:943;s:20:\"um-faicon-caret-down\";i:944;s:18:\"um-faicon-caret-up\";i:945;s:20:\"um-faicon-caret-left\";i:946;s:21:\"um-faicon-caret-right\";i:947;s:17:\"um-faicon-columns\";i:948;s:18:\"um-faicon-unsorted\";i:949;s:14:\"um-faicon-sort\";i:950;s:19:\"um-faicon-sort-down\";i:951;s:19:\"um-faicon-sort-desc\";i:952;s:17:\"um-faicon-sort-up\";i:953;s:18:\"um-faicon-sort-asc\";i:954;s:18:\"um-faicon-envelope\";i:955;s:18:\"um-faicon-linkedin\";i:956;s:21:\"um-faicon-rotate-left\";i:957;s:14:\"um-faicon-undo\";i:958;s:15:\"um-faicon-legal\";i:959;s:15:\"um-faicon-gavel\";i:960;s:19:\"um-faicon-dashboard\";i:961;s:20:\"um-faicon-tachometer\";i:962;s:19:\"um-faicon-comment-o\";i:963;s:20:\"um-faicon-comments-o\";i:964;s:15:\"um-faicon-flash\";i:965;s:14:\"um-faicon-bolt\";i:966;s:17:\"um-faicon-sitemap\";i:967;s:18:\"um-faicon-umbrella\";i:968;s:15:\"um-faicon-paste\";i:969;s:19:\"um-faicon-clipboard\";i:970;s:21:\"um-faicon-lightbulb-o\";i:971;s:18:\"um-faicon-exchange\";i:972;s:24:\"um-faicon-cloud-download\";i:973;s:22:\"um-faicon-cloud-upload\";i:974;s:17:\"um-faicon-user-md\";i:975;s:21:\"um-faicon-stethoscope\";i:976;s:18:\"um-faicon-suitcase\";i:977;s:16:\"um-faicon-bell-o\";i:978;s:16:\"um-faicon-coffee\";i:979;s:17:\"um-faicon-cutlery\";i:980;s:21:\"um-faicon-file-text-o\";i:981;s:20:\"um-faicon-building-o\";i:982;s:20:\"um-faicon-hospital-o\";i:983;s:19:\"um-faicon-ambulance\";i:984;s:16:\"um-faicon-medkit\";i:985;s:21:\"um-faicon-fighter-jet\";i:986;s:14:\"um-faicon-beer\";i:987;s:18:\"um-faicon-h-square\";i:988;s:21:\"um-faicon-plus-square\";i:989;s:27:\"um-faicon-angle-double-left\";i:990;s:28:\"um-faicon-angle-double-right\";i:991;s:25:\"um-faicon-angle-double-up\";i:992;s:27:\"um-faicon-angle-double-down\";i:993;s:20:\"um-faicon-angle-left\";i:994;s:21:\"um-faicon-angle-right\";i:995;s:18:\"um-faicon-angle-up\";i:996;s:20:\"um-faicon-angle-down\";i:997;s:17:\"um-faicon-desktop\";i:998;s:16:\"um-faicon-laptop\";i:999;s:16:\"um-faicon-tablet\";i:1000;s:22:\"um-faicon-mobile-phone\";i:1001;s:16:\"um-faicon-mobile\";i:1002;s:18:\"um-faicon-circle-o\";i:1003;s:20:\"um-faicon-quote-left\";i:1004;s:21:\"um-faicon-quote-right\";i:1005;s:17:\"um-faicon-spinner\";i:1006;s:16:\"um-faicon-circle\";i:1007;s:20:\"um-faicon-mail-reply\";i:1008;s:15:\"um-faicon-reply\";i:1009;s:20:\"um-faicon-github-alt\";i:1010;s:18:\"um-faicon-folder-o\";i:1011;s:23:\"um-faicon-folder-open-o\";i:1012;s:17:\"um-faicon-smile-o\";i:1013;s:17:\"um-faicon-frown-o\";i:1014;s:15:\"um-faicon-meh-o\";i:1015;s:17:\"um-faicon-gamepad\";i:1016;s:20:\"um-faicon-keyboard-o\";i:1017;s:16:\"um-faicon-flag-o\";i:1018;s:24:\"um-faicon-flag-checkered\";i:1019;s:18:\"um-faicon-terminal\";i:1020;s:14:\"um-faicon-code\";i:1021;s:24:\"um-faicon-mail-reply-all\";i:1022;s:19:\"um-faicon-reply-all\";i:1023;s:25:\"um-faicon-star-half-empty\";i:1024;s:24:\"um-faicon-star-half-full\";i:1025;s:21:\"um-faicon-star-half-o\";i:1026;s:24:\"um-faicon-location-arrow\";i:1027;s:14:\"um-faicon-crop\";i:1028;s:19:\"um-faicon-code-fork\";i:1029;s:16:\"um-faicon-unlink\";i:1030;s:22:\"um-faicon-chain-broken\";i:1031;s:18:\"um-faicon-question\";i:1032;s:14:\"um-faicon-info\";i:1033;s:21:\"um-faicon-exclamation\";i:1034;s:21:\"um-faicon-superscript\";i:1035;s:19:\"um-faicon-subscript\";i:1036;s:16:\"um-faicon-eraser\";i:1037;s:22:\"um-faicon-puzzle-piece\";i:1038;s:20:\"um-faicon-microphone\";i:1039;s:26:\"um-faicon-microphone-slash\";i:1040;s:16:\"um-faicon-shield\";i:1041;s:20:\"um-faicon-calendar-o\";i:1042;s:27:\"um-faicon-fire-extinguisher\";i:1043;s:16:\"um-faicon-rocket\";i:1044;s:16:\"um-faicon-maxcdn\";i:1045;s:29:\"um-faicon-chevron-circle-left\";i:1046;s:30:\"um-faicon-chevron-circle-right\";i:1047;s:27:\"um-faicon-chevron-circle-up\";i:1048;s:29:\"um-faicon-chevron-circle-down\";i:1049;s:15:\"um-faicon-html5\";i:1050;s:14:\"um-faicon-css3\";i:1051;s:16:\"um-faicon-anchor\";i:1052;s:20:\"um-faicon-unlock-alt\";i:1053;s:18:\"um-faicon-bullseye\";i:1054;s:20:\"um-faicon-ellipsis-h\";i:1055;s:20:\"um-faicon-ellipsis-v\";i:1056;s:20:\"um-faicon-rss-square\";i:1057;s:21:\"um-faicon-play-circle\";i:1058;s:16:\"um-faicon-ticket\";i:1059;s:22:\"um-faicon-minus-square\";i:1060;s:24:\"um-faicon-minus-square-o\";i:1061;s:18:\"um-faicon-level-up\";i:1062;s:20:\"um-faicon-level-down\";i:1063;s:22:\"um-faicon-check-square\";i:1064;s:23:\"um-faicon-pencil-square\";i:1065;s:30:\"um-faicon-external-link-square\";i:1066;s:22:\"um-faicon-share-square\";i:1067;s:17:\"um-faicon-compass\";i:1068;s:21:\"um-faicon-toggle-down\";i:1069;s:29:\"um-faicon-caret-square-o-down\";i:1070;s:19:\"um-faicon-toggle-up\";i:1071;s:27:\"um-faicon-caret-square-o-up\";i:1072;s:22:\"um-faicon-toggle-right\";i:1073;s:30:\"um-faicon-caret-square-o-right\";i:1074;s:14:\"um-faicon-euro\";i:1075;s:13:\"um-faicon-eur\";i:1076;s:13:\"um-faicon-gbp\";i:1077;s:16:\"um-faicon-dollar\";i:1078;s:13:\"um-faicon-usd\";i:1079;s:15:\"um-faicon-rupee\";i:1080;s:13:\"um-faicon-inr\";i:1081;s:13:\"um-faicon-cny\";i:1082;s:13:\"um-faicon-rmb\";i:1083;s:13:\"um-faicon-yen\";i:1084;s:13:\"um-faicon-jpy\";i:1085;s:15:\"um-faicon-ruble\";i:1086;s:16:\"um-faicon-rouble\";i:1087;s:13:\"um-faicon-rub\";i:1088;s:13:\"um-faicon-won\";i:1089;s:13:\"um-faicon-krw\";i:1090;s:17:\"um-faicon-bitcoin\";i:1091;s:13:\"um-faicon-btc\";i:1092;s:14:\"um-faicon-file\";i:1093;s:19:\"um-faicon-file-text\";i:1094;s:24:\"um-faicon-sort-alpha-asc\";i:1095;s:25:\"um-faicon-sort-alpha-desc\";i:1096;s:25:\"um-faicon-sort-amount-asc\";i:1097;s:26:\"um-faicon-sort-amount-desc\";i:1098;s:26:\"um-faicon-sort-numeric-asc\";i:1099;s:27:\"um-faicon-sort-numeric-desc\";i:1100;s:19:\"um-faicon-thumbs-up\";i:1101;s:21:\"um-faicon-thumbs-down\";i:1102;s:24:\"um-faicon-youtube-square\";i:1103;s:17:\"um-faicon-youtube\";i:1104;s:14:\"um-faicon-xing\";i:1105;s:21:\"um-faicon-xing-square\";i:1106;s:22:\"um-faicon-youtube-play\";i:1107;s:17:\"um-faicon-dropbox\";i:1108;s:24:\"um-faicon-stack-overflow\";i:1109;s:19:\"um-faicon-instagram\";i:1110;s:16:\"um-faicon-flickr\";i:1111;s:13:\"um-faicon-adn\";i:1112;s:19:\"um-faicon-bitbucket\";i:1113;s:26:\"um-faicon-bitbucket-square\";i:1114;s:16:\"um-faicon-tumblr\";i:1115;s:23:\"um-faicon-tumblr-square\";i:1116;s:25:\"um-faicon-long-arrow-down\";i:1117;s:23:\"um-faicon-long-arrow-up\";i:1118;s:25:\"um-faicon-long-arrow-left\";i:1119;s:26:\"um-faicon-long-arrow-right\";i:1120;s:15:\"um-faicon-apple\";i:1121;s:17:\"um-faicon-windows\";i:1122;s:17:\"um-faicon-android\";i:1123;s:15:\"um-faicon-linux\";i:1124;s:18:\"um-faicon-dribbble\";i:1125;s:15:\"um-faicon-skype\";i:1126;s:20:\"um-faicon-foursquare\";i:1127;s:16:\"um-faicon-trello\";i:1128;s:16:\"um-faicon-female\";i:1129;s:14:\"um-faicon-male\";i:1130;s:16:\"um-faicon-gittip\";i:1131;s:15:\"um-faicon-sun-o\";i:1132;s:16:\"um-faicon-moon-o\";i:1133;s:17:\"um-faicon-archive\";i:1134;s:13:\"um-faicon-bug\";i:1135;s:12:\"um-faicon-vk\";i:1136;s:15:\"um-faicon-weibo\";i:1137;s:16:\"um-faicon-renren\";i:1138;s:19:\"um-faicon-pagelines\";i:1139;s:24:\"um-faicon-stack-exchange\";i:1140;s:30:\"um-faicon-arrow-circle-o-right\";i:1141;s:29:\"um-faicon-arrow-circle-o-left\";i:1142;s:21:\"um-faicon-toggle-left\";i:1143;s:29:\"um-faicon-caret-square-o-left\";i:1144;s:22:\"um-faicon-dot-circle-o\";i:1145;s:20:\"um-faicon-wheelchair\";i:1146;s:22:\"um-faicon-vimeo-square\";i:1147;s:22:\"um-faicon-turkish-lira\";i:1148;s:13:\"um-faicon-try\";i:1149;s:23:\"um-faicon-plus-square-o\";i:1150;s:23:\"um-faicon-space-shuttle\";i:1151;s:15:\"um-faicon-slack\";i:1152;s:25:\"um-faicon-envelope-square\";i:1153;s:19:\"um-faicon-wordpress\";i:1154;s:16:\"um-faicon-openid\";i:1155;s:21:\"um-faicon-institution\";i:1156;s:14:\"um-faicon-bank\";i:1157;s:20:\"um-faicon-university\";i:1158;s:22:\"um-faicon-mortar-board\";i:1159;s:24:\"um-faicon-graduation-cap\";i:1160;s:15:\"um-faicon-yahoo\";i:1161;s:16:\"um-faicon-google\";i:1162;s:16:\"um-faicon-reddit\";i:1163;s:23:\"um-faicon-reddit-square\";i:1164;s:28:\"um-faicon-stumbleupon-circle\";i:1165;s:21:\"um-faicon-stumbleupon\";i:1166;s:19:\"um-faicon-delicious\";i:1167;s:14:\"um-faicon-digg\";i:1168;s:20:\"um-faicon-pied-piper\";i:1169;s:24:\"um-faicon-pied-piper-alt\";i:1170;s:16:\"um-faicon-drupal\";i:1171;s:16:\"um-faicon-joomla\";i:1172;s:18:\"um-faicon-language\";i:1173;s:13:\"um-faicon-fax\";i:1174;s:18:\"um-faicon-building\";i:1175;s:15:\"um-faicon-child\";i:1176;s:13:\"um-faicon-paw\";i:1177;s:15:\"um-faicon-spoon\";i:1178;s:14:\"um-faicon-cube\";i:1179;s:15:\"um-faicon-cubes\";i:1180;s:17:\"um-faicon-behance\";i:1181;s:24:\"um-faicon-behance-square\";i:1182;s:15:\"um-faicon-steam\";i:1183;s:22:\"um-faicon-steam-square\";i:1184;s:17:\"um-faicon-recycle\";i:1185;s:20:\"um-faicon-automobile\";i:1186;s:13:\"um-faicon-car\";i:1187;s:13:\"um-faicon-cab\";i:1188;s:14:\"um-faicon-taxi\";i:1189;s:14:\"um-faicon-tree\";i:1190;s:17:\"um-faicon-spotify\";i:1191;s:20:\"um-faicon-deviantart\";i:1192;s:20:\"um-faicon-soundcloud\";i:1193;s:18:\"um-faicon-database\";i:1194;s:20:\"um-faicon-file-pdf-o\";i:1195;s:21:\"um-faicon-file-word-o\";i:1196;s:22:\"um-faicon-file-excel-o\";i:1197;s:27:\"um-faicon-file-powerpoint-o\";i:1198;s:22:\"um-faicon-file-photo-o\";i:1199;s:24:\"um-faicon-file-picture-o\";i:1200;s:22:\"um-faicon-file-image-o\";i:1201;s:20:\"um-faicon-file-zip-o\";i:1202;s:24:\"um-faicon-file-archive-o\";i:1203;s:22:\"um-faicon-file-sound-o\";i:1204;s:22:\"um-faicon-file-audio-o\";i:1205;s:22:\"um-faicon-file-movie-o\";i:1206;s:22:\"um-faicon-file-video-o\";i:1207;s:21:\"um-faicon-file-code-o\";i:1208;s:14:\"um-faicon-vine\";i:1209;s:17:\"um-faicon-codepen\";i:1210;s:18:\"um-faicon-jsfiddle\";i:1211;s:19:\"um-faicon-life-bouy\";i:1212;s:19:\"um-faicon-life-buoy\";i:1213;s:20:\"um-faicon-life-saver\";i:1214;s:17:\"um-faicon-support\";i:1215;s:19:\"um-faicon-life-ring\";i:1216;s:24:\"um-faicon-circle-o-notch\";i:1217;s:12:\"um-faicon-ra\";i:1218;s:15:\"um-faicon-rebel\";i:1219;s:12:\"um-faicon-ge\";i:1220;s:16:\"um-faicon-empire\";i:1221;s:20:\"um-faicon-git-square\";i:1222;s:13:\"um-faicon-git\";i:1223;s:21:\"um-faicon-hacker-news\";i:1224;s:23:\"um-faicon-tencent-weibo\";i:1225;s:12:\"um-faicon-qq\";i:1226;s:16:\"um-faicon-wechat\";i:1227;s:16:\"um-faicon-weixin\";i:1228;s:14:\"um-faicon-send\";i:1229;s:21:\"um-faicon-paper-plane\";i:1230;s:16:\"um-faicon-send-o\";i:1231;s:23:\"um-faicon-paper-plane-o\";i:1232;s:17:\"um-faicon-history\";i:1233;s:21:\"um-faicon-circle-thin\";i:1234;s:16:\"um-faicon-header\";i:1235;s:19:\"um-faicon-paragraph\";i:1236;s:17:\"um-faicon-sliders\";i:1237;s:19:\"um-faicon-share-alt\";i:1238;s:26:\"um-faicon-share-alt-square\";i:1239;s:14:\"um-faicon-bomb\";i:1240;s:23:\"um-faicon-soccer-ball-o\";i:1241;s:18:\"um-faicon-futbol-o\";i:1242;s:13:\"um-faicon-tty\";i:1243;s:20:\"um-faicon-binoculars\";i:1244;s:14:\"um-faicon-plug\";i:1245;s:20:\"um-faicon-slideshare\";i:1246;s:16:\"um-faicon-twitch\";i:1247;s:14:\"um-faicon-yelp\";i:1248;s:21:\"um-faicon-newspaper-o\";i:1249;s:14:\"um-faicon-wifi\";i:1250;s:20:\"um-faicon-calculator\";i:1251;s:16:\"um-faicon-paypal\";i:1252;s:23:\"um-faicon-google-wallet\";i:1253;s:17:\"um-faicon-cc-visa\";i:1254;s:23:\"um-faicon-cc-mastercard\";i:1255;s:21:\"um-faicon-cc-discover\";i:1256;s:17:\"um-faicon-cc-amex\";i:1257;s:19:\"um-faicon-cc-paypal\";i:1258;s:19:\"um-faicon-cc-stripe\";i:1259;s:20:\"um-faicon-bell-slash\";i:1260;s:22:\"um-faicon-bell-slash-o\";i:1261;s:15:\"um-faicon-trash\";i:1262;s:19:\"um-faicon-copyright\";i:1263;s:12:\"um-faicon-at\";i:1264;s:20:\"um-faicon-eyedropper\";i:1265;s:21:\"um-faicon-paint-brush\";i:1266;s:23:\"um-faicon-birthday-cake\";i:1267;s:20:\"um-faicon-area-chart\";i:1268;s:19:\"um-faicon-pie-chart\";i:1269;s:20:\"um-faicon-line-chart\";i:1270;s:16:\"um-faicon-lastfm\";i:1271;s:23:\"um-faicon-lastfm-square\";i:1272;s:20:\"um-faicon-toggle-off\";i:1273;s:19:\"um-faicon-toggle-on\";i:1274;s:17:\"um-faicon-bicycle\";i:1275;s:13:\"um-faicon-bus\";i:1276;s:17:\"um-faicon-ioxhost\";i:1277;s:19:\"um-faicon-angellist\";i:1278;s:12:\"um-faicon-cc\";i:1279;s:16:\"um-faicon-shekel\";i:1280;s:16:\"um-faicon-sheqel\";i:1281;s:13:\"um-faicon-ils\";i:1282;s:18:\"um-faicon-meanpath\";}', 'yes'),
(365, 'um_existing_rows_16', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(366, 'um_form_rowdata_16', 'a:1:{s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";i:1;s:4:\"cols\";i:1;s:6:\"origin\";s:9:\"_um_row_1\";}}', 'yes'),
(789, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(1210, 'analyst_cache', 's:6:\"a:0:{}\";', 'yes'),
(1211, '_irb_h_bn_review', 'a:2:{s:5:\"users\";a:1:{i:1;a:2:{s:13:\"backup-backup\";a:1:{s:6:\"remind\";i:1673359094;}s:13:\"delay_between\";i:1672322294;}}s:13:\"backup-backup\";i:1666954523;}', 'yes'),
(1212, 'bmi_hotfixes', 'a:2:{i:0;s:14:\"BMI_D20_M07_01\";i:1;s:18:\"BMI_D17_M12_Y21_02\";}', 'yes'),
(1403, 'theme_mods_kikin', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(1711, 'acf_version', '6.0.6', 'yes'),
(2005, 'active_sitewide_plugins', 'a:4:{s:25:\"clever-fox/clever-fox.php\";i:1668475151;s:30:\"advanced-custom-fields/acf.php\";i:1668475151;s:31:\"backup-backup/backup-backup.php\";i:1668475151;s:35:\"ultimate-member/ultimate-member.php\";i:1668475151;}', 'no'),
(2007, 'tastewp_auto_activated', '1', 'yes'),
(2008, 'bmi_backup_check', '1672594809', 'yes'),
(2028, '_transient_um_count_users_pending_dot', '0', 'yes'),
(2034, '_transient_um_count_users_approved', '7', 'yes'),
(2035, '_transient_um_count_users_awaiting_admin_review', '0', 'yes'),
(2036, '_transient_um_count_users_awaiting_email_confirmation', '0', 'yes'),
(2037, '_transient_um_count_users_inactive', '0', 'yes'),
(2038, '_transient_um_count_users_rejected', '0', 'yes'),
(2356, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:29:\"guidoriosciaffaroni@gmail.com\";s:7:\"version\";s:5:\"6.1.1\";s:9:\"timestamp\";i:1668578201;}', 'no'),
(3189, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":7,\"critical\":2}', 'yes'),
(4807, 'ins_bf20_dismisses', 'a:1:{i:0;s:13:\"backup-backup\";}', 'yes'),
(5157, 'rsssl_show_onboarding', '1', 'no'),
(5160, 'rsssl_remaining_tasks', '1', 'no'),
(5163, 'rsssl_port_check_2082', 'fail', 'no'),
(5164, 'rsssl_port_check_8443', 'fail', 'no'),
(5165, 'rsssl_port_check_2222', 'success', 'no'),
(5166, 'rsssl_options', 'a:8:{s:12:\"site_has_ssl\";s:0:\"\";s:11:\"ssl_enabled\";b:0;s:19:\"mixed_content_fixer\";b:1;s:8:\"redirect\";s:4:\"none\";s:20:\"do_not_edit_htaccess\";b:0;s:19:\"dismiss_all_notices\";b:0;s:31:\"switch_mixed_content_fixer_hook\";b:0;s:13:\"include_alias\";i:1;}', 'yes'),
(5167, 'rsssl_6_upgrade_completed', '1', 'no'),
(5168, 'rsssl_current_version', '6.0.14', 'no'),
(5185, 'rsssl_6_notice_dismissed', '1', 'no'),
(5190, '_transient_rsssl_http_methods_allowed', 'a:1:{s:7:\"allowed\";a:18:{i:0;s:3:\"GET\";i:1;s:4:\"POST\";i:2;s:3:\"PUT\";i:3;s:6:\"DELETE\";i:4;s:4:\"HEAD\";i:5;s:7:\"OPTIONS\";i:6;s:7:\"CONNECT\";i:7;s:5:\"TRACE\";i:8;s:5:\"TRACK\";i:9;s:5:\"PATCH\";i:10;s:4:\"COPY\";i:11;s:4:\"LINK\";i:12;s:6:\"UNLINK\";i:13;s:5:\"PURGE\";i:14;s:4:\"LOCK\";i:15;s:6:\"UNLOCK\";i:16;s:8:\"PROPFIND\";i:17;s:4:\"VIEW\";}}', 'yes'),
(5194, 'rsssl_onboarding_dismissed', '1', 'no'),
(5195, 'rsssl_le_installation_progress', 'a:5:{i:0;s:16:\"dns-verification\";i:1;s:6:\"domain\";i:2;s:13:\"system-status\";i:3;s:11:\"directories\";i:4;s:10:\"generation\";}', 'no'),
(5204, 'rsssl_initial_alias_domain_value_set', '1', 'no'),
(5207, 'rsssl_create_folders_in_root', '1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5208, 'rsssl_ssl_dirname', '1645399216', 'no'),
(6858, 'category_children', 'a:0:{}', 'yes'),
(7835, 'rsssl_mixed_content_scan_dismissed', '1', 'no'),
(7836, 'rsssl_google_analytics_dismissed', '1', 'no'),
(7853, 'wpas_options', 's:23637:\"a:221:{s:16:\"assignee_default\";s:0:\"\";s:29:\"support_staff_select2_enabled\";b:0;s:13:\"replies_order\";s:3:\"ASC\";s:16:\"replies_per_page\";i:10;s:11:\"hide_closed\";b:1;s:10:\"show_count\";b:1;s:10:\"old_ticket\";i:10;s:26:\"tickets_per_page_front_end\";i:5;s:14:\"hide_closed_fe\";b:0;s:23:\"hide_ticket_id_title_fe\";b:0;s:27:\"allow_user_to_close_tickets\";b:1;s:26:\"enable_notification_button\";b:1;s:26:\"notifications_button_label\";s:6:\"Avisos\";s:24:\"notifications_button_msg\";s:253:\"Estás recibiendo los avisos estándar por defecto de este tique. Entre otros, incluyen respuestas de los agentes, un aviso cuando se cierra el tique, una aviso si el agente reabre el tique y una confirmación cuando se envió por primera vez el tique. \";s:26:\"ticket_detail_show_toolbar\";b:1;s:13:\"ticket_submit\";i:180;s:11:\"ticket_list\";i:179;s:11:\"credit_link\";b:0;s:28:\"remove_admin_ratings_request\";b:0;s:17:\"enable_mail_check\";b:0;s:15:\"mailgun_api_key\";s:0:\"\";s:19:\"allow_registrations\";s:5:\"allow\";s:16:\"reg_notify_users\";s:5:\"both,\";s:26:\"reg_user_name_construction\";i:6;s:19:\"reg_first_name_desc\";s:0:\"\";s:18:\"reg_last_name_desc\";s:0:\"\";s:14:\"reg_email_desc\";s:0:\"\";s:13:\"new_user_role\";s:9:\"wpas_user\";s:25:\"gdpr_notice_short_desc_01\";s:0:\"\";s:24:\"gdpr_notice_long_desc_01\";s:0:\"\";s:24:\"gdpr_notice_mandatory_01\";b:1;s:25:\"gdpr_notice_opt_out_ok_01\";b:0;s:25:\"gdpr_notice_short_desc_02\";s:0:\"\";s:24:\"gdpr_notice_long_desc_02\";s:0:\"\";s:24:\"gdpr_notice_mandatory_02\";b:1;s:25:\"gdpr_notice_opt_out_ok_02\";b:0;s:25:\"gdpr_notice_short_desc_03\";s:0:\"\";s:24:\"gdpr_notice_long_desc_03\";s:0:\"\";s:24:\"gdpr_notice_mandatory_03\";b:1;s:25:\"gdpr_notice_opt_out_ok_03\";b:0;s:16:\"terms_conditions\";s:0:\"\";s:18:\"mr_success_message\";s:112:\"Tu cuenta se ha creado y enviado a revisión. El administrador la revisará y te avisará cuando esté aprobada.\";s:27:\"moderated_pending_user_role\";s:0:\"\";s:29:\"moderated_activated_user_role\";s:9:\"wpas_user\";s:41:\"enable_moderated_registration_admin_email\";s:1:\"1\";s:43:\"moderated_registration_admin_email__subject\";s:43:\"Nuevo registro está esperando aprobación.\";s:43:\"moderated_registration_admin_email__content\";s:356:\"Ha recibido un nuevo registro desde la pantalla de registro de Awesome Support.\r\n\r\nNombre de usuario: {first_name} {last_name}\r\nEmail de usuario: {email}\r\nPerfil del usuario: {user_profile_link}\r\n\r\nPuede hacer clic en el enlace del perfil de usuario que se muestra arriba para ir directamente al perfil de usuario donde puede aprobar o denegar el registro.\";s:40:\"enable_moderated_registration_user_email\";s:1:\"1\";s:42:\"moderated_registration_user_email__subject\";s:72:\"Su registro en {site_name} ha sido enviado y está esperando aprobación\";s:42:\"moderated_registration_user_email__content\";s:167:\"Hola {first_name}:\r\n\r\nSolo queríamos informarle que su solicitud de registro se ha enviado con éxito y está esperando su aprobación.\r\n\r\n- Tus amigos en {site_name}\";s:49:\"enable_moderated_registration_approved_user_email\";s:1:\"1\";s:51:\"moderated_registration_approved_user_email__subject\";s:43:\"Su registro en {site_name} ha sido aprobado\";s:51:\"moderated_registration_approved_user_email__content\";s:181:\"Hola {first_name}:\r\n\r\nSolo queríamos informarle que su solicitud de registro ha sido aprobada. Ahora puede iniciar sesión y enviar su primer ticket.\r\n\r\n- Tus amigos en {site_name}\";s:47:\"enable_moderated_registration_denied_user_email\";s:1:\"1\";s:49:\"moderated_registration_denied_user_email__subject\";s:48:\"Your registration on {site_name} has been denied\";s:49:\"moderated_registration_denied_user_email__content\";s:236:\"Hola {first_name}:\r\n\r\nSolo queríamos informarle que su solicitud de registro no ha sido aprobada. Si tiene preguntas sobre esta decisión, utilice nuestro formulario de contacto para hacer un seguimiento.\r\n\r\n- Tus amigos en {site_name}\";s:19:\"privacy_show_button\";b:1;s:20:\"privacy_button_label\";s:7:\"Privacy\";s:20:\"privacy_popup_header\";s:0:\"\";s:20:\"privacy_popup_footer\";s:0:\"\";s:24:\"privacy_show_consent_tab\";b:1;s:28:\"privacy_show_delete_data_tab\";b:1;s:28:\"privacy_show_export_data_tab\";b:1;s:23:\"privacy_show_export_tab\";b:1;s:28:\"delete_existing_data_subject\";s:81:\"Solicitud oficial: Por favor, borra mis datos existentes («Derecho al olvido»).\";s:36:\"delete_existing_data_add_information\";b:1;s:28:\"export_existing_data_subject\";s:59:\"Solicitud oficial: Por favor, exporta mis datos existentes.\";s:36:\"export_existing_data_add_information\";b:1;s:18:\"anonymize_cron_job\";b:0;s:30:\"anonymize_cronjob_trigger_time\";i:1440;s:25:\"anonymize_cronjob_max_age\";i:180;s:32:\"anonymize_cronjob_delete_tickets\";b:0;s:24:\"closed_tickets_anonmyize\";b:1;s:22:\"open_tickets_anonmyize\";b:0;s:30:\"anonmyize_user_creation_method\";s:1:\"1\";s:11:\"departments\";s:1:\"1\";s:26:\"multiple_agents_per_ticket\";s:1:\"0\";s:35:\"show_secondary_agent_in_ticket_list\";s:1:\"0\";s:34:\"show_tertiary_agent_in_ticket_list\";s:1:\"0\";s:23:\"show_third_party_fields\";s:1:\"0\";s:34:\"show_third_party_01_in_ticket_list\";s:1:\"0\";s:34:\"show_third_party_02_in_ticket_list\";s:1:\"0\";s:33:\"show_open_date_in_activity_column\";s:1:\"0\";s:37:\"show_open_date_gmt_in_activity_column\";s:1:\"0\";s:38:\"show_close_date_gmt_in_activity_column\";s:1:\"0\";s:37:\"show_length_of_time_ticket_was_opened\";s:1:\"0\";s:29:\"show_extended_date_in_replies\";s:1:\"0\";s:27:\"channel_show_in_ticket_list\";s:1:\"0\";s:24:\"ticket_list_show_doc_tab\";b:1;s:33:\"ticket_list_show_bulk_actions_tab\";b:1;s:32:\"ticket_list_show_preferences_tab\";b:1;s:23:\"enable_ticket_templates\";b:0;s:35:\"show_ticket_template_in_ticket_list\";b:0;s:17:\"hide_cf_tab_roles\";s:0:\"\";s:17:\"hide_ai_tab_roles\";s:0:\"\";s:18:\"hide_tags_mb_roles\";s:0:\"\";s:5:\"theme\";s:7:\"default\";s:13:\"theme_overlay\";s:9:\"style.css\";s:16:\"theme_stylesheet\";b:1;s:23:\"frontend_wysiwyg_editor\";b:1;s:14:\"use_autolinker\";b:1;s:10:\"color_open\";s:7:\"#81d742\";s:12:\"color_closed\";s:7:\"#dd3333\";s:9:\"color_old\";s:7:\"#dd9933\";s:20:\"color_awaiting_reply\";s:7:\"#0074a2\";s:26:\"color_ticket_template_type\";s:7:\"#1383D9\";s:12:\"color_queued\";s:7:\"#1e73be\";s:16:\"color_processing\";s:7:\"#a01497\";s:10:\"color_hold\";s:7:\"#b56629\";s:18:\"use_email_template\";s:1:\"1\";s:19:\"email_template_logo\";s:0:\"\";s:21:\"email_template_header\";s:6:\"Circum\";s:21:\"email_template_footer\";s:0:\"\";s:11:\"sender_name\";s:6:\"Circum\";s:12:\"sender_email\";s:22:\"abogados@ciaffaroni.cl\";s:11:\"reply_email\";s:22:\"abogados@ciaffaroni.cl\";s:19:\"enable_confirmation\";s:1:\"1\";s:20:\"subject_confirmation\";s:34:\"Solicitud recibida: {ticket_title}\";s:17:\"enable_assignment\";s:1:\"1\";s:18:\"subject_assignment\";s:27:\"Tique #{ticket_id} asignado\";s:18:\"enable_reply_agent\";s:1:\"1\";s:19:\"subject_reply_agent\";s:33:\"Nueva respuesta a: {ticket_title}\";s:19:\"enable_reply_client\";s:1:\"1\";s:20:\"subject_reply_client\";s:18:\"Tique #{ticket_id}\";s:13:\"enable_closed\";s:1:\"1\";s:14:\"subject_closed\";s:33:\"Solicitud cerrada: {ticket_title}\";s:34:\"agents_can_suppress_closing_emails\";s:1:\"0\";s:20:\"enable_closed_client\";s:1:\"1\";s:21:\"subject_closed_client\";s:33:\"Solicitud cerrada: {ticket_title}\";s:18:\"enable_attachments\";b:1;s:15:\"attachments_max\";i:2;s:12:\"filesize_max\";i:2;s:21:\"attachments_filetypes\";s:116:\"jpg,jpeg,png,gif,pdf,doc,docx,ppt,pptx,pps,ppsx,odt,xls,xlsx,mp3,m4a,ogg,wav,mp4,m4v,mov,wmv,avi,mpg,ogv,3gp,3g2,zip\";s:11:\"ajax_upload\";b:0;s:15:\"ajax_upload_all\";b:0;s:23:\"ajax_upload_paste_image\";b:0;s:27:\"ajax_upload_paste_image_all\";b:0;s:29:\"agents_can_delete_attachments\";b:0;s:28:\"users_can_delete_attachments\";b:0;s:23:\"auto_delete_attachments\";b:0;s:36:\"user_can_set_auto_delete_attachments\";b:0;s:37:\"agent_can_set_auto_delete_attachments\";b:1;s:10:\"login_page\";s:0:\"\";s:13:\"admin_see_all\";b:1;s:13:\"agent_see_all\";b:0;s:17:\"ticket_topic_slug\";s:3:\"ASC\";s:18:\"importer_id_enable\";b:0;s:28:\"importer_id_show_in_tkt_list\";b:0;s:17:\"importer_id_label\";s:24:\"Help Desk SaaS Ticket ID\";s:23:\"unmask_attachment_links\";b:0;s:24:\"attachment_render_method\";s:6:\"inline\";s:15:\"select2_version\";s:13:\"select2-4-0-5\";s:15:\"select2_js_file\";s:11:\"partial-min\";s:16:\"select2_css_file\";s:3:\"min\";s:17:\"load_bs4_files_fe\";s:1:\"0\";s:17:\"load_bs4_files_be\";s:1:\"0\";s:9:\"bs4_theme\";s:7:\"default\";s:14:\"secure_cookies\";b:0;s:16:\"cookie_http_only\";b:0;s:25:\"session_delete_batch_size\";i:1000;s:17:\"log_file_location\";s:1:\"0\";s:11:\"delete_data\";b:0;s:16:\"enable_simple_wc\";b:0;s:14:\"enable_my_cred\";b:0;s:23:\"myCRED_agent_point_type\";s:14:\"mycred_default\";s:33:\"myCRED_agent_points_ticket_submit\";i:1;s:32:\"myCRED_agent_points_ticket_close\";i:1;s:32:\"myCRED_agent_points_ticket_reply\";i:1;s:22:\"myCRED_user_point_type\";s:14:\"mycred_default\";s:32:\"myCRED_user_points_ticket_submit\";i:1;s:31:\"myCRED_user_points_ticket_reply\";i:1;s:31:\"myCRED_user_points_ticket_close\";i:1;s:35:\"myCRED_agent_gets_points_user_close\";b:0;s:22:\"enable_teamviewer_chat\";b:0;s:20:\"content_confirmation\";s:2430:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">Envío de Ticket confirmado</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">\r\n<pre id=\"tw-target-text\" class=\"tw-data-text tw-text-large tw-ta\" dir=\"ltr\" data-placeholder=\"Traducción\"><span class=\"Y2IQFc\" lang=\"es\">Hola <strong>{nombre_cliente}</strong>:\r\n\r\nEstamos confirmando que recibimos un nuevo ticket tuyo con el tema: {ticket_title}. Tu nuevo número de ticket es: #{ticket_id}. Esto es lo que nos dijiste:</span></pre>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0px 0px; text-align: left;\" align=\"left\">{message}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Para ver el ticket completo o agregar una respuesta, haga clic en el botón a continuación.</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_url}\" target=\"_blank\" rel=\"noopener\">Ver Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nEstá recibiendo este mensaje porque inició una solicitud de soporte con nosotros ({site_name})</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:18:\"content_assignment\";s:2211:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">New Ticket Assigned To You!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Hello {agent_name}:\r\n\r\nA new ticket has just been assigned to you: <strong>{ticket_title}</strong>. Here is what was opened on ticket <strong>#{ticket_id}</strong>:</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0px 0px; text-align: left;\" align=\"left\">{message}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">To view the full ticket or add a reply, please click the button below.</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_admin_url}\" target=\"_blank\" rel=\"noopener\">View Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nYou are receiving this message because you are an agent or employee of {site_name}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:19:\"content_reply_agent\";s:2209:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">Reply To Your Support Ticket</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Hello {client_name}:\r\n\r\nAn agent just replied to your ticket: <strong>{ticket_title}</strong>.Here is what they said on ticket <strong>#{ticket_id}</strong>:</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0px 0px; text-align: left;\" align=\"left\">{message}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">To view the full ticket or add a reply, please click the button below.</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_url}\" target=\"_blank\" rel=\"noopener\">View Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nYou are receiving this message because you initiated a support request with us ({site_name})</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:20:\"content_reply_client\";s:2223:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">Update Received On Ticket</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Hello {agent_name}:\r\n\r\nA client just replied to a ticket that you are in charge of: <strong>{ticket_title}</strong>.Here is what they said on ticket <strong>#{ticket_id}</strong>:</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 30px 0px 0px; text-align: left;\" align=\"left\">{message}</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">To view the full ticket or add a reply, please click the button below</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_admin_url}\" target=\"_blank\" rel=\"noopener\">View Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nYou are receiving this message because you are an agent or employee of {site_name}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:14:\"content_closed\";s:2102:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">Your Ticket Was Closed</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Hello {client_name}:\r\n\r\nYour ticket: <strong>{ticket_title} </strong>with ticket <strong>#{ticket_id}</strong> has been closed by {agent_name}.</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">To view the full ticket in your support account please click the button below.</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_url}\" target=\"_blank\" rel=\"noopener\">View Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nYou are receiving this message because you initiated a support request with us ({site_name})</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:21:\"content_closed_client\";s:2107:\"<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td align=\"center\">\r\n<table class=\"responsive-table\" style=\"border: 1px solid #d0d0d0;\" border=\"0\" width=\"500\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"padding: 40px 20px 30px 20px;\" bgcolor=\"#ffffff\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"font-size: 32px; font-family: Helvetica, Arial, sans-serif; color: #333333;\" align=\"center\">Your Ticket Was Closed</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">Hello {agent_name}:\r\n\r\nThe ticket with title:<strong>{ticket_title} </strong>(<strong>#{ticket_id}</strong>) was closed by the client ({client_name}). Great job!</td>\r\n</tr>\r\n<tr>\r\n<td class=\"padding-copy\" style=\"padding: 20px 0 0 0; font-size: 16px; line-height: 25px; font-family: Helvetica, Arial, sans-serif; color: #666666;\" align=\"left\">To view the full ticket or add a reply, please click the button below</td>\r\n</tr>\r\n<tr>\r\n<td align=\"center\">\r\n<table border=\"0\" width=\"100%\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td class=\"padding\" style=\"padding: 25px 0 5px 0;\" align=\"center\">\r\n<table class=\"mobile-button-container\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td style=\"border-radius: 3px;\" align=\"center\" bgcolor=\"#18a689\"><a class=\"mobile-button\" style=\"font-size: 16px; font-family: Helvetica, Arial, sans-serif; color: #ffffff; text-decoration: none; border-radius: 3px; padding: 15px 25px; border: 1px solid #18a689; display: inline-block;\" href=\"{ticket_admin_url}\" target=\"_blank\" rel=\"noopener\">View Ticket</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td style=\"padding: 0px 0px 0px; text-align: center;\">\r\n\r\n<hr />\r\n\r\nYou are receiving this message because you are an agent or employee of {site_name}</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\";s:16:\"07446b3b9876b973\";s:0:\"\";s:16:\"692cab0578a5632c\";s:0:\"\";s:16:\"c945b229dedd229b\";s:0:\"\";s:16:\"66895e2c31da00a5\";s:0:\"\";s:16:\"6c2bcb3b92b84cf8\";s:0:\"\";s:16:\"750da0ca3ff35812\";s:0:\"\";s:16:\"eaf98c0ed5f9cf86\";s:0:\"\";s:16:\"03364877d5b081b6\";s:0:\"\";s:16:\"c0cac5b7f75e8edb\";s:0:\"\";s:16:\"a748e5db15e2d75e\";s:0:\"\";s:16:\"support_priority\";s:1:\"1\";s:26:\"support_priority_mandatory\";s:1:\"0\";s:24:\"support_priority_show_fe\";s:1:\"1\";s:36:\"support_priority_show_in_ticket_list\";s:1:\"0\";s:41:\"support_priority_color_code_ticket_header\";s:1:\"0\";s:16:\"ca75eac85657acb7\";s:0:\"\";s:19:\"support_ticket_type\";s:1:\"0\";s:29:\"support_ticket_type_mandatory\";s:1:\"0\";s:27:\"support_ticket_type_show_fe\";s:1:\"1\";s:39:\"support_ticket_type_show_in_ticket_list\";s:1:\"0\";s:37:\"support_ticket_type_color_code_ticket\";s:1:\"0\";s:16:\"9c5161ff5b2063d6\";s:0:\"\";s:16:\"de1e1a890fd0e8e3\";s:0:\"\";s:16:\"c9766a12c5fbd2cb\";s:0:\"\";s:16:\"44e62549706de00b\";s:0:\"\";s:16:\"ea5762eed6f8a3d1\";s:0:\"\";s:16:\"e3a4d69ad759797d\";s:0:\"\";s:16:\"b845076c74a86091\";s:0:\"\";s:16:\"360e61251db91aa9\";s:0:\"\";s:16:\"a4d463575d91ce22\";s:0:\"\";s:16:\"ed3b5e920ba91770\";s:0:\"\";s:16:\"5f4a6db56872582f\";s:0:\"\";s:18:\"reply_design_notes\";s:0:\"\";s:16:\"6f47bb1c797bf34d\";s:0:\"\";s:16:\"ef954ac46b2796a6\";s:0:\"\";s:16:\"8925378b591239c2\";s:0:\"\";s:16:\"a85c60a3fee7a1ce\";s:0:\"\";s:16:\"83fb3e1fc9b08f73\";s:0:\"\";s:16:\"c8051669b81e48e0\";s:0:\"\";s:16:\"50dad26ed486ce98\";s:0:\"\";s:16:\"021f622821d66575\";s:0:\"\";}\";', 'yes'),
(7855, 'wpas_db_version', '1', 'yes'),
(7856, 'wpas_version', '6.1.2', 'yes'),
(7857, 'sm_session_db_version', '0.2', 'no'),
(7876, 'ticket_channel_children', 'a:0:{}', 'yes'),
(7877, 'wpas_default_channels_added', '1', 'yes'),
(7878, 'wisdom_notification_times', 'a:1:{s:15:\"awesome-support\";i:1670245730;}', 'yes'),
(7879, 'wpas_setup_email_templates', 'complete', 'yes'),
(7880, 'rdn_fetch_21670198400', 'fetch', 'yes'),
(7881, 'wpas_skip_wizard_setup', '1', 'yes'),
(7976, 'widget_theme-my-login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(7977, '_tml_installed_at', '1670263629', 'no'),
(7978, '_tml_updated_at', '1670263629', 'no'),
(7979, '_tml_version', '7.1.5', 'no'),
(8039, 'wisdom_block_notice', 'a:1:{s:15:\"awesome-support\";s:15:\"awesome-support\";}', 'yes'),
(8164, 'rdn_fetch_21670284800', 'fetch', 'yes'),
(12751, '_site_transient_timeout_browser_a818ab359804517f2549e94c88d03c0b', '1672754169', 'no'),
(12752, '_site_transient_browser_a818ab359804517f2549e94c88d03c0b', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(12753, 'rdn_fetch_21672099200', 'fetch', 'yes'),
(12754, '_transient_timeout_rsssl_admin_notices', '1672754169', 'no'),
(12755, '_transient_rsssl_admin_notices', 'empty', 'no'),
(12773, 'rsssl_plusone_count', 'empty', 'yes'),
(12777, 'rsssl_admin_notices', 'empty', 'yes'),
(12778, 'rsssl_wp_version_detected', 'not-found', 'no'),
(12975, '_site_transient_timeout_browser_1e539940c609661e6b34162c2e9fabac', '1672852385', 'no'),
(12976, '_site_transient_browser_1e539940c609661e6b34162c2e9fabac', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"108.0.0.0\";s:8:\"platform\";s:7:\"Android\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'no'),
(12977, 'rdn_fetch_21672185600', 'fetch', 'yes'),
(12997, 'um_cache_userdata_5', 'a:48:{s:2:\"ID\";i:5;s:10:\"user_login\";s:6:\"rperez\";s:9:\"user_pass\";s:34:\"$P$B/ykgaCNbwCoU7/xgQ.eQ2GT17wd3H1\";s:13:\"user_nicename\";s:6:\"rperez\";s:10:\"user_email\";s:13:\"rperez@tgr.cl\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-12-28 17:15:32\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:6:\"rperez\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:6:\"rperez\";s:10:\"first_name\";s:6:\"rperez\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:6:\"rperez\";s:9:\"full_name\";s:6:\"rperez\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"23a0714b2a710e78a0380638bc829c88\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no'),
(13110, 'um_cache_userdata_6', 'a:48:{s:2:\"ID\";i:6;s:10:\"user_login\";s:9:\"ppalacios\";s:9:\"user_pass\";s:34:\"$P$Bc8kNeflB4S/S0eEI/PA6uRGaImghu.\";s:13:\"user_nicename\";s:9:\"ppalacios\";s:10:\"user_email\";s:24:\"cpalacios.cp@hotmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-12-28 23:38:18\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:9:\"ppalacios\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:9:\"ppalacios\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:9:\"ppalacios\";s:9:\"full_name\";s:0:\"\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"11849e28110f048556bbf3f177b5acc0\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no'),
(13128, 'rdn_fetch_21672272000', 'fetch', 'yes'),
(13276, 'um_cache_userdata_2', 'a:49:{s:2:\"ID\";i:2;s:10:\"user_login\";s:5:\"prios\";s:9:\"user_pass\";s:34:\"$P$BXb1z07ipjWTRSfUihk2NeoHkrCYsX0\";s:13:\"user_nicename\";s:5:\"prios\";s:10:\"user_email\";s:24:\"pablo.rios@ciaffaroni.cl\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-11-27 17:11:37\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"Pablo Rios\";s:9:\"wpas_user\";b:1;s:8:\"wp_roles\";s:9:\"wpas_user\";s:4:\"read\";b:1;s:11:\"view_ticket\";b:1;s:13:\"create_ticket\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:12:\"attach_files\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:5:\"prios\";s:10:\"first_name\";s:5:\"Pablo\";s:9:\"last_name\";s:4:\"Rios\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:5:\"prios\";s:9:\"full_name\";s:10:\"pablo rios\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"8902c023f96d42fa989f8af78e8c02c5\";s:14:\"_um_last_login\";s:10:\"1669569165\";s:23:\"wp_wpas_can_be_assigned\";N;s:27:\"wp_wpas_smart_tickets_order\";N;s:18:\"wp_wpas_department\";s:6:\"a:0:{}\";s:29:\"wp_wpas_department_assignment\";s:6:\"a:0:{}\";s:24:\"wp_wpas_view_all_tickets\";N;s:20:\"wp_wpas_mobile_phone\";s:0:\"\";s:20:\"wp_wpas_office_phone\";s:0:\"\";s:18:\"wp_wpas_home_phone\";s:0:\"\";s:19:\"wp_wpas_other_phone\";s:0:\"\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:9:\"wpas_user\";s:5:\"roles\";a:1:{i:0;s:9:\"wpas_user\";}s:11:\"super_admin\";i:0;}', 'no'),
(13494, 'rdn_fetch_21672358400', 'fetch', 'yes'),
(13501, '_site_transient_timeout_php_check_ce267f3653936506950ae9448202043a', '1673015579', 'no'),
(13502, '_site_transient_php_check_ce267f3653936506950ae9448202043a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(13542, 'action_scheduler_hybrid_store_demarkation', '228', 'yes'),
(13543, 'schema-ActionScheduler_StoreSchema', '6.0.1672419268', 'yes'),
(13544, 'schema-ActionScheduler_LoggerSchema', '3.0.1672419268', 'yes'),
(13545, 'wp_mail_smtp_initial_version', '3.7.0', 'no'),
(13546, 'wp_mail_smtp_version', '3.7.0', 'no'),
(13547, 'wp_mail_smtp', 'a:11:{s:4:\"mail\";a:6:{s:10:\"from_email\";s:21:\"ocio.freeiz@gmail.com\";s:9:\"from_name\";s:6:\"Circum\";s:6:\"mailer\";s:5:\"gmail\";s:11:\"return_path\";b:0;s:16:\"from_email_force\";b:1;s:15:\"from_name_force\";b:1;}s:4:\"smtp\";a:7:{s:7:\"autotls\";s:3:\"yes\";s:4:\"auth\";s:3:\"yes\";s:4:\"host\";s:0:\"\";s:10:\"encryption\";s:4:\"none\";s:4:\"port\";s:0:\"\";s:4:\"user\";s:0:\"\";s:4:\"pass\";s:0:\"\";}s:7:\"general\";a:1:{s:29:\"summary_report_email_disabled\";b:0;}s:9:\"sendlayer\";a:1:{s:7:\"api_key\";s:0:\"\";}s:7:\"smtpcom\";a:2:{s:7:\"api_key\";s:0:\"\";s:7:\"channel\";s:0:\"\";}s:10:\"sendinblue\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:5:\"gmail\";a:6:{s:9:\"client_id\";s:72:\"525126393377-45uuc3dia3vlq560lqlhm71dmsqsvljn.apps.googleusercontent.com\";s:13:\"client_secret\";s:35:\"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\";s:20:\"is_setup_wizard_auth\";b:0;s:9:\"auth_code\";s:73:\"4/0AWgavdetiyS03GEsKi6WEoHA3Pgyl6Dyy5Q5rdrrjtzgawC4RymhBmXrETgjbSk0oOEAJA\";s:12:\"access_token\";a:6:{s:12:\"access_token\";s:213:\"ya29.a0AX9GBdUjAxj2zy7gH89wOO6BZmnMYNkVKrm4yqGJm5JDC3zZ-03q8ngkNjU_XFPf3npvtCIQ3KL3DKfc44qIkh_I_JE0ApBhMpYxItmV-Mb7nk5_a4FtLt45OWI--5_e4fDVXDp_mH8svib_otA0cmXJj38u4rQaCgYKAV0SAQASFQHUCsbCjXf_TOvaDEbJL_30yEhcAA0166\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:24:\"https://mail.google.com/\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1672434458;s:13:\"refresh_token\";s:103:\"1//01tI5Th5CSwjYCgYIARAAGAESNwF-L9IrU00qEVqrR-Il27dvqcG52ZyoQ-RC3_1ktMIeCEvzP892xsTIzvNjRLV04DOgyX_Vvx0\";}s:13:\"refresh_token\";s:103:\"1//01tI5Th5CSwjYCgYIARAAGAESNwF-L9IrU00qEVqrR-Il27dvqcG52ZyoQ-RC3_1ktMIeCEvzP892xsTIzvNjRLV04DOgyX_Vvx0\";}s:7:\"mailgun\";a:3:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";s:6:\"region\";s:2:\"US\";}s:8:\"postmark\";a:2:{s:16:\"server_api_token\";s:0:\"\";s:14:\"message_stream\";s:0:\"\";}s:8:\"sendgrid\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"domain\";s:0:\"\";}s:9:\"sparkpost\";a:2:{s:7:\"api_key\";s:0:\"\";s:6:\"region\";s:2:\"US\";}}', 'no'),
(13548, 'wp_mail_smtp_activated_time', '1672419268', 'no'),
(13549, 'wp_mail_smtp_activated', 'a:1:{s:4:\"lite\";i:1672419268;}', 'yes'),
(13552, 'action_scheduler_lock_async-request-runner', '1672490438', 'yes'),
(13556, 'wp_mail_smtp_migration_version', '5', 'yes'),
(13557, 'wp_mail_smtp_debug_events_db_version', '1', 'yes'),
(13558, 'wp_mail_smtp_activation_prevent_redirect', '1', 'yes'),
(13559, 'wp_mail_smtp_setup_wizard_stats', 'a:3:{s:13:\"launched_time\";i:1672419279;s:14:\"completed_time\";i:0;s:14:\"was_successful\";b:0;}', 'no'),
(13562, 'wp_mail_smtp_review_notice', 'a:2:{s:4:\"time\";i:1672419361;s:9:\"dismissed\";b:0;}', 'yes'),
(13564, 'wp_mail_smtp_notifications', 'a:4:{s:6:\"update\";i:1672419446;s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}}', 'yes'),
(13588, 'wpmst_cfg_mailster_db_version', '1.8.3', 'yes'),
(13589, 'wpmst_cfg_allow_send', '1', 'yes'),
(13590, 'wpmst_cfg_version_license', 'free', 'yes'),
(13591, 'wpmst_cfg_current_version', 'free', 'yes'),
(13592, 'widget_mstsubscribe_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(13593, 'wpmst_cfg_last_exec_retrieve', '1672420729', 'yes'),
(13594, 'wpmst_cfg_last_exec_sending', '1672420904', 'yes'),
(13595, 'wpmst_cfg_last_exec_maintenance', '1672420729', 'yes'),
(13600, 'action_scheduler_migration_status', 'complete', 'yes'),
(13640, 'wp_mail_smtp_debug', 'a:0:{}', 'no'),
(13647, '_transient_timeout_um_count_users_unassigned', '1672510169', 'no'),
(13648, '_transient_um_count_users_unassigned', 'a:0:{}', 'no'),
(13649, 'wp_mail_smtp_lite_sent_email_counter', '8', 'yes'),
(13650, 'wp_mail_smtp_lite_weekly_sent_email_counter', 'a:1:{i:52;i:8;}', 'yes'),
(13655, 'um_cache_userdata_7', 'a:150:{s:2:\"ID\";i:7;s:10:\"user_login\";s:5:\"grios\";s:9:\"user_pass\";s:34:\"$P$BA4qVAESQKvtFe4zscy1FPuyVyKNJ1.\";s:13:\"user_nicename\";s:5:\"grios\";s:10:\"user_email\";s:16:\"kroncx@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-12-29 15:59:22\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"Guido Rios\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_security\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"delete_ticket\";b:1;s:12:\"delete_reply\";b:1;s:21:\"delete_private_ticket\";b:1;s:19:\"delete_other_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:16:\"settings_tickets\";b:1;s:15:\"ticket_taxonomy\";b:1;s:13:\"create_ticket\";b:1;s:12:\"attach_files\";b:1;s:23:\"view_unassigned_tickets\";b:1;s:35:\"manage_licenses_for_awesome_support\";b:1;s:26:\"administer_awesome_support\";b:1;s:18:\"ticket_manage_tags\";b:1;s:16:\"ticket_edit_tags\";b:1;s:18:\"ticket_delete_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:20:\"ticket_edit_products\";b:1;s:22:\"ticket_delete_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:23:\"ticket_edit_departments\";b:1;s:25:\"ticket_delete_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_edit_priorities\";b:1;s:24:\"ticket_delete_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:20:\"ticket_edit_channels\";b:1;s:22:\"ticket_delete_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;s:23:\"ticket_edit_ticket_type\";b:1;s:25:\"ticket_delete_ticket_type\";b:1;s:30:\"ticket_manage_ticket_templates\";b:1;s:13:\"config_postie\";b:1;s:15:\"post_via_postie\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:5:\"grios\";s:10:\"first_name\";s:5:\"Guido\";s:9:\"last_name\";s:4:\"Rios\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:5:\"grios\";s:9:\"full_name\";s:10:\"guido rios\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"eef0ee5a733244a764f5976c3d296905\";s:20:\"wp_wpas_open_tickets\";s:1:\"2\";s:23:\"wp_wpas_can_be_assigned\";N;s:27:\"wp_wpas_smart_tickets_order\";N;s:18:\"wp_wpas_department\";s:6:\"a:0:{}\";s:29:\"wp_wpas_department_assignment\";s:6:\"a:0:{}\";s:24:\"wp_wpas_view_all_tickets\";N;s:20:\"wp_wpas_mobile_phone\";s:0:\"\";s:20:\"wp_wpas_office_phone\";s:0:\"\";s:18:\"wp_wpas_home_phone\";s:0:\"\";s:19:\"wp_wpas_other_phone\";s:0:\"\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(13663, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1672424066;s:7:\"version\";s:5:\"5.7.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(13683, 'um_cache_userdata_4', 'a:58:{s:2:\"ID\";i:4;s:10:\"user_login\";s:8:\"ccornejo\";s:9:\"user_pass\";s:34:\"$P$Btdyp59H7BzbqrZuvIlZN1uh3PURAz.\";s:13:\"user_nicename\";s:8:\"ccornejo\";s:10:\"user_email\";s:24:\"carloantoniocc@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-12-02 15:36:26\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:14:\"Carlos Cornejo\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:8:\"ccornejo\";s:10:\"first_name\";s:6:\"Carlos\";s:9:\"last_name\";s:7:\"Cornejo\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:8:\"ccornejo\";s:9:\"full_name\";s:14:\"carlos cornejo\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"b3110b2afc2ddfb43b2fb8b033dc3840\";s:14:\"_um_last_login\";s:10:\"1670271681\";s:23:\"wp_wpas_can_be_assigned\";N;s:27:\"wp_wpas_smart_tickets_order\";N;s:18:\"wp_wpas_department\";s:6:\"a:0:{}\";s:29:\"wp_wpas_department_assignment\";s:6:\"a:0:{}\";s:24:\"wp_wpas_view_all_tickets\";N;s:20:\"wp_wpas_mobile_phone\";s:0:\"\";s:20:\"wp_wpas_office_phone\";s:0:\"\";s:18:\"wp_wpas_home_phone\";s:0:\"\";s:19:\"wp_wpas_other_phone\";s:0:\"\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no'),
(13685, 'um_cache_userdata_3', 'a:58:{s:2:\"ID\";i:3;s:10:\"user_login\";s:8:\"eutreras\";s:9:\"user_pass\";s:34:\"$P$BhULDdsjit/KHfYamgO7wmV6PHKQ5Y/\";s:13:\"user_nicename\";s:8:\"eutreras\";s:10:\"user_email\";s:21:\"e.utreras.v@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2022-12-02 12:57:31\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:12:\"Emma Utreras\";s:10:\"subscriber\";b:1;s:8:\"wp_roles\";s:10:\"subscriber\";s:4:\"read\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:8:\"eutreras\";s:10:\"first_name\";s:4:\"Emma\";s:9:\"last_name\";s:7:\"Utreras\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:8:\"eutreras\";s:9:\"full_name\";s:12:\"emma utreras\";s:14:\"account_status\";s:8:\"approved\";s:25:\"synced_gravatar_hashed_id\";s:32:\"fcae4747a892031edc6a54579c6e2db4\";s:14:\"_um_last_login\";s:10:\"1669990114\";s:23:\"wp_wpas_can_be_assigned\";N;s:27:\"wp_wpas_smart_tickets_order\";N;s:18:\"wp_wpas_department\";s:6:\"a:0:{}\";s:29:\"wp_wpas_department_assignment\";s:6:\"a:0:{}\";s:24:\"wp_wpas_view_all_tickets\";N;s:20:\"wp_wpas_mobile_phone\";s:0:\"\";s:20:\"wp_wpas_office_phone\";s:0:\"\";s:18:\"wp_wpas_home_phone\";s:0:\"\";s:19:\"wp_wpas_other_phone\";s:0:\"\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:10:\"subscriber\";s:5:\"roles\";a:1:{i:0;s:10:\"subscriber\";}s:18:\"can_access_wpadmin\";i:0;s:20:\"can_not_see_adminbar\";i:1;s:17:\"can_edit_everyone\";i:0;s:19:\"can_delete_everyone\";i:0;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:11:\"after_login\";s:16:\"redirect_profile\";s:12:\"after_logout\";s:13:\"redirect_home\";s:16:\"default_homepage\";i:1;s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:0;s:26:\"can_access_private_profile\";i:0;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:0;}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(13718, 'um_cache_userdata_1', 'a:146:{s:2:\"ID\";i:1;s:10:\"user_login\";s:5:\"admin\";s:9:\"user_pass\";s:34:\"$P$BIfNODQeWxGiWfu0agJXS2QYJueU5M0\";s:13:\"user_nicename\";s:5:\"admin\";s:10:\"user_email\";s:29:\"guidoriosciaffaroni@gmail.com\";s:8:\"user_url\";s:16:\"http://circum.cl\";s:15:\"user_registered\";s:19:\"2022-10-13 17:46:56\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"admin\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:15:\"manage_security\";b:1;s:11:\"view_ticket\";b:1;s:19:\"view_private_ticket\";b:1;s:11:\"edit_ticket\";b:1;s:17:\"edit_other_ticket\";b:1;s:19:\"edit_private_ticket\";b:1;s:13:\"delete_ticket\";b:1;s:12:\"delete_reply\";b:1;s:21:\"delete_private_ticket\";b:1;s:19:\"delete_other_ticket\";b:1;s:13:\"assign_ticket\";b:1;s:21:\"assign_ticket_creator\";b:1;s:12:\"close_ticket\";b:1;s:12:\"reply_ticket\";b:1;s:16:\"settings_tickets\";b:1;s:15:\"ticket_taxonomy\";b:1;s:13:\"create_ticket\";b:1;s:12:\"attach_files\";b:1;s:23:\"view_unassigned_tickets\";b:1;s:35:\"manage_licenses_for_awesome_support\";b:1;s:26:\"administer_awesome_support\";b:1;s:18:\"ticket_manage_tags\";b:1;s:16:\"ticket_edit_tags\";b:1;s:18:\"ticket_delete_tags\";b:1;s:22:\"ticket_manage_products\";b:1;s:20:\"ticket_edit_products\";b:1;s:22:\"ticket_delete_products\";b:1;s:25:\"ticket_manage_departments\";b:1;s:23:\"ticket_edit_departments\";b:1;s:25:\"ticket_delete_departments\";b:1;s:24:\"ticket_manage_priorities\";b:1;s:22:\"ticket_edit_priorities\";b:1;s:24:\"ticket_delete_priorities\";b:1;s:22:\"ticket_manage_channels\";b:1;s:20:\"ticket_edit_channels\";b:1;s:22:\"ticket_delete_channels\";b:1;s:21:\"ticket_manage_privacy\";b:1;s:25:\"ticket_manage_ticket_type\";b:1;s:23:\"ticket_edit_ticket_type\";b:1;s:25:\"ticket_delete_ticket_type\";b:1;s:30:\"ticket_manage_ticket_templates\";b:1;s:13:\"config_postie\";b:1;s:15:\"post_via_postie\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:5:\"admin\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:18:\"show_welcome_panel\";s:1:\"0\";s:37:\"wp_dashboard_quick_press_last_post_id\";s:3:\"187\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}\";s:14:\"_um_last_login\";s:10:\"1672410391\";s:35:\"um_user_profile_url_slug_user_login\";s:5:\"admin\";s:24:\"wp_persisted_preferences\";s:254:\"a:2:{s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:16:\"discussion-panel\";}}s:9:\"_modified\";s:24:\"2022-12-30T18:54:24.013Z\";}\";s:24:\"um_account_secure_fields\";s:310:\"a:4:{s:7:\"general\";a:4:{i:0;s:10:\"user_login\";i:1;s:10:\"first_name\";i:2;s:9:\"last_name\";i:3;s:10:\"user_email\";}s:8:\"password\";a:1:{i:0;s:13:\"user_password\";}s:7:\"privacy\";a:3:{i:0;s:15:\"profile_privacy\";i:1;s:15:\"profile_noindex\";i:2;s:15:\"hide_in_members\";}s:6:\"delete\";a:1:{i:0;s:20:\"single_user_password\";}}\";s:25:\"community-events-location\";s:34:\"a:1:{s:2:\"ip\";s:11:\"186.11.24.0\";}\";s:20:\"wp_wpas_open_tickets\";s:2:\"-1\";s:40:\"wp_mail_smtp_dash_widget_lite_hide_graph\";s:1:\"1\";s:19:\"account_status_name\";s:8:\"Aprobado\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:18:\"can_access_wpadmin\";i:1;s:20:\"can_not_see_adminbar\";i:0;s:17:\"can_edit_everyone\";i:1;s:19:\"can_delete_everyone\";i:1;s:16:\"can_edit_profile\";i:1;s:18:\"can_delete_profile\";i:1;s:16:\"default_homepage\";i:1;s:11:\"after_login\";s:14:\"redirect_admin\";s:12:\"after_logout\";s:13:\"redirect_home\";s:12:\"can_view_all\";i:1;s:24:\"can_make_private_profile\";i:1;s:26:\"can_access_private_profile\";i:1;s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:11:\"super_admin\";i:1;}', 'no'),
(13786, 'secret_key', '& El0~o2!^_kP43.A#wc~s%{HGN~E/|/BW8m&`EOk>a~k/h!nCOpca/g@4t^s(JW', 'no'),
(13965, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-6.1.1.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.1.1\";s:7:\"version\";s:5:\"6.1.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1672552171;s:15:\"version_checked\";s:5:\"6.1.1\";s:12:\"translations\";a:0:{}}', 'no'),
(13966, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1672552171;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:19:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.0.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.0.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:35:\"awesome-support/awesome-support.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/awesome-support\";s:4:\"slug\";s:15:\"awesome-support\";s:6:\"plugin\";s:35:\"awesome-support/awesome-support.php\";s:11:\"new_version\";s:5:\"6.1.2\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/awesome-support/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/awesome-support.6.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/awesome-support/assets/icon-256x256.png?rev=1849681\";s:2:\"1x\";s:68:\"https://ps.w.org/awesome-support/assets/icon-256x256.png?rev=1849681\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/awesome-support/assets/banner-772x250.jpg?rev=1849681\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:31:\"backup-backup/backup-backup.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:27:\"w.org/plugins/backup-backup\";s:4:\"slug\";s:13:\"backup-backup\";s:6:\"plugin\";s:31:\"backup-backup/backup-backup.php\";s:11:\"new_version\";s:5:\"1.2.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/backup-backup/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/backup-backup.1.2.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/backup-backup/assets/icon-128x128.gif?rev=2431539\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/backup-backup/assets/banner-772x250.png?rev=2429136\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:25:\"clever-fox/clever-fox.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:24:\"w.org/plugins/clever-fox\";s:4:\"slug\";s:10:\"clever-fox\";s:6:\"plugin\";s:25:\"clever-fox/clever-fox.php\";s:11:\"new_version\";s:4:\"15.9\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/clever-fox/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/clever-fox.15.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:63:\"https://ps.w.org/clever-fox/assets/icon-128x128.png?rev=2296625\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/clever-fox/assets/banner-772x250.jpg?rev=2597285\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/contact-form-cfdb7\";s:4:\"slug\";s:18:\"contact-form-cfdb7\";s:6:\"plugin\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:11:\"new_version\";s:7:\"1.2.6.5\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/contact-form-cfdb7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-cfdb7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-256x256.png?rev=1619878\";s:2:\"1x\";s:71:\"https://ps.w.org/contact-form-cfdb7/assets/icon-128x128.png?rev=1619878\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/contact-form-cfdb7/assets/banner-772x250.png?rev=1619902\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.8\";}s:23:\"elementor/elementor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.3.9.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=2622511\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=2597493\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=2597493\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=2597493\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}s:23:\"loginizer/loginizer.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/loginizer\";s:4:\"slug\";s:9:\"loginizer\";s:6:\"plugin\";s:23:\"loginizer/loginizer.php\";s:11:\"new_version\";s:5:\"1.7.6\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/loginizer/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/loginizer.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/loginizer/assets/icon-256x256.png?rev=1381093\";s:2:\"1x\";s:62:\"https://ps.w.org/loginizer/assets/icon-128x128.png?rev=1381093\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/loginizer/assets/banner-1544x500.jpg?rev=2668035\";s:2:\"1x\";s:64:\"https://ps.w.org/loginizer/assets/banner-772x250.jpg?rev=2668037\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:6:\"6.0.14\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/really-simple-ssl.6.0.14.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-256x256.png?rev=2839720\";s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=2839720\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/really-simple-ssl/assets/banner-1544x500.png?rev=2810049\";s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.png?rev=2810049\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.7\";}s:33:\"theme-my-login/theme-my-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/theme-my-login\";s:4:\"slug\";s:14:\"theme-my-login\";s:6:\"plugin\";s:33:\"theme-my-login/theme-my-login.php\";s:11:\"new_version\";s:5:\"7.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/theme-my-login/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/plugin/theme-my-login.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-256x256.png?rev=1891232\";s:2:\"1x\";s:67:\"https://ps.w.org/theme-my-login/assets/icon-128x128.png?rev=1891232\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/theme-my-login/assets/banner-1544x500.png?rev=1891232\";s:2:\"1x\";s:69:\"https://ps.w.org/theme-my-login/assets/banner-772x250.png?rev=1891232\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.4\";}s:23:\"anti-spam/anti-spam.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/anti-spam\";s:4:\"slug\";s:9:\"anti-spam\";s:6:\"plugin\";s:23:\"anti-spam/anti-spam.php\";s:11:\"new_version\";s:5:\"7.3.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/anti-spam/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/anti-spam.7.3.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/anti-spam/assets/icon-256x256.gif?rev=2394493\";s:2:\"1x\";s:62:\"https://ps.w.org/anti-spam/assets/icon-128x128.gif?rev=2394493\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/anti-spam/assets/banner-1544x500.png?rev=2394511\";s:2:\"1x\";s:64:\"https://ps.w.org/anti-spam/assets/banner-772x250.png?rev=2394513\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:59:\"top-position-google-finance/top-position-google-finance.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:41:\"w.org/plugins/top-position-google-finance\";s:4:\"slug\";s:27:\"top-position-google-finance\";s:6:\"plugin\";s:59:\"top-position-google-finance/top-position-google-finance.php\";s:11:\"new_version\";s:5:\"0.1.0\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/top-position-google-finance/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/top-position-google-finance.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:71:\"https://s.w.org/plugins/geopattern-icon/top-position-google-finance.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:5:\"2.9.2\";}s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:5:\"2.5.3\";s:3:\"url\";s:46:\"https://wordpress.org/plugins/ultimate-member/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/ultimate-member.2.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=2718101\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=2718101\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=2143172\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=2143172\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:37:\"user-role-editor/user-role-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/user-role-editor\";s:4:\"slug\";s:16:\"user-role-editor\";s:6:\"plugin\";s:37:\"user-role-editor/user-role-editor.php\";s:11:\"new_version\";s:6:\"4.63.2\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/user-role-editor/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/user-role-editor.4.63.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-256x256.jpg?rev=1020390\";s:2:\"1x\";s:69:\"https://ps.w.org/user-role-editor/assets/icon-128x128.jpg?rev=1020390\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/user-role-editor/assets/banner-772x250.png?rev=1263116\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}s:14:\"erp/wp-erp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:17:\"w.org/plugins/erp\";s:4:\"slug\";s:3:\"erp\";s:6:\"plugin\";s:14:\"erp/wp-erp.php\";s:11:\"new_version\";s:6:\"1.11.3\";s:3:\"url\";s:34:\"https://wordpress.org/plugins/erp/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/erp.1.11.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:56:\"https://ps.w.org/erp/assets/icon-256x256.gif?rev=2818774\";s:2:\"1x\";s:56:\"https://ps.w.org/erp/assets/icon-128x128.gif?rev=2818774\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/erp/assets/banner-1544x500.png?rev=1373388\";s:2:\"1x\";s:58:\"https://ps.w.org/erp/assets/banner-772x250.png?rev=1373388\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.4\";}s:29:\"wp-mail-smtp/wp_mail_smtp.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-mail-smtp\";s:4:\"slug\";s:12:\"wp-mail-smtp\";s:6:\"plugin\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:11:\"new_version\";s:5:\"3.7.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-mail-smtp/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-mail-smtp.3.7.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-256x256.png?rev=1755440\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-mail-smtp/assets/icon-128x128.png?rev=1755440\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-mail-smtp/assets/banner-1544x500.jpg?rev=2811094\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-mail-smtp/assets/banner-772x250.jpg?rev=2811094\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.2\";}s:33:\"wps-hide-login/wps-hide-login.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/wps-hide-login\";s:4:\"slug\";s:14:\"wps-hide-login\";s:6:\"plugin\";s:33:\"wps-hide-login/wps-hide-login.php\";s:11:\"new_version\";s:5:\"1.9.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/wps-hide-login/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wps-hide-login.1.9.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-256x256.png?rev=1820667\";s:2:\"1x\";s:67:\"https://ps.w.org/wps-hide-login/assets/icon-128x128.png?rev=1820667\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/wps-hide-login/assets/banner-1544x500.jpg?rev=1820667\";s:2:\"1x\";s:69:\"https://ps.w.org/wps-hide-login/assets/banner-772x250.jpg?rev=1820667\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.1\";}}s:7:\"checked\";a:19:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.6\";s:19:\"akismet/akismet.php\";s:5:\"5.0.2\";s:35:\"awesome-support/awesome-support.php\";s:5:\"6.1.2\";s:31:\"backup-backup/backup-backup.php\";s:5:\"1.2.7\";s:25:\"clever-fox/clever-fox.php\";s:4:\"15.9\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.7.2\";s:42:\"contact-form-cfdb7/contact-form-cfdb-7.php\";s:7:\"1.2.6.5\";s:23:\"elementor/elementor.php\";s:5:\"3.9.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"loginizer/loginizer.php\";s:5:\"1.7.6\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:6:\"6.0.14\";s:33:\"theme-my-login/theme-my-login.php\";s:5:\"7.1.5\";s:23:\"anti-spam/anti-spam.php\";s:5:\"7.3.4\";s:59:\"top-position-google-finance/top-position-google-finance.php\";s:5:\"0.1.0\";s:35:\"ultimate-member/ultimate-member.php\";s:5:\"2.5.3\";s:37:\"user-role-editor/user-role-editor.php\";s:6:\"4.63.2\";s:14:\"erp/wp-erp.php\";s:6:\"1.11.3\";s:29:\"wp-mail-smtp/wp_mail_smtp.php\";s:5:\"3.7.0\";s:33:\"wps-hide-login/wps-hide-login.php\";s:5:\"1.9.6\";}}', 'no'),
(13967, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1672552171;s:7:\"checked\";a:8:{s:5:\"avail\";s:6:\"1.0.92\";s:5:\"avril\";s:6:\"1.1.39\";s:10:\"blankslate\";s:4:\"2023\";s:5:\"kikin\";s:6:\"2022.4\";s:12:\"twentytwenty\";s:3:\"2.1\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:7:{s:5:\"avail\";a:6:{s:5:\"theme\";s:5:\"avail\";s:11:\"new_version\";s:6:\"1.0.92\";s:3:\"url\";s:35:\"https://wordpress.org/themes/avail/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/avail.1.0.92.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:5:\"avril\";a:6:{s:5:\"theme\";s:5:\"avril\";s:11:\"new_version\";s:6:\"1.1.39\";s:3:\"url\";s:35:\"https://wordpress.org/themes/avril/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/avril.1.1.39.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";i:2023;s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/blankslate.2023.zip\";s:8:\"requires\";s:3:\"5.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.1.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.7.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.0\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.0.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.3.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(13968, 'cfdb7_view_install_date', '2022-12-30 21:31:55', 'yes'),
(14185, '_site_transient_timeout_theme_roots', '1672553971', 'no'),
(14186, '_site_transient_theme_roots', 'a:8:{s:5:\"avail\";s:7:\"/themes\";s:5:\"avril\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:5:\"kikin\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(14292, '_transient_timeout_global_styles_kikin', '1672583941', 'no'),
(14293, '_transient_global_styles_kikin', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;--wp--preset--spacing--20: 0.44rem;--wp--preset--spacing--30: 0.67rem;--wp--preset--spacing--40: 1rem;--wp--preset--spacing--50: 1.5rem;--wp--preset--spacing--60: 2.25rem;--wp--preset--spacing--70: 3.38rem;--wp--preset--spacing--80: 5.06rem;}:where(.is-layout-flex){gap: 0.5em;}body .is-layout-flow > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-flow > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-flow > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignleft{float: left;margin-inline-start: 0;margin-inline-end: 2em;}body .is-layout-constrained > .alignright{float: right;margin-inline-start: 2em;margin-inline-end: 0;}body .is-layout-constrained > .aligncenter{margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > :where(:not(.alignleft):not(.alignright):not(.alignfull)){max-width: var(--wp--style--global--content-size);margin-left: auto !important;margin-right: auto !important;}body .is-layout-constrained > .alignwide{max-width: var(--wp--style--global--wide-size);}body .is-layout-flex{display: flex;}body .is-layout-flex{flex-wrap: wrap;align-items: center;}body .is-layout-flex > *{margin: 0;}:where(.wp-block-columns.is-layout-flex){gap: 2em;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(14294, '_transient_timeout_global_styles_svg_filters_kikin', '1672583941', 'no'),
(14295, '_transient_global_styles_svg_filters_kikin', '<svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-dark-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncG type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncB type=\"table\" tableValues=\"0 0.49803921568627\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-grayscale\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.54901960784314 0.98823529411765\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.71764705882353 0.25490196078431\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-red\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 1\" /><feFuncG type=\"table\" tableValues=\"0 0.27843137254902\" /><feFuncB type=\"table\" tableValues=\"0.5921568627451 0.27843137254902\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-midnight\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0 0\" /><feFuncG type=\"table\" tableValues=\"0 0.64705882352941\" /><feFuncB type=\"table\" tableValues=\"0 1\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-magenta-yellow\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.78039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.94901960784314\" /><feFuncB type=\"table\" tableValues=\"0.35294117647059 0.47058823529412\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-purple-green\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.65098039215686 0.40392156862745\" /><feFuncG type=\"table\" tableValues=\"0 1\" /><feFuncB type=\"table\" tableValues=\"0.44705882352941 0.4\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg><svg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 0 0\" width=\"0\" height=\"0\" focusable=\"false\" role=\"none\" style=\"visibility: hidden; position: absolute; left: -9999px; overflow: hidden;\" ><defs><filter id=\"wp-duotone-blue-orange\"><feColorMatrix color-interpolation-filters=\"sRGB\" type=\"matrix\" values=\" .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 .299 .587 .114 0 0 \" /><feComponentTransfer color-interpolation-filters=\"sRGB\" ><feFuncR type=\"table\" tableValues=\"0.098039215686275 1\" /><feFuncG type=\"table\" tableValues=\"0 0.66274509803922\" /><feFuncB type=\"table\" tableValues=\"0.84705882352941 0.41960784313725\" /><feFuncA type=\"table\" tableValues=\"1 1\" /></feComponentTransfer><feComposite in2=\"SourceGraphic\" operator=\"in\" /></filter></defs></svg>', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2022/10/logo.png'),
(4, 5, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:133;s:6:\"height\";i:44;s:4:\"file\";s:16:\"2022/10/logo.png\";s:8:\"filesize\";i:2447;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 6, '_wp_page_template', 'templates/template-homepage.php'),
(12, 10, '_edit_lock', '1665786103:1'),
(17, 15, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(18, 15, '_um_mode', 'register'),
(19, 15, '_um_core', 'register'),
(20, 15, '_um_register_use_custom_settings', '0'),
(21, 16, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";i:1;s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";i:1;s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";i:2;s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";i:1;s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";i:1;s:4:\"cols\";i:1;s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(22, 16, '_um_mode', 'login'),
(23, 16, '_um_core', 'login'),
(24, 16, '_um_login_use_custom_settings', ''),
(25, 17, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(26, 17, '_um_mode', 'profile'),
(27, 17, '_um_core', 'profile'),
(28, 17, '_um_profile_use_custom_settings', '0'),
(29, 18, '_um_core', 'members'),
(30, 18, '_um_template', 'members'),
(31, 18, '_um_mode', 'directory'),
(32, 18, '_um_view_types', 'a:1:{i:0;s:4:\"grid\";}'),
(33, 18, '_um_default_view', 'grid'),
(34, 18, '_um_roles', 'a:0:{}'),
(35, 18, '_um_has_profile_photo', '0'),
(36, 18, '_um_has_cover_photo', '0'),
(37, 18, '_um_show_these_users', ''),
(38, 18, '_um_exclude_these_users', ''),
(39, 18, '_um_sortby', 'user_registered_desc'),
(40, 18, '_um_sortby_custom', ''),
(41, 18, '_um_sortby_custom_label', ''),
(42, 18, '_um_enable_sorting', '0'),
(43, 18, '_um_sorting_fields', 'a:0:{}'),
(44, 18, '_um_profile_photo', '1'),
(45, 18, '_um_cover_photos', '1'),
(46, 18, '_um_show_name', '1'),
(47, 18, '_um_show_tagline', '0'),
(48, 18, '_um_tagline_fields', 'a:0:{}'),
(49, 18, '_um_show_userinfo', '0'),
(50, 18, '_um_reveal_fields', 'a:0:{}'),
(51, 18, '_um_show_social', '0'),
(52, 18, '_um_userinfo_animate', '1'),
(53, 18, '_um_search', '0'),
(54, 18, '_um_roles_can_search', 'a:0:{}'),
(55, 18, '_um_filters', '0'),
(56, 18, '_um_roles_can_filter', 'a:0:{}'),
(57, 18, '_um_search_fields', 'a:0:{}'),
(58, 18, '_um_filters_expanded', '0'),
(59, 18, '_um_filters_is_collapsible', '1'),
(60, 18, '_um_search_filters', 'a:0:{}'),
(61, 18, '_um_must_search', '0'),
(62, 18, '_um_max_users', ''),
(63, 18, '_um_profiles_per_page', '12'),
(64, 18, '_um_profiles_per_page_mobile', '6'),
(65, 18, '_um_directory_header', '{total_users} Members'),
(66, 18, '_um_directory_header_single', '{total_users} Member'),
(67, 18, '_um_directory_no_users', 'We are sorry. We cannot find any users who match your search criteria.'),
(76, 19, '_um_core', 'user'),
(77, 20, '_um_core', 'login'),
(78, 21, '_um_core', 'register'),
(79, 22, '_um_core', 'members'),
(80, 23, '_um_core', 'logout'),
(81, 24, '_um_core', 'account'),
(82, 25, '_um_core', 'password-reset'),
(83, 20, '_edit_lock', '1665686090:1'),
(84, 20, '_edit_last', '1'),
(85, 20, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(86, 10, '_edit_last', '1'),
(87, 10, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(88, 28, '_edit_lock', '1665780950:1'),
(89, 28, '_edit_last', '1'),
(90, 28, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(91, 16, '_edit_lock', '1665792241:1'),
(92, 16, '_edit_last', '1'),
(93, 16, '_um_register_use_custom_settings', ''),
(94, 16, '_um_register_role', '0'),
(95, 16, '_um_register_template', 'register'),
(96, 16, '_um_register_max_width', '450px'),
(97, 16, '_um_register_icons', 'label'),
(98, 16, '_um_register_primary_btn_word', 'Register'),
(99, 16, '_um_register_secondary_btn', ''),
(100, 16, '_um_register_secondary_btn_word', 'Login'),
(101, 16, '_um_register_use_gdpr', ''),
(102, 16, '_um_register_use_gdpr_content_id', '0'),
(103, 16, '_um_register_use_gdpr_toggle_show', 'Show privacy policy'),
(104, 16, '_um_register_use_gdpr_toggle_hide', 'Hide privacy policy'),
(105, 16, '_um_register_use_gdpr_agreement', 'Please confirm that you agree to our privacy policy'),
(106, 16, '_um_register_use_gdpr_error_text', 'Please confirm your acceptance of our privacy policy'),
(107, 16, '_um_profile_use_custom_settings', ''),
(108, 16, '_um_profile_role', ''),
(109, 16, '_um_profile_template', 'profile'),
(110, 16, '_um_profile_max_width', '1000px'),
(111, 16, '_um_profile_area_max_width', '600px'),
(112, 16, '_um_profile_icons', 'label'),
(113, 16, '_um_profile_primary_btn_word', 'Update Profile'),
(114, 16, '_um_profile_secondary_btn', ''),
(115, 16, '_um_profile_secondary_btn_word', 'Cancel'),
(116, 16, '_um_profile_cover_enabled', ''),
(117, 16, '_um_profile_coversize', '300'),
(118, 16, '_um_profile_cover_ratio', '2.7:1'),
(119, 16, '_um_profile_disable_photo_upload', ''),
(120, 16, '_um_profile_photosize', '190'),
(121, 16, '_um_profile_photo_required', ''),
(122, 16, '_um_profile_show_name', ''),
(123, 16, '_um_profile_show_social_links', ''),
(124, 16, '_um_profile_show_bio', ''),
(125, 16, '_um_login_template', 'login'),
(126, 16, '_um_login_max_width', '450px'),
(127, 16, '_um_login_icons', 'off'),
(128, 16, '_um_login_primary_btn_word', 'Ingresar'),
(129, 16, '_um_login_secondary_btn', ''),
(130, 16, '_um_login_secondary_btn_word', 'Register'),
(131, 16, '_um_login_forgot_pass_link', ''),
(132, 16, '_um_login_show_rememberme', ''),
(133, 16, '_um_login_after_login', 'redirect_url'),
(134, 16, '_um_login_redirect_url', 'http://circum.cl/system/'),
(135, 30, '_edit_lock', '1666016452:1'),
(136, 30, '_edit_last', '1'),
(137, 30, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(147, 35, '_edit_lock', '1666022757:1'),
(148, 35, '_edit_last', '1'),
(149, 35, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(150, 37, '_edit_lock', '1666121724:1'),
(151, 37, '_edit_last', '1'),
(152, 37, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(153, 39, '_edit_lock', '1666213739:1'),
(154, 39, '_edit_last', '1'),
(155, 39, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(156, 41, '_edit_lock', '1670210720:1'),
(159, 41, '_edit_last', '1'),
(162, 41, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(173, 48, '_edit_lock', '1666954915:1'),
(174, 48, '_edit_last', '1'),
(175, 48, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(176, 50, '_edit_lock', '1666964609:1'),
(177, 50, '_edit_last', '1'),
(178, 50, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(189, 56, '_edit_lock', '1667441762:1'),
(190, 56, '_edit_last', '1'),
(191, 56, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(192, 58, '_edit_last', '1'),
(193, 58, '_edit_lock', '1670210457:1'),
(196, 41, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(197, 41, '_meta_folio_name', 'field_6364648dbe982'),
(198, 60, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(199, 60, '_meta_folio_name', 'field_6364648dbe982'),
(202, 41, 'meta_folio_name_bstgo', 'BCI'),
(203, 41, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(204, 41, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(205, 41, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(206, 41, 'meta_folio_name_yahoo', 'BCI.SN'),
(207, 41, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(208, 41, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(209, 41, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(210, 41, 'meta_folio_name_google', ''),
(211, 41, '_meta_folio_name_google', 'field_63646a791c965'),
(212, 41, 'meta_folio_url_google', ''),
(213, 41, '_meta_folio_url_google', 'field_63646aa61c966'),
(214, 41, 'meta_folio_name_investing', 'bci-(sn)'),
(215, 41, '_meta_folio_name_investing', 'field_63646acf1c967'),
(216, 41, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(217, 41, '_meta_folio_url_investing', 'field_63646af01c968'),
(218, 41, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(219, 41, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(220, 72, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(221, 72, '_meta_folio_name', 'field_6364648dbe982'),
(222, 72, 'meta_folio_name_bstgo', ''),
(223, 72, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(224, 72, 'meta_folio_url_bstgo', ''),
(225, 72, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(226, 72, 'meta_folio_name_yahoo', 'BCI.SN'),
(227, 72, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(228, 72, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(229, 72, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(230, 72, 'meta_folio_name_google', ''),
(231, 72, '_meta_folio_name_google', 'field_63646a791c965'),
(232, 72, 'meta_folio_url_google', ''),
(233, 72, '_meta_folio_url_google', 'field_63646aa61c966'),
(234, 72, 'meta_folio_name_investing', ''),
(235, 72, '_meta_folio_name_investing', 'field_63646acf1c967'),
(236, 72, 'meta_folio_url_investing', ''),
(237, 72, '_meta_folio_url_investing', 'field_63646af01c968'),
(238, 72, 'meta_folio_url_cmf', ''),
(239, 72, '_meta_folio_url_cmf', 'field_63646b331c969'),
(242, 73, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(243, 73, '_meta_folio_name', 'field_6364648dbe982'),
(244, 73, 'meta_folio_name_bstgo', 'BCI'),
(245, 73, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(246, 73, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(247, 73, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(248, 73, 'meta_folio_name_yahoo', 'BCI.SN'),
(249, 73, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(250, 73, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(251, 73, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(252, 73, 'meta_folio_name_google', ''),
(253, 73, '_meta_folio_name_google', 'field_63646a791c965'),
(254, 73, 'meta_folio_url_google', ''),
(255, 73, '_meta_folio_url_google', 'field_63646aa61c966'),
(256, 73, 'meta_folio_name_investing', ''),
(257, 73, '_meta_folio_name_investing', 'field_63646acf1c967'),
(258, 73, 'meta_folio_url_investing', ''),
(259, 73, '_meta_folio_url_investing', 'field_63646af01c968'),
(260, 73, 'meta_folio_url_cmf', ''),
(261, 73, '_meta_folio_url_cmf', 'field_63646b331c969'),
(264, 74, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(265, 74, '_meta_folio_name', 'field_6364648dbe982'),
(266, 74, 'meta_folio_name_bstgo', 'BCI'),
(267, 74, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(268, 74, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(269, 74, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(270, 74, 'meta_folio_name_yahoo', 'BCI.SN'),
(271, 74, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(272, 74, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(273, 74, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(274, 74, 'meta_folio_name_google', ''),
(275, 74, '_meta_folio_name_google', 'field_63646a791c965'),
(276, 74, 'meta_folio_url_google', ''),
(277, 74, '_meta_folio_url_google', 'field_63646aa61c966'),
(278, 74, 'meta_folio_name_investing', 'bci-(sn)'),
(279, 74, '_meta_folio_name_investing', 'field_63646acf1c967'),
(280, 74, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(281, 74, '_meta_folio_url_investing', 'field_63646af01c968'),
(282, 74, 'meta_folio_url_cmf', ''),
(283, 74, '_meta_folio_url_cmf', 'field_63646b331c969'),
(288, 41, 'meta_folio_name_msn', 'fi-acyxa2'),
(289, 41, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(290, 41, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(291, 41, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(292, 78, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(293, 78, '_meta_folio_name', 'field_6364648dbe982'),
(294, 78, 'meta_folio_name_bstgo', 'BCI'),
(295, 78, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(296, 78, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(297, 78, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(298, 78, 'meta_folio_name_yahoo', 'BCI.SN'),
(299, 78, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(300, 78, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(301, 78, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(302, 78, 'meta_folio_name_google', ''),
(303, 78, '_meta_folio_name_google', 'field_63646a791c965'),
(304, 78, 'meta_folio_url_google', ''),
(305, 78, '_meta_folio_url_google', 'field_63646aa61c966'),
(306, 78, 'meta_folio_name_investing', 'bci-(sn)'),
(307, 78, '_meta_folio_name_investing', 'field_63646acf1c967'),
(308, 78, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(309, 78, '_meta_folio_url_investing', 'field_63646af01c968'),
(310, 78, 'meta_folio_url_cmf', ''),
(311, 78, '_meta_folio_url_cmf', 'field_63646b331c969'),
(312, 78, 'meta_folio_name_msn', 'fi-acyxa2'),
(313, 78, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(314, 78, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(315, 78, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(318, 41, 'meta_folio_name_cmf', 'Listado Global'),
(319, 41, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(320, 81, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(321, 81, '_meta_folio_name', 'field_6364648dbe982'),
(322, 81, 'meta_folio_name_bstgo', 'BCI'),
(323, 81, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(324, 81, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(325, 81, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(326, 81, 'meta_folio_name_yahoo', 'BCI.SN'),
(327, 81, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(328, 81, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(329, 81, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(330, 81, 'meta_folio_name_google', ''),
(331, 81, '_meta_folio_name_google', 'field_63646a791c965'),
(332, 81, 'meta_folio_url_google', ''),
(333, 81, '_meta_folio_url_google', 'field_63646aa61c966'),
(334, 81, 'meta_folio_name_investing', 'bci-(sn)'),
(335, 81, '_meta_folio_name_investing', 'field_63646acf1c967'),
(336, 81, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(337, 81, '_meta_folio_url_investing', 'field_63646af01c968'),
(338, 81, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(339, 81, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(340, 81, 'meta_folio_name_msn', 'fi-acyxa2'),
(341, 81, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(342, 81, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(343, 81, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(344, 81, 'meta_folio_name_cmf', 'Listado Global'),
(345, 81, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(348, 41, 'meta_folio_name_trader', 'Banco Estado'),
(349, 41, '_meta_folio_name_trader', 'field_6365b2b036465'),
(350, 41, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(351, 41, '_meta_folio_url_trader', 'field_6365b2d836466'),
(352, 84, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(353, 84, '_meta_folio_name', 'field_6364648dbe982'),
(354, 84, 'meta_folio_name_bstgo', 'BCI'),
(355, 84, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(356, 84, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(357, 84, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(358, 84, 'meta_folio_name_yahoo', 'BCI.SN'),
(359, 84, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(360, 84, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(361, 84, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(362, 84, 'meta_folio_name_google', ''),
(363, 84, '_meta_folio_name_google', 'field_63646a791c965'),
(364, 84, 'meta_folio_url_google', ''),
(365, 84, '_meta_folio_url_google', 'field_63646aa61c966'),
(366, 84, 'meta_folio_name_investing', 'bci-(sn)'),
(367, 84, '_meta_folio_name_investing', 'field_63646acf1c967'),
(368, 84, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(369, 84, '_meta_folio_url_investing', 'field_63646af01c968'),
(370, 84, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(371, 84, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(372, 84, 'meta_folio_name_msn', 'fi-acyxa2'),
(373, 84, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(374, 84, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(375, 84, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(376, 84, 'meta_folio_name_cmf', 'Listado Global'),
(377, 84, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(378, 84, 'meta_folio_name_trader', 'Banco Estado'),
(379, 84, '_meta_folio_name_trader', 'field_6365b2b036465'),
(380, 84, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(381, 84, '_meta_folio_url_trader', 'field_6365b2d836466'),
(384, 85, '_edit_lock', '1668643240:1'),
(387, 85, '_edit_last', '1'),
(388, 85, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(389, 85, 'meta_folio_name', 'SOC. INVER. PAMPA CALICHERA S.A. SERIE A'),
(390, 85, '_meta_folio_name', 'field_6364648dbe982'),
(391, 85, 'meta_folio_name_bstgo', 'CALICHERAA'),
(392, 85, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(393, 85, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CALICHERAA'),
(394, 85, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(395, 85, 'meta_folio_name_yahoo', 'CALICHERAA.SN'),
(396, 85, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(397, 85, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CALICHERAA.SN'),
(398, 85, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(399, 85, 'meta_folio_name_google', ''),
(400, 85, '_meta_folio_name_google', 'field_63646a791c965'),
(401, 85, 'meta_folio_url_google', ''),
(402, 85, '_meta_folio_url_google', 'field_63646aa61c966'),
(403, 85, 'meta_folio_name_investing', 'pampa-calichera'),
(404, 85, '_meta_folio_name_investing', 'field_63646acf1c967'),
(405, 85, 'meta_folio_url_investing', 'https://es.investing.com/equities/pampa-calichera'),
(406, 85, '_meta_folio_url_investing', 'field_63646af01c968'),
(407, 85, 'meta_folio_name_msn', 'fi-acyxzr'),
(408, 85, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(409, 85, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxzr?ocid=winp1taskbar&duration=Max'),
(410, 85, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(411, 85, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(412, 85, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(413, 85, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=96511530&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(414, 85, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(415, 85, 'meta_folio_name_trader', 'Banco Estado'),
(416, 85, '_meta_folio_name_trader', 'field_6365b2b036465'),
(417, 85, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(418, 85, '_meta_folio_url_trader', 'field_6365b2d836466'),
(451, 89, 'meta_folio_name', 'SOC. INVER. PAMPA CALICHERA S.A. SERIE A'),
(452, 89, '_meta_folio_name', 'field_6364648dbe982'),
(453, 89, 'meta_folio_name_bstgo', 'CALICHERAA'),
(454, 89, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(455, 89, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CALICHERAA'),
(456, 89, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(457, 89, 'meta_folio_name_yahoo', 'CALICHERAA.SN'),
(458, 89, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(459, 89, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CALICHERAA.SN'),
(460, 89, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(461, 89, 'meta_folio_name_google', ''),
(462, 89, '_meta_folio_name_google', 'field_63646a791c965'),
(463, 89, 'meta_folio_url_google', ''),
(464, 89, '_meta_folio_url_google', 'field_63646aa61c966'),
(465, 89, 'meta_folio_name_investing', 'pampa-calichera'),
(466, 89, '_meta_folio_name_investing', 'field_63646acf1c967'),
(467, 89, 'meta_folio_url_investing', 'https://es.investing.com/equities/pampa-calichera'),
(468, 89, '_meta_folio_url_investing', 'field_63646af01c968'),
(469, 89, 'meta_folio_name_msn', 'fi-acyxzr'),
(470, 89, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(471, 89, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxzr?ocid=winp1taskbar&duration=Max'),
(472, 89, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(473, 89, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(474, 89, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(475, 89, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=96511530&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(476, 89, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(477, 89, 'meta_folio_name_trader', 'Banco Estado'),
(478, 89, '_meta_folio_name_trader', 'field_6365b2b036465'),
(479, 89, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(480, 89, '_meta_folio_url_trader', 'field_6365b2d836466'),
(488, 92, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(489, 92, '_meta_folio_name', 'field_6364648dbe982'),
(490, 92, 'meta_folio_name_bstgo', 'BCI'),
(491, 92, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(492, 92, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(493, 92, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(494, 92, 'meta_folio_name_yahoo', 'BCI.SN'),
(495, 92, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(496, 92, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(497, 92, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(498, 92, 'meta_folio_name_google', ''),
(499, 92, '_meta_folio_name_google', 'field_63646a791c965'),
(500, 92, 'meta_folio_url_google', ''),
(501, 92, '_meta_folio_url_google', 'field_63646aa61c966'),
(502, 92, 'meta_folio_name_investing', 'bci-(sn)'),
(503, 92, '_meta_folio_name_investing', 'field_63646acf1c967'),
(504, 92, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(505, 92, '_meta_folio_url_investing', 'field_63646af01c968'),
(506, 92, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(507, 92, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(508, 92, 'meta_folio_name_msn', 'fi-acyxa2'),
(509, 92, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(510, 92, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(511, 92, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(512, 92, 'meta_folio_name_cmf', 'Listado Global'),
(513, 92, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(514, 92, 'meta_folio_name_trader', 'Banco Estado'),
(515, 92, '_meta_folio_name_trader', 'field_6365b2b036465'),
(516, 92, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(517, 92, '_meta_folio_url_trader', 'field_6365b2d836466'),
(518, 93, '_edit_lock', '1668471282:1'),
(519, 93, '_edit_last', '1'),
(520, 93, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(654, 96, '_edit_lock', '1668720163:1'),
(657, 96, '_edit_last', '1'),
(660, 96, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(661, 96, 'meta_folio_name', 'BANCO DE CHILE'),
(662, 96, '_meta_folio_name', 'field_6364648dbe982'),
(663, 96, 'meta_folio_name_bstgo', 'CHILE'),
(664, 96, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(665, 96, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(666, 96, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(667, 96, 'meta_folio_name_yahoo', 'CHILE.SN'),
(668, 96, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(669, 96, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(670, 96, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(671, 96, 'meta_folio_name_google', 'NYSE: BCH'),
(672, 96, '_meta_folio_name_google', 'field_63646a791c965'),
(673, 96, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(674, 96, '_meta_folio_url_google', 'field_63646aa61c966'),
(675, 96, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(676, 96, '_meta_folio_name_investing', 'field_63646acf1c967'),
(677, 96, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(678, 96, '_meta_folio_url_investing', 'field_63646af01c968'),
(679, 96, 'meta_folio_name_msn', 'fi-aczlar'),
(680, 96, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(681, 96, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczlar?ocid=winp1taskbar&duration=Max'),
(682, 96, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(683, 96, 'meta_folio_name_cmf', ''),
(684, 96, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(685, 96, 'meta_folio_url_cmf', ''),
(686, 96, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(687, 96, 'meta_folio_name_trader', 'Banco Estado'),
(688, 96, '_meta_folio_name_trader', 'field_6365b2b036465'),
(689, 96, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(690, 96, '_meta_folio_url_trader', 'field_6365b2d836466'),
(691, 98, 'meta_folio_name', 'BANCO DE CHILE'),
(692, 98, '_meta_folio_name', 'field_6364648dbe982'),
(693, 98, 'meta_folio_name_bstgo', 'CHILE'),
(694, 98, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(695, 98, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(696, 98, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(697, 98, 'meta_folio_name_yahoo', 'CHILE.SN'),
(698, 98, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(699, 98, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(700, 98, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(701, 98, 'meta_folio_name_google', 'NYSE: BCH'),
(702, 98, '_meta_folio_name_google', 'field_63646a791c965');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(703, 98, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(704, 98, '_meta_folio_url_google', 'field_63646aa61c966'),
(705, 98, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(706, 98, '_meta_folio_name_investing', 'field_63646acf1c967'),
(707, 98, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(708, 98, '_meta_folio_url_investing', 'field_63646af01c968'),
(709, 98, 'meta_folio_name_msn', ''),
(710, 98, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(711, 98, 'meta_folio_url_msn', ''),
(712, 98, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(713, 98, 'meta_folio_name_cmf', ''),
(714, 98, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(715, 98, 'meta_folio_url_cmf', ''),
(716, 98, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(717, 98, 'meta_folio_name_trader', 'Banco Estado'),
(718, 98, '_meta_folio_name_trader', 'field_6365b2b036465'),
(719, 98, 'meta_folio_url_trader', ''),
(720, 98, '_meta_folio_url_trader', 'field_6365b2d836466'),
(723, 99, 'meta_folio_name', 'BANCO DE CHILE'),
(724, 99, '_meta_folio_name', 'field_6364648dbe982'),
(725, 99, 'meta_folio_name_bstgo', 'CHILE'),
(726, 99, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(727, 99, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(728, 99, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(729, 99, 'meta_folio_name_yahoo', 'CHILE.SN'),
(730, 99, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(731, 99, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(732, 99, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(733, 99, 'meta_folio_name_google', 'NYSE: BCH'),
(734, 99, '_meta_folio_name_google', 'field_63646a791c965'),
(735, 99, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(736, 99, '_meta_folio_url_google', 'field_63646aa61c966'),
(737, 99, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(738, 99, '_meta_folio_name_investing', 'field_63646acf1c967'),
(739, 99, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(740, 99, '_meta_folio_url_investing', 'field_63646af01c968'),
(741, 99, 'meta_folio_name_msn', ''),
(742, 99, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(743, 99, 'meta_folio_url_msn', ''),
(744, 99, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(745, 99, 'meta_folio_name_cmf', ''),
(746, 99, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(747, 99, 'meta_folio_url_cmf', ''),
(748, 99, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(749, 99, 'meta_folio_name_trader', 'Banco Estado'),
(750, 99, '_meta_folio_name_trader', 'field_6365b2b036465'),
(751, 99, 'meta_folio_url_trader', ''),
(752, 99, '_meta_folio_url_trader', 'field_6365b2d836466'),
(755, 100, '_edit_lock', '1672149820:1'),
(758, 100, '_edit_last', '1'),
(761, 100, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(762, 100, 'meta_folio_name', 'ENTEL CHILE'),
(763, 100, '_meta_folio_name', 'field_6364648dbe982'),
(764, 100, 'meta_folio_name_bstgo', 'ENELCHILE'),
(765, 100, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(766, 100, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(767, 100, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(768, 100, 'meta_folio_name_yahoo', 'ENELCHILE.SN'),
(769, 100, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(770, 100, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/ENELCHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjozLjMzODEwODg4MjUyMTQ5LCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiRU5FTENISUxFLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Il19fSwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX0sImxpbmVXaWR0aCI6Miwic3RyaXBlZEJhY2tncm91bmQiOnRydWUsImV2ZW50cyI6dHJ1ZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwic3ltYm9scyI6W3sic3ltYm9sIjoiRU5FTENISUxFLlNOIiwic3ltYm9sT2JqZWN0Ijp7InN5bWJvbCI6IkVORUxDSElMRS5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(771, 100, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(772, 100, 'meta_folio_name_google', ''),
(773, 100, '_meta_folio_name_google', 'field_63646a791c965'),
(774, 100, 'meta_folio_url_google', ''),
(775, 100, '_meta_folio_url_google', 'field_63646aa61c966'),
(776, 100, 'meta_folio_name_investing', 'enersis-chile-sa'),
(777, 100, '_meta_folio_name_investing', 'field_63646acf1c967'),
(778, 100, 'meta_folio_url_investing', 'https://es.investing.com/equities/enersis-chile-sa-advanced-chart'),
(779, 100, '_meta_folio_url_investing', 'field_63646af01c968'),
(780, 100, 'meta_folio_name_msn', 'fi-aczprw'),
(781, 100, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(782, 100, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczprw?ocid=winp1taskbar&duration=Max'),
(783, 100, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(784, 100, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(785, 100, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(786, 100, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?auth=&send=&mercado=V&rut=92580000&grupo=&tipoentidad=RVEMI&vig=VI&row=AAAwy2ACTAAABy7AAl&control=svs&pestania=1'),
(787, 100, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(788, 100, 'meta_folio_name_trader', 'Banco Estado'),
(789, 100, '_meta_folio_name_trader', 'field_6365b2b036465'),
(790, 100, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(791, 100, '_meta_folio_url_trader', 'field_6365b2d836466'),
(792, 102, 'meta_folio_name', 'ENTEL CHILE'),
(793, 102, '_meta_folio_name', 'field_6364648dbe982'),
(794, 102, 'meta_folio_name_bstgo', 'ENELCHILE'),
(795, 102, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(796, 102, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(797, 102, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(798, 102, 'meta_folio_name_yahoo', 'ENELCHILE.SN'),
(799, 102, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(800, 102, 'meta_folio_url_yahoo', ''),
(801, 102, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(802, 102, 'meta_folio_name_google', 'NYSE: ENIC'),
(803, 102, '_meta_folio_name_google', 'field_63646a791c965'),
(804, 102, 'meta_folio_url_google', ''),
(805, 102, '_meta_folio_url_google', 'field_63646aa61c966'),
(806, 102, 'meta_folio_name_investing', 'enersis-chile-sa'),
(807, 102, '_meta_folio_name_investing', 'field_63646acf1c967'),
(808, 102, 'meta_folio_url_investing', 'https://es.investing.com/equities/enersis-chile-sa-advanced-chart'),
(809, 102, '_meta_folio_url_investing', 'field_63646af01c968'),
(810, 102, 'meta_folio_name_msn', ''),
(811, 102, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(812, 102, 'meta_folio_url_msn', ''),
(813, 102, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(814, 102, 'meta_folio_name_cmf', ''),
(815, 102, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(816, 102, 'meta_folio_url_cmf', ''),
(817, 102, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(818, 102, 'meta_folio_name_trader', ''),
(819, 102, '_meta_folio_name_trader', 'field_6365b2b036465'),
(820, 102, 'meta_folio_url_trader', ''),
(821, 102, '_meta_folio_url_trader', 'field_6365b2d836466'),
(822, 103, '_edit_lock', '1672151004:1'),
(825, 103, '_edit_last', '1'),
(828, 103, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(829, 103, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(830, 103, '_meta_folio_name', 'field_6364648dbe982'),
(831, 103, 'meta_folio_name_bstgo', 'NITRATOS'),
(832, 103, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(833, 103, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(834, 103, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(835, 103, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(836, 103, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(837, 103, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/NITRATOS.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjMzLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiTklUUkFUT1MuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(838, 103, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(839, 103, 'meta_folio_name_google', ''),
(840, 103, '_meta_folio_name_google', 'field_63646a791c965'),
(841, 103, 'meta_folio_url_google', ''),
(842, 103, '_meta_folio_url_google', 'field_63646aa61c966'),
(843, 103, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(844, 103, '_meta_folio_name_investing', 'field_63646acf1c967'),
(845, 103, 'meta_folio_url_investing', 'https://es.investing.com/equities/nitratos-de-chile-sa'),
(846, 103, '_meta_folio_url_investing', 'field_63646af01c968'),
(847, 103, 'meta_folio_name_msn', ''),
(848, 103, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(849, 103, 'meta_folio_url_msn', ''),
(850, 103, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(851, 103, 'meta_folio_name_cmf', ''),
(852, 103, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(853, 103, 'meta_folio_url_cmf', ''),
(854, 103, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(855, 103, 'meta_folio_name_trader', 'Banco Estado'),
(856, 103, '_meta_folio_name_trader', 'field_6365b2b036465'),
(857, 103, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(858, 103, '_meta_folio_url_trader', 'field_6365b2d836466'),
(859, 105, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(860, 105, '_meta_folio_name', 'field_6364648dbe982'),
(861, 105, 'meta_folio_name_bstgo', 'NITRATOS'),
(862, 105, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(863, 105, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(864, 105, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(865, 105, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(866, 105, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(867, 105, 'meta_folio_url_yahoo', ''),
(868, 105, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(869, 105, 'meta_folio_name_google', ''),
(870, 105, '_meta_folio_name_google', 'field_63646a791c965'),
(871, 105, 'meta_folio_url_google', ''),
(872, 105, '_meta_folio_url_google', 'field_63646aa61c966'),
(873, 105, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(874, 105, '_meta_folio_name_investing', 'field_63646acf1c967'),
(875, 105, 'meta_folio_url_investing', ''),
(876, 105, '_meta_folio_url_investing', 'field_63646af01c968'),
(877, 105, 'meta_folio_name_msn', ''),
(878, 105, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(879, 105, 'meta_folio_url_msn', ''),
(880, 105, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(881, 105, 'meta_folio_name_cmf', ''),
(882, 105, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(883, 105, 'meta_folio_url_cmf', ''),
(884, 105, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(885, 105, 'meta_folio_name_trader', 'Banco Estado'),
(886, 105, '_meta_folio_name_trader', 'field_6365b2b036465'),
(887, 105, 'meta_folio_url_trader', ''),
(888, 105, '_meta_folio_url_trader', 'field_6365b2d836466'),
(889, 106, '_edit_lock', '1672150568:1'),
(892, 106, '_edit_last', '1'),
(893, 106, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(894, 106, 'meta_folio_name', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.'),
(895, 106, '_meta_folio_name', 'field_6364648dbe982'),
(896, 106, 'meta_folio_name_bstgo', 'ORO BLANCO'),
(897, 106, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(898, 106, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ORO%20BLANCO'),
(899, 106, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(900, 106, 'meta_folio_name_yahoo', 'ORO-BLANCO.SN'),
(901, 106, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(902, 106, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/ORO-BLANCO.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiT1JPLUJMQU5DTy5TTiIsImNoYXJ0TmFtZSI6ImNoYXJ0IiwiaW5kZXgiOjAsInlBeGlzIjp7Im5hbWUiOiJjaGFydCIsInBvc2l0aW9uIjpudWxsfSwieWF4aXNMSFMiOltdLCJ5YXhpc1JIUyI6WyJjaGFydCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOnRydWUsImNvbG9yIjoiIzAwODFmMiIsInN0cmlwZWRCYWNrZ3JvdWQiOnRydWUsInN5bWJvbHMiOlt7InN5bWJvbCI6Ik9STy1CTEFOQ08uU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiT1JPLUJMQU5DTy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(903, 106, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(904, 106, 'meta_folio_name_google', ''),
(905, 106, '_meta_folio_name_google', 'field_63646a791c965'),
(906, 106, 'meta_folio_url_google', ''),
(907, 106, '_meta_folio_url_google', 'field_63646aa61c966'),
(908, 106, 'meta_folio_name_investing', 'oro-blanco'),
(909, 106, '_meta_folio_name_investing', 'field_63646acf1c967'),
(910, 106, 'meta_folio_url_investing', 'https://es.investing.com/equities/oro-blanco-advanced-chart'),
(911, 106, '_meta_folio_url_investing', 'field_63646af01c968'),
(912, 106, 'meta_folio_name_msn', ''),
(913, 106, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(914, 106, 'meta_folio_url_msn', ''),
(915, 106, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(916, 106, 'meta_folio_name_cmf', ''),
(917, 106, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(918, 106, 'meta_folio_url_cmf', ''),
(919, 106, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(920, 106, 'meta_folio_name_trader', 'Banco Estado'),
(921, 106, '_meta_folio_name_trader', 'field_6365b2b036465'),
(922, 106, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(923, 106, '_meta_folio_url_trader', 'field_6365b2d836466'),
(924, 108, 'meta_folio_name', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.'),
(925, 108, '_meta_folio_name', 'field_6364648dbe982'),
(926, 108, 'meta_folio_name_bstgo', 'ORO BLANCO'),
(927, 108, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(928, 108, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ORO%20BLANCO'),
(929, 108, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(930, 108, 'meta_folio_name_yahoo', 'ORO-BLANCO.SN'),
(931, 108, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(932, 108, 'meta_folio_url_yahoo', ''),
(933, 108, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(934, 108, 'meta_folio_name_google', ''),
(935, 108, '_meta_folio_name_google', 'field_63646a791c965'),
(936, 108, 'meta_folio_url_google', ''),
(937, 108, '_meta_folio_url_google', 'field_63646aa61c966'),
(938, 108, 'meta_folio_name_investing', 'oro-blanco'),
(939, 108, '_meta_folio_name_investing', 'field_63646acf1c967'),
(940, 108, 'meta_folio_url_investing', 'https://es.investing.com/equities/oro-blanco-advanced-chart'),
(941, 108, '_meta_folio_url_investing', 'field_63646af01c968'),
(942, 108, 'meta_folio_name_msn', ''),
(943, 108, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(944, 108, 'meta_folio_url_msn', ''),
(945, 108, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(946, 108, 'meta_folio_name_cmf', ''),
(947, 108, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(948, 108, 'meta_folio_url_cmf', ''),
(949, 108, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(950, 108, 'meta_folio_name_trader', 'Banco Estado'),
(951, 108, '_meta_folio_name_trader', 'field_6365b2b036465'),
(952, 108, 'meta_folio_url_trader', ''),
(953, 108, '_meta_folio_url_trader', 'field_6365b2d836466'),
(954, 109, '_edit_lock', '1672150433:1'),
(957, 109, '_edit_last', '1'),
(960, 109, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(961, 109, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(962, 109, '_meta_folio_name', 'field_6364648dbe982'),
(963, 109, 'meta_folio_name_bstgo', 'SQM-A'),
(964, 109, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(965, 109, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(966, 109, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(967, 109, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(968, 109, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(969, 109, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-A.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUEuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQS5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(970, 109, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(971, 109, 'meta_folio_name_google', 'NYSE: SQM'),
(972, 109, '_meta_folio_name_google', 'field_63646a791c965'),
(973, 109, 'meta_folio_url_google', 'https://www.google.com/finance/quote/SQM:NYSE?window=MAX'),
(974, 109, '_meta_folio_url_google', 'field_63646aa61c966'),
(975, 109, 'meta_folio_name_investing', 'soquimich-a'),
(976, 109, '_meta_folio_name_investing', 'field_63646acf1c967'),
(977, 109, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(978, 109, '_meta_folio_url_investing', 'field_63646af01c968'),
(979, 109, 'meta_folio_name_msn', 'fi-a23ih7'),
(980, 109, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(981, 109, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(982, 109, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(983, 109, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(984, 109, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(985, 109, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(986, 109, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(987, 109, 'meta_folio_name_trader', 'Banco Estado'),
(988, 109, '_meta_folio_name_trader', 'field_6365b2b036465'),
(989, 109, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(990, 109, '_meta_folio_url_trader', 'field_6365b2d836466'),
(991, 111, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(992, 111, '_meta_folio_name', 'field_6364648dbe982'),
(993, 111, 'meta_folio_name_bstgo', 'SQM-A'),
(994, 111, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(995, 111, 'meta_folio_url_bstgo', ''),
(996, 111, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(997, 111, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(998, 111, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(999, 111, 'meta_folio_url_yahoo', ''),
(1000, 111, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1001, 111, 'meta_folio_name_google', 'NYSE: SQM'),
(1002, 111, '_meta_folio_name_google', 'field_63646a791c965'),
(1003, 111, 'meta_folio_url_google', ''),
(1004, 111, '_meta_folio_url_google', 'field_63646aa61c966'),
(1005, 111, 'meta_folio_name_investing', 'soquimich-a'),
(1006, 111, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1007, 111, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(1008, 111, '_meta_folio_url_investing', 'field_63646af01c968'),
(1009, 111, 'meta_folio_name_msn', ''),
(1010, 111, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1011, 111, 'meta_folio_url_msn', ''),
(1012, 111, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1013, 111, 'meta_folio_name_cmf', ''),
(1014, 111, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1015, 111, 'meta_folio_url_cmf', ''),
(1016, 111, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1017, 111, 'meta_folio_name_trader', 'Banco Estado'),
(1018, 111, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1019, 111, 'meta_folio_url_trader', ''),
(1020, 111, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1021, 112, '_edit_lock', '1672150537:1'),
(1024, 112, '_edit_last', '1'),
(1027, 112, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1028, 112, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(1029, 112, '_meta_folio_name', 'field_6364648dbe982'),
(1030, 112, 'meta_folio_name_bstgo', 'SQM-B'),
(1031, 112, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1032, 112, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B'),
(1033, 112, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1034, 112, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(1035, 112, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1036, 112, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-B.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUIuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQi5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQi5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(1037, 112, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1038, 112, 'meta_folio_name_google', 'NYSE: SQM'),
(1039, 112, '_meta_folio_name_google', 'field_63646a791c965'),
(1040, 112, 'meta_folio_url_google', 'https://www.google.com/finance/quote/SQM:NYSE?window=MAX'),
(1041, 112, '_meta_folio_url_google', 'field_63646aa61c966'),
(1042, 112, 'meta_folio_name_investing', 'soquimich-b'),
(1043, 112, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1044, 112, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(1045, 112, '_meta_folio_url_investing', 'field_63646af01c968'),
(1046, 112, 'meta_folio_name_msn', ''),
(1047, 112, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1048, 112, 'meta_folio_url_msn', ''),
(1049, 112, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1050, 112, 'meta_folio_name_cmf', ''),
(1051, 112, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1052, 112, 'meta_folio_url_cmf', ''),
(1053, 112, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1054, 112, 'meta_folio_name_trader', 'Banco Estado'),
(1055, 112, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1056, 112, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1057, 112, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1058, 114, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(1059, 114, '_meta_folio_name', 'field_6364648dbe982'),
(1060, 114, 'meta_folio_name_bstgo', 'SQM-B'),
(1061, 114, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1062, 114, 'meta_folio_url_bstgo', ''),
(1063, 114, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1064, 114, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(1065, 114, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1066, 114, 'meta_folio_url_yahoo', ''),
(1067, 114, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1068, 114, 'meta_folio_name_google', 'NYSE: SQM'),
(1069, 114, '_meta_folio_name_google', 'field_63646a791c965'),
(1070, 114, 'meta_folio_url_google', ''),
(1071, 114, '_meta_folio_url_google', 'field_63646aa61c966'),
(1072, 114, 'meta_folio_name_investing', 'soquimich-b'),
(1073, 114, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1074, 114, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(1075, 114, '_meta_folio_url_investing', 'field_63646af01c968'),
(1076, 114, 'meta_folio_name_msn', ''),
(1077, 114, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1078, 114, 'meta_folio_url_msn', ''),
(1079, 114, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1080, 114, 'meta_folio_name_cmf', ''),
(1081, 114, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1082, 114, 'meta_folio_url_cmf', ''),
(1083, 114, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1084, 114, 'meta_folio_name_trader', ''),
(1085, 114, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1086, 114, 'meta_folio_url_trader', ''),
(1087, 114, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1092, 115, 'meta_folio_name', 'BANCO DE CHILE'),
(1093, 115, '_meta_folio_name', 'field_6364648dbe982'),
(1094, 115, 'meta_folio_name_bstgo', 'CHILE'),
(1095, 115, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1096, 115, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(1097, 115, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1098, 115, 'meta_folio_name_yahoo', 'CHILE.SN'),
(1099, 115, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1100, 115, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(1101, 115, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1102, 115, 'meta_folio_name_google', 'NYSE: BCH'),
(1103, 115, '_meta_folio_name_google', 'field_63646a791c965'),
(1104, 115, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(1105, 115, '_meta_folio_url_google', 'field_63646aa61c966'),
(1106, 115, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(1107, 115, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1108, 115, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(1109, 115, '_meta_folio_url_investing', 'field_63646af01c968'),
(1110, 115, 'meta_folio_name_msn', ''),
(1111, 115, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1112, 115, 'meta_folio_url_msn', ''),
(1113, 115, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1114, 115, 'meta_folio_name_cmf', ''),
(1115, 115, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1116, 115, 'meta_folio_url_cmf', ''),
(1117, 115, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1118, 115, 'meta_folio_name_trader', 'Banco Estado'),
(1119, 115, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1120, 115, 'meta_folio_url_trader', ''),
(1121, 115, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1126, 116, 'meta_folio_name', 'SOC. INVER. PAMPA CALICHERA S.A. SERIE A'),
(1127, 116, '_meta_folio_name', 'field_6364648dbe982'),
(1128, 116, 'meta_folio_name_bstgo', 'CALICHERAA'),
(1129, 116, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1130, 116, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CALICHERAA'),
(1131, 116, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1132, 116, 'meta_folio_name_yahoo', 'CALICHERAA.SN'),
(1133, 116, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1134, 116, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CALICHERAA.SN'),
(1135, 116, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1136, 116, 'meta_folio_name_google', ''),
(1137, 116, '_meta_folio_name_google', 'field_63646a791c965'),
(1138, 116, 'meta_folio_url_google', ''),
(1139, 116, '_meta_folio_url_google', 'field_63646aa61c966'),
(1140, 116, 'meta_folio_name_investing', 'pampa-calichera'),
(1141, 116, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1142, 116, 'meta_folio_url_investing', 'https://es.investing.com/equities/pampa-calichera'),
(1143, 116, '_meta_folio_url_investing', 'field_63646af01c968'),
(1144, 116, 'meta_folio_name_msn', 'fi-acyxzr'),
(1145, 116, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1146, 116, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxzr?ocid=winp1taskbar&duration=Max'),
(1147, 116, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1148, 116, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1149, 116, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1150, 116, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=96511530&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(1151, 116, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1152, 116, 'meta_folio_name_trader', 'Banco Estado'),
(1153, 116, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1154, 116, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1155, 116, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1162, 117, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(1163, 117, '_meta_folio_name', 'field_6364648dbe982'),
(1164, 117, 'meta_folio_name_bstgo', 'BCI'),
(1165, 117, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1166, 117, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(1167, 117, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1168, 117, 'meta_folio_name_yahoo', 'BCI.SN'),
(1169, 117, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1170, 117, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(1171, 117, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1172, 117, 'meta_folio_name_google', ''),
(1173, 117, '_meta_folio_name_google', 'field_63646a791c965'),
(1174, 117, 'meta_folio_url_google', ''),
(1175, 117, '_meta_folio_url_google', 'field_63646aa61c966'),
(1176, 117, 'meta_folio_name_investing', 'bci-(sn)'),
(1177, 117, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1178, 117, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(1179, 117, '_meta_folio_url_investing', 'field_63646af01c968'),
(1180, 117, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(1181, 117, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1182, 117, 'meta_folio_name_msn', 'fi-acyxa2'),
(1183, 117, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1184, 117, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(1185, 117, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1186, 117, 'meta_folio_name_cmf', 'Listado Global'),
(1187, 117, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1188, 117, 'meta_folio_name_trader', 'Banco Estado'),
(1189, 117, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1190, 117, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1191, 117, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1192, 118, '_edit_lock', '1668644556:1'),
(1195, 118, '_edit_last', '1'),
(1198, 118, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1199, 118, 'meta_folio_name', 'COMPANIA SUD AMERICANA DE VAPORES S.A.'),
(1200, 118, '_meta_folio_name', 'field_6364648dbe982'),
(1201, 118, 'meta_folio_name_bstgo', 'VAPORES'),
(1202, 118, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1203, 118, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=VAPORES'),
(1204, 118, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1205, 118, 'meta_folio_name_yahoo', 'VAPORES.SN'),
(1206, 118, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1207, 118, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/VAPORES.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjEuMzU2NzgzOTE5NTk3OTksImZsaXBwZWQiOmZhbHNlLCJ2b2x1bWVVbmRlcmxheSI6ZmFsc2UsImFkaiI6dHJ1ZSwiY3Jvc3NoYWlyIjp0cnVlLCJjaGFydFR5cGUiOiJsaW5lIiwiZXh0ZW5kZWQiOmZhbHNlLCJtYXJrZXRTZXNzaW9ucyI6e30sImFnZ3JlZ2F0aW9uVHlwZSI6Im9obGMiLCJjaGFydFNjYWxlIjoibGluZWFyIiwicGFuZWxzIjp7ImNoYXJ0Ijp7InBlcmNlbnQiOjEsImRpc3BsYXkiOiJWQVBPUkVTLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Il19fSwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX0sImxpbmVXaWR0aCI6Miwic3RyaXBlZEJhY2tncm91bmQiOnRydWUsImV2ZW50cyI6dHJ1ZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwic3ltYm9scyI6W3sic3ltYm9sIjoiVkFQT1JFUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJWQVBPUkVTLlNOIiwicXVvdGVUeXBlIjoiRVFVSVRZIiwiZXhjaGFuZ2VUaW1lWm9uZSI6IkFtZXJpY2EvU2FudGlhZ28ifSwicGVyaW9kaWNpdHkiOjEsImludGVydmFsIjoid2VlayIsInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9fV0sImV2ZW50TWFwIjp7ImNvcnBvcmF0ZSI6eyJkaXZzIjp0cnVlLCJzcGxpdHMiOnRydWV9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGx9'),
(1208, 118, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1209, 118, 'meta_folio_name_google', ''),
(1210, 118, '_meta_folio_name_google', 'field_63646a791c965'),
(1211, 118, 'meta_folio_url_google', ''),
(1212, 118, '_meta_folio_url_google', 'field_63646aa61c966'),
(1213, 118, 'meta_folio_name_investing', 'vapores'),
(1214, 118, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1215, 118, 'meta_folio_url_investing', 'https://es.investing.com/equities/vapores'),
(1216, 118, '_meta_folio_url_investing', 'field_63646af01c968'),
(1217, 118, 'meta_folio_name_msn', 'fi-ad1652'),
(1218, 118, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1219, 118, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/sgo-vapores/fi-ad1652?duration=Max'),
(1220, 118, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1221, 118, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1222, 118, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1223, 118, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=90160000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=5'),
(1224, 118, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1225, 118, 'meta_folio_name_trader', 'Banco Estado'),
(1226, 118, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1227, 118, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1228, 118, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1229, 120, 'meta_folio_name', 'COMPANIA SUD AMERICANA DE VAPORES S.A.'),
(1230, 120, '_meta_folio_name', 'field_6364648dbe982'),
(1231, 120, 'meta_folio_name_bstgo', 'VAPORES'),
(1232, 120, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1233, 120, 'meta_folio_url_bstgo', ''),
(1234, 120, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1235, 120, 'meta_folio_name_yahoo', 'VAPORES.SN'),
(1236, 120, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1237, 120, 'meta_folio_url_yahoo', ''),
(1238, 120, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1239, 120, 'meta_folio_name_google', ''),
(1240, 120, '_meta_folio_name_google', 'field_63646a791c965'),
(1241, 120, 'meta_folio_url_google', ''),
(1242, 120, '_meta_folio_url_google', 'field_63646aa61c966'),
(1243, 120, 'meta_folio_name_investing', 'vapores'),
(1244, 120, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1245, 120, 'meta_folio_url_investing', 'https://es.investing.com/equities/vapores-advanced-chart'),
(1246, 120, '_meta_folio_url_investing', 'field_63646af01c968'),
(1247, 120, 'meta_folio_name_msn', ''),
(1248, 120, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1249, 120, 'meta_folio_url_msn', ''),
(1250, 120, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1251, 120, 'meta_folio_name_cmf', ''),
(1252, 120, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1253, 120, 'meta_folio_url_cmf', ''),
(1254, 120, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1255, 120, 'meta_folio_name_trader', ''),
(1256, 120, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1257, 120, 'meta_folio_url_trader', ''),
(1258, 120, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1261, 121, 'meta_folio_name', 'COMPANIA SUD AMERICANA DE VAPORES S.A.'),
(1262, 121, '_meta_folio_name', 'field_6364648dbe982'),
(1263, 121, 'meta_folio_name_bstgo', 'VAPORES'),
(1264, 121, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1265, 121, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=VAPORES'),
(1266, 121, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1267, 121, 'meta_folio_name_yahoo', 'VAPORES.SN'),
(1268, 121, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1269, 121, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/VAPORES.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjEuMzU2NzgzOTE5NTk3OTksImZsaXBwZWQiOmZhbHNlLCJ2b2x1bWVVbmRlcmxheSI6ZmFsc2UsImFkaiI6dHJ1ZSwiY3Jvc3NoYWlyIjp0cnVlLCJjaGFydFR5cGUiOiJsaW5lIiwiZXh0ZW5kZWQiOmZhbHNlLCJtYXJrZXRTZXNzaW9ucyI6e30sImFnZ3JlZ2F0aW9uVHlwZSI6Im9obGMiLCJjaGFydFNjYWxlIjoibGluZWFyIiwicGFuZWxzIjp7ImNoYXJ0Ijp7InBlcmNlbnQiOjEsImRpc3BsYXkiOiJWQVBPUkVTLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Il19fSwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX0sImxpbmVXaWR0aCI6Miwic3RyaXBlZEJhY2tncm91bmQiOnRydWUsImV2ZW50cyI6dHJ1ZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwic3ltYm9scyI6W3sic3ltYm9sIjoiVkFQT1JFUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJWQVBPUkVTLlNOIiwicXVvdGVUeXBlIjoiRVFVSVRZIiwiZXhjaGFuZ2VUaW1lWm9uZSI6IkFtZXJpY2EvU2FudGlhZ28ifSwicGVyaW9kaWNpdHkiOjEsImludGVydmFsIjoid2VlayIsInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9fV0sImV2ZW50TWFwIjp7ImNvcnBvcmF0ZSI6eyJkaXZzIjp0cnVlLCJzcGxpdHMiOnRydWV9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGx9'),
(1270, 121, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1271, 121, 'meta_folio_name_google', ''),
(1272, 121, '_meta_folio_name_google', 'field_63646a791c965'),
(1273, 121, 'meta_folio_url_google', ''),
(1274, 121, '_meta_folio_url_google', 'field_63646aa61c966'),
(1275, 121, 'meta_folio_name_investing', 'vapores'),
(1276, 121, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1277, 121, 'meta_folio_url_investing', 'https://es.investing.com/equities/vapores'),
(1278, 121, '_meta_folio_url_investing', 'field_63646af01c968'),
(1279, 121, 'meta_folio_name_msn', 'fi-ad1652'),
(1280, 121, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1281, 121, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/sgo-vapores/fi-ad1652?duration=Max'),
(1282, 121, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1283, 121, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1284, 121, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1285, 121, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=90160000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=5'),
(1286, 121, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1287, 121, 'meta_folio_name_trader', 'Banco Estado'),
(1288, 121, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1289, 121, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1290, 121, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1295, 122, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(1296, 122, '_meta_folio_name', 'field_6364648dbe982'),
(1297, 122, 'meta_folio_name_bstgo', 'SQM-A'),
(1298, 122, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1299, 122, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(1300, 122, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1301, 122, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(1302, 122, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1303, 122, 'meta_folio_url_yahoo', ''),
(1304, 122, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1305, 122, 'meta_folio_name_google', 'NYSE: SQM'),
(1306, 122, '_meta_folio_name_google', 'field_63646a791c965'),
(1307, 122, 'meta_folio_url_google', ''),
(1308, 122, '_meta_folio_url_google', 'field_63646aa61c966'),
(1309, 122, 'meta_folio_name_investing', 'soquimich-a'),
(1310, 122, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1311, 122, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(1312, 122, '_meta_folio_url_investing', 'field_63646af01c968'),
(1313, 122, 'meta_folio_name_msn', 'fi-a23ih7'),
(1314, 122, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1315, 122, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(1316, 122, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1317, 122, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1318, 122, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1319, 122, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(1320, 122, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1321, 122, 'meta_folio_name_trader', 'Banco Estado'),
(1322, 122, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1323, 122, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1324, 122, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1327, 124, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(1328, 124, '_meta_folio_name', 'field_6364648dbe982'),
(1329, 124, 'meta_folio_name_bstgo', 'SQM-A'),
(1330, 124, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1331, 124, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(1332, 124, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1333, 124, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(1334, 124, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1335, 124, 'meta_folio_url_yahoo', ''),
(1336, 124, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1337, 124, 'meta_folio_name_google', 'NYSE: SQM'),
(1338, 124, '_meta_folio_name_google', 'field_63646a791c965'),
(1339, 124, 'meta_folio_url_google', ''),
(1340, 124, '_meta_folio_url_google', 'field_63646aa61c966');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1341, 124, 'meta_folio_name_investing', 'soquimich-a'),
(1342, 124, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1343, 124, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(1344, 124, '_meta_folio_url_investing', 'field_63646af01c968'),
(1345, 124, 'meta_folio_name_msn', 'fi-a23ih7'),
(1346, 124, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1347, 124, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(1348, 124, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1349, 124, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1350, 124, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1351, 124, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(1352, 124, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1353, 124, 'meta_folio_name_trader', 'Banco Estado'),
(1354, 124, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1355, 124, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1356, 124, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1359, 127, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(1360, 127, '_meta_folio_name', 'field_6364648dbe982'),
(1361, 127, 'meta_folio_name_bstgo', 'SQM-A'),
(1362, 127, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1363, 127, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(1364, 127, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1365, 127, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(1366, 127, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1367, 127, 'meta_folio_url_yahoo', ''),
(1368, 127, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1369, 127, 'meta_folio_name_google', 'NYSE: SQM'),
(1370, 127, '_meta_folio_name_google', 'field_63646a791c965'),
(1371, 127, 'meta_folio_url_google', ''),
(1372, 127, '_meta_folio_url_google', 'field_63646aa61c966'),
(1373, 127, 'meta_folio_name_investing', 'soquimich-a'),
(1374, 127, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1375, 127, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(1376, 127, '_meta_folio_url_investing', 'field_63646af01c968'),
(1377, 127, 'meta_folio_name_msn', 'fi-a23ih7'),
(1378, 127, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1379, 127, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(1380, 127, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1381, 127, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1382, 127, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1383, 127, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(1384, 127, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1385, 127, 'meta_folio_name_trader', 'Banco Estado'),
(1386, 127, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1387, 127, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1388, 127, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1391, 128, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(1392, 128, '_meta_folio_name', 'field_6364648dbe982'),
(1393, 128, 'meta_folio_name_bstgo', 'SQM-A'),
(1394, 128, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1395, 128, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(1396, 128, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1397, 128, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(1398, 128, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1399, 128, 'meta_folio_url_yahoo', ''),
(1400, 128, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1401, 128, 'meta_folio_name_google', 'NYSE: SQM'),
(1402, 128, '_meta_folio_name_google', 'field_63646a791c965'),
(1403, 128, 'meta_folio_url_google', ''),
(1404, 128, '_meta_folio_url_google', 'field_63646aa61c966'),
(1405, 128, 'meta_folio_name_investing', 'soquimich-a'),
(1406, 128, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1407, 128, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(1408, 128, '_meta_folio_url_investing', 'field_63646af01c968'),
(1409, 128, 'meta_folio_name_msn', 'fi-a23ih7'),
(1410, 128, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1411, 128, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(1412, 128, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1413, 128, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1414, 128, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1415, 128, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(1416, 128, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1417, 128, 'meta_folio_name_trader', 'Banco Estado'),
(1418, 128, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1419, 128, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1420, 128, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1425, 129, 'meta_folio_name', 'ENTEL CHILE'),
(1426, 129, '_meta_folio_name', 'field_6364648dbe982'),
(1427, 129, 'meta_folio_name_bstgo', 'ENELCHILE'),
(1428, 129, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1429, 129, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(1430, 129, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1431, 129, 'meta_folio_name_yahoo', 'ENELCHILE.SN'),
(1432, 129, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1433, 129, 'meta_folio_url_yahoo', ''),
(1434, 129, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1435, 129, 'meta_folio_name_google', 'NYSE: ENIC'),
(1436, 129, '_meta_folio_name_google', 'field_63646a791c965'),
(1437, 129, 'meta_folio_url_google', ''),
(1438, 129, '_meta_folio_url_google', 'field_63646aa61c966'),
(1439, 129, 'meta_folio_name_investing', 'enersis-chile-sa'),
(1440, 129, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1441, 129, 'meta_folio_url_investing', 'https://es.investing.com/equities/enersis-chile-sa-advanced-chart'),
(1442, 129, '_meta_folio_url_investing', 'field_63646af01c968'),
(1443, 129, 'meta_folio_name_msn', 'fi-aczprw'),
(1444, 129, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1445, 129, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczprw?ocid=winp1taskbar&duration=Max'),
(1446, 129, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1447, 129, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1448, 129, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1449, 129, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?auth=&send=&mercado=V&rut=92580000&grupo=&tipoentidad=RVEMI&vig=VI&row=AAAwy2ACTAAABy7AAl&control=svs&pestania=1'),
(1450, 129, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1451, 129, 'meta_folio_name_trader', 'Banco Estado'),
(1452, 129, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1453, 129, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1454, 129, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1459, 130, 'meta_folio_name', 'BANCO DE CHILE'),
(1460, 130, '_meta_folio_name', 'field_6364648dbe982'),
(1461, 130, 'meta_folio_name_bstgo', 'CHILE'),
(1462, 130, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1463, 130, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(1464, 130, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1465, 130, 'meta_folio_name_yahoo', 'CHILE.SN'),
(1466, 130, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1467, 130, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(1468, 130, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1469, 130, 'meta_folio_name_google', 'NYSE: BCH'),
(1470, 130, '_meta_folio_name_google', 'field_63646a791c965'),
(1471, 130, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(1472, 130, '_meta_folio_url_google', 'field_63646aa61c966'),
(1473, 130, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(1474, 130, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1475, 130, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(1476, 130, '_meta_folio_url_investing', 'field_63646af01c968'),
(1477, 130, 'meta_folio_name_msn', 'fi-aczlar'),
(1478, 130, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1479, 130, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczlar?ocid=winp1taskbar&duration=Max'),
(1480, 130, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1481, 130, 'meta_folio_name_cmf', ''),
(1482, 130, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1483, 130, 'meta_folio_url_cmf', ''),
(1484, 130, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1485, 130, 'meta_folio_name_trader', 'Banco Estado'),
(1486, 130, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1487, 130, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1488, 130, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1491, 131, 'meta_folio_name', 'BANCO DE CHILE'),
(1492, 131, '_meta_folio_name', 'field_6364648dbe982'),
(1493, 131, 'meta_folio_name_bstgo', 'CHILE'),
(1494, 131, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1495, 131, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=CHILE'),
(1496, 131, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1497, 131, 'meta_folio_name_yahoo', 'CHILE.SN'),
(1498, 131, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1499, 131, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/CHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwiY2FuZGxlV2lkdGgiOjIuMDkwMzIyNTgwNjQ1MTYxMywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQ0hJTEUuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiLCLigIx2b2wgdW5kcuKAjCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJldmVudE1hcCI6eyJjb3Jwb3JhdGUiOnsiZGl2cyI6dHJ1ZSwic3BsaXRzIjpmYWxzZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbCwic3ltYm9scyI6W3sic3ltYm9sIjoiQ0hJTEUuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQ0hJTEUuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwic3R1ZGllcyI6eyLigIx2b2wgdW5kcuKAjCI6eyJ0eXBlIjoidm9sIHVuZHIiLCJpbnB1dHMiOnsiaWQiOiLigIx2b2wgdW5kcuKAjCIsImRpc3BsYXkiOiLigIx2b2wgdW5kcuKAjCJ9LCJvdXRwdXRzIjp7IlVwIFZvbHVtZSI6IiMwMGIwNjEiLCJEb3duIFZvbHVtZSI6IiNmZjMzM2EifSwicGFuZWwiOiJjaGFydCIsInBhcmFtZXRlcnMiOnsid2lkdGhGYWN0b3IiOjAuNDUsImNoYXJ0TmFtZSI6ImNoYXJ0IiwicGFuZWxOYW1lIjoiY2hhcnQifX19fQ--'),
(1500, 131, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1501, 131, 'meta_folio_name_google', 'NYSE: BCH'),
(1502, 131, '_meta_folio_name_google', 'field_63646a791c965'),
(1503, 131, 'meta_folio_url_google', 'https://www.google.com/finance/quote/BCH:NYSE?sa=X&ved=2ahUKEwjryrWqrZD7AhVQA7kGHe_WCn0Q3ecFegQIVBAg'),
(1504, 131, '_meta_folio_url_google', 'field_63646aa61c966'),
(1505, 131, 'meta_folio_name_investing', 'banco-de-chile-(sn)'),
(1506, 131, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1507, 131, 'meta_folio_url_investing', 'https://es.investing.com/equities/banco-de-chile-(sn)-advanced-chart'),
(1508, 131, '_meta_folio_url_investing', 'field_63646af01c968'),
(1509, 131, 'meta_folio_name_msn', 'fi-aczlar'),
(1510, 131, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1511, 131, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczlar?ocid=winp1taskbar&duration=Max'),
(1512, 131, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1513, 131, 'meta_folio_name_cmf', ''),
(1514, 131, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1515, 131, 'meta_folio_url_cmf', ''),
(1516, 131, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1517, 131, 'meta_folio_name_trader', 'Banco Estado'),
(1518, 131, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1519, 131, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(1520, 131, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1528, 132, '_edit_lock', '1668736420:1'),
(1531, 134, '_wp_attached_file', '2022/11/calichera_01.jpg'),
(1532, 134, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1677;s:6:\"height\";i:726;s:4:\"file\";s:24:\"2022/11/calichera_01.jpg\";s:8:\"filesize\";i:86677;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_01-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4899;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_01-1024x443.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:29628;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2609;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_01-768x332.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18879;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_01-1536x665.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55715;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1533, 135, '_wp_attached_file', '2022/11/calichera_02.jpg'),
(1534, 135, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1672;s:6:\"height\";i:721;s:4:\"file\";s:24:\"2022/11/calichera_02.jpg\";s:8:\"filesize\";i:100332;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_02-300x129.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:129;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5115;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_02-1024x442.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:442;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:34129;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2967;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_02-768x331.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:331;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21778;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_02-1536x662.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:662;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62644;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1537, 132, '_edit_last', '1'),
(1540, 132, 'meta_folio_name', ''),
(1541, 132, '_meta_folio_name', 'field_6364648dbe982'),
(1542, 132, 'meta_folio_name_bstgo', ''),
(1543, 132, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1544, 132, 'meta_folio_url_bstgo', ''),
(1545, 132, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1546, 132, 'meta_folio_name_yahoo', ''),
(1547, 132, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1548, 132, 'meta_folio_url_yahoo', ''),
(1549, 132, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1550, 132, 'meta_folio_name_google', ''),
(1551, 132, '_meta_folio_name_google', 'field_63646a791c965'),
(1552, 132, 'meta_folio_url_google', ''),
(1553, 132, '_meta_folio_url_google', 'field_63646aa61c966'),
(1554, 132, 'meta_folio_name_investing', ''),
(1555, 132, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1556, 132, 'meta_folio_url_investing', ''),
(1557, 132, '_meta_folio_url_investing', 'field_63646af01c968'),
(1558, 132, 'meta_folio_name_msn', ''),
(1559, 132, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1560, 132, 'meta_folio_url_msn', ''),
(1561, 132, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1562, 132, 'meta_folio_name_cmf', ''),
(1563, 132, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1564, 132, 'meta_folio_url_cmf', ''),
(1565, 132, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1566, 132, 'meta_folio_name_trader', ''),
(1567, 132, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1568, 132, 'meta_folio_url_trader', ''),
(1569, 132, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1570, 136, 'meta_folio_name', ''),
(1571, 136, '_meta_folio_name', 'field_6364648dbe982'),
(1572, 136, 'meta_folio_name_bstgo', ''),
(1573, 136, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1574, 136, 'meta_folio_url_bstgo', ''),
(1575, 136, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1576, 136, 'meta_folio_name_yahoo', ''),
(1577, 136, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1578, 136, 'meta_folio_url_yahoo', ''),
(1579, 136, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1580, 136, 'meta_folio_name_google', ''),
(1581, 136, '_meta_folio_name_google', 'field_63646a791c965'),
(1582, 136, 'meta_folio_url_google', ''),
(1583, 136, '_meta_folio_url_google', 'field_63646aa61c966'),
(1584, 136, 'meta_folio_name_investing', ''),
(1585, 136, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1586, 136, 'meta_folio_url_investing', ''),
(1587, 136, '_meta_folio_url_investing', 'field_63646af01c968'),
(1588, 136, 'meta_folio_name_msn', ''),
(1589, 136, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1590, 136, 'meta_folio_url_msn', ''),
(1591, 136, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1592, 136, 'meta_folio_name_cmf', ''),
(1593, 136, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1594, 136, 'meta_folio_url_cmf', ''),
(1595, 136, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1596, 136, 'meta_folio_name_trader', ''),
(1597, 136, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1598, 136, 'meta_folio_url_trader', ''),
(1599, 136, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1600, 132, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1601, 138, '_wp_attached_file', '2022/11/calichera_03.jpg'),
(1602, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1675;s:6:\"height\";i:725;s:4:\"file\";s:24:\"2022/11/calichera_03.jpg\";s:8:\"filesize\";i:107921;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_03-300x130.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5328;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_03-1024x443.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:443;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37118;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2373;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_03-768x332.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:332;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:22690;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_03-1536x665.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66871;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1603, 139, '_wp_attached_file', '2022/11/calichera_04.jpg'),
(1604, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1843;s:6:\"height\";i:834;s:4:\"file\";s:24:\"2022/11/calichera_04.jpg\";s:8:\"filesize\";i:133621;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_04-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5651;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_04-1024x463.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:463;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:39362;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2925;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_04-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:26481;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_04-1536x695.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:695;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74488;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1605, 140, '_wp_attached_file', '2022/11/calichera_05.jpg'),
(1606, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1847;s:6:\"height\";i:841;s:4:\"file\";s:24:\"2022/11/calichera_05.jpg\";s:8:\"filesize\";i:130830;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_05-300x137.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:137;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5198;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_05-1024x466.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:466;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:37596;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2503;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_05-768x350.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:350;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:23098;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_05-1536x699.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:699;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69709;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1609, 141, 'meta_folio_name', ''),
(1610, 141, '_meta_folio_name', 'field_6364648dbe982'),
(1611, 141, 'meta_folio_name_bstgo', ''),
(1612, 141, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1613, 141, 'meta_folio_url_bstgo', ''),
(1614, 141, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1615, 141, 'meta_folio_name_yahoo', ''),
(1616, 141, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1617, 141, 'meta_folio_url_yahoo', ''),
(1618, 141, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1619, 141, 'meta_folio_name_google', ''),
(1620, 141, '_meta_folio_name_google', 'field_63646a791c965'),
(1621, 141, 'meta_folio_url_google', ''),
(1622, 141, '_meta_folio_url_google', 'field_63646aa61c966'),
(1623, 141, 'meta_folio_name_investing', ''),
(1624, 141, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1625, 141, 'meta_folio_url_investing', ''),
(1626, 141, '_meta_folio_url_investing', 'field_63646af01c968'),
(1627, 141, 'meta_folio_name_msn', ''),
(1628, 141, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1629, 141, 'meta_folio_url_msn', ''),
(1630, 141, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1631, 141, 'meta_folio_name_cmf', ''),
(1632, 141, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1633, 141, 'meta_folio_url_cmf', ''),
(1634, 141, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1635, 141, 'meta_folio_name_trader', ''),
(1636, 141, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1637, 141, 'meta_folio_url_trader', ''),
(1638, 141, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1639, 143, '_wp_attached_file', '2022/11/calichera_06.jpg'),
(1640, 143, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1680;s:6:\"height\";i:714;s:4:\"file\";s:24:\"2022/11/calichera_06.jpg\";s:8:\"filesize\";i:97198;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_06-300x128.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5030;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_06-1024x435.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:435;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:32742;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3001;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_06-768x326.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:326;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:21623;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_06-1536x653.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:653;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:61177;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1643, 144, 'meta_folio_name', ''),
(1644, 144, '_meta_folio_name', 'field_6364648dbe982'),
(1645, 144, 'meta_folio_name_bstgo', ''),
(1646, 144, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1647, 144, 'meta_folio_url_bstgo', ''),
(1648, 144, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1649, 144, 'meta_folio_name_yahoo', ''),
(1650, 144, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1651, 144, 'meta_folio_url_yahoo', ''),
(1652, 144, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1653, 144, 'meta_folio_name_google', ''),
(1654, 144, '_meta_folio_name_google', 'field_63646a791c965'),
(1655, 144, 'meta_folio_url_google', ''),
(1656, 144, '_meta_folio_url_google', 'field_63646aa61c966'),
(1657, 144, 'meta_folio_name_investing', ''),
(1658, 144, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1659, 144, 'meta_folio_url_investing', ''),
(1660, 144, '_meta_folio_url_investing', 'field_63646af01c968'),
(1661, 144, 'meta_folio_name_msn', ''),
(1662, 144, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1663, 144, 'meta_folio_url_msn', ''),
(1664, 144, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1665, 144, 'meta_folio_name_cmf', ''),
(1666, 144, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1667, 144, 'meta_folio_url_cmf', ''),
(1668, 144, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1669, 144, 'meta_folio_name_trader', ''),
(1670, 144, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1671, 144, 'meta_folio_url_trader', ''),
(1672, 144, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1673, 145, '_wp_attached_file', '2022/11/calichera_07.jpg'),
(1674, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1676;s:6:\"height\";i:730;s:4:\"file\";s:24:\"2022/11/calichera_07.jpg\";s:8:\"filesize\";i:112493;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_07-300x131.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:131;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5723;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_07-1024x446.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:38772;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_07-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:3108;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_07-768x335.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:335;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:24940;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_07-1536x669.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:669;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:71187;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1677, 146, 'meta_folio_name', ''),
(1678, 146, '_meta_folio_name', 'field_6364648dbe982'),
(1679, 146, 'meta_folio_name_bstgo', ''),
(1680, 146, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1681, 146, 'meta_folio_url_bstgo', ''),
(1682, 146, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1683, 146, 'meta_folio_name_yahoo', ''),
(1684, 146, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1685, 146, 'meta_folio_url_yahoo', ''),
(1686, 146, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1687, 146, 'meta_folio_name_google', ''),
(1688, 146, '_meta_folio_name_google', 'field_63646a791c965'),
(1689, 146, 'meta_folio_url_google', ''),
(1690, 146, '_meta_folio_url_google', 'field_63646aa61c966'),
(1691, 146, 'meta_folio_name_investing', ''),
(1692, 146, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1693, 146, 'meta_folio_url_investing', ''),
(1694, 146, '_meta_folio_url_investing', 'field_63646af01c968'),
(1695, 146, 'meta_folio_name_msn', ''),
(1696, 146, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1697, 146, 'meta_folio_url_msn', ''),
(1698, 146, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1699, 146, 'meta_folio_name_cmf', ''),
(1700, 146, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1701, 146, 'meta_folio_url_cmf', ''),
(1702, 146, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1703, 146, 'meta_folio_name_trader', ''),
(1704, 146, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1705, 146, 'meta_folio_url_trader', ''),
(1706, 146, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1711, 147, '_wp_attached_file', '2022/11/calichera_08.jpg'),
(1712, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1871;s:6:\"height\";i:722;s:4:\"file\";s:24:\"2022/11/calichera_08.jpg\";s:8:\"filesize\";i:100261;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"calichera_08-300x116.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:116;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4484;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"calichera_08-1024x395.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:395;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:28858;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"calichera_08-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:2644;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"calichera_08-768x296.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:296;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:18502;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"calichera_08-1536x593.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:593;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:55190;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1715, 149, 'meta_folio_name', ''),
(1716, 149, '_meta_folio_name', 'field_6364648dbe982'),
(1717, 149, 'meta_folio_name_bstgo', ''),
(1718, 149, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1719, 149, 'meta_folio_url_bstgo', ''),
(1720, 149, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1721, 149, 'meta_folio_name_yahoo', ''),
(1722, 149, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1723, 149, 'meta_folio_url_yahoo', ''),
(1724, 149, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1725, 149, 'meta_folio_name_google', ''),
(1726, 149, '_meta_folio_name_google', 'field_63646a791c965'),
(1727, 149, 'meta_folio_url_google', ''),
(1728, 149, '_meta_folio_url_google', 'field_63646aa61c966'),
(1729, 149, 'meta_folio_name_investing', ''),
(1730, 149, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1731, 149, 'meta_folio_url_investing', ''),
(1732, 149, '_meta_folio_url_investing', 'field_63646af01c968'),
(1733, 149, 'meta_folio_name_msn', ''),
(1734, 149, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1735, 149, 'meta_folio_url_msn', ''),
(1736, 149, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1737, 149, 'meta_folio_name_cmf', ''),
(1738, 149, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1739, 149, 'meta_folio_url_cmf', ''),
(1740, 149, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1741, 149, 'meta_folio_name_trader', ''),
(1742, 149, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1743, 149, 'meta_folio_url_trader', ''),
(1744, 149, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1745, 152, '_edit_lock', '1670016708:1'),
(1746, 152, '_edit_last', '1'),
(1747, 152, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1748, 154, '_edit_lock', '1670017589:1'),
(1751, 154, '_edit_last', '1'),
(1754, 154, 'meta_folio_name', ''),
(1755, 154, '_meta_folio_name', 'field_6364648dbe982'),
(1756, 154, 'meta_folio_name_bstgo', ''),
(1757, 154, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1758, 154, 'meta_folio_url_bstgo', ''),
(1759, 154, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1760, 154, 'meta_folio_name_yahoo', ''),
(1761, 154, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1762, 154, 'meta_folio_url_yahoo', ''),
(1763, 154, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1764, 154, 'meta_folio_name_google', ''),
(1765, 154, '_meta_folio_name_google', 'field_63646a791c965'),
(1766, 154, 'meta_folio_url_google', ''),
(1767, 154, '_meta_folio_url_google', 'field_63646aa61c966'),
(1768, 154, 'meta_folio_name_investing', ''),
(1769, 154, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1770, 154, 'meta_folio_url_investing', ''),
(1771, 154, '_meta_folio_url_investing', 'field_63646af01c968'),
(1772, 154, 'meta_folio_name_msn', ''),
(1773, 154, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1774, 154, 'meta_folio_url_msn', ''),
(1775, 154, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1776, 154, 'meta_folio_name_cmf', ''),
(1777, 154, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1778, 154, 'meta_folio_url_cmf', ''),
(1779, 154, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1780, 154, 'meta_folio_name_trader', ''),
(1781, 154, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1782, 154, 'meta_folio_url_trader', ''),
(1783, 154, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1784, 155, 'meta_folio_name', ''),
(1785, 155, '_meta_folio_name', 'field_6364648dbe982'),
(1786, 155, 'meta_folio_name_bstgo', ''),
(1787, 155, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1788, 155, 'meta_folio_url_bstgo', ''),
(1789, 155, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1790, 155, 'meta_folio_name_yahoo', ''),
(1791, 155, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1792, 155, 'meta_folio_url_yahoo', ''),
(1793, 155, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1794, 155, 'meta_folio_name_google', ''),
(1795, 155, '_meta_folio_name_google', 'field_63646a791c965'),
(1796, 155, 'meta_folio_url_google', ''),
(1797, 155, '_meta_folio_url_google', 'field_63646aa61c966'),
(1798, 155, 'meta_folio_name_investing', ''),
(1799, 155, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1800, 155, 'meta_folio_url_investing', ''),
(1801, 155, '_meta_folio_url_investing', 'field_63646af01c968'),
(1802, 155, 'meta_folio_name_msn', ''),
(1803, 155, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1804, 155, 'meta_folio_url_msn', ''),
(1805, 155, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1806, 155, 'meta_folio_name_cmf', ''),
(1807, 155, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1808, 155, 'meta_folio_url_cmf', ''),
(1809, 155, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1810, 155, 'meta_folio_name_trader', ''),
(1811, 155, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1812, 155, 'meta_folio_url_trader', ''),
(1813, 155, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1814, 154, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1819, 41, 'rank_01', '1'),
(1820, 41, '_rank_01', 'field_638d63e375ff8'),
(1821, 157, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(1822, 157, '_meta_folio_name', 'field_6364648dbe982'),
(1823, 157, 'meta_folio_name_bstgo', 'BCI'),
(1824, 157, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1825, 157, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(1826, 157, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1827, 157, 'meta_folio_name_yahoo', 'BCI.SN'),
(1828, 157, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1829, 157, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(1830, 157, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1831, 157, 'meta_folio_name_google', ''),
(1832, 157, '_meta_folio_name_google', 'field_63646a791c965'),
(1833, 157, 'meta_folio_url_google', ''),
(1834, 157, '_meta_folio_url_google', 'field_63646aa61c966'),
(1835, 157, 'meta_folio_name_investing', 'bci-(sn)'),
(1836, 157, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1837, 157, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(1838, 157, '_meta_folio_url_investing', 'field_63646af01c968'),
(1839, 157, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(1840, 157, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1841, 157, 'meta_folio_name_msn', 'fi-acyxa2'),
(1842, 157, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1843, 157, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(1844, 157, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1845, 157, 'meta_folio_name_cmf', 'Listado Global'),
(1846, 157, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1847, 157, 'meta_folio_name_trader', 'Banco Estado'),
(1848, 157, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1849, 157, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1850, 157, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1851, 157, 'rank_01', '1'),
(1852, 157, '_rank_01', 'field_638d63e375ff8'),
(1857, 158, 'meta_folio_name', 'BANCO DE CREDITO E INVERSIONES'),
(1858, 158, '_meta_folio_name', 'field_6364648dbe982'),
(1859, 158, 'meta_folio_name_bstgo', 'BCI'),
(1860, 158, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1861, 158, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI'),
(1862, 158, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1863, 158, 'meta_folio_name_yahoo', 'BCI.SN'),
(1864, 158, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1865, 158, 'meta_folio_url_yahoo', 'https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjo2LjIyNjA1MzYzOTg0Njc0MywiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjp7Im11bHRpcGxpZXIiOjUsImJhc2UiOiJ5ZWFyIiwicGVyaW9kaWNpdHkiOnsicGVyaW9kIjoxLCJpbnRlcnZhbCI6IndlZWsifSwibWFpbnRhaW5QZXJpb2RpY2l0eSI6dHJ1ZSwiZm9yY2VMb2FkIjp0cnVlfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjpmYWxzZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6ZmFsc2V9LCJzaWdEZXYiOnt9fSwiY3VzdG9tUmFuZ2UiOm51bGwsInN5bWJvbHMiOlt7InN5bWJvbCI6IkJDSS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJCQ0kuU04iLCJxdW90ZVR5cGUiOiJFUVVJVFkiLCJleGNoYW5nZVRpbWVab25lIjoiQW1lcmljYS9TYW50aWFnbyJ9LCJwZXJpb2RpY2l0eSI6MSwiaW50ZXJ2YWwiOiJ3ZWVrIiwidGltZVVuaXQiOm51bGwsInNldFNwYW4iOnsibXVsdGlwbGllciI6NSwiYmFzZSI6InllYXIiLCJwZXJpb2RpY2l0eSI6eyJwZXJpb2QiOjEsImludGVydmFsIjoid2VlayJ9LCJtYWludGFpblBlcmlvZGljaXR5Ijp0cnVlLCJmb3JjZUxvYWQiOnRydWV9fV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-'),
(1866, 158, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1867, 158, 'meta_folio_name_google', ''),
(1868, 158, '_meta_folio_name_google', 'field_63646a791c965'),
(1869, 158, 'meta_folio_url_google', ''),
(1870, 158, '_meta_folio_url_google', 'field_63646aa61c966'),
(1871, 158, 'meta_folio_name_investing', 'bci-(sn)'),
(1872, 158, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1873, 158, 'meta_folio_url_investing', 'https://es.investing.com/equities/bci-(sn)'),
(1874, 158, '_meta_folio_url_investing', 'field_63646af01c968'),
(1875, 158, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=bci&boton_busqueda='),
(1876, 158, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1877, 158, 'meta_folio_name_msn', 'fi-acyxa2'),
(1878, 158, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1879, 158, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-acyxa2?ocid=winp1taskbar&duration=Max'),
(1880, 158, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1881, 158, 'meta_folio_name_cmf', 'Listado Global'),
(1882, 158, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1883, 158, 'meta_folio_name_trader', 'Banco Estado'),
(1884, 158, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1885, 158, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1886, 158, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1887, 158, 'rank_01', '1'),
(1888, 158, '_rank_01', 'field_638d63e375ff8'),
(1893, 100, 'rank_01', ''),
(1894, 100, '_rank_01', 'field_638d63e375ff8'),
(1895, 159, 'meta_folio_name', 'ENTEL CHILE'),
(1896, 159, '_meta_folio_name', 'field_6364648dbe982'),
(1897, 159, 'meta_folio_name_bstgo', 'ENELCHILE'),
(1898, 159, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1899, 159, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(1900, 159, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1901, 159, 'meta_folio_name_yahoo', 'ENELCHILE.SN'),
(1902, 159, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1903, 159, 'meta_folio_url_yahoo', ''),
(1904, 159, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1905, 159, 'meta_folio_name_google', ''),
(1906, 159, '_meta_folio_name_google', 'field_63646a791c965'),
(1907, 159, 'meta_folio_url_google', ''),
(1908, 159, '_meta_folio_url_google', 'field_63646aa61c966'),
(1909, 159, 'meta_folio_name_investing', 'enersis-chile-sa'),
(1910, 159, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1911, 159, 'meta_folio_url_investing', 'https://es.investing.com/equities/enersis-chile-sa-advanced-chart'),
(1912, 159, '_meta_folio_url_investing', 'field_63646af01c968'),
(1913, 159, 'meta_folio_name_msn', 'fi-aczprw'),
(1914, 159, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1915, 159, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczprw?ocid=winp1taskbar&duration=Max'),
(1916, 159, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1917, 159, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(1918, 159, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1919, 159, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?auth=&send=&mercado=V&rut=92580000&grupo=&tipoentidad=RVEMI&vig=VI&row=AAAwy2ACTAAABy7AAl&control=svs&pestania=1'),
(1920, 159, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1921, 159, 'meta_folio_name_trader', 'Banco Estado'),
(1922, 159, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1923, 159, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(1924, 159, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1925, 159, 'rank_01', ''),
(1926, 159, '_rank_01', 'field_638d63e375ff8'),
(1927, 160, '_edit_lock', '1670211048:1'),
(1930, 160, '_edit_last', '1'),
(1933, 160, 'meta_folio_name', ''),
(1934, 160, '_meta_folio_name', 'field_6364648dbe982'),
(1935, 160, 'rank_01', ''),
(1936, 160, '_rank_01', 'field_638d63e375ff8'),
(1937, 160, 'meta_folio_name_bstgo', ''),
(1938, 160, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1939, 160, 'meta_folio_url_bstgo', ''),
(1940, 160, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1941, 160, 'meta_folio_name_yahoo', ''),
(1942, 160, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1943, 160, 'meta_folio_url_yahoo', ''),
(1944, 160, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1945, 160, 'meta_folio_name_google', ''),
(1946, 160, '_meta_folio_name_google', 'field_63646a791c965'),
(1947, 160, 'meta_folio_url_google', ''),
(1948, 160, '_meta_folio_url_google', 'field_63646aa61c966'),
(1949, 160, 'meta_folio_name_investing', ''),
(1950, 160, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1951, 160, 'meta_folio_url_investing', ''),
(1952, 160, '_meta_folio_url_investing', 'field_63646af01c968'),
(1953, 160, 'meta_folio_name_msn', ''),
(1954, 160, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1955, 160, 'meta_folio_url_msn', '');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1956, 160, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1957, 160, 'meta_folio_name_cmf', ''),
(1958, 160, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1959, 160, 'meta_folio_url_cmf', ''),
(1960, 160, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1961, 160, 'meta_folio_name_trader', ''),
(1962, 160, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1963, 160, 'meta_folio_url_trader', ''),
(1964, 160, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1965, 161, 'meta_folio_name', ''),
(1966, 161, '_meta_folio_name', 'field_6364648dbe982'),
(1967, 161, 'rank_01', ''),
(1968, 161, '_rank_01', 'field_638d63e375ff8'),
(1969, 161, 'meta_folio_name_bstgo', ''),
(1970, 161, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(1971, 161, 'meta_folio_url_bstgo', ''),
(1972, 161, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(1973, 161, 'meta_folio_name_yahoo', ''),
(1974, 161, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(1975, 161, 'meta_folio_url_yahoo', ''),
(1976, 161, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(1977, 161, 'meta_folio_name_google', ''),
(1978, 161, '_meta_folio_name_google', 'field_63646a791c965'),
(1979, 161, 'meta_folio_url_google', ''),
(1980, 161, '_meta_folio_url_google', 'field_63646aa61c966'),
(1981, 161, 'meta_folio_name_investing', ''),
(1982, 161, '_meta_folio_name_investing', 'field_63646acf1c967'),
(1983, 161, 'meta_folio_url_investing', ''),
(1984, 161, '_meta_folio_url_investing', 'field_63646af01c968'),
(1985, 161, 'meta_folio_name_msn', ''),
(1986, 161, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(1987, 161, 'meta_folio_url_msn', ''),
(1988, 161, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(1989, 161, 'meta_folio_name_cmf', ''),
(1990, 161, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(1991, 161, 'meta_folio_url_cmf', ''),
(1992, 161, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(1993, 161, 'meta_folio_name_trader', ''),
(1994, 161, '_meta_folio_name_trader', 'field_6365b2b036465'),
(1995, 161, 'meta_folio_url_trader', ''),
(1996, 161, '_meta_folio_url_trader', 'field_6365b2d836466'),
(1997, 160, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(1998, 162, '_edit_lock', '1670211134:1'),
(2001, 162, '_edit_last', '1'),
(2004, 162, 'meta_folio_name', ''),
(2005, 162, '_meta_folio_name', 'field_6364648dbe982'),
(2006, 162, 'rank_01', ''),
(2007, 162, '_rank_01', 'field_638d63e375ff8'),
(2008, 162, 'meta_folio_name_bstgo', ''),
(2009, 162, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2010, 162, 'meta_folio_url_bstgo', ''),
(2011, 162, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2012, 162, 'meta_folio_name_yahoo', ''),
(2013, 162, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2014, 162, 'meta_folio_url_yahoo', ''),
(2015, 162, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2016, 162, 'meta_folio_name_google', ''),
(2017, 162, '_meta_folio_name_google', 'field_63646a791c965'),
(2018, 162, 'meta_folio_url_google', ''),
(2019, 162, '_meta_folio_url_google', 'field_63646aa61c966'),
(2020, 162, 'meta_folio_name_investing', ''),
(2021, 162, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2022, 162, 'meta_folio_url_investing', ''),
(2023, 162, '_meta_folio_url_investing', 'field_63646af01c968'),
(2024, 162, 'meta_folio_name_msn', ''),
(2025, 162, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2026, 162, 'meta_folio_url_msn', ''),
(2027, 162, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2028, 162, 'meta_folio_name_cmf', ''),
(2029, 162, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2030, 162, 'meta_folio_url_cmf', ''),
(2031, 162, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2032, 162, 'meta_folio_name_trader', ''),
(2033, 162, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2034, 162, 'meta_folio_url_trader', ''),
(2035, 162, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2036, 163, 'meta_folio_name', ''),
(2037, 163, '_meta_folio_name', 'field_6364648dbe982'),
(2038, 163, 'rank_01', ''),
(2039, 163, '_rank_01', 'field_638d63e375ff8'),
(2040, 163, 'meta_folio_name_bstgo', ''),
(2041, 163, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2042, 163, 'meta_folio_url_bstgo', ''),
(2043, 163, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2044, 163, 'meta_folio_name_yahoo', ''),
(2045, 163, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2046, 163, 'meta_folio_url_yahoo', ''),
(2047, 163, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2048, 163, 'meta_folio_name_google', ''),
(2049, 163, '_meta_folio_name_google', 'field_63646a791c965'),
(2050, 163, 'meta_folio_url_google', ''),
(2051, 163, '_meta_folio_url_google', 'field_63646aa61c966'),
(2052, 163, 'meta_folio_name_investing', ''),
(2053, 163, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2054, 163, 'meta_folio_url_investing', ''),
(2055, 163, '_meta_folio_url_investing', 'field_63646af01c968'),
(2056, 163, 'meta_folio_name_msn', ''),
(2057, 163, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2058, 163, 'meta_folio_url_msn', ''),
(2059, 163, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2060, 163, 'meta_folio_name_cmf', ''),
(2061, 163, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2062, 163, 'meta_folio_url_cmf', ''),
(2063, 163, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2064, 163, 'meta_folio_name_trader', ''),
(2065, 163, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2066, 163, 'meta_folio_url_trader', ''),
(2067, 163, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2068, 162, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2069, 164, '_edit_lock', '1670211201:1'),
(2072, 164, '_edit_last', '1'),
(2073, 164, 'meta_folio_name', ''),
(2074, 164, '_meta_folio_name', 'field_6364648dbe982'),
(2075, 164, 'rank_01', ''),
(2076, 164, '_rank_01', 'field_638d63e375ff8'),
(2077, 164, 'meta_folio_name_bstgo', ''),
(2078, 164, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2079, 164, 'meta_folio_url_bstgo', ''),
(2080, 164, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2081, 164, 'meta_folio_name_yahoo', ''),
(2082, 164, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2083, 164, 'meta_folio_url_yahoo', ''),
(2084, 164, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2085, 164, 'meta_folio_name_google', ''),
(2086, 164, '_meta_folio_name_google', 'field_63646a791c965'),
(2087, 164, 'meta_folio_url_google', ''),
(2088, 164, '_meta_folio_url_google', 'field_63646aa61c966'),
(2089, 164, 'meta_folio_name_investing', ''),
(2090, 164, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2091, 164, 'meta_folio_url_investing', ''),
(2092, 164, '_meta_folio_url_investing', 'field_63646af01c968'),
(2093, 164, 'meta_folio_name_msn', ''),
(2094, 164, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2095, 164, 'meta_folio_url_msn', ''),
(2096, 164, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2097, 164, 'meta_folio_name_cmf', ''),
(2098, 164, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2099, 164, 'meta_folio_url_cmf', ''),
(2100, 164, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2101, 164, 'meta_folio_name_trader', ''),
(2102, 164, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2103, 164, 'meta_folio_url_trader', ''),
(2104, 164, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2105, 165, 'meta_folio_name', ''),
(2106, 165, '_meta_folio_name', 'field_6364648dbe982'),
(2107, 165, 'rank_01', ''),
(2108, 165, '_rank_01', 'field_638d63e375ff8'),
(2109, 165, 'meta_folio_name_bstgo', ''),
(2110, 165, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2111, 165, 'meta_folio_url_bstgo', ''),
(2112, 165, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2113, 165, 'meta_folio_name_yahoo', ''),
(2114, 165, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2115, 165, 'meta_folio_url_yahoo', ''),
(2116, 165, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2117, 165, 'meta_folio_name_google', ''),
(2118, 165, '_meta_folio_name_google', 'field_63646a791c965'),
(2119, 165, 'meta_folio_url_google', ''),
(2120, 165, '_meta_folio_url_google', 'field_63646aa61c966'),
(2121, 165, 'meta_folio_name_investing', ''),
(2122, 165, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2123, 165, 'meta_folio_url_investing', ''),
(2124, 165, '_meta_folio_url_investing', 'field_63646af01c968'),
(2125, 165, 'meta_folio_name_msn', ''),
(2126, 165, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2127, 165, 'meta_folio_url_msn', ''),
(2128, 165, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2129, 165, 'meta_folio_name_cmf', ''),
(2130, 165, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2131, 165, 'meta_folio_url_cmf', ''),
(2132, 165, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2133, 165, 'meta_folio_name_trader', ''),
(2134, 165, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2135, 165, 'meta_folio_url_trader', ''),
(2136, 165, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2137, 164, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2138, 166, '_edit_lock', '1670211269:1'),
(2141, 166, '_edit_last', '1'),
(2144, 166, 'meta_folio_name', ''),
(2145, 166, '_meta_folio_name', 'field_6364648dbe982'),
(2146, 166, 'rank_01', ''),
(2147, 166, '_rank_01', 'field_638d63e375ff8'),
(2148, 166, 'meta_folio_name_bstgo', ''),
(2149, 166, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2150, 166, 'meta_folio_url_bstgo', ''),
(2151, 166, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2152, 166, 'meta_folio_name_yahoo', ''),
(2153, 166, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2154, 166, 'meta_folio_url_yahoo', ''),
(2155, 166, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2156, 166, 'meta_folio_name_google', ''),
(2157, 166, '_meta_folio_name_google', 'field_63646a791c965'),
(2158, 166, 'meta_folio_url_google', ''),
(2159, 166, '_meta_folio_url_google', 'field_63646aa61c966'),
(2160, 166, 'meta_folio_name_investing', ''),
(2161, 166, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2162, 166, 'meta_folio_url_investing', ''),
(2163, 166, '_meta_folio_url_investing', 'field_63646af01c968'),
(2164, 166, 'meta_folio_name_msn', ''),
(2165, 166, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2166, 166, 'meta_folio_url_msn', ''),
(2167, 166, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2168, 166, 'meta_folio_name_cmf', ''),
(2169, 166, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2170, 166, 'meta_folio_url_cmf', ''),
(2171, 166, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2172, 166, 'meta_folio_name_trader', ''),
(2173, 166, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2174, 166, 'meta_folio_url_trader', ''),
(2175, 166, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2176, 167, 'meta_folio_name', ''),
(2177, 167, '_meta_folio_name', 'field_6364648dbe982'),
(2178, 167, 'rank_01', ''),
(2179, 167, '_rank_01', 'field_638d63e375ff8'),
(2180, 167, 'meta_folio_name_bstgo', ''),
(2181, 167, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2182, 167, 'meta_folio_url_bstgo', ''),
(2183, 167, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2184, 167, 'meta_folio_name_yahoo', ''),
(2185, 167, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2186, 167, 'meta_folio_url_yahoo', ''),
(2187, 167, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2188, 167, 'meta_folio_name_google', ''),
(2189, 167, '_meta_folio_name_google', 'field_63646a791c965'),
(2190, 167, 'meta_folio_url_google', ''),
(2191, 167, '_meta_folio_url_google', 'field_63646aa61c966'),
(2192, 167, 'meta_folio_name_investing', ''),
(2193, 167, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2194, 167, 'meta_folio_url_investing', ''),
(2195, 167, '_meta_folio_url_investing', 'field_63646af01c968'),
(2196, 167, 'meta_folio_name_msn', ''),
(2197, 167, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2198, 167, 'meta_folio_url_msn', ''),
(2199, 167, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2200, 167, 'meta_folio_name_cmf', ''),
(2201, 167, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2202, 167, 'meta_folio_url_cmf', ''),
(2203, 167, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2204, 167, 'meta_folio_name_trader', ''),
(2205, 167, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2206, 167, 'meta_folio_url_trader', ''),
(2207, 167, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2208, 166, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2209, 168, '_edit_lock', '1670211336:1'),
(2212, 168, '_edit_last', '1'),
(2215, 168, 'meta_folio_name', ''),
(2216, 168, '_meta_folio_name', 'field_6364648dbe982'),
(2217, 168, 'rank_01', ''),
(2218, 168, '_rank_01', 'field_638d63e375ff8'),
(2219, 168, 'meta_folio_name_bstgo', ''),
(2220, 168, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2221, 168, 'meta_folio_url_bstgo', ''),
(2222, 168, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2223, 168, 'meta_folio_name_yahoo', ''),
(2224, 168, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2225, 168, 'meta_folio_url_yahoo', ''),
(2226, 168, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2227, 168, 'meta_folio_name_google', ''),
(2228, 168, '_meta_folio_name_google', 'field_63646a791c965'),
(2229, 168, 'meta_folio_url_google', ''),
(2230, 168, '_meta_folio_url_google', 'field_63646aa61c966'),
(2231, 168, 'meta_folio_name_investing', ''),
(2232, 168, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2233, 168, 'meta_folio_url_investing', ''),
(2234, 168, '_meta_folio_url_investing', 'field_63646af01c968'),
(2235, 168, 'meta_folio_name_msn', ''),
(2236, 168, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2237, 168, 'meta_folio_url_msn', ''),
(2238, 168, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2239, 168, 'meta_folio_name_cmf', ''),
(2240, 168, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2241, 168, 'meta_folio_url_cmf', ''),
(2242, 168, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2243, 168, 'meta_folio_name_trader', ''),
(2244, 168, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2245, 168, 'meta_folio_url_trader', ''),
(2246, 168, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2247, 169, 'meta_folio_name', ''),
(2248, 169, '_meta_folio_name', 'field_6364648dbe982'),
(2249, 169, 'rank_01', ''),
(2250, 169, '_rank_01', 'field_638d63e375ff8'),
(2251, 169, 'meta_folio_name_bstgo', ''),
(2252, 169, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2253, 169, 'meta_folio_url_bstgo', ''),
(2254, 169, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2255, 169, 'meta_folio_name_yahoo', ''),
(2256, 169, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2257, 169, 'meta_folio_url_yahoo', ''),
(2258, 169, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2259, 169, 'meta_folio_name_google', ''),
(2260, 169, '_meta_folio_name_google', 'field_63646a791c965'),
(2261, 169, 'meta_folio_url_google', ''),
(2262, 169, '_meta_folio_url_google', 'field_63646aa61c966'),
(2263, 169, 'meta_folio_name_investing', ''),
(2264, 169, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2265, 169, 'meta_folio_url_investing', ''),
(2266, 169, '_meta_folio_url_investing', 'field_63646af01c968'),
(2267, 169, 'meta_folio_name_msn', ''),
(2268, 169, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2269, 169, 'meta_folio_url_msn', ''),
(2270, 169, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2271, 169, 'meta_folio_name_cmf', ''),
(2272, 169, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2273, 169, 'meta_folio_url_cmf', ''),
(2274, 169, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2275, 169, 'meta_folio_name_trader', ''),
(2276, 169, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2277, 169, 'meta_folio_url_trader', ''),
(2278, 169, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2279, 168, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2280, 170, '_edit_lock', '1670211402:1'),
(2283, 170, '_edit_last', '1'),
(2286, 170, 'meta_folio_name', ''),
(2287, 170, '_meta_folio_name', 'field_6364648dbe982'),
(2288, 170, 'rank_01', ''),
(2289, 170, '_rank_01', 'field_638d63e375ff8'),
(2290, 170, 'meta_folio_name_bstgo', ''),
(2291, 170, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2292, 170, 'meta_folio_url_bstgo', ''),
(2293, 170, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2294, 170, 'meta_folio_name_yahoo', ''),
(2295, 170, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2296, 170, 'meta_folio_url_yahoo', ''),
(2297, 170, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2298, 170, 'meta_folio_name_google', ''),
(2299, 170, '_meta_folio_name_google', 'field_63646a791c965'),
(2300, 170, 'meta_folio_url_google', ''),
(2301, 170, '_meta_folio_url_google', 'field_63646aa61c966'),
(2302, 170, 'meta_folio_name_investing', ''),
(2303, 170, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2304, 170, 'meta_folio_url_investing', ''),
(2305, 170, '_meta_folio_url_investing', 'field_63646af01c968'),
(2306, 170, 'meta_folio_name_msn', ''),
(2307, 170, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2308, 170, 'meta_folio_url_msn', ''),
(2309, 170, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2310, 170, 'meta_folio_name_cmf', ''),
(2311, 170, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2312, 170, 'meta_folio_url_cmf', ''),
(2313, 170, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2314, 170, 'meta_folio_name_trader', ''),
(2315, 170, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2316, 170, 'meta_folio_url_trader', ''),
(2317, 170, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2318, 171, 'meta_folio_name', ''),
(2319, 171, '_meta_folio_name', 'field_6364648dbe982'),
(2320, 171, 'rank_01', ''),
(2321, 171, '_rank_01', 'field_638d63e375ff8'),
(2322, 171, 'meta_folio_name_bstgo', ''),
(2323, 171, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2324, 171, 'meta_folio_url_bstgo', ''),
(2325, 171, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2326, 171, 'meta_folio_name_yahoo', ''),
(2327, 171, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2328, 171, 'meta_folio_url_yahoo', ''),
(2329, 171, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2330, 171, 'meta_folio_name_google', ''),
(2331, 171, '_meta_folio_name_google', 'field_63646a791c965'),
(2332, 171, 'meta_folio_url_google', ''),
(2333, 171, '_meta_folio_url_google', 'field_63646aa61c966'),
(2334, 171, 'meta_folio_name_investing', ''),
(2335, 171, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2336, 171, 'meta_folio_url_investing', ''),
(2337, 171, '_meta_folio_url_investing', 'field_63646af01c968'),
(2338, 171, 'meta_folio_name_msn', ''),
(2339, 171, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2340, 171, 'meta_folio_url_msn', ''),
(2341, 171, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2342, 171, 'meta_folio_name_cmf', ''),
(2343, 171, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2344, 171, 'meta_folio_url_cmf', ''),
(2345, 171, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2346, 171, 'meta_folio_name_trader', ''),
(2347, 171, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2348, 171, 'meta_folio_url_trader', ''),
(2349, 171, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2350, 170, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2351, 172, '_edit_lock', '1670211459:1'),
(2354, 172, '_edit_last', '1'),
(2357, 172, 'meta_folio_name', ''),
(2358, 172, '_meta_folio_name', 'field_6364648dbe982'),
(2359, 172, 'rank_01', ''),
(2360, 172, '_rank_01', 'field_638d63e375ff8'),
(2361, 172, 'meta_folio_name_bstgo', ''),
(2362, 172, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2363, 172, 'meta_folio_url_bstgo', ''),
(2364, 172, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2365, 172, 'meta_folio_name_yahoo', ''),
(2366, 172, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2367, 172, 'meta_folio_url_yahoo', ''),
(2368, 172, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2369, 172, 'meta_folio_name_google', ''),
(2370, 172, '_meta_folio_name_google', 'field_63646a791c965'),
(2371, 172, 'meta_folio_url_google', ''),
(2372, 172, '_meta_folio_url_google', 'field_63646aa61c966'),
(2373, 172, 'meta_folio_name_investing', ''),
(2374, 172, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2375, 172, 'meta_folio_url_investing', ''),
(2376, 172, '_meta_folio_url_investing', 'field_63646af01c968'),
(2377, 172, 'meta_folio_name_msn', ''),
(2378, 172, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2379, 172, 'meta_folio_url_msn', ''),
(2380, 172, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2381, 172, 'meta_folio_name_cmf', ''),
(2382, 172, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2383, 172, 'meta_folio_url_cmf', ''),
(2384, 172, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2385, 172, 'meta_folio_name_trader', ''),
(2386, 172, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2387, 172, 'meta_folio_url_trader', ''),
(2388, 172, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2389, 173, 'meta_folio_name', ''),
(2390, 173, '_meta_folio_name', 'field_6364648dbe982'),
(2391, 173, 'rank_01', ''),
(2392, 173, '_rank_01', 'field_638d63e375ff8'),
(2393, 173, 'meta_folio_name_bstgo', ''),
(2394, 173, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2395, 173, 'meta_folio_url_bstgo', ''),
(2396, 173, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2397, 173, 'meta_folio_name_yahoo', ''),
(2398, 173, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2399, 173, 'meta_folio_url_yahoo', ''),
(2400, 173, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2401, 173, 'meta_folio_name_google', ''),
(2402, 173, '_meta_folio_name_google', 'field_63646a791c965'),
(2403, 173, 'meta_folio_url_google', ''),
(2404, 173, '_meta_folio_url_google', 'field_63646aa61c966'),
(2405, 173, 'meta_folio_name_investing', ''),
(2406, 173, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2407, 173, 'meta_folio_url_investing', ''),
(2408, 173, '_meta_folio_url_investing', 'field_63646af01c968'),
(2409, 173, 'meta_folio_name_msn', ''),
(2410, 173, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2411, 173, 'meta_folio_url_msn', ''),
(2412, 173, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2413, 173, 'meta_folio_name_cmf', ''),
(2414, 173, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2415, 173, 'meta_folio_url_cmf', ''),
(2416, 173, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2417, 173, 'meta_folio_name_trader', ''),
(2418, 173, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2419, 173, 'meta_folio_url_trader', ''),
(2420, 173, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2421, 172, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2422, 174, '_edit_lock', '1670211518:1'),
(2425, 174, '_edit_last', '1'),
(2428, 174, 'meta_folio_name', ''),
(2429, 174, '_meta_folio_name', 'field_6364648dbe982'),
(2430, 174, 'rank_01', ''),
(2431, 174, '_rank_01', 'field_638d63e375ff8'),
(2432, 174, 'meta_folio_name_bstgo', ''),
(2433, 174, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2434, 174, 'meta_folio_url_bstgo', ''),
(2435, 174, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2436, 174, 'meta_folio_name_yahoo', ''),
(2437, 174, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2438, 174, 'meta_folio_url_yahoo', ''),
(2439, 174, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2440, 174, 'meta_folio_name_google', ''),
(2441, 174, '_meta_folio_name_google', 'field_63646a791c965'),
(2442, 174, 'meta_folio_url_google', ''),
(2443, 174, '_meta_folio_url_google', 'field_63646aa61c966'),
(2444, 174, 'meta_folio_name_investing', ''),
(2445, 174, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2446, 174, 'meta_folio_url_investing', ''),
(2447, 174, '_meta_folio_url_investing', 'field_63646af01c968'),
(2448, 174, 'meta_folio_name_msn', ''),
(2449, 174, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2450, 174, 'meta_folio_url_msn', ''),
(2451, 174, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2452, 174, 'meta_folio_name_cmf', ''),
(2453, 174, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2454, 174, 'meta_folio_url_cmf', ''),
(2455, 174, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2456, 174, 'meta_folio_name_trader', ''),
(2457, 174, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2458, 174, 'meta_folio_url_trader', ''),
(2459, 174, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2460, 175, 'meta_folio_name', ''),
(2461, 175, '_meta_folio_name', 'field_6364648dbe982'),
(2462, 175, 'rank_01', ''),
(2463, 175, '_rank_01', 'field_638d63e375ff8'),
(2464, 175, 'meta_folio_name_bstgo', ''),
(2465, 175, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2466, 175, 'meta_folio_url_bstgo', ''),
(2467, 175, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2468, 175, 'meta_folio_name_yahoo', ''),
(2469, 175, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2470, 175, 'meta_folio_url_yahoo', ''),
(2471, 175, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2472, 175, 'meta_folio_name_google', ''),
(2473, 175, '_meta_folio_name_google', 'field_63646a791c965'),
(2474, 175, 'meta_folio_url_google', ''),
(2475, 175, '_meta_folio_url_google', 'field_63646aa61c966'),
(2476, 175, 'meta_folio_name_investing', ''),
(2477, 175, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2478, 175, 'meta_folio_url_investing', ''),
(2479, 175, '_meta_folio_url_investing', 'field_63646af01c968'),
(2480, 175, 'meta_folio_name_msn', ''),
(2481, 175, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2482, 175, 'meta_folio_url_msn', ''),
(2483, 175, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2484, 175, 'meta_folio_name_cmf', ''),
(2485, 175, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2486, 175, 'meta_folio_url_cmf', ''),
(2487, 175, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2488, 175, 'meta_folio_name_trader', ''),
(2489, 175, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2490, 175, 'meta_folio_url_trader', ''),
(2491, 175, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2492, 174, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2493, 176, '_edit_lock', '1670211584:1'),
(2496, 176, '_edit_last', '1'),
(2499, 176, 'meta_folio_name', ''),
(2500, 176, '_meta_folio_name', 'field_6364648dbe982'),
(2501, 176, 'rank_01', ''),
(2502, 176, '_rank_01', 'field_638d63e375ff8'),
(2503, 176, 'meta_folio_name_bstgo', ''),
(2504, 176, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2505, 176, 'meta_folio_url_bstgo', ''),
(2506, 176, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2507, 176, 'meta_folio_name_yahoo', ''),
(2508, 176, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2509, 176, 'meta_folio_url_yahoo', ''),
(2510, 176, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2511, 176, 'meta_folio_name_google', ''),
(2512, 176, '_meta_folio_name_google', 'field_63646a791c965'),
(2513, 176, 'meta_folio_url_google', ''),
(2514, 176, '_meta_folio_url_google', 'field_63646aa61c966'),
(2515, 176, 'meta_folio_name_investing', ''),
(2516, 176, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2517, 176, 'meta_folio_url_investing', ''),
(2518, 176, '_meta_folio_url_investing', 'field_63646af01c968'),
(2519, 176, 'meta_folio_name_msn', ''),
(2520, 176, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2521, 176, 'meta_folio_url_msn', ''),
(2522, 176, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2523, 176, 'meta_folio_name_cmf', ''),
(2524, 176, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2525, 176, 'meta_folio_url_cmf', ''),
(2526, 176, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2527, 176, 'meta_folio_name_trader', ''),
(2528, 176, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2529, 176, 'meta_folio_url_trader', ''),
(2530, 176, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2531, 177, 'meta_folio_name', ''),
(2532, 177, '_meta_folio_name', 'field_6364648dbe982'),
(2533, 177, 'rank_01', ''),
(2534, 177, '_rank_01', 'field_638d63e375ff8'),
(2535, 177, 'meta_folio_name_bstgo', ''),
(2536, 177, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2537, 177, 'meta_folio_url_bstgo', ''),
(2538, 177, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2539, 177, 'meta_folio_name_yahoo', ''),
(2540, 177, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2541, 177, 'meta_folio_url_yahoo', ''),
(2542, 177, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2543, 177, 'meta_folio_name_google', ''),
(2544, 177, '_meta_folio_name_google', 'field_63646a791c965'),
(2545, 177, 'meta_folio_url_google', ''),
(2546, 177, '_meta_folio_url_google', 'field_63646aa61c966'),
(2547, 177, 'meta_folio_name_investing', ''),
(2548, 177, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2549, 177, 'meta_folio_url_investing', ''),
(2550, 177, '_meta_folio_url_investing', 'field_63646af01c968'),
(2551, 177, 'meta_folio_name_msn', ''),
(2552, 177, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2553, 177, 'meta_folio_url_msn', ''),
(2554, 177, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2555, 177, 'meta_folio_name_cmf', ''),
(2556, 177, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2557, 177, 'meta_folio_url_cmf', ''),
(2558, 177, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2559, 177, 'meta_folio_name_trader', ''),
(2560, 177, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2561, 177, 'meta_folio_url_trader', ''),
(2562, 177, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2563, 176, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2567, 183, '_edit_lock', '1670271632:1'),
(2568, 183, '_edit_last', '1'),
(2569, 183, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(2576, 112, 'rank_01', ''),
(2577, 112, '_rank_01', 'field_638d63e375ff8'),
(2578, 188, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(2579, 188, '_meta_folio_name', 'field_6364648dbe982'),
(2580, 188, 'meta_folio_name_bstgo', 'SQM-B'),
(2581, 188, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2582, 188, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B'),
(2583, 188, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2584, 188, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(2585, 188, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2586, 188, 'meta_folio_url_yahoo', ''),
(2587, 188, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2588, 188, 'meta_folio_name_google', 'NYSE: SQM'),
(2589, 188, '_meta_folio_name_google', 'field_63646a791c965'),
(2590, 188, 'meta_folio_url_google', ''),
(2591, 188, '_meta_folio_url_google', 'field_63646aa61c966'),
(2592, 188, 'meta_folio_name_investing', 'soquimich-b'),
(2593, 188, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2594, 188, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(2595, 188, '_meta_folio_url_investing', 'field_63646af01c968'),
(2596, 188, 'meta_folio_name_msn', ''),
(2597, 188, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2598, 188, 'meta_folio_url_msn', ''),
(2599, 188, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2600, 188, 'meta_folio_name_cmf', ''),
(2601, 188, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2602, 188, 'meta_folio_url_cmf', ''),
(2603, 188, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2604, 188, 'meta_folio_name_trader', ''),
(2605, 188, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2606, 188, 'meta_folio_url_trader', ''),
(2607, 188, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2608, 188, 'rank_01', ''),
(2609, 188, '_rank_01', 'field_638d63e375ff8'),
(2614, 189, 'meta_folio_name', 'ENTEL CHILE'),
(2615, 189, '_meta_folio_name', 'field_6364648dbe982'),
(2616, 189, 'meta_folio_name_bstgo', 'ENELCHILE'),
(2617, 189, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2618, 189, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(2619, 189, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2620, 189, 'meta_folio_name_yahoo', 'ENELCHILE.SN'),
(2621, 189, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2622, 189, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/ENELCHILE.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjozLjMzODEwODg4MjUyMTQ5LCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiRU5FTENISUxFLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Il19fSwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX0sImxpbmVXaWR0aCI6Miwic3RyaXBlZEJhY2tncm91bmQiOnRydWUsImV2ZW50cyI6dHJ1ZSwiY29sb3IiOiIjMDA4MWYyIiwic3RyaXBlZEJhY2tncm91ZCI6dHJ1ZSwic3ltYm9scyI6W3sic3ltYm9sIjoiRU5FTENISUxFLlNOIiwic3ltYm9sT2JqZWN0Ijp7InN5bWJvbCI6IkVORUxDSElMRS5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2623, 189, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2624, 189, 'meta_folio_name_google', ''),
(2625, 189, '_meta_folio_name_google', 'field_63646a791c965'),
(2626, 189, 'meta_folio_url_google', ''),
(2627, 189, '_meta_folio_url_google', 'field_63646aa61c966'),
(2628, 189, 'meta_folio_name_investing', 'enersis-chile-sa'),
(2629, 189, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2630, 189, 'meta_folio_url_investing', 'https://es.investing.com/equities/enersis-chile-sa-advanced-chart'),
(2631, 189, '_meta_folio_url_investing', 'field_63646af01c968'),
(2632, 189, 'meta_folio_name_msn', 'fi-aczprw'),
(2633, 189, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2634, 189, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-aczprw?ocid=winp1taskbar&duration=Max'),
(2635, 189, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2636, 189, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(2637, 189, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2638, 189, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?auth=&send=&mercado=V&rut=92580000&grupo=&tipoentidad=RVEMI&vig=VI&row=AAAwy2ACTAAABy7AAl&control=svs&pestania=1'),
(2639, 189, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2640, 189, 'meta_folio_name_trader', 'Banco Estado'),
(2641, 189, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2642, 189, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(2643, 189, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2644, 189, 'rank_01', ''),
(2645, 189, '_rank_01', 'field_638d63e375ff8'),
(2650, 103, 'rank_01', ''),
(2651, 103, '_rank_01', 'field_638d63e375ff8'),
(2652, 190, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(2653, 190, '_meta_folio_name', 'field_6364648dbe982'),
(2654, 190, 'meta_folio_name_bstgo', 'NITRATOS'),
(2655, 190, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2656, 190, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(2657, 190, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2658, 190, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(2659, 190, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2660, 190, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/NITRATOS.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjMzLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiTklUUkFUT1MuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2661, 190, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2662, 190, 'meta_folio_name_google', ''),
(2663, 190, '_meta_folio_name_google', 'field_63646a791c965'),
(2664, 190, 'meta_folio_url_google', ''),
(2665, 190, '_meta_folio_url_google', 'field_63646aa61c966'),
(2666, 190, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(2667, 190, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2668, 190, 'meta_folio_url_investing', ''),
(2669, 190, '_meta_folio_url_investing', 'field_63646af01c968'),
(2670, 190, 'meta_folio_name_msn', ''),
(2671, 190, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2672, 190, 'meta_folio_url_msn', ''),
(2673, 190, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2674, 190, 'meta_folio_name_cmf', ''),
(2675, 190, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2676, 190, 'meta_folio_url_cmf', ''),
(2677, 190, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2678, 190, 'meta_folio_name_trader', 'Banco Estado'),
(2679, 190, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2680, 190, 'meta_folio_url_trader', ''),
(2681, 190, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2682, 190, 'rank_01', ''),
(2683, 190, '_rank_01', 'field_638d63e375ff8'),
(2686, 191, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(2687, 191, '_meta_folio_name', 'field_6364648dbe982'),
(2688, 191, 'meta_folio_name_bstgo', 'NITRATOS'),
(2689, 191, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2690, 191, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(2691, 191, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2692, 191, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(2693, 191, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2694, 191, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/NITRATOS.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjMzLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiTklUUkFUT1MuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2695, 191, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2696, 191, 'meta_folio_name_google', ''),
(2697, 191, '_meta_folio_name_google', 'field_63646a791c965'),
(2698, 191, 'meta_folio_url_google', ''),
(2699, 191, '_meta_folio_url_google', 'field_63646aa61c966'),
(2700, 191, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(2701, 191, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2702, 191, 'meta_folio_url_investing', 'https://es.investing.com/equities/nitratos-de-chile-sa'),
(2703, 191, '_meta_folio_url_investing', 'field_63646af01c968'),
(2704, 191, 'meta_folio_name_msn', ''),
(2705, 191, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2706, 191, 'meta_folio_url_msn', ''),
(2707, 191, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2708, 191, 'meta_folio_name_cmf', ''),
(2709, 191, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2710, 191, 'meta_folio_url_cmf', ''),
(2711, 191, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2712, 191, 'meta_folio_name_trader', 'Banco Estado'),
(2713, 191, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2714, 191, 'meta_folio_url_trader', ''),
(2715, 191, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2716, 191, 'rank_01', ''),
(2717, 191, '_rank_01', 'field_638d63e375ff8'),
(2720, 192, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(2721, 192, '_meta_folio_name', 'field_6364648dbe982'),
(2722, 192, 'meta_folio_name_bstgo', 'NITRATOS'),
(2723, 192, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2724, 192, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(2725, 192, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2726, 192, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(2727, 192, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2728, 192, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/NITRATOS.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjMzLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiTklUUkFUT1MuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2729, 192, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2730, 192, 'meta_folio_name_google', ''),
(2731, 192, '_meta_folio_name_google', 'field_63646a791c965'),
(2732, 192, 'meta_folio_url_google', ''),
(2733, 192, '_meta_folio_url_google', 'field_63646aa61c966'),
(2734, 192, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(2735, 192, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2736, 192, 'meta_folio_url_investing', 'https://es.investing.com/equities/nitratos-de-chile-sa'),
(2737, 192, '_meta_folio_url_investing', 'field_63646af01c968'),
(2738, 192, 'meta_folio_name_msn', ''),
(2739, 192, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2740, 192, 'meta_folio_url_msn', ''),
(2741, 192, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2742, 192, 'meta_folio_name_cmf', ''),
(2743, 192, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2744, 192, 'meta_folio_url_cmf', ''),
(2745, 192, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2746, 192, 'meta_folio_name_trader', 'Banco Estado'),
(2747, 192, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2748, 192, 'meta_folio_url_trader', ''),
(2749, 192, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2750, 192, 'rank_01', ''),
(2751, 192, '_rank_01', 'field_638d63e375ff8'),
(2756, 193, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(2757, 193, '_meta_folio_name', 'field_6364648dbe982'),
(2758, 193, 'meta_folio_name_bstgo', 'SQM-B'),
(2759, 193, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2760, 193, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B'),
(2761, 193, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2762, 193, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(2763, 193, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2764, 193, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-B.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUIuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQi5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQi5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2765, 193, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2766, 193, 'meta_folio_name_google', 'NYSE: SQM'),
(2767, 193, '_meta_folio_name_google', 'field_63646a791c965'),
(2768, 193, 'meta_folio_url_google', ''),
(2769, 193, '_meta_folio_url_google', 'field_63646aa61c966'),
(2770, 193, 'meta_folio_name_investing', 'soquimich-b'),
(2771, 193, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2772, 193, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(2773, 193, '_meta_folio_url_investing', 'field_63646af01c968'),
(2774, 193, 'meta_folio_name_msn', ''),
(2775, 193, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2776, 193, 'meta_folio_url_msn', ''),
(2777, 193, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2778, 193, 'meta_folio_name_cmf', ''),
(2779, 193, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2780, 193, 'meta_folio_url_cmf', ''),
(2781, 193, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2782, 193, 'meta_folio_name_trader', ''),
(2783, 193, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2784, 193, 'meta_folio_url_trader', ''),
(2785, 193, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2786, 193, 'rank_01', ''),
(2787, 193, '_rank_01', 'field_638d63e375ff8'),
(2792, 109, 'rank_01', ''),
(2793, 109, '_rank_01', 'field_638d63e375ff8'),
(2794, 194, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(2795, 194, '_meta_folio_name', 'field_6364648dbe982'),
(2796, 194, 'meta_folio_name_bstgo', 'SQM-A'),
(2797, 194, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2798, 194, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(2799, 194, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2800, 194, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(2801, 194, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2802, 194, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-A.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUEuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQS5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2803, 194, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2804, 194, 'meta_folio_name_google', 'NYSE: SQM');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2805, 194, '_meta_folio_name_google', 'field_63646a791c965'),
(2806, 194, 'meta_folio_url_google', ''),
(2807, 194, '_meta_folio_url_google', 'field_63646aa61c966'),
(2808, 194, 'meta_folio_name_investing', 'soquimich-a'),
(2809, 194, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2810, 194, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(2811, 194, '_meta_folio_url_investing', 'field_63646af01c968'),
(2812, 194, 'meta_folio_name_msn', 'fi-a23ih7'),
(2813, 194, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2814, 194, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(2815, 194, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2816, 194, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(2817, 194, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2818, 194, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(2819, 194, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2820, 194, 'meta_folio_name_trader', 'Banco Estado'),
(2821, 194, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2822, 194, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(2823, 194, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2824, 194, 'rank_01', ''),
(2825, 194, '_rank_01', 'field_638d63e375ff8'),
(2830, 106, 'rank_01', ''),
(2831, 106, '_rank_01', 'field_638d63e375ff8'),
(2832, 195, 'meta_folio_name', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.'),
(2833, 195, '_meta_folio_name', 'field_6364648dbe982'),
(2834, 195, 'meta_folio_name_bstgo', 'ORO BLANCO'),
(2835, 195, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2836, 195, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ORO%20BLANCO'),
(2837, 195, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2838, 195, 'meta_folio_name_yahoo', 'ORO-BLANCO.SN'),
(2839, 195, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2840, 195, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/ORO-BLANCO.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiT1JPLUJMQU5DTy5TTiIsImNoYXJ0TmFtZSI6ImNoYXJ0IiwiaW5kZXgiOjAsInlBeGlzIjp7Im5hbWUiOiJjaGFydCIsInBvc2l0aW9uIjpudWxsfSwieWF4aXNMSFMiOltdLCJ5YXhpc1JIUyI6WyJjaGFydCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOnRydWUsImNvbG9yIjoiIzAwODFmMiIsInN0cmlwZWRCYWNrZ3JvdWQiOnRydWUsInN5bWJvbHMiOlt7InN5bWJvbCI6Ik9STy1CTEFOQ08uU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiT1JPLUJMQU5DTy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2841, 195, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2842, 195, 'meta_folio_name_google', ''),
(2843, 195, '_meta_folio_name_google', 'field_63646a791c965'),
(2844, 195, 'meta_folio_url_google', ''),
(2845, 195, '_meta_folio_url_google', 'field_63646aa61c966'),
(2846, 195, 'meta_folio_name_investing', 'oro-blanco'),
(2847, 195, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2848, 195, 'meta_folio_url_investing', 'https://es.investing.com/equities/oro-blanco-advanced-chart'),
(2849, 195, '_meta_folio_url_investing', 'field_63646af01c968'),
(2850, 195, 'meta_folio_name_msn', ''),
(2851, 195, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2852, 195, 'meta_folio_url_msn', ''),
(2853, 195, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2854, 195, 'meta_folio_name_cmf', ''),
(2855, 195, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2856, 195, 'meta_folio_url_cmf', ''),
(2857, 195, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2858, 195, 'meta_folio_name_trader', 'Banco Estado'),
(2859, 195, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2860, 195, 'meta_folio_url_trader', ''),
(2861, 195, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2862, 195, 'rank_01', ''),
(2863, 195, '_rank_01', 'field_638d63e375ff8'),
(2868, 196, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A'),
(2869, 196, '_meta_folio_name', 'field_6364648dbe982'),
(2870, 196, 'meta_folio_name_bstgo', 'SQM-A'),
(2871, 196, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2872, 196, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-A'),
(2873, 196, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2874, 196, 'meta_folio_name_yahoo', 'SQM-A.SN'),
(2875, 196, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2876, 196, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-A.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUEuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQS5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQS5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2877, 196, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2878, 196, 'meta_folio_name_google', 'NYSE: SQM'),
(2879, 196, '_meta_folio_name_google', 'field_63646a791c965'),
(2880, 196, 'meta_folio_url_google', 'https://www.google.com/finance/quote/SQM:NYSE?window=MAX'),
(2881, 196, '_meta_folio_url_google', 'field_63646aa61c966'),
(2882, 196, 'meta_folio_name_investing', 'soquimich-a'),
(2883, 196, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2884, 196, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-a-advanced-chart'),
(2885, 196, '_meta_folio_url_investing', 'field_63646af01c968'),
(2886, 196, 'meta_folio_name_msn', 'fi-a23ih7'),
(2887, 196, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2888, 196, 'meta_folio_url_msn', 'https://www.msn.com/es-cl/dinero/stockdetails/fi-a23ih7?ocid=winp1taskbar&duration=Max'),
(2889, 196, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2890, 196, 'meta_folio_name_cmf', 'Información de fiscalizados'),
(2891, 196, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2892, 196, 'meta_folio_url_cmf', 'https://www.cmfchile.cl/institucional/mercados/entidad.php?mercado=V&rut=93007000&grupo=&tipoentidad=RVEMI&row=&vig=VI&control=svs&pestania=1'),
(2893, 196, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2894, 196, 'meta_folio_name_trader', 'Banco Estado'),
(2895, 196, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2896, 196, 'meta_folio_url_trader', 'https://www.bancoestado.cl'),
(2897, 196, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2898, 196, 'rank_01', ''),
(2899, 196, '_rank_01', 'field_638d63e375ff8'),
(2904, 197, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(2905, 197, '_meta_folio_name', 'field_6364648dbe982'),
(2906, 197, 'meta_folio_name_bstgo', 'SQM-B'),
(2907, 197, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2908, 197, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B'),
(2909, 197, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2910, 197, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(2911, 197, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2912, 197, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-B.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUIuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQi5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQi5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2913, 197, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2914, 197, 'meta_folio_name_google', 'NYSE: SQM'),
(2915, 197, '_meta_folio_name_google', 'field_63646a791c965'),
(2916, 197, 'meta_folio_url_google', 'https://www.google.com/finance/quote/SQM:NYSE?window=MAX'),
(2917, 197, '_meta_folio_url_google', 'field_63646aa61c966'),
(2918, 197, 'meta_folio_name_investing', 'soquimich-b'),
(2919, 197, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2920, 197, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(2921, 197, '_meta_folio_url_investing', 'field_63646af01c968'),
(2922, 197, 'meta_folio_name_msn', ''),
(2923, 197, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2924, 197, 'meta_folio_url_msn', ''),
(2925, 197, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2926, 197, 'meta_folio_name_cmf', ''),
(2927, 197, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2928, 197, 'meta_folio_url_cmf', ''),
(2929, 197, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2930, 197, 'meta_folio_name_trader', ''),
(2931, 197, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2932, 197, 'meta_folio_url_trader', ''),
(2933, 197, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2934, 197, 'rank_01', ''),
(2935, 197, '_rank_01', 'field_638d63e375ff8'),
(2938, 198, 'meta_folio_name', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B'),
(2939, 198, '_meta_folio_name', 'field_6364648dbe982'),
(2940, 198, 'meta_folio_name_bstgo', 'SQM-B'),
(2941, 198, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2942, 198, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=SQM-B'),
(2943, 198, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2944, 198, 'meta_folio_name_yahoo', 'SQM-B.SN'),
(2945, 198, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2946, 198, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/SQM-B.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiU1FNLUIuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJTUU0tQi5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJTUU0tQi5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2947, 198, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2948, 198, 'meta_folio_name_google', 'NYSE: SQM'),
(2949, 198, '_meta_folio_name_google', 'field_63646a791c965'),
(2950, 198, 'meta_folio_url_google', 'https://www.google.com/finance/quote/SQM:NYSE?window=MAX'),
(2951, 198, '_meta_folio_url_google', 'field_63646aa61c966'),
(2952, 198, 'meta_folio_name_investing', 'soquimich-b'),
(2953, 198, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2954, 198, 'meta_folio_url_investing', 'https://es.investing.com/equities/soquimich-b-advanced-chart'),
(2955, 198, '_meta_folio_url_investing', 'field_63646af01c968'),
(2956, 198, 'meta_folio_name_msn', ''),
(2957, 198, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2958, 198, 'meta_folio_url_msn', ''),
(2959, 198, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2960, 198, 'meta_folio_name_cmf', ''),
(2961, 198, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2962, 198, 'meta_folio_url_cmf', ''),
(2963, 198, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(2964, 198, 'meta_folio_name_trader', 'Banco Estado'),
(2965, 198, '_meta_folio_name_trader', 'field_6365b2b036465'),
(2966, 198, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(2967, 198, '_meta_folio_url_trader', 'field_6365b2d836466'),
(2968, 198, 'rank_01', ''),
(2969, 198, '_rank_01', 'field_638d63e375ff8'),
(2974, 199, 'meta_folio_name', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.'),
(2975, 199, '_meta_folio_name', 'field_6364648dbe982'),
(2976, 199, 'meta_folio_name_bstgo', 'ORO BLANCO'),
(2977, 199, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(2978, 199, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ORO%20BLANCO'),
(2979, 199, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(2980, 199, 'meta_folio_name_yahoo', 'ORO-BLANCO.SN'),
(2981, 199, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(2982, 199, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/ORO-BLANCO.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoxLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiT1JPLUJMQU5DTy5TTiIsImNoYXJ0TmFtZSI6ImNoYXJ0IiwiaW5kZXgiOjAsInlBeGlzIjp7Im5hbWUiOiJjaGFydCIsInBvc2l0aW9uIjpudWxsfSwieWF4aXNMSFMiOltdLCJ5YXhpc1JIUyI6WyJjaGFydCJdfX0sInNldFNwYW4iOnsiYmFzZSI6ImFsbCIsIm11bHRpcGxpZXIiOjF9LCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOnRydWUsImNvbG9yIjoiIzAwODFmMiIsInN0cmlwZWRCYWNrZ3JvdWQiOnRydWUsInN5bWJvbHMiOlt7InN5bWJvbCI6Ik9STy1CTEFOQ08uU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiT1JPLUJMQU5DTy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(2983, 199, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(2984, 199, 'meta_folio_name_google', ''),
(2985, 199, '_meta_folio_name_google', 'field_63646a791c965'),
(2986, 199, 'meta_folio_url_google', ''),
(2987, 199, '_meta_folio_url_google', 'field_63646aa61c966'),
(2988, 199, 'meta_folio_name_investing', 'oro-blanco'),
(2989, 199, '_meta_folio_name_investing', 'field_63646acf1c967'),
(2990, 199, 'meta_folio_url_investing', 'https://es.investing.com/equities/oro-blanco-advanced-chart'),
(2991, 199, '_meta_folio_url_investing', 'field_63646af01c968'),
(2992, 199, 'meta_folio_name_msn', ''),
(2993, 199, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(2994, 199, 'meta_folio_url_msn', ''),
(2995, 199, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(2996, 199, 'meta_folio_name_cmf', ''),
(2997, 199, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(2998, 199, 'meta_folio_url_cmf', ''),
(2999, 199, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(3000, 199, 'meta_folio_name_trader', 'Banco Estado'),
(3001, 199, '_meta_folio_name_trader', 'field_6365b2b036465'),
(3002, 199, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(3003, 199, '_meta_folio_url_trader', 'field_6365b2d836466'),
(3004, 199, 'rank_01', ''),
(3005, 199, '_rank_01', 'field_638d63e375ff8'),
(3010, 200, 'meta_folio_name', 'NITRATOS DE CHILE S.A.'),
(3011, 200, '_meta_folio_name', 'field_6364648dbe982'),
(3012, 200, 'meta_folio_name_bstgo', 'NITRATOS'),
(3013, 200, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(3014, 200, 'meta_folio_url_bstgo', 'https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=ENELCHILE'),
(3015, 200, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(3016, 200, 'meta_folio_name_yahoo', 'NITRATOS.SN'),
(3017, 200, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(3018, 200, 'meta_folio_url_yahoo', 'https://es.finance.yahoo.com/chart/NITRATOS.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjMzLCJmbGlwcGVkIjpmYWxzZSwidm9sdW1lVW5kZXJsYXkiOmZhbHNlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiTklUUkFUT1MuU04iLCJjaGFydE5hbWUiOiJjaGFydCIsImluZGV4IjowLCJ5QXhpcyI6eyJuYW1lIjoiY2hhcnQiLCJwb3NpdGlvbiI6bnVsbH0sInlheGlzTEhTIjpbXSwieWF4aXNSSFMiOlsiY2hhcnQiXX19LCJzZXRTcGFuIjp7ImJhc2UiOiJhbGwiLCJtdWx0aXBsaWVyIjoxfSwibGluZVdpZHRoIjoyLCJzdHJpcGVkQmFja2dyb3VuZCI6dHJ1ZSwiZXZlbnRzIjp0cnVlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInN5bWJvbE9iamVjdCI6eyJzeW1ib2wiOiJOSVRSQVRPUy5TTiIsInF1b3RlVHlwZSI6IkVRVUlUWSIsImV4Y2hhbmdlVGltZVpvbmUiOiJBbWVyaWNhL1NhbnRpYWdvIn0sInBlcmlvZGljaXR5IjoxLCJpbnRlcnZhbCI6IndlZWsiLCJ0aW1lVW5pdCI6bnVsbCwic2V0U3BhbiI6eyJiYXNlIjoiYWxsIiwibXVsdGlwbGllciI6MX19XSwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjp7ImRpdnMiOnRydWUsInNwbGl0cyI6dHJ1ZX0sInNpZ0RldiI6e319LCJjdXN0b21SYW5nZSI6bnVsbH0-'),
(3019, 200, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(3020, 200, 'meta_folio_name_google', ''),
(3021, 200, '_meta_folio_name_google', 'field_63646a791c965'),
(3022, 200, 'meta_folio_url_google', ''),
(3023, 200, '_meta_folio_url_google', 'field_63646aa61c966'),
(3024, 200, 'meta_folio_name_investing', 'nitratos-de-chile-sa'),
(3025, 200, '_meta_folio_name_investing', 'field_63646acf1c967'),
(3026, 200, 'meta_folio_url_investing', 'https://es.investing.com/equities/nitratos-de-chile-sa'),
(3027, 200, '_meta_folio_url_investing', 'field_63646af01c968'),
(3028, 200, 'meta_folio_name_msn', ''),
(3029, 200, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(3030, 200, 'meta_folio_url_msn', ''),
(3031, 200, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(3032, 200, 'meta_folio_name_cmf', ''),
(3033, 200, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(3034, 200, 'meta_folio_url_cmf', ''),
(3035, 200, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(3036, 200, 'meta_folio_name_trader', 'Banco Estado'),
(3037, 200, '_meta_folio_name_trader', 'field_6365b2b036465'),
(3038, 200, 'meta_folio_url_trader', 'https://www.bancoestado.cl/'),
(3039, 200, '_meta_folio_url_trader', 'field_6365b2d836466'),
(3040, 200, 'rank_01', ''),
(3041, 200, '_rank_01', 'field_638d63e375ff8'),
(3044, 202, '_edit_lock', '1672254512:1'),
(3045, 203, '_edit_lock', '1672254513:1'),
(3046, 204, '_edit_lock', '1672275972:1'),
(3047, 204, '_oembed_c2f0457fd63065e1782642c3f29285a2', '{{unknown}}'),
(3050, 204, '_edit_last', '1'),
(3051, 204, '_pingme', '1'),
(3052, 204, '_encloseme', '1'),
(3053, 204, 'meta_folio_name', ''),
(3054, 204, '_meta_folio_name', 'field_6364648dbe982'),
(3055, 204, 'rank_01', ''),
(3056, 204, '_rank_01', 'field_638d63e375ff8'),
(3057, 204, 'meta_folio_name_bstgo', ''),
(3058, 204, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(3059, 204, 'meta_folio_url_bstgo', ''),
(3060, 204, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(3061, 204, 'meta_folio_name_yahoo', ''),
(3062, 204, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(3063, 204, 'meta_folio_url_yahoo', ''),
(3064, 204, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(3065, 204, 'meta_folio_name_google', ''),
(3066, 204, '_meta_folio_name_google', 'field_63646a791c965'),
(3067, 204, 'meta_folio_url_google', ''),
(3068, 204, '_meta_folio_url_google', 'field_63646aa61c966'),
(3069, 204, 'meta_folio_name_investing', ''),
(3070, 204, '_meta_folio_name_investing', 'field_63646acf1c967'),
(3071, 204, 'meta_folio_url_investing', ''),
(3072, 204, '_meta_folio_url_investing', 'field_63646af01c968'),
(3073, 204, 'meta_folio_name_msn', ''),
(3074, 204, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(3075, 204, 'meta_folio_url_msn', ''),
(3076, 204, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(3077, 204, 'meta_folio_name_cmf', ''),
(3078, 204, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(3079, 204, 'meta_folio_url_cmf', ''),
(3080, 204, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(3081, 204, 'meta_folio_name_trader', ''),
(3082, 204, '_meta_folio_name_trader', 'field_6365b2b036465'),
(3083, 204, 'meta_folio_url_trader', ''),
(3084, 204, '_meta_folio_url_trader', 'field_6365b2d836466'),
(3085, 205, 'meta_folio_name', ''),
(3086, 205, '_meta_folio_name', 'field_6364648dbe982'),
(3087, 205, 'rank_01', ''),
(3088, 205, '_rank_01', 'field_638d63e375ff8'),
(3089, 205, 'meta_folio_name_bstgo', ''),
(3090, 205, '_meta_folio_name_bstgo', 'field_636469f71c960'),
(3091, 205, 'meta_folio_url_bstgo', ''),
(3092, 205, '_meta_folio_url_bstgo', 'field_63646a171c962'),
(3093, 205, 'meta_folio_name_yahoo', ''),
(3094, 205, '_meta_folio_name_yahoo', 'field_63646a381c963'),
(3095, 205, 'meta_folio_url_yahoo', ''),
(3096, 205, '_meta_folio_url_yahoo', 'field_63646a5b1c964'),
(3097, 205, 'meta_folio_name_google', ''),
(3098, 205, '_meta_folio_name_google', 'field_63646a791c965'),
(3099, 205, 'meta_folio_url_google', ''),
(3100, 205, '_meta_folio_url_google', 'field_63646aa61c966'),
(3101, 205, 'meta_folio_name_investing', ''),
(3102, 205, '_meta_folio_name_investing', 'field_63646acf1c967'),
(3103, 205, 'meta_folio_url_investing', ''),
(3104, 205, '_meta_folio_url_investing', 'field_63646af01c968'),
(3105, 205, 'meta_folio_name_msn', ''),
(3106, 205, '_meta_folio_name_msn', 'field_6365aa36d33c4'),
(3107, 205, 'meta_folio_url_msn', ''),
(3108, 205, '_meta_folio_url_msn', 'field_6365aa58d33c5'),
(3109, 205, 'meta_folio_name_cmf', ''),
(3110, 205, '_meta_folio_name_cmf', 'field_6365adc5d8f40'),
(3111, 205, 'meta_folio_url_cmf', ''),
(3112, 205, '_meta_folio_url_cmf', 'field_6365adfcd8f41'),
(3113, 205, 'meta_folio_name_trader', ''),
(3114, 205, '_meta_folio_name_trader', 'field_6365b2b036465'),
(3115, 205, 'meta_folio_url_trader', ''),
(3116, 205, '_meta_folio_url_trader', 'field_6365b2d836466'),
(3117, 204, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(3118, 206, '_edit_lock', '1672327599:1'),
(3119, 207, '_edit_lock', '1672327659:1'),
(3141, 216, '_edit_lock', '1672329270:1'),
(3142, 217, '_edit_lock', '1672329460:1'),
(3143, 218, '_edit_lock', '1672329713:1'),
(3144, 219, '_wpas_status', 'open'),
(3145, 219, '_wpas_last_reply_date', '2022-12-29 17:30:34'),
(3146, 219, '_wpas_last_reply_date_gmt', '2022-12-29 17:30:34'),
(3147, 219, '_wpas_is_waiting_client_reply', '1'),
(3148, 219, '_wpas_assignee', '7'),
(3149, 220, '_wp_attached_file', 'awesome-support/ticket_219/UAI-Pensiones-2022-parte-II_221215_133209.pdf'),
(3150, 220, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:453145;}'),
(3151, 219, '_edit_lock', '1672335485:1'),
(3152, 219, '_edit_last', '1'),
(3153, 219, 'auto_delete_attachments', ''),
(3154, 219, 'auto_delete_attachments_type', 'agent'),
(3155, 219, '_wpas_ttl_replies_by_customer', '1'),
(3156, 219, '_wpas_ttl_replies_by_agent', '1'),
(3157, 219, '_wpas_ttl_replies', '2'),
(3158, 224, '_wp_attached_file', 'awesome-support/ticket_219/getpdf.pdf'),
(3159, 224, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:156011;}'),
(3160, 226, '_wp_attached_file', 'awesome-support/ticket_219/analisis-sentencia.docx'),
(3161, 226, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:12534;}'),
(3162, 228, '_form', '<table>\n<tbody>\n\n<tr>\n<td>Su nombre </td>\n<td>: [text* your-name autocomplete:name] </td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n<tr>\n<td>Tu correo electrónico </td>\n<td>: [email* your-email autocomplete:email]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n<tr>\n<td>Su Telefono de Contacto</td>\n<td>: [text* telefono]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n<tr>\n<td>Su Domicilio</td>\n<td>: [text* Direccion]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n<tr>\n<td>Estado civil            </td>\n<td>: [select EstadoCivil \"soltero o soltera\" \"casada o casado\" \"viudo o viuda\" \"separada o separado divorciado o divorciada\" \"Acuerdo de Union Civil\"]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n\n<tr>\n<td>Profesion u Oficio</td>\n<td>: [text profesion_oficio]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n\n<tr>\n<td>Asunto</td>\n<td>: [text* your-subject]</td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n\n\n<tr>\n<td>Tu mensaje</td>\n<td>: [textarea your-message] </td>\n</tr>\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n\n<tr>\n<td>&nbsp;</td>\n<td>&nbsp;</td>\n</tr>\n\n<tr>\n<td>[submit \"Enviar\"]</td>\n<td>&nbsp;</td>\n</tr>'),
(3163, 228, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:56:\"Email desde Circum --- >[_site_title] «[your-subject]»\";s:6:\"sender\";s:15:\"admin@circum.cl\";s:9:\"recipient\";s:22:\"abogados@ciaffaroni.cl\";s:4:\"body\";s:371:\"De: [your-name] <[your-email]>\nAsunto: [your-subject]\n\n\n\n\nNombre : [your-name]\nCorreo : [your-email]\nTelefono : [telefono]\nDireccion : [Direccion]\nEstado Civil : [EstadoCivil]\nEstado Civil : [profesion_oficio]\nAsunto : [your-subject]\nCuerpo Mensaje : [your-message]\n\n\n\n\n\n\n\n\n\n\n\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(3164, 228, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:32:\"[_site_title] «[your-subject]»\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@circum.cl>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:129:\"Cuerpo del mensaje:\n[your-message]\n\n-- \nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(3165, 228, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:40:\"Gracias por tu mensaje. Ha sido enviado.\";s:12:\"mail_sent_ng\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:16:\"validation_error\";s:79:\"Uno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\";s:4:\"spam\";s:94:\"Ha ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\";s:12:\"accept_terms\";s:69:\"Debes aceptar los términos y condiciones antes de enviar tu mensaje.\";s:16:\"invalid_required\";s:30:\"Por favor, rellena este campo.\";s:16:\"invalid_too_long\";s:45:\"Este campo tiene una entrada demasiado larga.\";s:17:\"invalid_too_short\";s:45:\"Este campo tiene una entrada demasiado corta.\";s:13:\"upload_failed\";s:53:\"Ha ocurrido un error desconocido al subir el archivo.\";s:24:\"upload_file_type_invalid\";s:52:\"No tienes permisos para subir archivos de este tipo.\";s:21:\"upload_file_too_large\";s:38:\"El archivo subido es demasiado grande.\";s:23:\"upload_failed_php_error\";s:41:\"Ha ocurrido un error al subir el archivo.\";s:12:\"invalid_date\";s:57:\"Por favor, introduce una fecha con el formato YYYY-MM-DD.\";s:14:\"date_too_early\";s:46:\"Este campo tiene una fecha demasiado temprana.\";s:13:\"date_too_late\";s:45:\"Este campo tiene una fecha demasiado tardía.\";s:14:\"invalid_number\";s:32:\"Por favor, introduce un número.\";s:16:\"number_too_small\";s:47:\"Este campo tiene un número demasiado pequeño.\";s:16:\"number_too_large\";s:45:\"Este campo tiene un número demasiado grande.\";s:23:\"quiz_answer_not_correct\";s:44:\"La respuesta al cuestionario no es correcta.\";s:13:\"invalid_email\";s:59:\"Por favor, introduce una dirección de correo electrónico.\";s:11:\"invalid_url\";s:29:\"Por favor, introduce una URL.\";s:11:\"invalid_tel\";s:45:\"Por favor, introduce un número de teléfono.\";}'),
(3166, 228, '_additional_settings', ''),
(3167, 228, '_locale', 'es_ES'),
(3168, 229, '_edit_lock', '1672432796:1'),
(3169, 229, '_edit_last', '1'),
(3170, 229, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}'),
(3171, 231, '_edit_lock', '1672425577:1'),
(3174, 233, '_edit_lock', '1672436738:1'),
(3175, 234, '_edit_lock', '1672436902:1'),
(3176, 234, '_edit_last', '1'),
(3177, 234, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";b:0;s:14:\"_um_accessible\";i:0;s:28:\"_um_access_hide_from_queries\";b:0;s:19:\"_um_noaccess_action\";i:0;s:30:\"_um_restrict_by_custom_message\";i:0;s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";i:0;s:23:\"_um_access_redirect_url\";s:0:\"\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2022-10-13 17:46:56', '2022-10-13 17:46:56', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://circum.cl/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2022-10-13 17:46:56', '2022-10-13 17:46:56', '', 0, 'http://circum.cl/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-10-13 17:46:56', '2022-10-13 17:46:56', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://circum.cl.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-10-13 17:46:56', '2022-10-13 17:46:56', '', 0, 'http://circum.cl/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-10-13 17:47:45', '2022-10-13 17:47:45', '', 'logo', 'avril caption', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-10-13 17:47:45', '2022-10-13 17:47:45', '', 0, 'http://circum.cl/logo/', 0, 'attachment', 'image/png', 0),
(6, 1, '2022-10-13 17:47:45', '2022-10-13 17:47:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-10-13 17:47:45', '2022-10-13 17:47:45', '', 0, 'http://circum.cl/home/', 0, 'page', '', 0),
(10, 1, '2022-10-13 17:59:22', '2022-10-13 17:59:22', '<!-- wp:shortcode -->\n[ultimatemember form_id=\"16\"]\n<!-- /wp:shortcode -->', 'Login', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2022-10-14 22:21:42', '2022-10-14 22:21:42', '', 0, 'http://circum.cl/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-10-13 17:59:14', '2022-10-13 17:59:14', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-avail', '', '', '2022-10-13 17:59:14', '2022-10-13 17:59:14', '', 0, 'http://circum.cl/2022/10/13/wp-global-styles-avail/', 0, 'wp_global_styles', '', 0),
(12, 1, '2022-10-13 17:59:22', '2022-10-13 17:59:22', '', 'Login', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-10-13 17:59:22', '2022-10-13 17:59:22', '', 10, 'http://circum.cl/?p=12', 0, 'revision', '', 0),
(15, 1, '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 0, 'http://circum.cl/um_form/default-registration/', 0, 'um_form', '', 0),
(16, 1, '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2022-10-14 22:29:41', '2022-10-14 22:29:41', '', 0, 'http://circum.cl/um_form/default-login/', 0, 'um_form', '', 0),
(17, 1, '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 0, 'http://circum.cl/um_form/default-profile/', 0, 'um_form', '', 0),
(18, 1, '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2022-10-13 18:34:05', '2022-10-13 18:34:05', '', 0, 'http://circum.cl/um_directory/members/', 0, 'um_directory', '', 0),
(19, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember form_id=\"17\"]', 'User', '', 'publish', 'closed', 'closed', '', 'user', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/user/', 0, 'page', '', 0),
(20, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember form_id=\"16\"]', 'Login', '', 'publish', 'closed', 'closed', '', 'login-2', '', '', '2022-10-13 18:34:50', '2022-10-13 18:34:50', '', 0, 'http://circum.cl/login-2/', 0, 'page', '', 0),
(21, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember form_id=\"15\"]', 'Register', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/register/', 0, 'page', '', 0),
(22, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember form_id=\"18\"]', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/members/', 0, 'page', '', 0),
(23, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 'Logout', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/logout/', 0, 'page', '', 0),
(24, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember_account]', 'Account', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/account/', 0, 'page', '', 0),
(25, 1, '2022-10-13 18:34:14', '2022-10-13 18:34:14', '[ultimatemember_password]', 'Password Reset', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2022-10-13 18:34:14', '2022-10-13 18:34:14', '', 0, 'http://circum.cl/password-reset/', 0, 'page', '', 0),
(26, 1, '2022-10-13 18:34:50', '2022-10-13 18:34:50', '[ultimatemember form_id=\"16\"]', 'Login', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-10-13 18:34:50', '2022-10-13 18:34:50', '', 20, 'http://circum.cl/?p=26', 0, 'revision', '', 0),
(27, 1, '2022-10-13 18:35:11', '2022-10-13 18:35:11', '<!-- wp:shortcode -->\n[ultimatemember form_id=\"16\"]\n<!-- /wp:shortcode -->', 'Login', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-10-13 18:35:11', '2022-10-13 18:35:11', '', 10, 'http://circum.cl/?p=27', 0, 'revision', '', 0),
(28, 1, '2022-10-14 20:55:28', '2022-10-14 20:55:28', '', 'System', '', 'publish', 'closed', 'closed', '', 'system', '', '', '2022-10-14 20:55:38', '2022-10-14 20:55:38', '', 0, 'http://circum.cl/?page_id=28', 0, 'page', '', 0),
(29, 1, '2022-10-14 20:55:28', '2022-10-14 20:55:28', '', 'System', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2022-10-14 20:55:28', '2022-10-14 20:55:28', '', 28, 'http://circum.cl/?p=29', 0, 'revision', '', 0),
(30, 1, '2022-10-15 22:26:50', '2022-10-15 22:26:50', '', 'Resume', '', 'publish', 'closed', 'closed', '', 'resume', '', '', '2022-10-15 22:26:55', '2022-10-15 22:26:55', '', 0, 'http://circum.cl/?page_id=30', 0, 'page', '', 0),
(31, 1, '2022-10-15 22:26:50', '2022-10-15 22:26:50', '', 'Resume', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2022-10-15 22:26:50', '2022-10-15 22:26:50', '', 30, 'http://circum.cl/?p=31', 0, 'revision', '', 0),
(35, 1, '2022-10-17 16:05:56', '2022-10-17 16:05:56', '', 'Content', '', 'publish', 'closed', 'closed', '', 'content', '', '', '2022-10-17 16:05:56', '2022-10-17 16:05:56', '', 0, 'http://circum.cl/?page_id=35', 0, 'page', '', 0),
(36, 1, '2022-10-17 16:05:56', '2022-10-17 16:05:56', '', 'Content', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-10-17 16:05:56', '2022-10-17 16:05:56', '', 35, 'http://circum.cl/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-10-18 18:30:08', '2022-10-18 18:30:08', '', 'List', '', 'publish', 'closed', 'closed', '', 'list', '', '', '2022-10-18 18:30:14', '2022-10-18 18:30:14', '', 0, 'http://circum.cl/?page_id=37', 0, 'page', '', 0),
(38, 1, '2022-10-18 18:30:08', '2022-10-18 18:30:08', '', 'List', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2022-10-18 18:30:08', '2022-10-18 18:30:08', '', 37, 'http://circum.cl/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-10-19 21:08:58', '2022-10-19 21:08:58', '', 'Categories', '', 'publish', 'closed', 'closed', '', 'categories', '', '', '2022-10-19 21:08:58', '2022-10-19 21:08:58', '', 0, 'http://circum.cl/?page_id=39', 0, 'page', '', 0),
(40, 1, '2022-10-19 21:08:58', '2022-10-19 21:08:58', '', 'Categories', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2022-10-19 21:08:58', '2022-10-19 21:08:58', '', 39, 'http://circum.cl/?p=40', 0, 'revision', '', 0),
(41, 1, '2022-10-20 13:20:32', '2022-10-20 13:20:32', '', 'BANCO DE CREDITO E INVERSIONES', '', 'publish', 'closed', 'closed', '', 'bci', '', '', '2022-12-05 03:24:59', '2022-12-05 03:24:59', '', 0, 'http://circum.cl/?p=41', 0, 'post', '', 0),
(42, 1, '2022-10-20 13:20:32', '2022-10-20 13:20:32', '', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-10-20 13:20:32', '2022-10-20 13:20:32', '', 41, 'http://circum.cl/?p=42', 0, 'revision', '', 0),
(44, 1, '2022-10-20 13:21:20', '2022-10-20 13:21:20', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n<p>Your browser does not support iframes.</p>\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-10-20 13:21:20', '2022-10-20 13:21:20', '', 41, 'http://circum.cl/?p=44', 0, 'revision', '', 0),
(46, 1, '2022-10-20 14:38:57', '2022-10-20 14:38:57', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-10-20 14:38:57', '2022-10-20 14:38:57', '', 41, 'http://circum.cl/?p=46', 0, 'revision', '', 0),
(48, 1, '2022-10-28 11:01:54', '2022-10-28 11:01:54', '', 'Watchlist', '', 'publish', 'closed', 'closed', '', 'watchlist', '', '', '2022-10-28 11:01:55', '2022-10-28 11:01:55', '', 0, 'http://circum.cl/?page_id=48', 0, 'page', '', 0),
(49, 1, '2022-10-28 11:01:54', '2022-10-28 11:01:54', '', 'Watchlist', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2022-10-28 11:01:54', '2022-10-28 11:01:54', '', 48, 'http://circum.cl/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-10-28 13:38:34', '2022-10-28 13:38:34', '', 'Report', '', 'publish', 'closed', 'closed', '', 'report', '', '', '2022-10-28 13:38:34', '2022-10-28 13:38:34', '', 0, 'http://circum.cl/?page_id=50', 0, 'page', '', 0),
(51, 1, '2022-10-28 13:38:34', '2022-10-28 13:38:34', '', 'Report', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2022-10-28 13:38:34', '2022-10-28 13:38:34', '', 50, 'http://circum.cl/?p=51', 0, 'revision', '', 0),
(52, 1, '2022-11-01 08:35:28', '2022-11-01 08:35:28', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-kikin', '', '', '2022-11-01 08:35:28', '2022-11-01 08:35:28', '', 0, 'http://circum.cl/wp-global-styles-kikin/', 0, 'wp_global_styles', '', 0),
(53, 1, '2022-11-01 12:35:06', '2022-11-01 12:35:06', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\"></iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-01 12:35:06', '2022-11-01 12:35:06', '', 41, 'http://circum.cl/?p=53', 0, 'revision', '', 0),
(54, 1, '2022-11-01 12:46:45', '2022-11-01 12:46:45', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<iframe src=\"https://finance.yahoo.com/chart/BCI.SN#eyJpbnRlcnZhbCI6IndlZWsiLCJwZXJpb2RpY2l0eSI6MSwidGltZVVuaXQiOm51bGwsImNhbmRsZVdpZHRoIjoyLjA0OTE1OTEyMDMxMDQ3OSwiZmxpcHBlZCI6ZmFsc2UsInZvbHVtZVVuZGVybGF5Ijp0cnVlLCJhZGoiOnRydWUsImNyb3NzaGFpciI6dHJ1ZSwiY2hhcnRUeXBlIjoibGluZSIsImV4dGVuZGVkIjpmYWxzZSwibWFya2V0U2Vzc2lvbnMiOnt9LCJhZ2dyZWdhdGlvblR5cGUiOiJvaGxjIiwiY2hhcnRTY2FsZSI6ImxpbmVhciIsInBhbmVscyI6eyJjaGFydCI6eyJwZXJjZW50IjoxLCJkaXNwbGF5IjoiQkNJLlNOIiwiY2hhcnROYW1lIjoiY2hhcnQiLCJpbmRleCI6MCwieUF4aXMiOnsibmFtZSI6ImNoYXJ0IiwicG9zaXRpb24iOm51bGx9LCJ5YXhpc0xIUyI6W10sInlheGlzUkhTIjpbImNoYXJ0Iiwi4oCMdm9sIHVuZHLigIwiXX19LCJzZXRTcGFuIjpudWxsLCJsaW5lV2lkdGgiOjIsInN0cmlwZWRCYWNrZ3JvdW5kIjp0cnVlLCJldmVudHMiOmZhbHNlLCJjb2xvciI6IiMwMDgxZjIiLCJzdHJpcGVkQmFja2dyb3VkIjp0cnVlLCJyYW5nZSI6bnVsbCwiZXZlbnRNYXAiOnsiY29ycG9yYXRlIjpbXSwic2lnRGV2Ijp7fX0sImN1c3RvbVJhbmdlIjpudWxsLCJzeW1ib2xzIjpbeyJzeW1ib2wiOiJCQ0kuU04iLCJzeW1ib2xPYmplY3QiOnsic3ltYm9sIjoiQkNJLlNOIiwicXVvdGVUeXBlIjoiRVFVSVRZIiwiZXhjaGFuZ2VUaW1lWm9uZSI6IkFtZXJpY2EvU2FudGlhZ28ifSwicGVyaW9kaWNpdHkiOjEsImludGVydmFsIjoid2VlayIsInRpbWVVbml0IjpudWxsLCJzZXRTcGFuIjpudWxsfV0sInN0dWRpZXMiOnsi4oCMdm9sIHVuZHLigIwiOnsidHlwZSI6InZvbCB1bmRyIiwiaW5wdXRzIjp7ImlkIjoi4oCMdm9sIHVuZHLigIwiLCJkaXNwbGF5Ijoi4oCMdm9sIHVuZHLigIwifSwib3V0cHV0cyI6eyJVcCBWb2x1bWUiOiIjMDBiMDYxIiwiRG93biBWb2x1bWUiOiIjZmYzMzNhIn0sInBhbmVsIjoiY2hhcnQiLCJwYXJhbWV0ZXJzIjp7IndpZHRoRmFjdG9yIjowLjQ1LCJjaGFydE5hbWUiOiJjaGFydCIsInBhbmVsTmFtZSI6ImNoYXJ0In19fX0-\" title=\"iframe Example 1\" width=\"100%\" height=\"400\"></iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-01 12:46:45', '2022-11-01 12:46:45', '', 41, 'http://circum.cl/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-11-01 12:51:18', '2022-11-01 12:51:18', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<iframe src=\"https://yhoo.it/3Bb1SwU\" title=\"iframe Example 1\" width=\"100%\" height=\"400\"></iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-01 12:51:18', '2022-11-01 12:51:18', '', 41, 'http://circum.cl/?p=55', 0, 'revision', '', 0),
(56, 1, '2022-11-03 01:41:35', '2022-11-03 01:41:35', '', 'Test', '', 'publish', 'closed', 'closed', '', 'test', '', '', '2022-11-03 01:42:15', '2022-11-03 01:42:15', '', 0, 'http://circum.cl/?page_id=56', 0, 'page', '', 0),
(57, 1, '2022-11-03 01:41:35', '2022-11-03 01:41:35', '', 'Test', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2022-11-03 01:41:35', '2022-11-03 01:41:35', '', 56, 'http://circum.cl/?p=57', 0, 'revision', '', 0),
(58, 1, '2022-11-04 01:04:15', '2022-11-04 01:04:15', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Folio', 'folio', 'publish', 'closed', 'closed', '', 'group_636464821ad58', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 0, 'http://circum.cl/?post_type=acf-field-group&#038;p=58', 0, 'acf-field-group', '', 0),
(59, 1, '2022-11-04 01:04:15', '2022-11-04 01:04:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name', 'meta_folio_name', 'publish', 'closed', 'closed', '', 'field_6364648dbe982', '', '', '2022-11-04 01:46:38', '2022-11-04 01:46:38', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=59', 0, 'acf-field', '', 0),
(60, 1, '2022-11-04 01:08:15', '2022-11-04 01:08:15', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->\n\n<!-- wp:html -->\n<iframe src=\"https://yhoo.it/3Bb1SwU\" title=\"iframe Example 1\" width=\"100%\" height=\"400\"></iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-04 01:08:15', '2022-11-04 01:08:15', '', 41, 'http://circum.cl/?p=60', 0, 'revision', '', 0),
(61, 1, '2022-11-04 01:30:54', '2022-11-04 01:30:54', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_bstgo', 'meta_folio_name_bstgo', 'publish', 'closed', 'closed', '', 'field_636469f71c960', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=61', 2, 'acf-field', '', 0),
(62, 1, '2022-11-04 01:30:54', '2022-11-04 01:30:54', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_bstgo', 'meta_folio_url_bstgo', 'publish', 'closed', 'closed', '', 'field_63646a171c962', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=62', 3, 'acf-field', '', 0),
(63, 1, '2022-11-04 01:30:54', '2022-11-04 01:30:54', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_yahoo', 'meta_folio_name_yahoo', 'publish', 'closed', 'closed', '', 'field_63646a381c963', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=63', 4, 'acf-field', '', 0),
(64, 1, '2022-11-04 01:30:55', '2022-11-04 01:30:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_yahoo', 'meta_folio_url_yahoo', 'publish', 'closed', 'closed', '', 'field_63646a5b1c964', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=64', 5, 'acf-field', '', 0),
(65, 1, '2022-11-04 01:30:55', '2022-11-04 01:30:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_google', 'meta_folio_name_google', 'publish', 'closed', 'closed', '', 'field_63646a791c965', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=65', 6, 'acf-field', '', 0),
(66, 1, '2022-11-04 01:30:55', '2022-11-04 01:30:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_google', 'meta_folio_url_google', 'publish', 'closed', 'closed', '', 'field_63646aa61c966', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=66', 7, 'acf-field', '', 0),
(67, 1, '2022-11-04 01:30:56', '2022-11-04 01:30:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_investing', 'meta_folio_name_investing', 'publish', 'closed', 'closed', '', 'field_63646acf1c967', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=67', 8, 'acf-field', '', 0),
(68, 1, '2022-11-04 01:30:56', '2022-11-04 01:30:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_investing', 'meta_folio_url_investing', 'publish', 'closed', 'closed', '', 'field_63646af01c968', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=68', 9, 'acf-field', '', 0),
(71, 1, '2022-11-04 01:33:50', '2022-11-04 01:33:50', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-04 01:33:50', '2022-11-04 01:33:50', '', 41, 'http://circum.cl/?p=71', 0, 'revision', '', 0),
(72, 1, '2022-11-04 01:34:02', '2022-11-04 01:34:02', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-04 01:34:02', '2022-11-04 01:34:02', '', 41, 'http://circum.cl/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-11-04 01:35:36', '2022-11-04 01:35:36', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-04 01:35:36', '2022-11-04 01:35:36', '', 41, 'http://circum.cl/?p=73', 0, 'revision', '', 0),
(74, 1, '2022-11-04 01:56:58', '2022-11-04 01:56:58', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-04 01:56:58', '2022-11-04 01:56:58', '', 41, 'http://circum.cl/?p=74', 0, 'revision', '', 0),
(76, 1, '2022-11-05 00:12:53', '2022-11-05 00:12:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_msn', 'meta_folio_name_msn', 'publish', 'closed', 'closed', '', 'field_6365aa36d33c4', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=76', 10, 'acf-field', '', 0),
(77, 1, '2022-11-05 00:12:53', '2022-11-05 00:12:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_msn', 'meta_folio_url_msn', 'publish', 'closed', 'closed', '', 'field_6365aa58d33c5', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=77', 11, 'acf-field', '', 0),
(78, 1, '2022-11-05 00:16:01', '2022-11-05 00:16:01', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-05 00:16:01', '2022-11-05 00:16:01', '', 41, 'http://circum.cl/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-11-05 00:28:20', '2022-11-05 00:28:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_cmf', 'meta_folio_name_cmf', 'publish', 'closed', 'closed', '', 'field_6365adc5d8f40', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=79', 12, 'acf-field', '', 0),
(80, 1, '2022-11-05 00:28:20', '2022-11-05 00:28:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_cmf', 'meta_folio_url_cmf', 'publish', 'closed', 'closed', '', 'field_6365adfcd8f41', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=80', 13, 'acf-field', '', 0),
(81, 1, '2022-11-05 00:42:09', '2022-11-05 00:42:09', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-05 00:42:09', '2022-11-05 00:42:09', '', 41, 'http://circum.cl/?p=81', 0, 'revision', '', 0),
(82, 1, '2022-11-05 00:48:53', '2022-11-05 00:48:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_name_trader', 'meta_folio_name_trader', 'publish', 'closed', 'closed', '', 'field_6365b2b036465', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=82', 14, 'acf-field', '', 0),
(83, 1, '2022-11-05 00:48:53', '2022-11-05 00:48:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'meta_folio_url_trader', 'meta_folio_url_trader', 'publish', 'closed', 'closed', '', 'field_6365b2d836466', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=83', 15, 'acf-field', '', 0),
(84, 1, '2022-11-05 00:53:51', '2022-11-05 00:53:51', '<!-- wp:html -->\n<iframe src=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=BCI\" title=\"iframe Example 1\" width=\"100%\" height=\"400\">\n</iframe>\n<!-- /wp:html -->', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-05 00:53:51', '2022-11-05 00:53:51', '', 41, 'http://circum.cl/?p=84', 0, 'revision', '', 0),
(85, 1, '2022-11-05 01:29:31', '2022-11-05 01:29:31', '', 'CALICHERAASOC. INVER. PAMPA CALICHERA S.A. SERIE ACALICHERAA', '', 'publish', 'closed', 'closed', '', 'calicheraa', '', '', '2022-11-17 00:00:12', '2022-11-17 00:00:12', '', 0, 'http://circum.cl/?p=85', 0, 'post', '', 0),
(86, 1, '2022-11-05 01:29:31', '2022-11-05 01:29:31', '', 'CALICHERAA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-11-05 01:29:31', '2022-11-05 01:29:31', '', 85, 'http://circum.cl/?p=86', 0, 'revision', '', 0),
(87, 1, '2022-11-05 01:30:21', '2022-11-05 01:30:21', '', 'CALICHERAA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-11-05 01:30:21', '2022-11-05 01:30:21', '', 85, 'http://circum.cl/?p=87', 0, 'revision', '', 0),
(89, 1, '2022-11-05 01:34:20', '2022-11-05 01:34:20', '', 'CALICHERAA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-11-05 01:34:20', '2022-11-05 01:34:20', '', 85, 'http://circum.cl/?p=89', 0, 'revision', '', 0),
(92, 1, '2022-11-15 00:04:14', '2022-11-15 00:04:14', '', 'BCI', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-15 00:04:14', '2022-11-15 00:04:14', '', 41, 'http://circum.cl/?p=92', 0, 'revision', '', 0),
(93, 1, '2022-11-15 00:10:30', '2022-11-15 00:10:30', '', 'Locked', '', 'publish', 'closed', 'closed', '', 'locked', '', '', '2022-11-15 00:10:41', '2022-11-15 00:10:41', '', 0, 'http://circum.cl/?page_id=93', 0, 'page', '', 0),
(94, 1, '2022-11-15 00:10:30', '2022-11-15 00:10:30', '', 'Locked', '', 'inherit', 'closed', 'closed', '', '93-revision-v1', '', '', '2022-11-15 00:10:30', '2022-11-15 00:10:30', '', 93, 'http://circum.cl/?p=94', 0, 'revision', '', 0),
(96, 1, '2022-11-16 23:43:56', '2022-11-16 23:43:56', '', 'BANCO DE CHILE', '', 'publish', 'closed', 'closed', '', 'chile', '', '', '2022-11-17 19:25:46', '2022-11-17 19:25:46', '', 0, 'http://circum.cl/?p=96', 0, 'post', '', 0),
(97, 1, '2022-11-16 23:43:56', '2022-11-16 23:43:56', '', '<a rel=\"noreferrer noopener\" href=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=CHILE\" target=\"_blank\">CHILE</a>', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-16 23:43:56', '2022-11-16 23:43:56', '', 96, 'http://circum.cl/?p=97', 0, 'revision', '', 0),
(98, 1, '2022-11-16 23:43:59', '2022-11-16 23:43:59', '', '<a rel=\"noreferrer noopener\" href=\"https://gat.bolsadesantiago.com/GAT/chartIQ/GAT_Resumen_CIQ.asp?language=es&amp;NEMO=CHILE\" target=\"_blank\">CHILE</a>', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-16 23:43:59', '2022-11-16 23:43:59', '', 96, 'http://circum.cl/?p=98', 0, 'revision', '', 0),
(99, 1, '2022-11-16 23:45:22', '2022-11-16 23:45:22', '', 'CHILE', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-16 23:45:22', '2022-11-16 23:45:22', '', 96, 'http://circum.cl/?p=99', 0, 'revision', '', 0),
(100, 1, '2022-11-16 23:48:11', '2022-11-16 23:48:11', '', 'ENTEL CHILE', '', 'publish', 'closed', 'closed', '', 'entel-chile', '', '', '2022-12-27 14:03:40', '2022-12-27 14:03:40', '', 0, 'http://circum.cl/?p=100', 0, 'post', '', 0),
(101, 1, '2022-11-16 23:48:11', '2022-11-16 23:48:11', '', 'ENTEL CHILE', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2022-11-16 23:48:11', '2022-11-16 23:48:11', '', 100, 'http://circum.cl/?p=101', 0, 'revision', '', 0),
(102, 1, '2022-11-16 23:48:13', '2022-11-16 23:48:13', '', 'ENTEL CHILE', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2022-11-16 23:48:13', '2022-11-16 23:48:13', '', 100, 'http://circum.cl/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-11-16 23:51:04', '2022-11-16 23:51:04', '', 'NITRATOS DE CHILE S.A.', '', 'publish', 'closed', 'closed', '', 'nitratos-de-chile-s-a', '', '', '2022-12-27 14:16:26', '2022-12-27 14:16:26', '', 0, 'http://circum.cl/?p=103', 0, 'post', '', 0),
(104, 1, '2022-11-16 23:51:04', '2022-11-16 23:51:04', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-11-16 23:51:04', '2022-11-16 23:51:04', '', 103, 'http://circum.cl/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-11-16 23:51:06', '2022-11-16 23:51:06', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-11-16 23:51:06', '2022-11-16 23:51:06', '', 103, 'http://circum.cl/?p=105', 0, 'revision', '', 0),
(106, 1, '2022-11-16 23:53:27', '2022-11-16 23:53:27', '', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.', '', 'publish', 'closed', 'closed', '', 'sociedad-de-inversiones-oro-blanco-s-a', '', '', '2022-12-27 14:16:07', '2022-12-27 14:16:07', '', 0, 'http://circum.cl/?p=106', 0, 'post', '', 0),
(107, 1, '2022-11-16 23:53:27', '2022-11-16 23:53:27', '', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2022-11-16 23:53:27', '2022-11-16 23:53:27', '', 106, 'http://circum.cl/?p=107', 0, 'revision', '', 0),
(108, 1, '2022-11-16 23:53:30', '2022-11-16 23:53:30', '', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2022-11-16 23:53:30', '2022-11-16 23:53:30', '', 106, 'http://circum.cl/?p=108', 0, 'revision', '', 0),
(109, 1, '2022-11-16 23:56:02', '2022-11-16 23:56:02', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'publish', 'closed', 'closed', '', 'soc-quimica-minera-de-chile-s-a-serie-a', '', '', '2022-12-27 14:13:52', '2022-12-27 14:13:52', '', 0, 'http://circum.cl/?p=109', 0, 'post', '', 0),
(110, 1, '2022-11-16 23:56:02', '2022-11-16 23:56:02', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-16 23:56:02', '2022-11-16 23:56:02', '', 109, 'http://circum.cl/?p=110', 0, 'revision', '', 0),
(111, 1, '2022-11-16 23:56:04', '2022-11-16 23:56:04', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-16 23:56:04', '2022-11-16 23:56:04', '', 109, 'http://circum.cl/?p=111', 0, 'revision', '', 0),
(112, 1, '2022-11-16 23:58:04', '2022-11-16 23:58:04', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'publish', 'closed', 'closed', '', 'soc-quimica-minera-de-chile-s-a-serie-b', '', '', '2022-12-27 14:15:36', '2022-12-27 14:15:36', '', 0, 'http://circum.cl/?p=112', 0, 'post', '', 0),
(113, 1, '2022-11-16 23:58:04', '2022-11-16 23:58:04', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-11-16 23:58:04', '2022-11-16 23:58:04', '', 112, 'http://circum.cl/?p=113', 0, 'revision', '', 0),
(114, 1, '2022-11-16 23:58:06', '2022-11-16 23:58:06', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-11-16 23:58:06', '2022-11-16 23:58:06', '', 112, 'http://circum.cl/?p=114', 0, 'revision', '', 0),
(115, 1, '2022-11-16 23:58:59', '2022-11-16 23:58:59', '', 'BANCO DE CHILE', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-16 23:58:59', '2022-11-16 23:58:59', '', 96, 'http://circum.cl/?p=115', 0, 'revision', '', 0),
(116, 1, '2022-11-16 23:59:54', '2022-11-16 23:59:54', '', 'CALICHERAASOC. INVER. PAMPA CALICHERA S.A. SERIE ACALICHERAA', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2022-11-16 23:59:54', '2022-11-16 23:59:54', '', 85, 'http://circum.cl/?p=116', 0, 'revision', '', 0),
(117, 1, '2022-11-17 00:01:35', '2022-11-17 00:01:35', '', 'BANCO DE CREDITO E INVERSIONES', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-11-17 00:01:35', '2022-11-17 00:01:35', '', 41, 'http://circum.cl/?p=117', 0, 'revision', '', 0),
(118, 1, '2022-11-17 00:04:13', '2022-11-17 00:04:13', '', 'COMPANIA SUD AMERICANA DE VAPORES S.A.', '', 'publish', 'closed', 'closed', '', 'compania-sud-americana-de-vapores-s-a', '', '', '2022-11-17 00:16:14', '2022-11-17 00:16:14', '', 0, 'http://circum.cl/?p=118', 0, 'post', '', 0),
(119, 1, '2022-11-17 00:04:13', '2022-11-17 00:04:13', '', 'COMPANIA SUD AMERICANA DE VAPORES S.A.', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-11-17 00:04:13', '2022-11-17 00:04:13', '', 118, 'http://circum.cl/?p=119', 0, 'revision', '', 0),
(120, 1, '2022-11-17 00:04:15', '2022-11-17 00:04:15', '', 'COMPANIA SUD AMERICANA DE VAPORES S.A.', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-11-17 00:04:15', '2022-11-17 00:04:15', '', 118, 'http://circum.cl/?p=120', 0, 'revision', '', 0),
(121, 1, '2022-11-17 00:16:14', '2022-11-17 00:16:14', '', 'COMPANIA SUD AMERICANA DE VAPORES S.A.', '', 'inherit', 'closed', 'closed', '', '118-revision-v1', '', '', '2022-11-17 00:16:14', '2022-11-17 00:16:14', '', 118, 'http://circum.cl/?p=121', 0, 'revision', '', 0),
(122, 1, '2022-11-17 19:00:43', '2022-11-17 19:00:43', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:00:43', '2022-11-17 19:00:43', '', 109, 'http://circum.cl/?p=122', 0, 'revision', '', 0),
(123, 1, '2022-11-17 19:02:11', '2022-11-17 19:02:11', '<!-- wp:paragraph -->\n<p>Clasificacion de Riesgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:02:11', '2022-11-17 19:02:11', '', 109, 'http://circum.cl/?p=123', 0, 'revision', '', 0),
(124, 1, '2022-11-17 19:02:13', '2022-11-17 19:02:13', '<!-- wp:paragraph -->\n<p>Clasificacion de Riesgo</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:02:13', '2022-11-17 19:02:13', '', 109, 'http://circum.cl/?p=124', 0, 'revision', '', 0),
(126, 1, '2022-11-17 19:03:34', '2022-11-17 19:03:34', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:03:34', '2022-11-17 19:03:34', '', 109, 'http://circum.cl/?p=126', 0, 'revision', '', 0),
(127, 1, '2022-11-17 19:03:36', '2022-11-17 19:03:36', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:03:36', '2022-11-17 19:03:36', '', 109, 'http://circum.cl/?p=127', 0, 'revision', '', 0),
(128, 1, '2022-11-17 19:11:52', '2022-11-17 19:11:52', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-11-17 19:11:52', '2022-11-17 19:11:52', '', 109, 'http://circum.cl/?p=128', 0, 'revision', '', 0),
(129, 1, '2022-11-17 19:18:01', '2022-11-17 19:18:01', '', 'ENTEL CHILE', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2022-11-17 19:18:01', '2022-11-17 19:18:01', '', 100, 'http://circum.cl/?p=129', 0, 'revision', '', 0),
(130, 1, '2022-11-17 19:23:56', '2022-11-17 19:23:56', '', 'BANCO DE CHILE', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-17 19:23:56', '2022-11-17 19:23:56', '', 96, 'http://circum.cl/?p=130', 0, 'revision', '', 0),
(131, 1, '2022-11-17 19:25:46', '2022-11-17 19:25:46', '', 'BANCO DE CHILE', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2022-11-17 19:25:46', '2022-11-17 19:25:46', '', 96, 'http://circum.cl/?p=131', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(132, 1, '2022-11-17 21:28:42', '2022-11-17 21:28:42', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":139,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_04-1024x463.jpg\" alt=\"\" class=\"wp-image-139\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_05-1024x466.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aun con un valle bastante extenso calichera continuo con la entrega de dividendos consistentemente </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":147,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_08-1024x395.jpg\" alt=\"\" class=\"wp-image-147\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":138,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_03-1024x443.jpg\" alt=\"\" class=\"wp-image-138\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2021-06-13 a 2021-11-13 se experimento una recuperacion del 199.87% con respecto al indice de fecha inicial</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_06-1024x435.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":145,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_07-1024x446.jpg\" alt=\"\" class=\"wp-image-145\"/></figure>\n<!-- /wp:image -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'publish', 'open', 'open', '', 'reporte-pampa-calichera-s-a-movimientos-2017-01-01-a-2022-11-17', '', '', '2022-11-18 01:53:39', '2022-11-18 01:53:39', '', 0, 'http://circum.cl/?p=132', 0, 'post', '', 0),
(134, 1, '2022-11-17 21:38:02', '2022-11-17 21:38:02', '', 'calichera_01', '', 'inherit', 'open', 'closed', '', 'calichera_01', '', '', '2022-11-17 21:38:02', '2022-11-17 21:38:02', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_01.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2022-11-17 21:53:34', '2022-11-17 21:53:34', '', 'calichera_02', '', 'inherit', 'open', 'closed', '', 'calichera_02', '', '', '2022-11-17 21:53:34', '2022-11-17 21:53:34', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2022-11-17 22:11:43', '2022-11-17 22:11:43', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-11-17 22:11:43', '2022-11-17 22:11:43', '', 132, 'http://circum.cl/?p=136', 0, 'revision', '', 0),
(138, 1, '2022-11-17 22:29:32', '2022-11-17 22:29:32', '', 'calichera_03', '', 'inherit', 'open', 'closed', '', 'calichera_03', '', '', '2022-11-17 22:29:32', '2022-11-17 22:29:32', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_03.jpg', 0, 'attachment', 'image/jpeg', 0),
(139, 1, '2022-11-17 22:42:19', '2022-11-17 22:42:19', '', 'calichera_04', '', 'inherit', 'open', 'closed', '', 'calichera_04', '', '', '2022-11-17 22:42:19', '2022-11-17 22:42:19', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_04.jpg', 0, 'attachment', 'image/jpeg', 0),
(140, 1, '2022-11-17 22:58:54', '2022-11-17 22:58:54', '', 'calichera_05', '', 'inherit', 'open', 'closed', '', 'calichera_05', '', '', '2022-11-17 22:58:54', '2022-11-17 22:58:54', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_05.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2022-11-17 23:24:07', '2022-11-17 23:24:07', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":139,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_04-1024x463.jpg\" alt=\"\" class=\"wp-image-139\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_05-1024x466.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aun con un valle bastante extenso calichera continuo con la entrega de dividendos consistentemente </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":138,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_03-1024x443.jpg\" alt=\"\" class=\"wp-image-138\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2021-06-13 a 2021-11-13 se experimento una recuperacion del 199.87% con respecto al indice de fecha inicial</p>\n<!-- /wp:paragraph -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-11-17 23:24:07', '2022-11-17 23:24:07', '', 132, 'http://circum.cl/?p=141', 0, 'revision', '', 0),
(143, 1, '2022-11-17 23:40:12', '2022-11-17 23:40:12', '', 'calichera_06', '', 'inherit', 'open', 'closed', '', 'calichera_06', '', '', '2022-11-17 23:40:12', '2022-11-17 23:40:12', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_06.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2022-11-17 23:40:19', '2022-11-17 23:40:19', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":139,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_04-1024x463.jpg\" alt=\"\" class=\"wp-image-139\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_05-1024x466.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aun con un valle bastante extenso calichera continuo con la entrega de dividendos consistentemente </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":138,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_03-1024x443.jpg\" alt=\"\" class=\"wp-image-138\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2021-06-13 a 2021-11-13 se experimento una recuperacion del 199.87% con respecto al indice de fecha inicial</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_06-1024x435.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-11-17 23:40:19', '2022-11-17 23:40:19', '', 132, 'http://circum.cl/?p=144', 0, 'revision', '', 0),
(145, 1, '2022-11-17 23:41:51', '2022-11-17 23:41:51', '', 'calichera_07', '', 'inherit', 'open', 'closed', '', 'calichera_07', '', '', '2022-11-17 23:41:51', '2022-11-17 23:41:51', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_07.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2022-11-17 23:41:57', '2022-11-17 23:41:57', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":139,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_04-1024x463.jpg\" alt=\"\" class=\"wp-image-139\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_05-1024x466.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aun con un valle bastante extenso calichera continuo con la entrega de dividendos consistentemente </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":138,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_03-1024x443.jpg\" alt=\"\" class=\"wp-image-138\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2021-06-13 a 2021-11-13 se experimento una recuperacion del 199.87% con respecto al indice de fecha inicial</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_06-1024x435.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":145,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_07-1024x446.jpg\" alt=\"\" class=\"wp-image-145\"/></figure>\n<!-- /wp:image -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-11-17 23:41:57', '2022-11-17 23:41:57', '', 132, 'http://circum.cl/?p=146', 0, 'revision', '', 0),
(147, 1, '2022-11-18 01:37:05', '2022-11-18 01:37:05', '', 'calichera_08', '', 'inherit', 'open', 'closed', '', 'calichera_08', '', '', '2022-11-18 01:37:05', '2022-11-18 01:37:05', '', 132, 'http://circum.cl/wp-content/uploads/2022/11/calichera_08.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2022-11-18 01:53:37', '2022-11-18 01:53:37', '<!-- wp:paragraph -->\n<p>Resumen :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sociedad de Inversiones Pampa Calichera S.A. es una empresa que se dedica a las inversiones, principalmente en el sector de la minería y la industria química.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":134,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_01-1024x443.jpg\" alt=\"\" class=\"wp-image-134\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":139,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_04-1024x463.jpg\" alt=\"\" class=\"wp-image-139\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el perido 2018 - 2022-11-17 se hanentregado 14 dividendos promediando 2.8 dividendos por año</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":140,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_05-1024x466.jpg\" alt=\"\" class=\"wp-image-140\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Aun con un valle bastante extenso calichera continuo con la entrega de dividendos consistentemente </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":147,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_08-1024x395.jpg\" alt=\"\" class=\"wp-image-147\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":135,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_02-1024x442.jpg\" alt=\"\" class=\"wp-image-135\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2018-10-07 a 2021-06-13 se experimiento una tendencia bajista de -6250% debido a la baja de demanda por pandemia c-19 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":138,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_03-1024x443.jpg\" alt=\"\" class=\"wp-image-138\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Durante el periodo 2021-06-13 a 2021-11-13 se experimento una recuperacion del 199.87% con respecto al indice de fecha inicial</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":143,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_06-1024x435.jpg\" alt=\"\" class=\"wp-image-143\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":145,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://circum.cl/wp-content/uploads/2022/11/calichera_07-1024x446.jpg\" alt=\"\" class=\"wp-image-145\"/></figure>\n<!-- /wp:image -->', 'Reporte PAMPA CALICHERA S.A Movimientos 2018-01-01 a 2022-11-17', '', 'inherit', 'closed', 'closed', '', '132-revision-v1', '', '', '2022-11-18 01:53:37', '2022-11-18 01:53:37', '', 132, 'http://circum.cl/?p=149', 0, 'revision', '', 0),
(152, 1, '2022-12-02 21:29:56', '2022-12-02 21:29:56', '<!-- wp:preformatted -->\n<pre id=\"tw-target-text\" class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre id=\"tw-target-text\" class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Dictionary', '', 'publish', 'closed', 'closed', '', 'dictionary', '', '', '2022-12-02 21:29:58', '2022-12-02 21:29:58', '', 0, 'http://circum.cl/?page_id=152', 0, 'page', '', 0),
(153, 1, '2022-12-02 21:29:56', '2022-12-02 21:29:56', '<!-- wp:preformatted -->\n<pre id=\"tw-target-text\" class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->\n\n<!-- wp:preformatted -->\n<pre id=\"tw-target-text\" class=\"wp-block-preformatted\"></pre>\n<!-- /wp:preformatted -->', 'Dictionary', '', 'inherit', 'closed', 'closed', '', '152-revision-v1', '', '', '2022-12-02 21:29:56', '2022-12-02 21:29:56', '', 152, 'http://circum.cl/?p=153', 0, 'revision', '', 0),
(154, 1, '2022-12-02 21:45:54', '2022-12-02 21:45:54', '<!-- wp:paragraph -->\n<p>Media móvil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En estadística, una <strong>media móvil</strong> es un cálculo utilizado para analizar un conjunto de datos en modo de puntos para crear series de promedios. Así las medias móviles son una lista de números en la cual cada uno es el promedio de un subconjunto de los datos originales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a rel=\"noreferrer noopener\" href=\"https://es.wikipedia.org/wiki/Media_m%C3%B3vil\" data-type=\"URL\" data-id=\"https://es.wikipedia.org/wiki/Media_m%C3%B3vil\" target=\"_blank\">wikipedia</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.investopedia.com/terms/m/movingaverage.asp#:~:text=The%20Bottom%20Line-,A%20moving%20average%20(MA)%20is%20a%20stock%20indicator%20commonly%20used,moving%20average%20indicates%20a%20downtrend.\" data-type=\"URL\" data-id=\"https://www.investopedia.com/terms/m/movingaverage.asp#:~:text=The%20Bottom%20Line-,A%20moving%20average%20(MA)%20is%20a%20stock%20indicator%20commonly%20used,moving%20average%20indicates%20a%20downtrend.\" target=\"_blank\" rel=\"noreferrer noopener\">investopedia</a></p>\n<!-- /wp:paragraph -->', 'Moving Average', '', 'publish', 'closed', 'closed', '', 'moving-average', '', '', '2022-12-02 21:46:28', '2022-12-02 21:46:28', '', 0, 'http://circum.cl/?p=154', 0, 'post', '', 0),
(155, 1, '2022-12-02 21:45:54', '2022-12-02 21:45:54', '<!-- wp:paragraph -->\n<p>Media móvil</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>En estadística, una <strong>media móvil</strong> es un cálculo utilizado para analizar un conjunto de datos en modo de puntos para crear series de promedios. Así las medias móviles son una lista de números en la cual cada uno es el promedio de un subconjunto de los datos originales.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a rel=\"noreferrer noopener\" href=\"https://es.wikipedia.org/wiki/Media_m%C3%B3vil\" data-type=\"URL\" data-id=\"https://es.wikipedia.org/wiki/Media_m%C3%B3vil\" target=\"_blank\">wikipedia</a>.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://www.investopedia.com/terms/m/movingaverage.asp#:~:text=The%20Bottom%20Line-,A%20moving%20average%20(MA)%20is%20a%20stock%20indicator%20commonly%20used,moving%20average%20indicates%20a%20downtrend.\" data-type=\"URL\" data-id=\"https://www.investopedia.com/terms/m/movingaverage.asp#:~:text=The%20Bottom%20Line-,A%20moving%20average%20(MA)%20is%20a%20stock%20indicator%20commonly%20used,moving%20average%20indicates%20a%20downtrend.\" target=\"_blank\" rel=\"noreferrer noopener\">investopedia</a></p>\n<!-- /wp:paragraph -->', 'Moving Average', '', 'inherit', 'closed', 'closed', '', '154-revision-v1', '', '', '2022-12-02 21:45:54', '2022-12-02 21:45:54', '', 154, 'http://circum.cl/?p=155', 0, 'revision', '', 0),
(156, 1, '2022-12-05 03:22:51', '2022-12-05 03:22:51', 'a:13:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'rank_01', 'rank_01', 'publish', 'closed', 'closed', '', 'field_638d63e375ff8', '', '', '2022-12-05 03:23:13', '2022-12-05 03:23:13', '', 58, 'http://circum.cl/?post_type=acf-field&#038;p=156', 1, 'acf-field', '', 0),
(157, 1, '2022-12-05 03:24:51', '2022-12-05 03:24:51', '', 'BANCO DE CREDITO E INVERSIONES', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-12-05 03:24:51', '2022-12-05 03:24:51', '', 41, 'http://circum.cl/?p=157', 0, 'revision', '', 0),
(158, 1, '2022-12-05 03:24:59', '2022-12-05 03:24:59', '', 'BANCO DE CREDITO E INVERSIONES', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2022-12-05 03:24:59', '2022-12-05 03:24:59', '', 41, 'http://circum.cl/?p=158', 0, 'revision', '', 0),
(159, 1, '2022-12-05 03:26:09', '2022-12-05 03:26:09', '', 'ENTEL CHILE', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2022-12-05 03:26:09', '2022-12-05 03:26:09', '', 100, 'http://circum.cl/?p=159', 0, 'revision', '', 0),
(160, 1, '2022-12-05 03:30:45', '2022-12-05 03:30:45', '<!-- wp:paragraph -->\n<p>priceopen</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>precio a la hora de apertura del mercado</p>\n<!-- /wp:paragraph -->', 'PRICEOPEN', '', 'publish', 'open', 'open', '', 'priceopen', '', '', '2022-12-05 03:30:47', '2022-12-05 03:30:47', '', 0, 'http://circum.cl/?p=160', 0, 'post', '', 0),
(161, 1, '2022-12-05 03:30:45', '2022-12-05 03:30:45', '<!-- wp:paragraph -->\n<p>priceopen</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>precio a la hora de apertura del mercado</p>\n<!-- /wp:paragraph -->', 'PRICEOPEN', '', 'inherit', 'closed', 'closed', '', '160-revision-v1', '', '', '2022-12-05 03:30:45', '2022-12-05 03:30:45', '', 160, 'http://circum.cl/?p=161', 0, 'revision', '', 0),
(162, 1, '2022-12-05 03:31:46', '2022-12-05 03:31:46', '<!-- wp:paragraph -->\n<p><strong>volume</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>volumen de transacciones del día actual.</p>\n<!-- /wp:paragraph -->', 'VOLUME', '', 'publish', 'open', 'open', '', 'volume', '', '', '2022-12-05 03:31:51', '2022-12-05 03:31:51', '', 0, 'http://circum.cl/?p=162', 0, 'post', '', 0),
(163, 1, '2022-12-05 03:31:46', '2022-12-05 03:31:46', '<!-- wp:paragraph -->\n<p><strong>volume</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>volumen de transacciones del día actual.</p>\n<!-- /wp:paragraph -->', 'VOLUME', '', 'inherit', 'closed', 'closed', '', '162-revision-v1', '', '', '2022-12-05 03:31:46', '2022-12-05 03:31:46', '', 162, 'http://circum.cl/?p=163', 0, 'revision', '', 0),
(164, 1, '2022-12-05 03:33:18', '2022-12-05 03:33:18', '<!-- wp:paragraph -->\n<p>marketcap</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>capitalización del valor en el mercado.</p>\n<!-- /wp:paragraph -->', 'MARKETCAP', '', 'publish', 'open', 'open', '', 'marketcap', '', '', '2022-12-05 03:33:20', '2022-12-05 03:33:20', '', 0, 'http://circum.cl/?p=164', 0, 'post', '', 0),
(165, 1, '2022-12-05 03:33:18', '2022-12-05 03:33:18', '<!-- wp:paragraph -->\n<p>marketcap</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>capitalización del valor en el mercado.</p>\n<!-- /wp:paragraph -->', 'MARKETCAP', '', 'inherit', 'closed', 'closed', '', '164-revision-v1', '', '', '2022-12-05 03:33:18', '2022-12-05 03:33:18', '', 164, 'http://circum.cl/?p=165', 0, 'revision', '', 0),
(166, 1, '2022-12-05 03:34:26', '2022-12-05 03:34:26', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>tradetime</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>hora de la última transacción.</p>\n<!-- /wp:paragraph -->', 'TRADETIME', '', 'publish', 'open', 'open', '', 'tradetime', '', '', '2022-12-05 03:34:28', '2022-12-05 03:34:28', '', 0, 'http://circum.cl/?p=166', 0, 'post', '', 0),
(167, 1, '2022-12-05 03:34:26', '2022-12-05 03:34:26', '<!-- wp:table -->\n<figure class=\"wp-block-table\"><table><tbody><tr><td>tradetime</td></tr></tbody></table></figure>\n<!-- /wp:table -->\n\n<!-- wp:paragraph -->\n<p>hora de la última transacción.</p>\n<!-- /wp:paragraph -->', 'TRADETIME', '', 'inherit', 'closed', 'closed', '', '166-revision-v1', '', '', '2022-12-05 03:34:26', '2022-12-05 03:34:26', '', 166, 'http://circum.cl/?p=167', 0, 'revision', '', 0),
(168, 1, '2022-12-05 03:35:33', '2022-12-05 03:35:33', '<!-- wp:paragraph -->\n<p><strong>datadelay</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>retraso de los datos respecto de los datos en tiempo real.</p>\n<!-- /wp:paragraph -->', 'DATADELAY', '', 'publish', 'open', 'open', '', 'datadelay', '', '', '2022-12-05 03:35:35', '2022-12-05 03:35:35', '', 0, 'http://circum.cl/?p=168', 0, 'post', '', 0),
(169, 1, '2022-12-05 03:35:33', '2022-12-05 03:35:33', '<!-- wp:paragraph -->\n<p><strong>datadelay</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>retraso de los datos respecto de los datos en tiempo real.</p>\n<!-- /wp:paragraph -->', 'DATADELAY', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2022-12-05 03:35:33', '2022-12-05 03:35:33', '', 168, 'http://circum.cl/?p=169', 0, 'revision', '', 0),
(170, 1, '2022-12-05 03:36:39', '2022-12-05 03:36:39', '<!-- wp:paragraph -->\n<p>volumeavg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>volumen medio diario de transacciones.</p>\n<!-- /wp:paragraph -->', 'VOLUMEAVG', '', 'publish', 'open', 'open', '', 'volumeavg', '', '', '2022-12-05 03:36:41', '2022-12-05 03:36:41', '', 0, 'http://circum.cl/?p=170', 0, 'post', '', 0),
(171, 1, '2022-12-05 03:36:39', '2022-12-05 03:36:39', '<!-- wp:paragraph -->\n<p>volumeavg</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>volumen medio diario de transacciones.</p>\n<!-- /wp:paragraph -->', 'VOLUMEAVG', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2022-12-05 03:36:39', '2022-12-05 03:36:39', '', 170, 'http://circum.cl/?p=171', 0, 'revision', '', 0),
(172, 1, '2022-12-05 03:37:25', '2022-12-05 03:37:25', '<!-- wp:paragraph -->\n<p>pe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>relación precio/beneficio.</p>\n<!-- /wp:paragraph -->', 'PE', '', 'publish', 'open', 'open', '', 'pe', '', '', '2022-12-05 03:37:38', '2022-12-05 03:37:38', '', 0, 'http://circum.cl/?p=172', 0, 'post', '', 0),
(173, 1, '2022-12-05 03:37:25', '2022-12-05 03:37:25', '<!-- wp:paragraph -->\n<p>pe</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>relación precio/beneficio.</p>\n<!-- /wp:paragraph -->', 'PE', '', 'inherit', 'closed', 'closed', '', '172-revision-v1', '', '', '2022-12-05 03:37:25', '2022-12-05 03:37:25', '', 172, 'http://circum.cl/?p=173', 0, 'revision', '', 0),
(174, 1, '2022-12-05 03:38:35', '2022-12-05 03:38:35', '<!-- wp:paragraph -->\n<p>eps</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ganancias por acción.</p>\n<!-- /wp:paragraph -->', 'EPS', '', 'publish', 'open', 'open', '', 'eps', '', '', '2022-12-05 03:38:37', '2022-12-05 03:38:37', '', 0, 'http://circum.cl/?p=174', 0, 'post', '', 0),
(175, 1, '2022-12-05 03:38:35', '2022-12-05 03:38:35', '<!-- wp:paragraph -->\n<p>eps</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ganancias por acción.</p>\n<!-- /wp:paragraph -->', 'EPS', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2022-12-05 03:38:35', '2022-12-05 03:38:35', '', 174, 'http://circum.cl/?p=175', 0, 'revision', '', 0),
(176, 1, '2022-12-05 03:39:41', '2022-12-05 03:39:41', '<!-- wp:paragraph -->\n<p>change</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>variación del precio desde el cierre del día de mercado anterior.</p>\n<!-- /wp:paragraph -->', 'CHANGE', '', 'publish', 'open', 'open', '', 'change', '', '', '2022-12-05 03:39:43', '2022-12-05 03:39:43', '', 0, 'http://circum.cl/?p=176', 0, 'post', '', 0),
(177, 1, '2022-12-05 03:39:41', '2022-12-05 03:39:41', '<!-- wp:paragraph -->\n<p>change</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>variación del precio desde el cierre del día de mercado anterior.</p>\n<!-- /wp:paragraph -->', 'CHANGE', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2022-12-05 03:39:41', '2022-12-05 03:39:41', '', 176, 'http://circum.cl/?p=177', 0, 'revision', '', 0),
(179, 1, '2022-12-05 12:53:50', '2022-12-05 12:53:50', '[tickets]', 'Mis tiques', '', 'publish', 'closed', 'closed', '', 'mis-tiques', '', '', '2022-12-05 12:53:50', '2022-12-05 12:53:50', '', 0, 'http://circum.cl/mis-tiques/', 0, 'page', '', 0),
(180, 1, '2022-12-05 12:53:50', '2022-12-05 12:53:50', '[ticket-submit]', 'Enviar tique', '', 'publish', 'closed', 'closed', '', 'enviar-tique', '', '', '2022-12-05 12:53:50', '2022-12-05 12:53:50', '', 0, 'http://circum.cl/enviar-tique/', 0, 'page', '', 0),
(183, 1, '2022-12-05 20:17:50', '2022-12-05 20:17:50', '<!-- wp:shortcode -->\n[ticket-submit]\n<!-- /wp:shortcode -->', 'TicketSubmit', '', 'publish', 'closed', 'closed', '', 'ticketsubmit', '', '', '2022-12-05 20:17:51', '2022-12-05 20:17:51', '', 0, 'http://circum.cl/?page_id=183', 0, 'page', '', 0),
(184, 1, '2022-12-05 20:17:50', '2022-12-05 20:17:50', '<!-- wp:shortcode -->\n[ticket-submit]\n<!-- /wp:shortcode -->', 'TicketSubmit', '', 'inherit', 'closed', 'closed', '', '183-revision-v1', '', '', '2022-12-05 20:17:50', '2022-12-05 20:17:50', '', 183, 'http://circum.cl/?p=184', 0, 'revision', '', 0),
(187, 1, '2022-12-27 13:56:09', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-27 13:56:09', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?p=187', 0, 'post', '', 0),
(188, 1, '2022-12-27 14:02:02', '2022-12-27 14:02:02', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-12-27 14:02:02', '2022-12-27 14:02:02', '', 112, 'http://circum.cl/?p=188', 0, 'revision', '', 0),
(189, 1, '2022-12-27 14:03:40', '2022-12-27 14:03:40', '', 'ENTEL CHILE', '', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2022-12-27 14:03:40', '2022-12-27 14:03:40', '', 100, 'http://circum.cl/?p=189', 0, 'revision', '', 0),
(190, 1, '2022-12-27 14:04:32', '2022-12-27 14:04:32', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-12-27 14:04:32', '2022-12-27 14:04:32', '', 103, 'http://circum.cl/?p=190', 0, 'revision', '', 0),
(191, 1, '2022-12-27 14:05:19', '2022-12-27 14:05:19', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-12-27 14:05:19', '2022-12-27 14:05:19', '', 103, 'http://circum.cl/?p=191', 0, 'revision', '', 0),
(192, 1, '2022-12-27 14:06:19', '2022-12-27 14:06:19', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-12-27 14:06:19', '2022-12-27 14:06:19', '', 103, 'http://circum.cl/?p=192', 0, 'revision', '', 0),
(193, 1, '2022-12-27 14:07:42', '2022-12-27 14:07:42', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-12-27 14:07:42', '2022-12-27 14:07:42', '', 112, 'http://circum.cl/?p=193', 0, 'revision', '', 0),
(194, 1, '2022-12-27 14:10:44', '2022-12-27 14:10:44', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-12-27 14:10:44', '2022-12-27 14:10:44', '', 109, 'http://circum.cl/?p=194', 0, 'revision', '', 0),
(195, 1, '2022-12-27 14:11:43', '2022-12-27 14:11:43', '', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2022-12-27 14:11:43', '2022-12-27 14:11:43', '', 106, 'http://circum.cl/?p=195', 0, 'revision', '', 0),
(196, 1, '2022-12-27 14:13:52', '2022-12-27 14:13:52', '<!-- wp:paragraph -->\n<p><a href=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\" data-type=\"URL\" data-id=\"https://www.feller-rate.com/clasificacion-riesgo/13469/sociedad-quimica-y-minera-de-chile-sa\">Clasificacion de Riesgo</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE A', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2022-12-27 14:13:52', '2022-12-27 14:13:52', '', 109, 'http://circum.cl/?p=196', 0, 'revision', '', 0),
(197, 1, '2022-12-27 14:14:12', '2022-12-27 14:14:12', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-12-27 14:14:12', '2022-12-27 14:14:12', '', 112, 'http://circum.cl/?p=197', 0, 'revision', '', 0),
(198, 1, '2022-12-27 14:15:36', '2022-12-27 14:15:36', '', 'SOC QUIMICA MINERA DE CHILE S.A. SERIE B', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2022-12-27 14:15:36', '2022-12-27 14:15:36', '', 112, 'http://circum.cl/?p=198', 0, 'revision', '', 0),
(199, 1, '2022-12-27 14:16:07', '2022-12-27 14:16:07', '', 'SOCIEDAD DE INVERSIONES ORO BLANCO S.A.', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2022-12-27 14:16:07', '2022-12-27 14:16:07', '', 106, 'http://circum.cl/?p=199', 0, 'revision', '', 0),
(200, 1, '2022-12-27 14:16:26', '2022-12-27 14:16:26', '', 'NITRATOS DE CHILE S.A.', '', 'inherit', 'closed', 'closed', '', '103-revision-v1', '', '', '2022-12-27 14:16:26', '2022-12-27 14:16:26', '', 103, 'http://circum.cl/?p=200', 0, 'revision', '', 0),
(202, 1, '2022-12-28 19:08:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-28 19:08:32', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?p=202', 0, 'post', '', 0),
(203, 1, '2022-12-28 19:08:33', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-28 19:08:33', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?p=203', 0, 'post', '', 0),
(204, 1, '2022-12-28 19:37:45', '2022-12-28 19:37:45', '<!-- wp:paragraph -->\n<p>Indicador ADX (Average Directional Index)<br>El ADX (Average Directional Index) es un indicador de análisis técnico, utilizado para conocer si los precios se encuentran en tendencia o en rango y para medir la fuerza de la tendencia.<br>Es un indicador de tipo oscilador no direccional, es decir, cuantifica la fortaleza de una tendencia independientemente de su dirección. En español ADX significa índice de dirección media. Es común utilizarlo junto con los indicadores direccionales de movimiento (DMI), que nos muestran la tendencia predominante del mercado.<br>Para un analista técnico es fundamental conocer cuál es la tendencia de los precios. Con el indicador ADX consigue medir la fortaleza de dicha tendencia. El ADX oscila entre 0 y 100 (al igual que el RSI) y se calcula según las diferencias entre DI+ y DI-. Estos indicadores técnicos fueron desarrollados por Welles Wilder en los años 80s.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cómo utilizar el indicador ADX<br>Cuando el ADX es mayor que 30, el mercado se encuentra en una tendencia fuerte, cuando está entre 20 y 30 no está bien definido y cuando es menor a 20 indica que el mercado está en rango. Las formas más comunes de utilizar el ADX son:<br>Conocer la fuerza de una tendencia: Cuando el ADX tiene pendiente positiva y/o se sitúa en niveles entre 30 y 40 indica fortaleza de tendencia. En movimientos de tendencia fuerte (ya sea alcista o bajista) el especulador aprovecha las correcciones a la baja (en tendencia alcista) para comprar el valor y los rebotes (en tendencia bajista).<br>Para saber cuando un rango llega a su fin: Cuando el ADX se encuentra por debajo de 20-30 y/o se encuentra entre las líneas de movimiento direccional. Con los precios en rango, los especuladores compran en la parte inferior y venden en la superior, el ADX les permite saber cuando ese rango se termina. Además, la señal de que un rango termina significa que comienza una nueva tendencia, por lo que especulador solo tendrá que subirse a ésta.<br>Determinar cambios de tendencia: Cuando existen divergencias demasiado altas (por encima de 45-50) quiere decir que la tendencia se está agotando o está perdiendo fuerza. Por lo que probablemente se tome un respiro. Por el contrario, cuando estas divergencias se encuentran por encima de 30, pero en lecturas no muy altas entendemos que la tendencia se está fortaleciendo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://economipedia.com/definiciones/indicador-adx-average-directional-index.html\">https://economipedia.com/definiciones/indicador-adx-average-directional-index.html</a></p>\n<!-- /wp:paragraph -->', 'ADX', '', 'publish', 'open', 'open', '', 'adx', '', '', '2022-12-28 19:37:47', '2022-12-28 19:37:47', '', 0, 'http://circum.cl/?p=204', 0, 'post', '', 0),
(205, 1, '2022-12-28 19:37:45', '2022-12-28 19:37:45', '<!-- wp:paragraph -->\n<p>Indicador ADX (Average Directional Index)<br>El ADX (Average Directional Index) es un indicador de análisis técnico, utilizado para conocer si los precios se encuentran en tendencia o en rango y para medir la fuerza de la tendencia.<br>Es un indicador de tipo oscilador no direccional, es decir, cuantifica la fortaleza de una tendencia independientemente de su dirección. En español ADX significa índice de dirección media. Es común utilizarlo junto con los indicadores direccionales de movimiento (DMI), que nos muestran la tendencia predominante del mercado.<br>Para un analista técnico es fundamental conocer cuál es la tendencia de los precios. Con el indicador ADX consigue medir la fortaleza de dicha tendencia. El ADX oscila entre 0 y 100 (al igual que el RSI) y se calcula según las diferencias entre DI+ y DI-. Estos indicadores técnicos fueron desarrollados por Welles Wilder en los años 80s.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cómo utilizar el indicador ADX<br>Cuando el ADX es mayor que 30, el mercado se encuentra en una tendencia fuerte, cuando está entre 20 y 30 no está bien definido y cuando es menor a 20 indica que el mercado está en rango. Las formas más comunes de utilizar el ADX son:<br>Conocer la fuerza de una tendencia: Cuando el ADX tiene pendiente positiva y/o se sitúa en niveles entre 30 y 40 indica fortaleza de tendencia. En movimientos de tendencia fuerte (ya sea alcista o bajista) el especulador aprovecha las correcciones a la baja (en tendencia alcista) para comprar el valor y los rebotes (en tendencia bajista).<br>Para saber cuando un rango llega a su fin: Cuando el ADX se encuentra por debajo de 20-30 y/o se encuentra entre las líneas de movimiento direccional. Con los precios en rango, los especuladores compran en la parte inferior y venden en la superior, el ADX les permite saber cuando ese rango se termina. Además, la señal de que un rango termina significa que comienza una nueva tendencia, por lo que especulador solo tendrá que subirse a ésta.<br>Determinar cambios de tendencia: Cuando existen divergencias demasiado altas (por encima de 45-50) quiere decir que la tendencia se está agotando o está perdiendo fuerza. Por lo que probablemente se tome un respiro. Por el contrario, cuando estas divergencias se encuentran por encima de 30, pero en lecturas no muy altas entendemos que la tendencia se está fortaleciendo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://economipedia.com/definiciones/indicador-adx-average-directional-index.html\">https://economipedia.com/definiciones/indicador-adx-average-directional-index.html</a></p>\n<!-- /wp:paragraph -->', 'ADX', '', 'inherit', 'closed', 'closed', '', '204-revision-v1', '', '', '2022-12-28 19:37:45', '2022-12-28 19:37:45', '', 204, 'http://circum.cl/?p=205', 0, 'revision', '', 0),
(206, 1, '2022-12-29 15:26:32', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-29 15:26:32', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=206', 0, 'ticket', '', 0),
(207, 1, '2022-12-29 15:27:37', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-29 15:27:37', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=207', 0, 'ticket', '', 0),
(216, 1, '2022-12-29 15:54:28', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-29 15:54:28', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=216', 0, 'ticket', '', 0),
(217, 1, '2022-12-29 15:57:38', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-29 15:57:38', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=217', 0, 'ticket', '', 0),
(218, 1, '2022-12-29 16:01:51', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-29 16:01:51', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=218', 0, 'ticket', '', 0),
(219, 2, '2022-12-29 17:26:53', '2022-12-29 17:26:53', 'por favor revisar documento ', 'Ayuda urgente', '', 'processing', 'closed', 'closed', '', 'ayuda-urgente', '', '', '2022-12-29 17:38:04', '2022-12-29 17:38:04', '', 0, 'http://circum.cl/ticket/ayuda-urgente/', 0, 'ticket', '', 0),
(220, 2, '2022-12-29 17:26:53', '2022-12-29 17:26:53', '', 'UAI Pensiones 2022 (parte II)_221215_133209', '', 'inherit', 'open', 'closed', '', 'uai-pensiones-2022-parte-ii_221215_133209', '', '', '2022-12-29 17:26:53', '2022-12-29 17:26:53', '', 219, 'http://circum.cl/wp-content/uploads/awesome-support/ticket_219/UAI-Pensiones-2022-parte-II_221215_133209.pdf', 0, 'attachment', 'application/pdf', 0),
(221, 1, '2022-12-29 17:27:43', '2022-12-29 17:27:43', 'Estado del tique cambiado a &laquo;En progreso&raquo;.', '', '', 'publish', 'closed', 'closed', '', '221', '', '', '2022-12-29 17:27:43', '2022-12-29 17:27:43', '', 219, 'http://circum.cl/ticket_history/221/', 0, 'ticket_history', '', 0),
(222, 1, '2022-12-29 17:29:34', '2022-12-29 17:29:34', '<ul class=\"wpas-log-list\"><li>actualizado Canal a Other</li></ul>', '', '', 'publish', 'closed', 'closed', '', '222', '', '', '2022-12-29 17:29:34', '2022-12-29 17:29:34', '', 219, 'http://circum.cl/ticket_history/222/', 0, 'ticket_history', '', 0),
(223, 1, '2022-12-29 17:29:34', '2022-12-29 17:29:34', 'estamos analizando su requerimiento por favor contestar la siguiente escuesta', 'Responder al tique #219', '', 'read', 'closed', 'closed', '', 'responder-al-tique-219', '', '', '2022-12-29 17:29:34', '2022-12-29 17:29:34', '', 219, 'http://circum.cl/?post_type=ticket_reply&p=223', 0, 'ticket_reply', '', 0),
(224, 1, '2022-12-29 17:29:34', '2022-12-29 17:29:34', '', 'getpdf', '', 'inherit', 'open', 'closed', '', 'getpdf', '', '', '2022-12-29 17:29:34', '2022-12-29 17:29:34', '', 223, 'http://circum.cl/wp-content/uploads/awesome-support/ticket_219/getpdf.pdf', 0, 'attachment', 'application/pdf', 0),
(225, 2, '2022-12-29 17:30:31', '2022-12-29 17:30:31', 'ya he contestado la encuesta \r\nnecesito que vea este otro archivo', 'Responder al tique #219', '', 'unread', 'closed', 'closed', '', 'responder-al-tique-219-2', '', '', '2022-12-29 17:30:31', '2022-12-29 17:30:31', '', 219, 'http://circum.cl/?post_type=ticket_reply&p=225', 0, 'ticket_reply', '', 0),
(226, 2, '2022-12-29 17:30:31', '2022-12-29 17:30:31', '', 'análisis sentencia', '', 'inherit', 'open', 'closed', '', 'analisis-sentencia', '', '', '2022-12-29 17:30:31', '2022-12-29 17:30:31', '', 225, 'http://circum.cl/wp-content/uploads/awesome-support/ticket_219/analisis-sentencia.docx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.wordprocessingml.document', 0),
(227, 1, '2022-12-29 17:38:04', '2022-12-29 17:38:04', '<ul class=\"wpas-log-list\"><li>actualizado Personal de soporte a Guido Rios</li></ul>', '', '', 'publish', 'closed', 'closed', '', '227', '', '', '2022-12-29 17:38:04', '2022-12-29 17:38:04', '', 219, 'http://circum.cl/ticket_history/227/', 0, 'ticket_history', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(228, 1, '2022-12-30 18:14:26', '2022-12-30 18:14:26', '<table>\r\n<tbody>\r\n\r\n<tr>\r\n<td>Su nombre </td>\r\n<td>: [text* your-name autocomplete:name] </td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Tu correo electrónico </td>\r\n<td>: [email* your-email autocomplete:email]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Su Telefono de Contacto</td>\r\n<td>: [text* telefono]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Su Domicilio</td>\r\n<td>: [text* Direccion]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>Estado civil            </td>\r\n<td>: [select EstadoCivil \"soltero o soltera\" \"casada o casado\" \"viudo o viuda\" \"separada o separado divorciado o divorciada\" \"Acuerdo de Union Civil\"]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>Profesion u Oficio</td>\r\n<td>: [text profesion_oficio]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>Asunto</td>\r\n<td>: [text* your-subject]</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n\r\n\r\n<tr>\r\n<td>Tu mensaje</td>\r\n<td>: [textarea your-message] </td>\r\n</tr>\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n\r\n<tr>\r\n<td>&nbsp;</td>\r\n<td>&nbsp;</td>\r\n</tr>\r\n\r\n<tr>\r\n<td>[submit \"Enviar\"]</td>\r\n<td>&nbsp;</td>\r\n</tr>\n1\nEmail desde Circum --- >[_site_title] «[your-subject]»\nadmin@circum.cl\nabogados@ciaffaroni.cl\nDe: [your-name] <[your-email]>\r\nAsunto: [your-subject]\r\n\r\n\r\n\r\n\r\nNombre : [your-name]\r\nCorreo : [your-email]\r\nTelefono : [telefono]\r\nDireccion : [Direccion]\r\nEstado Civil : [EstadoCivil]\r\nEstado Civil : [profesion_oficio]\r\nAsunto : [your-subject]\r\nCuerpo Mensaje : [your-message]\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] «[your-subject]»\n[_site_title] <wordpress@circum.cl>\n[your-email]\nCuerpo del mensaje:\r\n[your-message]\r\n\r\n-- \r\nEste mensaje se ha enviado desde un formulario de contacto en [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nGracias por tu mensaje. Ha sido enviado.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nUno o más campos tienen un error. Por favor, revísalos e inténtalo de nuevo.\nHa ocurrido un error al intentar enviar tu mensaje. Por favor, inténtalo de nuevo más tarde.\nDebes aceptar los términos y condiciones antes de enviar tu mensaje.\nPor favor, rellena este campo.\nEste campo tiene una entrada demasiado larga.\nEste campo tiene una entrada demasiado corta.\nHa ocurrido un error desconocido al subir el archivo.\nNo tienes permisos para subir archivos de este tipo.\nEl archivo subido es demasiado grande.\nHa ocurrido un error al subir el archivo.\nPor favor, introduce una fecha con el formato YYYY-MM-DD.\nEste campo tiene una fecha demasiado temprana.\nEste campo tiene una fecha demasiado tardía.\nPor favor, introduce un número.\nEste campo tiene un número demasiado pequeño.\nEste campo tiene un número demasiado grande.\nLa respuesta al cuestionario no es correcta.\nPor favor, introduce una dirección de correo electrónico.\nPor favor, introduce una URL.\nPor favor, introduce un número de teléfono.', 'Formulario', '', 'publish', 'closed', 'closed', '', 'formulario-de-contacto-1', '', '', '2022-12-30 21:26:22', '2022-12-30 21:26:22', '', 0, 'http://circum.cl/?post_type=wpcf7_contact_form&#038;p=228', 0, 'wpcf7_contact_form', '', 0),
(229, 1, '2022-12-30 18:18:36', '2022-12-30 18:18:36', '<!-- wp:shortcode -->\n[contact-form-7 id=\"228\" title=\"Formulario\"]\n<!-- /wp:shortcode -->', 'Formulario', '', 'publish', 'closed', 'closed', '', 'formulario', '', '', '2022-12-30 18:54:44', '2022-12-30 18:54:44', '', 0, 'http://circum.cl/?page_id=229', 0, 'page', '', 0),
(230, 1, '2022-12-30 18:18:36', '2022-12-30 18:18:36', '', 'Formulario', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2022-12-30 18:18:36', '2022-12-30 18:18:36', '', 229, 'http://circum.cl/?p=230', 0, 'revision', '', 0),
(231, 1, '2022-12-30 18:39:35', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2022-12-30 18:39:35', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?post_type=ticket&p=231', 0, 'ticket', '', 0),
(232, 1, '2022-12-30 18:54:43', '2022-12-30 18:54:43', '<!-- wp:shortcode -->\n[contact-form-7 id=\"228\" title=\"Formulario\"]\n<!-- /wp:shortcode -->', 'Formulario', '', 'inherit', 'closed', 'closed', '', '229-revision-v1', '', '', '2022-12-30 18:54:43', '2022-12-30 18:54:43', '', 229, 'http://circum.cl/?p=232', 0, 'revision', '', 0),
(233, 1, '2022-12-30 21:47:59', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-12-30 21:47:59', '0000-00-00 00:00:00', '', 0, 'http://circum.cl/?p=233', 0, 'post', '', 0),
(234, 1, '2022-12-30 21:48:20', '2022-12-30 21:48:20', '', 'Principal', '', 'publish', 'closed', 'closed', '', 'principal', '', '', '2022-12-30 21:48:21', '2022-12-30 21:48:21', '', 0, 'http://circum.cl/?page_id=234', 0, 'page', '', 0),
(235, 1, '2022-12-30 21:48:20', '2022-12-30 21:48:20', '', 'Principal', '', 'inherit', 'closed', 'closed', '', '234-revision-v1', '', '', '2022-12-30 21:48:20', '2022-12-30 21:48:20', '', 234, 'http://circum.cl/?p=235', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_sm_sessions`
--

CREATE TABLE `wp_sm_sessions` (
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'avail', 'avail', 0),
(3, 'BCI', 'bci', 0),
(4, 'kikin', 'kikin', 0),
(5, 'Nemotecnico', 'nemotecnico', 0),
(6, 'Folio', 'folio', 0),
(7, 'Reporte', 'reporte', 0),
(8, 'Diccionario', 'diccionario', 0),
(9, 'Standard Ticket Form', 'standard-ticket-form', 0),
(10, 'Email', 'email', 0),
(11, 'Chat', 'chat', 0),
(12, 'WordPress.org', 'wordpress-org', 0),
(13, 'Contact Form (Website)', 'contact-form-website', 0),
(14, 'Gravity Forms add-on', 'gravity-forms-add-on', 0),
(15, 'Twitter', 'twitter', 0),
(16, 'Twitter DM (direct message)', 'twitter-dm-direct-message', 0),
(17, 'Twitter Favorite', 'twitter-favorite', 0),
(18, 'Voicemail', 'voicemail', 0),
(19, 'Phone call (incoming)', 'phone-call-incoming', 0),
(20, 'Feedback Form', 'feedback-form', 0),
(21, 'Web service (API)', 'web-service-api', 0),
(22, 'Trigger or automation', 'trigger-or-automation', 0),
(23, 'Forum topic', 'forum-topic', 0),
(24, 'Facebook Post', 'facebook-post', 0),
(25, 'Facebook Message', 'facebook-message', 0),
(26, 'Other', 'other', 0),
(27, 'Urgente - Importante', 'urgente-importante', 0),
(28, 'No Urgente - Importante', 'no-urgente-importante', 0),
(29, 'Urgente-No Importante', 'urgente-no-importante', 0),
(30, 'No Urgente - No Importante', 'no-urgente-no-importante', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(11, 2, 0),
(41, 6, 0),
(52, 4, 0),
(85, 6, 0),
(96, 6, 0),
(100, 6, 0),
(103, 6, 0),
(106, 6, 0),
(109, 6, 0),
(112, 6, 0),
(118, 6, 0),
(132, 7, 0),
(154, 8, 0),
(160, 8, 0),
(162, 8, 0),
(164, 8, 0),
(166, 8, 0),
(168, 8, 0),
(170, 8, 0),
(172, 8, 0),
(174, 8, 0),
(176, 8, 0),
(204, 8, 0),
(219, 26, 0),
(219, 28, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '', 0, 0),
(4, 4, 'wp_theme', '', 0, 1),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 9),
(7, 7, 'category', '', 0, 1),
(8, 8, 'category', '', 0, 11),
(9, 9, 'ticket_channel', '', 0, 0),
(10, 10, 'ticket_channel', '', 0, 0),
(11, 11, 'ticket_channel', '', 0, 0),
(12, 12, 'ticket_channel', '', 0, 0),
(13, 13, 'ticket_channel', '', 0, 0),
(14, 14, 'ticket_channel', '', 0, 0),
(15, 15, 'ticket_channel', '', 0, 0),
(16, 16, 'ticket_channel', '', 0, 0),
(17, 17, 'ticket_channel', '', 0, 0),
(18, 18, 'ticket_channel', '', 0, 0),
(19, 19, 'ticket_channel', '', 0, 0),
(20, 20, 'ticket_channel', '', 0, 0),
(21, 21, 'ticket_channel', '', 0, 0),
(22, 22, 'ticket_channel', '', 0, 0),
(23, 23, 'ticket_channel', '', 0, 0),
(24, 24, 'ticket_channel', '', 0, 0),
(25, 25, 'ticket_channel', '', 0, 0),
(26, 26, 'ticket_channel', '', 0, 1),
(27, 27, 'ticket-tag', '', 0, 0),
(28, 28, 'ticket-tag', '', 0, 1),
(29, 29, 'ticket-tag', '', 0, 0),
(30, 30, 'ticket-tag', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_um_metadata`
--

CREATE TABLE `wp_um_metadata` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `um_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `um_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '187'),
(18, 1, 'account_status', 'approved'),
(19, 1, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(21, 1, '_um_last_login', '1672433982'),
(24, 1, 'blankslate_notice_dismissed_7', 'true'),
(25, 1, 'um_user_profile_url_slug_user_login', 'admin'),
(26, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:12:\"welcomeGuide\";b:0;s:26:\"isComplementaryAreaVisible\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:16:\"discussion-panel\";}}s:9:\"_modified\";s:24:\"2022-12-30T18:54:24.013Z\";}'),
(27, 1, 'closedpostboxes_page', 'a:1:{i:0;s:25:\"um-admin-restrict-content\";}'),
(28, 1, 'metaboxhidden_page', 'a:0:{}'),
(29, 1, 'closedpostboxes_post', 'a:2:{i:0;s:25:\"um-admin-restrict-content\";i:1;s:23:\"acf-group_636464821ad58\";}'),
(30, 1, 'metaboxhidden_post', 'a:0:{}'),
(31, 1, 'um_account_secure_fields', 'a:4:{s:7:\"general\";a:4:{i:0;s:10:\"user_login\";i:1;s:10:\"first_name\";i:2;s:9:\"last_name\";i:3;s:10:\"user_email\";}s:8:\"password\";a:1:{i:0;s:13:\"user_password\";}s:7:\"privacy\";a:3:{i:0;s:15:\"profile_privacy\";i:1;s:15:\"profile_noindex\";i:2;s:15:\"hide_in_members\";}s:6:\"delete\";a:1:{i:0;s:20:\"single_user_password\";}}'),
(32, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"186.11.24.0\";}'),
(33, 2, 'nickname', 'prios'),
(34, 2, 'first_name', 'Pablo'),
(35, 2, 'last_name', 'Rios'),
(36, 2, 'description', ''),
(37, 2, 'rich_editing', 'true'),
(38, 2, 'syntax_highlighting', 'true'),
(39, 2, 'comment_shortcuts', 'false'),
(40, 2, 'admin_color', 'fresh'),
(41, 2, 'use_ssl', '0'),
(42, 2, 'show_admin_bar_front', 'true'),
(43, 2, 'locale', ''),
(44, 2, 'wp_capabilities', 'a:1:{s:9:\"wpas_user\";b:1;}'),
(45, 2, 'wp_user_level', '0'),
(47, 2, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(48, 2, 'um_user_profile_url_slug_user_login', 'prios'),
(49, 2, 'full_name', 'pablo rios'),
(50, 2, 'account_status', 'approved'),
(51, 2, 'dismissed_wp_pointers', ''),
(52, 2, 'synced_gravatar_hashed_id', '8902c023f96d42fa989f8af78e8c02c5'),
(54, 2, '_um_last_login', '1672334691'),
(55, 3, 'nickname', 'eutreras'),
(56, 3, 'first_name', 'Emma'),
(57, 3, 'last_name', 'Utreras'),
(58, 3, 'description', ''),
(59, 3, 'rich_editing', 'true'),
(60, 3, 'syntax_highlighting', 'true'),
(61, 3, 'comment_shortcuts', 'false'),
(62, 3, 'admin_color', 'fresh'),
(63, 3, 'use_ssl', '0'),
(64, 3, 'show_admin_bar_front', 'true'),
(65, 3, 'locale', ''),
(66, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(67, 3, 'wp_user_level', '0'),
(69, 3, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(70, 3, 'um_user_profile_url_slug_user_login', 'eutreras'),
(71, 3, 'full_name', 'emma utreras'),
(72, 3, 'account_status', 'approved'),
(73, 3, 'dismissed_wp_pointers', ''),
(74, 3, 'synced_gravatar_hashed_id', 'fcae4747a892031edc6a54579c6e2db4'),
(76, 3, '_um_last_login', '1669990114'),
(77, 3, 'session_tokens', 'a:1:{s:64:\"75635a8744bfed42a2e1b58a73e73ef9021db712757862489a23987088de4290\";a:4:{s:10:\"expiration\";i:1670162914;s:2:\"ip\";s:13:\"186.10.34.132\";s:2:\"ua\";s:139:\"Mozilla/5.0 (iPhone; CPU iPhone OS 14_4_2 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/14.0.3 Mobile/15E148 Safari/604.1\";s:5:\"login\";i:1669990114;}}'),
(78, 4, 'nickname', 'ccornejo'),
(79, 4, 'first_name', 'Carlos'),
(80, 4, 'last_name', 'Cornejo'),
(81, 4, 'description', ''),
(82, 4, 'rich_editing', 'true'),
(83, 4, 'syntax_highlighting', 'true'),
(84, 4, 'comment_shortcuts', 'false'),
(85, 4, 'admin_color', 'fresh'),
(86, 4, 'use_ssl', '0'),
(87, 4, 'show_admin_bar_front', 'true'),
(88, 4, 'locale', ''),
(89, 4, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(90, 4, 'wp_user_level', '0'),
(92, 4, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(93, 4, 'um_user_profile_url_slug_user_login', 'ccornejo'),
(94, 4, 'full_name', 'carlos cornejo'),
(95, 4, 'account_status', 'approved'),
(96, 4, 'dismissed_wp_pointers', ''),
(97, 4, 'synced_gravatar_hashed_id', 'b3110b2afc2ddfb43b2fb8b033dc3840'),
(99, 4, '_um_last_login', '1670271681'),
(101, 1, 'meta-box-order_post', 'a:4:{s:6:\"normal\";s:25:\"um-admin-restrict-content\";s:8:\"advanced\";s:23:\"acf-group_636464821ad58\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}'),
(102, 4, 'wp_wpas_can_be_assigned', NULL),
(103, 4, 'wp_wpas_smart_tickets_order', NULL),
(104, 4, 'wp_wpas_department', 'a:0:{}'),
(105, 4, 'wp_wpas_department_assignment', 'a:0:{}'),
(106, 4, 'wp_wpas_view_all_tickets', NULL),
(107, 4, 'wp_wpas_mobile_phone', ''),
(108, 4, 'wp_wpas_office_phone', ''),
(109, 4, 'wp_wpas_home_phone', ''),
(110, 4, 'wp_wpas_other_phone', ''),
(111, 3, 'wp_wpas_can_be_assigned', NULL),
(112, 3, 'wp_wpas_smart_tickets_order', NULL),
(113, 3, 'wp_wpas_department', 'a:0:{}'),
(114, 3, 'wp_wpas_department_assignment', 'a:0:{}'),
(115, 3, 'wp_wpas_view_all_tickets', NULL),
(116, 3, 'wp_wpas_mobile_phone', ''),
(117, 3, 'wp_wpas_office_phone', ''),
(118, 3, 'wp_wpas_home_phone', ''),
(119, 3, 'wp_wpas_other_phone', ''),
(120, 1, 'session_tokens', 'a:2:{s:64:\"ba63d41580f0694f73a6aa26077f90ab3109720e0b3f0919dd1eb307dfedecdf\";a:4:{s:10:\"expiration\";i:1672500376;s:2:\"ip\";s:12:\"186.11.44.58\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1672327576;}s:64:\"053a5cddf4213384ccd05e6aad8e5a7cb626dadb2a6713a81c4a7d32a163b650\";a:4:{s:10:\"expiration\";i:1672606782;s:2:\"ip\";s:13:\"186.11.24.157\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1672433982;}}'),
(121, 5, 'nickname', 'rperez'),
(122, 5, 'first_name', 'rperez'),
(123, 5, 'last_name', ''),
(124, 5, 'description', ''),
(125, 5, 'rich_editing', 'true'),
(126, 5, 'syntax_highlighting', 'true'),
(127, 5, 'comment_shortcuts', 'false'),
(128, 5, 'admin_color', 'fresh'),
(129, 5, 'use_ssl', '0'),
(130, 5, 'show_admin_bar_front', 'true'),
(131, 5, 'locale', ''),
(132, 5, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(133, 5, 'wp_user_level', '0'),
(135, 5, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(136, 5, 'um_user_profile_url_slug_user_login', 'rperez'),
(137, 5, 'full_name', 'rperez'),
(138, 5, 'account_status', 'approved'),
(139, 5, 'dismissed_wp_pointers', ''),
(140, 5, 'synced_gravatar_hashed_id', '23a0714b2a710e78a0380638bc829c88'),
(141, 5, 'session_tokens', 'a:1:{s:64:\"486252cf92831731aca27e385e98e82a0f6d85fc556ba6ef502e1996b9747516\";a:4:{s:10:\"expiration\";i:1672420561;s:2:\"ip\";s:14:\"191.125.60.134\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Linux; Android 12; M2101K9AG) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Mobile Safari/537.36\";s:5:\"login\";i:1672247761;}}'),
(142, 5, '_um_last_login', '1672247761'),
(143, 6, 'nickname', 'ppalacios'),
(144, 6, 'first_name', ''),
(145, 6, 'last_name', ''),
(146, 6, 'description', ''),
(147, 6, 'rich_editing', 'true'),
(148, 6, 'syntax_highlighting', 'true'),
(149, 6, 'comment_shortcuts', 'false'),
(150, 6, 'admin_color', 'fresh'),
(151, 6, 'use_ssl', '0'),
(152, 6, 'show_admin_bar_front', 'true'),
(153, 6, 'locale', ''),
(154, 6, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(155, 6, 'wp_user_level', '0'),
(157, 6, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(158, 6, 'um_user_profile_url_slug_user_login', 'ppalacios'),
(159, 6, 'full_name', ''),
(160, 6, 'account_status', 'approved'),
(161, 6, 'dismissed_wp_pointers', ''),
(162, 6, 'synced_gravatar_hashed_id', '11849e28110f048556bbf3f177b5acc0'),
(163, 2, 'wp_wpas_can_be_assigned', NULL),
(164, 2, 'wp_wpas_smart_tickets_order', NULL),
(165, 2, 'wp_wpas_department', 'a:0:{}'),
(166, 2, 'wp_wpas_department_assignment', 'a:0:{}'),
(167, 2, 'wp_wpas_view_all_tickets', NULL),
(168, 2, 'wp_wpas_mobile_phone', ''),
(169, 2, 'wp_wpas_office_phone', ''),
(170, 2, 'wp_wpas_home_phone', ''),
(171, 2, 'wp_wpas_other_phone', ''),
(172, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:21:\"dashboard_site_health\";i:1;s:19:\"dashboard_right_now\";i:2;s:18:\"dashboard_activity\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(173, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(175, 1, 'wp_wpas_open_tickets', '-1'),
(176, 7, 'nickname', 'grios'),
(177, 7, 'first_name', 'Guido'),
(178, 7, 'last_name', 'Rios'),
(179, 7, 'description', ''),
(180, 7, 'rich_editing', 'true'),
(181, 7, 'syntax_highlighting', 'true'),
(182, 7, 'comment_shortcuts', 'false'),
(183, 7, 'admin_color', 'fresh'),
(184, 7, 'use_ssl', '0'),
(185, 7, 'show_admin_bar_front', 'true'),
(186, 7, 'locale', ''),
(187, 7, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(188, 7, 'wp_user_level', '10'),
(190, 7, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:0;s:11:\"cover_photo\";b:0;s:8:\"verified\";b:0;}'),
(191, 7, 'um_user_profile_url_slug_user_login', 'grios'),
(192, 7, 'full_name', 'guido rios'),
(193, 7, 'account_status', 'approved'),
(194, 7, 'dismissed_wp_pointers', ''),
(195, 7, 'synced_gravatar_hashed_id', 'eef0ee5a733244a764f5976c3d296905'),
(196, 2, 'session_tokens', 'a:1:{s:64:\"d36c595d89a5630e4541640c0d45bd64dde7887a7c5de7fd7488a605726876dc\";a:4:{s:10:\"expiration\";i:1672507491;s:2:\"ip\";s:13:\"216.241.29.98\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36\";s:5:\"login\";i:1672334691;}}'),
(197, 7, 'wp_wpas_open_tickets', '2'),
(198, 7, 'wp_wpas_can_be_assigned', NULL),
(199, 7, 'wp_wpas_smart_tickets_order', NULL),
(200, 7, 'wp_wpas_department', 'a:0:{}'),
(201, 7, 'wp_wpas_department_assignment', 'a:0:{}'),
(202, 7, 'wp_wpas_view_all_tickets', NULL),
(203, 7, 'wp_wpas_mobile_phone', ''),
(204, 7, 'wp_wpas_office_phone', ''),
(205, 7, 'wp_wpas_home_phone', ''),
(206, 7, 'wp_wpas_other_phone', ''),
(207, 1, 'wp_user-settings', 'editor=tinymce'),
(208, 1, 'wp_user-settings-time', '1672426009'),
(209, 1, 'wp_mail_smtp_dash_widget_lite_hide_graph', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BIfNODQeWxGiWfu0agJXS2QYJueU5M0', 'admin', 'guidoriosciaffaroni@gmail.com', 'http://circum.cl', '2022-10-13 17:46:56', '', 0, 'admin'),
(2, 'prios', '$P$BXb1z07ipjWTRSfUihk2NeoHkrCYsX0', 'prios', 'pablo.rios@ciaffaroni.cl', '', '2022-11-27 17:11:37', '', 0, 'Pablo Rios'),
(3, 'eutreras', '$P$BhULDdsjit/KHfYamgO7wmV6PHKQ5Y/', 'eutreras', 'e.utreras.v@gmail.com', '', '2022-12-02 12:57:31', '1669985851:$P$Bp74LhDICT4gjr0FbdxpzZoA7FZQU20', 0, 'Emma Utreras'),
(4, 'ccornejo', '$P$Btdyp59H7BzbqrZuvIlZN1uh3PURAz.', 'ccornejo', 'carloantoniocc@gmail.com', '', '2022-12-02 15:36:26', '1669995386:$P$BdruIclJ1R0SrOu6UvcFrFpS5p5RoP/', 0, 'Carlos Cornejo'),
(5, 'rperez', '$P$B/ykgaCNbwCoU7/xgQ.eQ2GT17wd3H1', 'rperez', 'rperez@tgr.cl', '', '2022-12-28 17:15:32', '1672247732:$P$BydXwMeeUpNlUGfpyKQxyOuZbd94jR0', 0, 'rperez'),
(6, 'ppalacios', '$P$Bc8kNeflB4S/S0eEI/PA6uRGaImghu.', 'ppalacios', 'cpalacios.cp@hotmail.com', '', '2022-12-28 23:38:18', '1672270698:$P$BGXuRnZU4O3cnA9mwe2PaDgd/YIKgh/', 0, 'ppalacios'),
(7, 'grios', '$P$BA4qVAESQKvtFe4zscy1FPuyVyKNJ1.', 'grios', 'kroncx@gmail.com', '', '2022-12-29 15:59:22', '1672423823:$P$BAXXrwXovth9GRHjEW5o4CKup98s981', 0, 'Guido Rios');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpmailsmtp_debug_events`
--

CREATE TABLE `wp_wpmailsmtp_debug_events` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `initiator` text COLLATE utf8mb4_unicode_520_ci,
  `event_type` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Volcado de datos para la tabla `wp_wpmailsmtp_debug_events`
--

INSERT INTO `wp_wpmailsmtp_debug_events` (`id`, `content`, `initiator`, `event_type`, `created_at`) VALUES
(1, 'Mailer: Gmail\r\ninvalid_client\nPor favor, asegúrate de que tu ID de cliente y secreto de Google en los ajustes del plugin sean válidos. Guarda los ajustes y prueba de nuevo la autorización.', '', 0, '2022-12-30 18:06:30'),
(2, 'Mailer: Gmail\r\ninvalid_client\nPor favor, asegúrate de que tu ID de cliente y secreto de Google en los ajustes del plugin sean válidos. Guarda los ajustes y prueba de nuevo la autorización.', '', 0, '2022-12-30 18:06:30'),
(3, 'Mailer: Gmail\r\ninvalid_client\nPor favor, asegúrate de que tu ID de cliente y secreto de Google en los ajustes del plugin sean válidos. Guarda los ajustes y prueba de nuevo la autorización.', '', 0, '2022-12-30 18:06:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wpmailsmtp_tasks_meta`
--

CREATE TABLE `wp_wpmailsmtp_tasks_meta` (
  `id` bigint(20) NOT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci TABLESPACE `cirspa_ei`;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_scheduled_date_gmt` (`claim_id`,`status`,`scheduled_date_gmt`);

--
-- Indices de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_mailster_attachments`
--
ALTER TABLE `wp_mailster_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_digests`
--
ALTER TABLE `wp_mailster_digests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `digest_user` (`user_id`,`is_core_user`);

--
-- Indices de la tabla `wp_mailster_digest_queue`
--
ALTER TABLE `wp_mailster_digest_queue`
  ADD KEY `digest_id` (`digest_id`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indices de la tabla `wp_mailster_groups`
--
ALTER TABLE `wp_mailster_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_group_users`
--
ALTER TABLE `wp_mailster_group_users`
  ADD KEY `group_id` (`group_id`),
  ADD KEY `user` (`user_id`,`is_core_user`);

--
-- Indices de la tabla `wp_mailster_lists`
--
ALTER TABLE `wp_mailster_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_list_groups`
--
ALTER TABLE `wp_mailster_list_groups`
  ADD KEY `list_id` (`list_id`),
  ADD KEY `list_group` (`list_id`,`group_id`);

--
-- Indices de la tabla `wp_mailster_list_members`
--
ALTER TABLE `wp_mailster_list_members`
  ADD KEY `list_id` (`list_id`),
  ADD KEY `user` (`user_id`,`is_core_user`);

--
-- Indices de la tabla `wp_mailster_list_stats`
--
ALTER TABLE `wp_mailster_list_stats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`);

--
-- Indices de la tabla `wp_mailster_mails`
--
ALTER TABLE `wp_mailster_mails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `blocked_mail` (`blocked_mail`),
  ADD KEY `bounced_mail` (`bounced_mail`),
  ADD KEY `blocked_bounced` (`blocked_mail`,`bounced_mail`),
  ADD KEY `fwd_errors` (`fwd_errors`),
  ADD KEY `fwd_completed` (`fwd_completed`),
  ADD KEY `thread_id` (`thread_id`);

--
-- Indices de la tabla `wp_mailster_notifies`
--
ALTER TABLE `wp_mailster_notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_oa_attachments`
--
ALTER TABLE `wp_mailster_oa_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_oa_mails`
--
ALTER TABLE `wp_mailster_oa_mails`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_queued_mails`
--
ALTER TABLE `wp_mailster_queued_mails`
  ADD KEY `mail_id` (`mail_id`),
  ADD KEY `mail_queued_locked` (`mail_id`,`is_locked`),
  ADD KEY `mail_queued` (`mail_id`,`email`(30));

--
-- Indices de la tabla `wp_mailster_send_reports`
--
ALTER TABLE `wp_mailster_send_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mail_id` (`mail_id`);

--
-- Indices de la tabla `wp_mailster_servers`
--
ALTER TABLE `wp_mailster_servers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `server_type` (`server_type`),
  ADD KEY `provider_type` (`provider_type`);

--
-- Indices de la tabla `wp_mailster_subscriptions`
--
ALTER TABLE `wp_mailster_subscriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_mailster_threads`
--
ALTER TABLE `wp_mailster_threads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ref_message_id` (`ref_message_id`(30));

--
-- Indices de la tabla `wp_mailster_users`
--
ALTER TABLE `wp_mailster_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`(30));

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_sm_sessions`
--
ALTER TABLE `wp_sm_sessions`
  ADD PRIMARY KEY (`session_key`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_um_metadata`
--
ALTER TABLE `wp_um_metadata`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id_indx` (`user_id`),
  ADD KEY `meta_key_indx` (`um_key`),
  ADD KEY `meta_value_indx` (`um_value`(191));

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_db7_forms`
--
ALTER TABLE `wp_db7_forms`
  MODIFY `form_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_attachments`
--
ALTER TABLE `wp_mailster_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_digests`
--
ALTER TABLE `wp_mailster_digests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_groups`
--
ALTER TABLE `wp_mailster_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_lists`
--
ALTER TABLE `wp_mailster_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_list_stats`
--
ALTER TABLE `wp_mailster_list_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_mails`
--
ALTER TABLE `wp_mailster_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_notifies`
--
ALTER TABLE `wp_mailster_notifies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_oa_attachments`
--
ALTER TABLE `wp_mailster_oa_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_oa_mails`
--
ALTER TABLE `wp_mailster_oa_mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_send_reports`
--
ALTER TABLE `wp_mailster_send_reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_servers`
--
ALTER TABLE `wp_mailster_servers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_subscriptions`
--
ALTER TABLE `wp_mailster_subscriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_threads`
--
ALTER TABLE `wp_mailster_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_mailster_users`
--
ALTER TABLE `wp_mailster_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14297;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3178;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `wp_um_metadata`
--
ALTER TABLE `wp_um_metadata`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `wp_wpmailsmtp_debug_events`
--
ALTER TABLE `wp_wpmailsmtp_debug_events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_wpmailsmtp_tasks_meta`
--
ALTER TABLE `wp_wpmailsmtp_tasks_meta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
