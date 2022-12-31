2022-12-30 17:18:47 b47eed84 INFO Created index group_id in wp_mailster_group_users
2022-12-30 17:18:47 b47eed84 INFO Created index user in wp_mailster_group_users
2022-12-30 17:18:47 b47eed84 INFO Created index list_id in wp_mailster_list_groups
2022-12-30 17:18:47 b47eed84 INFO Created index list_group in wp_mailster_list_groups
2022-12-30 17:18:47 b47eed84 INFO Created index list_id in wp_mailster_list_members
2022-12-30 17:18:47 b47eed84 INFO Created index user in wp_mailster_list_members
2022-12-30 17:18:47 b47eed84 INFO Created index list_id in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index blocked_mail in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index bounced_mail in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index blocked_bounced in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index fwd_errors in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index fwd_completed in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index thread_id in wp_mailster_mails
2022-12-30 17:18:47 b47eed84 INFO Created index mail_id in wp_mailster_queued_mails
2022-12-30 17:18:47 b47eed84 INFO Created index mail_queued_locked in wp_mailster_queued_mails
2022-12-30 17:18:47 b47eed84 INFO Created index mail_queued in wp_mailster_queued_mails
2022-12-30 17:18:47 b47eed84 INFO Created index email in wp_mailster_users
2022-12-30 17:18:47 b47eed84 INFO Created index ref_message_id in wp_mailster_threads
2022-12-30 17:18:47 b47eed84 INFO Created index list_id in wp_mailster_digests
2022-12-30 17:18:47 b47eed84 INFO Created index digest_user in wp_mailster_digests
2022-12-30 17:18:47 b47eed84 INFO Created index digest_id in wp_mailster_digest_queue
2022-12-30 17:18:47 b47eed84 INFO Created index thread_id in wp_mailster_digest_queue
2022-12-30 17:18:47 b47eed84 INFO Created index mail_id in wp_mailster_send_reports
2022-12-30 17:18:47 b47eed84 INFO Created index list_id in wp_mailster_list_stats
2022-12-30 17:18:47 b47eed84 INFO Created index server_type in wp_mailster_servers
2022-12-30 17:18:47 b47eed84 INFO Created index provider_type in wp_mailster_servers
2022-12-30 17:18:47 b47eed84 INFO CC Addressing not in use, no need for changes
2022-12-30 17:18:48 b47eed84 INFO checkAndFixDBCollations() No need to fix DB Collations, all good
2022-12-30 17:18:48 b47eed84 INFO mailster_install FINISHED INSTALL OPERATIONS
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 1 using default settings: stdClass Object
(
    [name] => AOL (POP3)
    [server_type] => 0
    [server_host] => pop.aol.com
    [server_port] => 995
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => pop3
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 1 using default settings: stdClass Object
(
    [name] => AOL (POP3)
    [server_type] => 0
    [server_host] => pop.aol.com
    [server_port] => 995
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => pop3
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: AOL (POP3)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 2 using default settings: stdClass Object
(
    [name] => AOL (SMTP)
    [server_type] => 1
    [server_host] => smtp.aol.com
    [server_port] => 587
    [secure_protocol] => 
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 2 using default settings: stdClass Object
(
    [name] => AOL (SMTP)
    [server_type] => 1
    [server_host] => smtp.aol.com
    [server_port] => 587
    [secure_protocol] => 
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: AOL (SMTP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 3 using default settings: stdClass Object
(
    [name] => Gmail (IMAP)
    [server_type] => 0
    [server_host] => imap.gmail.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 3 using default settings: stdClass Object
(
    [name] => Gmail (IMAP)
    [server_type] => 0
    [server_host] => imap.gmail.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Gmail (IMAP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 4 using default settings: stdClass Object
(
    [name] => Gmail (SMTP)
    [server_type] => 1
    [server_host] => smtp.gmail.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 4 using default settings: stdClass Object
(
    [name] => Gmail (SMTP)
    [server_type] => 1
    [server_host] => smtp.gmail.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Gmail (SMTP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 5 using default settings: stdClass Object
(
    [name] => One.com (IMAP)
    [server_type] => 0
    [server_host] => imap.one.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => /novalidate-cert
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 5 using default settings: stdClass Object
(
    [name] => One.com (IMAP)
    [server_type] => 0
    [server_host] => imap.one.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => /novalidate-cert
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: One.com (IMAP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 6 using default settings: stdClass Object
(
    [name] => One.com (SMTP)
    [server_type] => 1
    [server_host] => send.one.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 6 using default settings: stdClass Object
(
    [name] => One.com (SMTP)
    [server_type] => 1
    [server_host] => send.one.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: One.com (SMTP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 7 using default settings: stdClass Object
(
    [name] => Outlook.com (IMAP)
    [server_type] => 0
    [server_host] => imap-mail.outlook.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 7 using default settings: stdClass Object
(
    [name] => Outlook.com (IMAP)
    [server_type] => 0
    [server_host] => imap-mail.outlook.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Outlook.com (IMAP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 8 using default settings: stdClass Object
(
    [name] => Outlook.com (SMTP)
    [server_type] => 1
    [server_host] => smtp-mail.outlook.com
    [server_port] => 587
    [secure_protocol] => tls
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 8 using default settings: stdClass Object
(
    [name] => Outlook.com (SMTP)
    [server_type] => 1
    [server_host] => smtp-mail.outlook.com
    [server_port] => 587
    [secure_protocol] => tls
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Outlook.com (SMTP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 9 using default settings: stdClass Object
(
    [name] => Yahoo (IMAP)
    [server_type] => 0
    [server_host] => imap.mail.yahoo.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 9 using default settings: stdClass Object
(
    [name] => Yahoo (IMAP)
    [server_type] => 0
    [server_host] => imap.mail.yahoo.com
    [server_port] => 993
    [secure_protocol] => ssl
    [secure_authentication] => 0
    [protocol] => imap
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Yahoo (IMAP)
2022-12-30 17:18:48 b47eed84 INFO Create default mail provider settings for provider type 10 using default settings: stdClass Object
(
    [name] => Yahoo (SMTP)
    [server_type] => 1
    [server_host] => smtp.mail.yahoo.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Updating/overwriting server settings (since not changed by user) for provider type 10 using default settings: stdClass Object
(
    [name] => Yahoo (SMTP)
    [server_type] => 1
    [server_host] => smtp.mail.yahoo.com
    [server_port] => 465
    [secure_protocol] => ssl
    [secure_authentication] => 1
    [protocol] => smtp
    [connection_parameter] => 
    [api_key1] => 
    [api_key2] => 
    [api_endpoint] => 
)

2022-12-30 17:18:48 b47eed84 DEBU Store/Update provider settings: Yahoo (SMTP)
2022-12-30 17:18:48 b47eed84 INFO FINISHED POST INSTALL OPERATIONS
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check dbVersion still , however we are on 1.8.3
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Run updates for 1.6.0 (DB version: )
2022-12-30 17:18:48 b47eed84 INFO Column mod_mode already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_moderated_group already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_approve_recipients already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_approve_group already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_approve_group_id already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_info_sender_moderation already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_info_sender_approval already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column mod_info_sender_rejection already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO Column moderation_status already in wp_mailster_mails
2022-12-30 17:18:48 b47eed84 INFO Column sender_dmarc_relevant already in wp_mailster_mails
2022-12-30 17:18:48 b47eed84 INFO Column moderation_status already in wp_mailster_oa_mails
2022-12-30 17:18:48 b47eed84 INFO Column sender_dmarc_relevant already in wp_mailster_oa_mails
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Update db version to: 1.6.0
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Run updates for 1.6.6 (DB version: )
2022-12-30 17:18:48 b47eed84 INFO Column archive_retention already in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Update db version to: 1.6.6
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Run updates for 1.6.12 (DB version: )
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(255) and varchar(255) null in wp_mailster_lists, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(255) null and varchar(255) null in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO name type is already VARCHAR(255) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(255) and varchar(255) null in wp_mailster_lists, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(255) null and varchar(255) null in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO subject_prefix type is already VARCHAR(255) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(255) and varchar(255) null in wp_mailster_lists, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(255) null and varchar(255) null in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO mail_in_pw type is already VARCHAR(255) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(255) and varchar(255) null in wp_mailster_lists, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(255) null and varchar(255) null in wp_mailster_lists
2022-12-30 17:18:48 b47eed84 INFO mail_out_pw type is already VARCHAR(255) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Update db version to: 1.6.12
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(127) and varchar(127) null in wp_mailster_attachments, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(127) null and varchar(127) null in wp_mailster_attachments
2022-12-30 17:18:48 b47eed84 INFO subtype type is already VARCHAR(127) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO changeColType() Difference between varchar(127) and varchar(127) null in wp_mailster_oa_attachments, recheck with null value
2022-12-30 17:18:48 b47eed84 INFO changeColType() No difference between varchar(127) null and varchar(127) null in wp_mailster_oa_attachments
2022-12-30 17:18:48 b47eed84 INFO subtype type is already VARCHAR(127) NULL, no need to modify
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Update db version () to: 1.8.3
2022-12-30 17:18:48 b47eed84 INFO wpmst_update_db_check Check load version: 1.8.3
2022-12-30 17:18:48 b47eed84 INFO checkAndFixDBCollations() No need to fix DB Collations, all good
2022-12-30 17:18:48 b47eed84 INFO mailster_install_or_update No license info (wpmst_cfg_version_license) found, init!
2022-12-30 17:18:49 c3bc2dff WARN Last exec timestamp negative: -1
2022-12-30 17:18:49 c3bc2dff WARN Last exec timestamp negative: -1
2022-12-30 17:18:49 c3bc2dff WARN Last exec timestamp negative: -1
2022-12-30 17:18:49 c3bc2dff INFO Performing maintenance (cleanup)...
2022-12-30 17:19:07 0402ec16 INFO checkAndFixDBCollations() No need to fix DB Collations, all good
2022-12-30 17:20:41 2a268ab7 INFO checkAndFixDBCollations() No need to fix DB Collations, all good
