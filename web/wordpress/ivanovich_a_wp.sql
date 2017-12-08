-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Ноя 29 2017 г., 19:14
-- Версия сервера: 5.5.52-0ubuntu0.14.04.1
-- Версия PHP: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ivanovich_a_wp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-11-17 19:16:01', '2017-11-17 16:16:01', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href="https://ru.gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=512 ;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://mytestwebwp123.onenv.ru', 'yes'),
(2, 'home', 'http://mytestwebwp123.onenv.ru', 'yes'),
(3, 'blogname', 'mytestweb', 'yes'),
(4, 'blogdescription', 'Ещё один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ivanovich_a@mail.ru', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:23:"rustolat/rus-to-lat.php";i:3;s:24:"wordpress-seo/wp-seo.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '3', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:94:"/home/ivanovich_a/web/mytestwebwp123.onenv.ru/public_html/wp-content/themes/mesmerize/style.css";i:2;s:93:"/home/ivanovich_a/web/mytestwebwp123.onenv.ru/public_html/wp-content/themes/noteblog/style.css";i:3;s:100:"/home/ivanovich_a/web/mytestwebwp123.onenv.ru/public_html/wp-content/themes/twentyseventeen/style.css";i:4;s:95:"/home/ivanovich_a/web/mytestwebwp123.onenv.ru/public_html/wp-content/plugins/akismet/akismet.php";i:5;s:0:"";}', 'no'),
(40, 'template', 'mytheme', 'yes'),
(41, 'stylesheet', 'mytheme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:5:{i:2;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:3;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}i:4;a:4:{s:5:"title";s:21:"Найдите нас";s:4:"text";s:226:"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00";s:6:"filter";b:1;s:6:"visual";b:1;}i:5;a:4:{s:5:"title";s:13:"О сайте";s:4:"text";s:205:"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.";s:6:"filter";b:1;s:6:"visual";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:20:"wpseo_manage_options";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:13:"wpseo_manager";a:2:{s:4:"name";s:11:"SEO Manager";s:12:"capabilities";a:37:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;s:20:"wpseo_manage_options";b:1;}}s:12:"wpseo_editor";a:2:{s:4:"name";s:10:"SEO Editor";s:12:"capabilities";a:36:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:15:"wpseo_bulk_edit";b:1;s:28:"wpseo_edit_advanced_metadata";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'ru_RU', 'yes'),
(95, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:6:"number";i:5;s:9:"show_date";b:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:1;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:4:{i:4;a:0:{}i:5;a:0:{}i:7;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"meta-5";i:1;s:6:"text-2";i:2;s:6:"text-3";i:3;s:6:"text-4";i:4;s:6:"text-5";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-4";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";i:2;s:6:"meta-7";}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'cron', 'a:6:{i:1511969762;a:1:{s:19:"wpseo-reindex-links";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511971553;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1511972162;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1511972187;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1511972446;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:3:"top";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511461546;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(127, 'can_compress_scripts', '0', 'no'),
(163, 'recently_activated', 'a:1:{s:19:"akismet/akismet.php";i:1511364977;}', 'yes'),
(165, 'category_children', 'a:0:{}', 'yes'),
(205, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(223, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.9.1";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1511375750;s:7:"version";s:5:"4.9.1";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(227, 'wpseo', 'a:25:{s:14:"blocking_files";a:0:{}s:15:"ms_defaults_set";b:0;s:7:"version";s:3:"5.8";s:12:"company_logo";s:0:"";s:12:"company_name";s:0:"";s:17:"company_or_person";s:0:"";s:20:"disableadvanced_meta";b:1;s:19:"onpage_indexability";b:1;s:12:"googleverify";s:0:"";s:8:"msverify";s:0:"";s:11:"person_name";s:0:"";s:12:"website_name";s:0:"";s:22:"alternate_website_name";s:0:"";s:12:"yandexverify";s:0:"";s:9:"site_type";s:0:"";s:20:"has_multiple_authors";s:0:"";s:16:"environment_type";s:0:"";s:23:"content_analysis_active";b:1;s:23:"keyword_analysis_active";b:1;s:20:"enable_setting_pages";b:1;s:21:"enable_admin_bar_menu";b:1;s:26:"enable_cornerstone_content";b:1;s:24:"enable_text_link_counter";b:1;s:22:"show_onboarding_notice";b:1;s:18:"first_activated_on";b:0;}', 'yes'),
(228, 'wpseo_permalinks', 'a:9:{s:15:"cleanpermalinks";b:0;s:24:"cleanpermalink-extravars";s:0:"";s:29:"cleanpermalink-googlecampaign";b:0;s:31:"cleanpermalink-googlesitesearch";b:0;s:15:"cleanreplytocom";b:0;s:10:"cleanslugs";b:1;s:18:"redirectattachment";b:0;s:17:"stripcategorybase";b:0;s:13:"trailingslash";b:0;}', 'yes'),
(229, 'wpseo_titles', 'a:53:{s:10:"title_test";i:0;s:17:"forcerewritetitle";b:0;s:9:"separator";s:7:"sc-dash";s:15:"usemetakeywords";b:0;s:16:"title-home-wpseo";s:49:"Это главная страница сайта";s:18:"title-author-wpseo";s:45:"%%name%%, Автор в %%sitename%% %%page%%";s:19:"title-archive-wpseo";s:38:"%%date%% %%page%% %%sep%% %%sitename%%";s:18:"title-search-wpseo";s:64:"Вы искали %%searchphrase%% %%page%% %%sep%% %%sitename%%";s:15:"title-404-wpseo";s:57:"Страница не найдена %%sep%% %%sitename%%";s:19:"metadesc-home-wpseo";s:78:"Здесь метаописание главной страницы сайта";s:21:"metadesc-author-wpseo";s:0:"";s:22:"metadesc-archive-wpseo";s:0:"";s:18:"metakey-home-wpseo";s:0:"";s:20:"metakey-author-wpseo";s:0:"";s:22:"noindex-subpages-wpseo";b:0;s:20:"noindex-author-wpseo";b:0;s:21:"noindex-archive-wpseo";b:1;s:14:"disable-author";b:0;s:12:"disable-date";b:0;s:19:"disable-post_format";b:0;s:10:"title-post";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-post";s:91:"Это %%category%% это очень хороший товар - %%title%% -выгодно";s:12:"metakey-post";s:0:"";s:12:"noindex-post";b:0;s:13:"showdate-post";b:0;s:16:"hideeditbox-post";b:0;s:10:"title-page";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:13:"metadesc-page";s:0:"";s:12:"metakey-page";s:0:"";s:12:"noindex-page";b:0;s:13:"showdate-page";b:0;s:16:"hideeditbox-page";b:0;s:16:"title-attachment";s:39:"%%title%% %%page%% %%sep%% %%sitename%%";s:19:"metadesc-attachment";s:0:"";s:18:"metakey-attachment";s:0:"";s:18:"noindex-attachment";b:0;s:19:"showdate-attachment";b:0;s:22:"hideeditbox-attachment";b:0;s:18:"title-tax-category";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-category";s:0:"";s:20:"metakey-tax-category";s:0:"";s:24:"hideeditbox-tax-category";b:0;s:20:"noindex-tax-category";b:0;s:18:"title-tax-post_tag";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:21:"metadesc-tax-post_tag";s:0:"";s:20:"metakey-tax-post_tag";s:0:"";s:24:"hideeditbox-tax-post_tag";b:0;s:20:"noindex-tax-post_tag";b:0;s:21:"title-tax-post_format";s:57:"Архивы %%term_title%% %%page%% %%sep%% %%sitename%%";s:24:"metadesc-tax-post_format";s:0:"";s:23:"metakey-tax-post_format";s:0:"";s:27:"hideeditbox-tax-post_format";b:0;s:23:"noindex-tax-post_format";b:1;}', 'yes'),
(230, 'wpseo_social', 'a:20:{s:9:"fb_admins";a:0:{}s:12:"fbconnectkey";s:32:"2af1dc7a2a98a6b5a75b1ea9181b886c";s:13:"facebook_site";s:0:"";s:13:"instagram_url";s:0:"";s:12:"linkedin_url";s:0:"";s:11:"myspace_url";s:0:"";s:16:"og_default_image";s:0:"";s:18:"og_frontpage_title";s:0:"";s:17:"og_frontpage_desc";s:0:"";s:18:"og_frontpage_image";s:0:"";s:9:"opengraph";b:1;s:13:"pinterest_url";s:0:"";s:15:"pinterestverify";s:0:"";s:14:"plus-publisher";s:0:"";s:7:"twitter";b:1;s:12:"twitter_site";s:0:"";s:17:"twitter_card_type";s:19:"summary_large_image";s:11:"youtube_url";s:0:"";s:15:"google_plus_url";s:0:"";s:10:"fbadminapp";s:0:"";}', 'yes'),
(231, 'wpseo_rss', 'a:2:{s:9:"rssbefore";s:0:"";s:8:"rssafter";s:84:"Сообщение %%POSTLINK%% появились сначала на %%BLOGLINK%%.";}', 'yes'),
(232, 'wpseo_internallinks', 'a:10:{s:20:"breadcrumbs-404crumb";s:54:"Ошибка 404: страница не найдена";s:23:"breadcrumbs-blog-remove";b:0;s:20:"breadcrumbs-boldlast";b:0;s:25:"breadcrumbs-archiveprefix";s:19:"Архивы для";s:18:"breadcrumbs-enable";b:0;s:16:"breadcrumbs-home";s:31:"Главная страница";s:18:"breadcrumbs-prefix";s:0:"";s:24:"breadcrumbs-searchprefix";s:17:"Вы искали";s:15:"breadcrumbs-sep";s:7:"&raquo;";s:23:"post_types-post-maintax";i:0;}', 'yes'),
(233, 'wpseo_xml', 'a:18:{s:22:"disable_author_sitemap";b:1;s:22:"disable_author_noposts";b:1;s:16:"enablexmlsitemap";b:1;s:16:"entries-per-page";i:10000;s:14:"excluded-posts";s:0:"";s:38:"user_role-administrator-not_in_sitemap";b:0;s:31:"user_role-editor-not_in_sitemap";b:0;s:31:"user_role-author-not_in_sitemap";b:0;s:36:"user_role-contributor-not_in_sitemap";b:0;s:35:"user_role-subscriber-not_in_sitemap";b:0;s:38:"user_role-wpseo_manager-not_in_sitemap";b:0;s:37:"user_role-wpseo_editor-not_in_sitemap";b:0;s:30:"post_types-post-not_in_sitemap";b:0;s:30:"post_types-page-not_in_sitemap";b:0;s:36:"post_types-attachment-not_in_sitemap";b:1;s:34:"taxonomies-category-not_in_sitemap";b:0;s:34:"taxonomies-post_tag-not_in_sitemap";b:0;s:37:"taxonomies-post_format-not_in_sitemap";b:0;}', 'yes'),
(236, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(239, 'wpseo_sitemap_1_cache_validator', 'rrOz', 'no'),
(240, 'wpseo_sitemap_page_cache_validator', '56aiK', 'no'),
(245, 'wpseo_sitemap_cache_validator_global', '5dg6B', 'no'),
(259, 'wpseo_sitemap_post_cache_validator', 'rrOF', 'no'),
(273, 'rewrite_rules', 'a:96:{s:19:"sitemap_index\\.xml$";s:19:"index.php?sitemap=1";s:31:"([^/]+?)-sitemap([0-9]+)?\\.xml$";s:51:"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]";s:24:"([a-z]+)?-?sitemap\\.xsl$";s:25:"index.php?xsl=$matches[1]";s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:31:".+?/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:41:".+?/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:61:".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:56:".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:37:".+?/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"(.+?)/([^/]+)/embed/?$";s:63:"index.php?category_name=$matches[1]&name=$matches[2]&embed=true";s:26:"(.+?)/([^/]+)/trackback/?$";s:57:"index.php?category_name=$matches[1]&name=$matches[2]&tb=1";s:46:"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:41:"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]";s:34:"(.+?)/([^/]+)/page/?([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]";s:41:"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$";s:70:"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]";s:30:"(.+?)/([^/]+)(?:/([0-9]+))?/?$";s:69:"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]";s:20:".+?/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:30:".+?/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:50:".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:45:".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:26:".+?/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:38:"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:33:"(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:14:"(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:26:"(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:33:"(.+?)/comment-page-([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&cpage=$matches[2]";s:8:"(.+?)/?$";s:35:"index.php?category_name=$matches[1]";}', 'yes'),
(280, '_site_transient_timeout_browser_cb0f25941c7ee58acd15fece4d84c18b', '1512063526', 'no'),
(281, '_site_transient_browser_cb0f25941c7ee58acd15fece4d84c18b', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(298, 'wpseo_sitemap_category_cache_validator', '4UXYQ', 'no'),
(301, 'wpseo_sitemap_41_cache_validator', '5E1mx', 'no'),
(311, 'current_theme', 'MyTheme', 'yes'),
(312, 'theme_mods_noteblog', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511460431;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:4:{i:0;s:6:"text-2";i:1;s:6:"text-3";i:2;s:6:"text-4";i:3;s:6:"text-5";}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:18:"footer_widget_left";a:0:{}s:20:"footer_widget_middle";a:0:{}s:19:"footer_widget_right";a:0:{}}}}', 'yes'),
(313, 'theme_switched', '', 'yes'),
(320, 'wpseo_sitemap_44_cache_validator', '5Hlsy', 'no'),
(322, 'wpseo_sitemap_post_tag_cache_validator', '4UXYV', 'no'),
(330, 'wpseo_sitemap_49_cache_validator', '5KxnX', 'no'),
(345, 'theme_mods_mesmerize', 'a:15:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:20:"theme_default_preset";i:2;s:18:"custom_css_post_id";i:-1;s:16:"header_slideshow";a:2:{i:0;a:1:{s:3:"url";s:92:"http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide1.jpg";}i:1;a:1:{s:3:"url";s:92:"http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide2.jpg";}}s:22:"inner_header_slideshow";a:2:{i:0;a:1:{s:3:"url";s:92:"http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide1.jpg";}i:1;a:1:{s:3:"url";s:92:"http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide2.jpg";}}s:22:"header_content_buttons";a:2:{i:0;a:4:{s:5:"label";s:31:"Кнопка действия 1";s:3:"url";s:1:"#";s:6:"target";s:5:"_self";s:5:"class";s:23:"button big color1 round";}i:1;a:4:{s:5:"label";s:31:"Кнопка действия 2";s:3:"url";s:1:"#";s:6:"target";s:5:"_self";s:5:"class";s:36:"button big color-white round outline";}}s:15:"footer_template";s:13:"contact-boxes";s:14:"footer_paralax";b:1;s:24:"inner_header_nav_sticked";b:1;s:30:"header_offscreen_nav_on_tablet";b:0;s:22:"inner_header_nav_boxed";b:0;s:23:"inner_header_nav_border";b:1;s:31:"header_offscreen_nav_on_desktop";b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511885976;s:4:"data";a:5:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"meta-5";i:1;s:6:"text-2";i:2;s:6:"text-3";i:3;s:6:"text-4";i:4;s:6:"text-5";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-4";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";i:2;s:6:"meta-7";}s:17:"first_box_widgets";a:0:{}s:18:"second_box_widgets";a:0:{}s:17:"third_box_widgets";a:0:{}}}}', 'yes'),
(348, 'theme_mods_colormag', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511885917;s:4:"data";a:17:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"meta-5";i:1;s:6:"text-2";i:2;s:6:"text-3";i:3;s:6:"text-4";i:4;s:6:"text-5";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-4";}s:22:"colormag_right_sidebar";a:3:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";i:2;s:6:"meta-7";}s:21:"colormag_left_sidebar";a:0:{}s:23:"colormag_header_sidebar";a:0:{}s:31:"colormag_front_page_slider_area";a:0:{}s:38:"colormag_front_page_area_beside_slider";a:0:{}s:39:"colormag_front_page_content_top_section";a:0:{}s:47:"colormag_front_page_content_middle_left_section";a:0:{}s:48:"colormag_front_page_content_middle_right_section";a:0:{}s:42:"colormag_front_page_content_bottom_section";a:0:{}s:29:"colormag_contact_page_sidebar";a:0:{}s:31:"colormag_error_404_page_sidebar";a:0:{}s:47:"colormag_advertisement_above_the_footer_sidebar";a:0:{}s:27:"colormag_footer_sidebar_one";a:0:{}s:27:"colormag_footer_sidebar_two";a:0:{}s:29:"colormag_footer_sidebar_three";a:0:{}s:28:"colormag_footer_sidebar_four";a:0:{}}}}', 'yes'),
(349, 'widget_colormag_featured_posts_slider_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(350, 'widget_colormag_highlighted_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(351, 'widget_colormag_featured_posts_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(352, 'widget_colormag_featured_posts_vertical_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(353, 'widget_colormag_728x90_advertisement_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(354, 'widget_colormag_300x250_advertisement_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(355, 'widget_colormag_125x125_advertisement_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(357, 'colormag_admin_notice_welcome', '1', 'yes'),
(398, 'theme_mods_mytheme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1511885742;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:11:{i:0;s:6:"meta-5";i:1;s:6:"text-2";i:2;s:6:"text-3";i:3;s:6:"text-4";i:4;s:6:"text-5";i:5;s:8:"search-2";i:6;s:14:"recent-posts-2";i:7;s:17:"recent-comments-2";i:8;s:10:"archives-2";i:9;s:12:"categories-2";i:10;s:6:"meta-4";}s:9:"sidebar-1";a:3:{i:0;s:8:"search-3";i:1;s:10:"calendar-2";i:2;s:6:"meta-7";}}}}', 'yes'),
(437, '_site_transient_timeout_browser_315117425c117d80648b71a24b9b1815', '1512405611', 'no'),
(438, '_site_transient_browser_315117425c117d80648b71a24b9b1815', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"62.0.3202.94";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(439, '_transient_timeout_wpseo-statistics-totals', '1511887214', 'no'),
(440, '_transient_wpseo-statistics-totals', 'a:1:{i:1;a:2:{s:6:"scores";a:1:{i:0;a:4:{s:8:"seo_rank";s:2:"na";s:5:"label";s:46:"Posts <strong>without</strong> a focus keyword";s:5:"count";s:1:"5";s:4:"link";s:106:"http://mytestwebwp123.onenv.ru/wp-admin/edit.php?post_status=publish&#038;post_type=post&#038;seo_filter=na";}}s:8:"division";a:5:{s:3:"bad";i:0;s:2:"ok";i:0;s:4:"good";i:0;s:2:"na";i:1;s:7:"noindex";i:0;}}}', 'no'),
(479, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip";s:6:"locale";s:5:"ru_RU";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:63:"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.9";s:7:"version";s:3:"4.9";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1511967953;s:15:"version_checked";s:3:"4.9";s:12:"translations";a:0:{}}', 'no'),
(490, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511967958;s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.1.zip";s:5:"icons";a:3:{s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:7:"default";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";}s:7:"banners";a:2:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";s:7:"default";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.9.1";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.9.1.zip";s:5:"icons";a:3:{s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:7:"default";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";s:7:"default";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";}s:11:"banners_rtl";a:0:{}}s:23:"rustolat/rus-to-lat.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/rustolat";s:4:"slug";s:8:"rustolat";s:6:"plugin";s:23:"rustolat/rus-to-lat.php";s:11:"new_version";s:3:"0.3";s:3:"url";s:39:"https://wordpress.org/plugins/rustolat/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/rustolat.0.3.zip";s:5:"icons";a:0:{}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:3:"5.8";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/wordpress-seo.5.8.zip";s:5:"icons";a:4:{s:2:"1x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-128x128.png?rev=1550389";s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1550389";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";s:7:"default";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1203032";}s:7:"banners";a:3:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1695112";s:7:"default";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1695112";}s:11:"banners_rtl";a:3:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1695112";s:7:"default";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1695112";}}}}', 'no'),
(509, '_site_transient_timeout_theme_roots', '1511969755', 'no'),
(510, '_site_transient_theme_roots', 'a:7:{s:8:"colormag";s:7:"/themes";s:9:"mesmerize";s:7:"/themes";s:7:"mytheme";s:7:"/themes";s:8:"noteblog";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(511, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1511967958;s:7:"checked";a:7:{s:8:"colormag";s:5:"1.2.2";s:9:"mesmerize";s:5:"1.1.0";s:7:"mytheme";s:3:"1.9";s:8:"noteblog";s:3:"0.8";s:13:"twentyfifteen";s:3:"1.9";s:15:"twentyseventeen";s:3:"1.4";s:13:"twentysixteen";s:3:"1.4";}s:8:"response";a:2:{s:9:"mesmerize";a:4:{s:5:"theme";s:9:"mesmerize";s:11:"new_version";s:5:"1.1.2";s:3:"url";s:39:"https://wordpress.org/themes/mesmerize/";s:7:"package";s:57:"https://downloads.wordpress.org/theme/mesmerize.1.1.2.zip";}s:8:"noteblog";a:4:{s:5:"theme";s:8:"noteblog";s:11:"new_version";s:3:"0.9";s:3:"url";s:38:"https://wordpress.org/themes/noteblog/";s:7:"package";s:54:"https://downloads.wordpress.org/theme/noteblog.0.9.zip";}}s:12:"translations";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=177 ;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(57, 25, '_edit_last', '1'),
(58, 25, '_edit_lock', '1511461134:1'),
(59, 26, '_wp_attached_file', '2017/11/Chrysanthemum.jpg'),
(60, 26, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:768;s:4:"file";s:25:"2017/11/Chrysanthemum.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"Chrysanthemum-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"Chrysanthemum-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:25:"Chrysanthemum-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:26:"Chrysanthemum-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:25:"Chrysanthemum-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:6:"Corbis";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1205503166";s:9:"copyright";s:32:"© Corbis.  All Rights Reserved.";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 25, '_thumbnail_id', '26'),
(64, 25, '_wp_old_slug', '%d0%bf%d0%b5%d1%80%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d0%b0%d1%82%d1%8c%d1%8f'),
(66, 28, '_menu_item_type', 'custom'),
(67, 28, '_menu_item_menu_item_parent', '0'),
(68, 28, '_menu_item_object_id', '28'),
(69, 28, '_menu_item_object', 'custom'),
(70, 28, '_menu_item_target', ''),
(71, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(72, 28, '_menu_item_xfn', ''),
(73, 28, '_menu_item_url', '/'),
(75, 29, '_menu_item_type', 'taxonomy'),
(76, 29, '_menu_item_menu_item_parent', '0'),
(77, 29, '_menu_item_object_id', '1'),
(78, 29, '_menu_item_object', 'category'),
(79, 29, '_menu_item_target', ''),
(80, 29, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 29, '_menu_item_xfn', ''),
(82, 29, '_menu_item_url', ''),
(84, 30, '_menu_item_type', 'taxonomy'),
(85, 30, '_menu_item_menu_item_parent', '0'),
(86, 30, '_menu_item_object_id', '2'),
(87, 30, '_menu_item_object', 'category'),
(88, 30, '_menu_item_target', ''),
(89, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 30, '_menu_item_xfn', ''),
(91, 30, '_menu_item_url', ''),
(93, 2, '_edit_lock', '1511364072:1'),
(94, 2, '_edit_last', '1'),
(95, 32, '_edit_last', '1'),
(96, 32, '_edit_lock', '1511365384:1'),
(97, 36, '_menu_item_type', 'post_type'),
(98, 36, '_menu_item_menu_item_parent', '0'),
(99, 36, '_menu_item_object_id', '32'),
(100, 36, '_menu_item_object', 'page'),
(101, 36, '_menu_item_target', ''),
(102, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 36, '_menu_item_xfn', ''),
(104, 36, '_menu_item_url', ''),
(106, 37, '_menu_item_type', 'post_type'),
(107, 37, '_menu_item_menu_item_parent', '0'),
(108, 37, '_menu_item_object_id', '2'),
(109, 37, '_menu_item_object', 'page'),
(110, 37, '_menu_item_target', ''),
(111, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 37, '_menu_item_xfn', ''),
(113, 37, '_menu_item_url', ''),
(115, 39, '_form', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit "Отправить"]'),
(116, 39, '_mail', 'a:8:{s:7:"subject";s:26:"mytestweb "[your-subject]"";s:6:"sender";s:46:"[your-name] <wordpress@mytestwebwp123.onenv.ru>";s:4:"body";s:201:"От: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта mytestweb (http://mytestwebwp123.onenv.ru)";s:9:"recipient";s:19:"ivanovich_a@mail.ru";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(117, 39, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:26:"mytestweb "[your-subject]"";s:6:"sender";s:44:"mytestweb <wordpress@mytestwebwp123.onenv.ru>";s:4:"body";s:142:"Сообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта mytestweb (http://mytestwebwp123.onenv.ru)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:29:"Reply-To: ivanovich_a@mail.ru";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(118, 39, '_messages', 'a:8:{s:12:"mail_sent_ok";s:92:"Спасибо за Ваше сообщение. Оно успешно отправлено.";s:12:"mail_sent_ng";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:16:"validation_error";s:180:"Одно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.";s:4:"spam";s:144:"При отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.";s:12:"accept_terms";s:132:"Вы должны принять условия и положения перед отправкой вашего сообщения.";s:16:"invalid_required";s:60:"Поле обязательно для заполнения.";s:16:"invalid_too_long";s:39:"Поле слишком длинное.";s:17:"invalid_too_short";s:41:"Поле слишком короткое.";}'),
(119, 39, '_additional_settings', NULL),
(120, 39, '_locale', 'ru_RU'),
(121, 32, '_yoast_wpseo_content_score', '60'),
(122, 41, '_edit_last', '1'),
(123, 41, '_edit_lock', '1511462838:1'),
(124, 42, '_wp_attached_file', '2017/11/Статья-2.jpg'),
(125, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:250;s:6:"height";i:200;s:4:"file";s:26:"2017/11/Статья-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Статья-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:26:"Статья-2-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(126, 41, '_thumbnail_id', '42'),
(128, 41, '_yoast_wpseo_content_score', '30'),
(129, 41, '_yoast_wpseo_primary_category', '2'),
(130, 44, '_edit_last', '1'),
(131, 44, '_edit_lock', '1511461311:1'),
(132, 45, '_wp_attached_file', '2017/11/статья-3.jpg'),
(133, 45, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:1200;s:4:"file";s:26:"2017/11/статья-3.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"статья-3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"статья-3-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:26:"статья-3-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:27:"статья-3-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}s:30:"twentyseventeen-featured-image";a:4:{s:4:"file";s:28:"статья-3-1920x1200.jpg";s:5:"width";i:1920;s:6:"height";i:1200;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:26:"статья-3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(134, 44, '_thumbnail_id', '45'),
(135, 44, '_yoast_wpseo_content_score', '60'),
(136, 44, '_yoast_wpseo_primary_category', '2'),
(138, 44, '_oembed_406e8e539d2514bf7273d66ccde56011', '<iframe width="640" height="360" src="https://www.youtube.com/embed/zAu07_uNdmw?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(139, 44, '_oembed_time_406e8e539d2514bf7273d66ccde56011', '1511460130'),
(144, 44, '_oembed_c313c9d4763d7a1ab0114fc2d138a3d0', '<iframe width="525" height="295" src="https://www.youtube.com/embed/zAu07_uNdmw?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(145, 44, '_oembed_time_c313c9d4763d7a1ab0114fc2d138a3d0', '1511460436'),
(146, 50, '_wp_attached_file', '2017/11/38647_Probass_Hardi-I.mp3'),
(147, 51, '_wp_attached_file', '2017/11/38647_Probass_Hardi-I-mp3-image.jpg'),
(148, 51, '_cover_hash', '731f805f022595d897704fb7f8f6dfff'),
(149, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:1024;s:4:"file";s:43:"2017/11/38647_Probass_Hardi-I-mp3-image.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:43:"38647_Probass_Hardi-I-mp3-image-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:43:"38647_Probass_Hardi-I-mp3-image-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:43:"38647_Probass_Hardi-I-mp3-image-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:32:"twentyseventeen-thumbnail-avatar";a:4:{s:4:"file";s:43:"38647_Probass_Hardi-I-mp3-image-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(150, 50, '_thumbnail_id', '51'),
(151, 50, '_wp_attachment_metadata', 'a:25:{s:10:"dataformat";s:3:"mp3";s:8:"channels";i:2;s:11:"sample_rate";i:44100;s:7:"bitrate";d:320030.43341110367;s:11:"channelmode";s:6:"stereo";s:12:"bitrate_mode";s:3:"vbr";s:8:"lossless";b:0;s:15:"encoder_options";s:3:"VBR";s:17:"compression_ratio";d:0.22677893524029455;s:10:"fileformat";s:3:"mp3";s:8:"filesize";i:11157084;s:9:"mime_type";s:10:"audio/mpeg";s:6:"length";i:274;s:16:"length_formatted";s:4:"4:34";s:7:"comment";s:16:"[mp3bass.online]";s:5:"album";s:16:"[mp3bass.online]";s:8:"composer";s:16:"[mp3bass.online]";s:17:"copyright_message";s:16:"[mp3bass.online]";s:5:"title";s:36:"Indy (Extended Mix) [mp3bass.online]";s:6:"artist";s:19:"Probass &amp; Hardi";s:4:"band";s:16:"[mp3bass.online]";s:9:"publisher";s:16:"[mp3bass.online]";s:20:"unsynchronised_lyric";s:16:"[mp3bass.online]";s:8:"url_user";s:16:"[mp3bass.online]";s:5:"image";a:3:{s:4:"mime";s:10:"image/jpeg";s:5:"width";i:1024;s:6:"height";i:1024;}}'),
(152, 49, '_edit_last', '1'),
(153, 49, '_edit_lock', '1511800663:1'),
(154, 49, '_yoast_wpseo_content_score', '60'),
(155, 49, '_yoast_wpseo_primary_category', '2'),
(159, 59, '_edit_lock', '1511462223:1'),
(160, 59, '_wp_trash_meta_status', 'publish'),
(161, 59, '_wp_trash_meta_time', '1511462224'),
(162, 60, '_edit_lock', '1511462428:1'),
(163, 60, '_wp_trash_meta_status', 'publish'),
(164, 60, '_wp_trash_meta_time', '1511462429'),
(165, 44, '_oembed_f4fe22e5f7acf986bd7215709fbd0a96', '<iframe width="800" height="450" src="https://www.youtube.com/embed/zAu07_uNdmw?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(166, 44, '_oembed_time_f4fe22e5f7acf986bd7215709fbd0a96', '1511462487'),
(170, 49, 'enclosure', 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3\r\n11157084\r\naudio/mpeg\r\n'),
(171, 49, 'enclosure', 'http://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n8662477\r\naudio/mpeg\r\n'),
(172, 49, 'enclosure', 'http://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3\r\n9145338\r\naudio/mpeg\r\n'),
(173, 49, '_thumbnail_id', '51'),
(175, 44, '_oembed_9ab891de5db4277f11c21431e4b84ad2', '<iframe width="500" height="281" src="https://www.youtube.com/embed/zAu07_uNdmw?feature=oembed" frameborder="0" gesture="media" allowfullscreen></iframe>'),
(176, 44, '_oembed_time_9ab891de5db4277f11c21431e4b84ad2', '1511798035');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=63 ;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-11-17 19:16:01', '2017-11-17 16:16:01', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2017-11-17 19:16:01', '2017-11-17 16:16:01', '', 0, 'http://mytestwebwp123.onenv.ru/?p=1', 0, 'post', '', 1),
(2, 1, '2017-11-17 19:16:01', '2017-11-17 16:16:01', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://mytestwebwp123.onenv.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'О нас', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-11-22 18:23:32', '2017-11-22 15:23:32', '', 0, 'http://mytestwebwp123.onenv.ru/?page_id=2', 0, 'page', '', 0),
(25, 1, '2017-11-17 20:25:35', '2017-11-17 17:25:35', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот. Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни.<!--more-->\r\n\r\nОднажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку. Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: «В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка «и». Возвращайся ты лучше в свою безопасную страну». Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель', 'Первая статья', '', 'publish', 'open', 'open', '', 'pervaya-statya', '', '', '2017-11-17 20:39:43', '2017-11-17 17:39:43', '', 0, 'http://mytestwebwp123.onenv.ru/?p=25', 0, 'post', '', 0),
(26, 1, '2017-11-17 20:25:22', '2017-11-17 17:25:22', '', 'Chrysanthemum', '', 'inherit', 'open', 'closed', '', 'chrysanthemum', '', '', '2017-11-17 20:25:22', '2017-11-17 17:25:22', '', 25, 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/Chrysanthemum.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2017-11-17 20:25:29', '2017-11-17 17:25:29', 'Далеко-далеко за словесными горами в стране гласных и согласных живут рыбные тексты. Вдали от всех живут они в буквенных домах на берегу Семантика большого языкового океана. Маленький ручеек Даль журчит по всей стране и обеспечивает ее всеми необходимыми правилами. Эта парадигматическая страна, в которой жаренные члены предложения залетают прямо в рот. Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни.<!--more-->\r\n\r\nОднажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку. Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: «В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка «и». Возвращайся ты лучше в свою безопасную страну». Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель', 'Первая статья', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2017-11-17 20:25:29', '2017-11-17 17:25:29', '', 25, 'http://mytestwebwp123.onenv.ru/2017/11/17/25-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-11-22 18:18:18', '2017-11-22 15:18:18', '', 'Главная', '', 'publish', 'closed', 'closed', '', 'glavnaya', '', '', '2017-11-24 20:41:35', '2017-11-24 17:41:35', '', 0, 'http://mytestwebwp123.onenv.ru/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2017-11-22 18:18:18', '2017-11-22 15:18:18', '', 'Рубрика', '', 'publish', 'closed', 'closed', '', 'rubrika', '', '', '2017-11-24 20:41:35', '2017-11-24 17:41:35', '', 0, 'http://mytestwebwp123.onenv.ru/?p=29', 2, 'nav_menu_item', '', 0),
(30, 1, '2017-11-22 18:18:18', '2017-11-22 15:18:18', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2017-11-24 20:41:35', '2017-11-24 17:41:35', '', 0, 'http://mytestwebwp123.onenv.ru/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2017-11-22 18:23:32', '2017-11-22 15:23:32', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице «Детали» владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\r\n<blockquote>Привет! Днём я курьер, а вечером — подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\r\n...или так:\r\n<blockquote>Компания «Штучки XYZ» была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\r\nПерейдите <a href="http://mytestwebwp123.onenv.ru/wp-admin/">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'О нас', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2017-11-22 18:23:32', '2017-11-22 15:23:32', '', 2, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/2-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-11-22 18:24:20', '2017-11-22 15:24:20', 'г. Ффыфыа ул. Яаыыаы\r\n\r\nтел. 84864432\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d18804.418218567014!2d30.338918650000004!3d53.90416135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sby!4v1511364454831" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n[contact-form-7 id="39" title="Контактная форма 1"]', 'Контакты', '', 'publish', 'closed', 'closed', '', 'kontakty', '', '', '2017-11-22 18:42:32', '2017-11-22 15:42:32', '', 0, 'http://mytestwebwp123.onenv.ru/?page_id=32', 0, 'page', '', 0),
(33, 1, '2017-11-22 18:24:20', '2017-11-22 15:24:20', 'г. Ффыфыа ул. Яаыыаы\r\n\r\nтел. 84864432', 'Контакты', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-22 18:24:20', '2017-11-22 15:24:20', '', 32, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-11-22 18:34:24', '2017-11-22 15:34:24', 'г. Ффыфыа ул. Яаыыаы\n\nтел. 84864432\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d18804.418218567014!2d30.338918650000004!3d53.90416135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sby!4v1511364454831" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '32-autosave-v1', '', '', '2017-11-22 18:34:24', '2017-11-22 15:34:24', '', 32, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/32-autosave-v1/', 0, 'revision', '', 0),
(35, 1, '2017-11-22 18:28:13', '2017-11-22 15:28:13', 'г. Ффыфыа ул. Яаыыаы\r\n\r\nтел. 84864432\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d18804.418218567014!2d30.338918650000004!3d53.90416135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sby!4v1511364454831" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-22 18:28:13', '2017-11-22 15:28:13', '', 32, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/32-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2017-11-22 18:29:24', '2017-11-22 15:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2017-11-24 20:41:35', '2017-11-24 17:41:35', '', 0, 'http://mytestwebwp123.onenv.ru/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2017-11-22 18:29:24', '2017-11-22 15:29:24', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2017-11-24 20:41:35', '2017-11-24 17:41:35', '', 0, 'http://mytestwebwp123.onenv.ru/?p=37', 5, 'nav_menu_item', '', 0),
(38, 1, '2017-11-22 18:34:39', '2017-11-22 15:34:39', 'г. Ффыфыа ул. Яаыыаы\r\n\r\nтел. 84864432\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d18804.418218567014!2d30.338918650000004!3d53.90416135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sby!4v1511364454831" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'Контакты', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-22 18:34:39', '2017-11-22 15:34:39', '', 32, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/32-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2017-11-22 18:35:50', '2017-11-22 15:35:50', '<label> Ваше имя (обязательно)\n    [text* your-name] </label>\n\n<label> Ваш e-mail (обязательно)\n    [email* your-email] </label>\n\n<label> Тема\n    [text your-subject] </label>\n\n<label> Сообщение\n    [textarea your-message] </label>\n\n[submit "Отправить"]\nmytestweb "[your-subject]"\n[your-name] <wordpress@mytestwebwp123.onenv.ru>\nОт: [your-name] <[your-email]>\nТема: [your-subject]\n\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта mytestweb (http://mytestwebwp123.onenv.ru)\nivanovich_a@mail.ru\nReply-To: [your-email]\n\n0\n0\n\nmytestweb "[your-subject]"\nmytestweb <wordpress@mytestwebwp123.onenv.ru>\nСообщение:\n[your-message]\n\n-- \nЭто сообщение отправлено с сайта mytestweb (http://mytestwebwp123.onenv.ru)\n[your-email]\nReply-To: ivanovich_a@mail.ru\n\n0\n0\nСпасибо за Ваше сообщение. Оно успешно отправлено.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nОдно или несколько полей содержат ошибочные данные. Пожалуйста, проверьте их и попробуйте ещё раз.\nПри отправке сообщения произошла ошибка. Пожалуйста, попробуйте ещё раз позже.\nВы должны принять условия и положения перед отправкой вашего сообщения.\nПоле обязательно для заполнения.\nПоле слишком длинное.\nПоле слишком короткое.', 'Контактная форма 1', '', 'publish', 'closed', 'closed', '', 'kontaktnaya-forma-1', '', '', '2017-11-22 18:35:50', '2017-11-22 15:35:50', '', 0, 'http://mytestwebwp123.onenv.ru/?post_type=wpcf7_contact_form&p=39', 0, 'wpcf7_contact_form', '', 0),
(40, 1, '2017-11-22 18:42:32', '2017-11-22 15:42:32', 'г. Ффыфыа ул. Яаыыаы\r\n\r\nтел. 84864432\r\n<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d18804.418218567014!2d30.338918650000004!3d53.90416135!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2sby!4v1511364454831" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>\r\n[contact-form-7 id="39" title="Контактная форма 1"]', 'Контакты', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-11-22 18:42:32', '2017-11-22 15:42:32', '', 32, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/32-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2017-11-23 20:50:36', '2017-11-23 17:50:36', 'Было нас, воспользоваться никого некое — какими — пользы по приносило когда действительно. Зодчим перед, это справедливости, иной никаких — нас немалое мог простейшим порицающих обстоятельства было заниматься, потому страдание и чтобы немалое зодчим. Обстоятельства из никого справедливости что собой eсли с некое, тех ни примером.\r\n\r\nЭтот с: нет никаких собой вы постигают отвергает зодчим отвергает этот возжаждал не упражнениями это возжаждал ни стал: вами — наслаждений великие, возникают.<!--more--> Eсли кто вы умеет воспользоваться порицающих заниматься, возжаждал превратное чтобы никакого стремящегося некоей избегал стремящегося, иной примером людей. Говорил по eсли: с картину собой, которого eсли картину я которое раскрою страдание физическими истину раскрою из-за наслаждению а нас некоей приносят. Поняли восхваляющих, пользы: нет если собой, из лишь и, стал было предпочел тех, с, отвергает вами зодчим. Разумно великие возлюбил назвал презирает нет приносят кто: заниматься раскрою воспользоваться этот действительно разумно стремящегося раскрою приносило которое равно иной, великие разумно. Иной умеет упражнениями вами обстоятельства разумно: великие которого действительно по наслаждение приносят только то человек назвал именно — никаких именно никого примером раскрою. Возлюбил боль такого возникает простейшим это равно если: тех человек вами, справедливости: но потому людей стал было картину лишь вы приносило.\r\nЧто за: с обстоятельства предаваться не наслаждений людей, несло только картину раз презирает избегал картину того людей такого картину потому наслаждений. Упрекнуть презирает возлюбил человек за, жизни бы упражнениями — обстоятельства чтобы людей или предаваться, возжаждал. Собой представление — наслаждение с само с назвал но отвергает никого потому из-за за из-за. Мог, вами никаких именно само избегает открывший и потому такие, приносят вы нас некоей страдание, из-за страдание представление когда упражнениями. Потому никого когда само: потому не когда возлюбил, раскрою упражнениями, представление откуда разумно порицающих упражнениями лишь что вами умеет кто. Возникает физическими примером превратное, как никого, именно истину, примером: а назвал или то простейшим чтобы ни кто — великие стремящегося, если вы действительно откуда.\r\nПредаваться никто, чтобы наслаждения умеет немалое как я раскрою с этот: страдания предаваться превратное только возникает немалое. Собой физическими бы действительно, стремящегося, из-за избегал обстоятельства — великие именно бы людей человек чтобы. За раскрою пользы назвал это я чтобы это я нас приносило. Разъясню такие тягостными стал ни простейшим отвергает что назвал говорил и, возлюбил неприятностей примером, страдания иной. Назвал потому людей разъясню назвал — было, воспользоваться потому поняли, из справедливости предаваться, было иной постигают. А всю иной действительно заниматься нет отвергает физическими разъясню наслаждение некоей с справедливости именно человек жизни постигают пользы приносят возлюбил такого, никаких. Возникает перед справедливости мог которого справедливости, примером откуда избегает справедливости упрекнуть говорил постигают, говорил.\r\nНазвал лишь разумно превратное приносят счастливой возжаждал порицающих: страдание или такого вы представление предаваться примером. Того откуда кто, стремящегося некое которого ни того воспользоваться: постигают физическими или наслаждению пользы наслаждения картину это такого простейшим разъясню примером какими. Именно иной страдание нас что когда откуда не это людей обстоятельства раскрою возлюбил по избегал некоей: возникают, презирает именно.', 'Вторая статья', '', 'publish', 'open', 'open', '', 'vtoraya-statya', '', '', '2017-11-23 21:49:12', '2017-11-23 18:49:12', '', 0, 'http://mytestwebwp123.onenv.ru/?p=41', 0, 'post', '', 0),
(42, 1, '2017-11-23 20:49:37', '2017-11-23 17:49:37', '', 'Статья 2', '', 'inherit', 'open', 'closed', '', 'statya-2', '', '', '2017-11-23 20:49:37', '2017-11-23 17:49:37', '', 41, 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/Статья-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2017-11-23 20:50:36', '2017-11-23 17:50:36', 'Было нас, воспользоваться никого некое — какими — пользы по приносило когда действительно. Зодчим перед, это справедливости, иной никаких — нас немалое мог простейшим порицающих обстоятельства было заниматься, потому страдание и чтобы немалое зодчим. Обстоятельства из никого справедливости что собой eсли с некое, тех ни примером.\r\n<!--more-->\r\nЭтот с: нет никаких собой вы постигают отвергает зодчим отвергает этот возжаждал не упражнениями это возжаждал ни стал: вами — наслаждений великие, возникают. Eсли кто вы умеет воспользоваться порицающих заниматься, возжаждал превратное чтобы никакого стремящегося некоей избегал стремящегося, иной примером людей. Говорил по eсли: с картину собой, которого eсли картину я которое раскрою страдание физическими истину раскрою из-за наслаждению а нас некоей приносят. Поняли восхваляющих, пользы: нет если собой, из лишь и, стал было предпочел тех, с, отвергает вами зодчим. Разумно великие возлюбил назвал презирает нет приносят кто: заниматься раскрою воспользоваться этот действительно разумно стремящегося раскрою приносило которое равно иной, великие разумно. Иной умеет упражнениями вами обстоятельства разумно: великие которого действительно по наслаждение приносят только то человек назвал именно — никаких именно никого примером раскрою. Возлюбил боль такого возникает простейшим это равно если: тех человек вами, справедливости: но потому людей стал было картину лишь вы приносило.\r\nЧто за: с обстоятельства предаваться не наслаждений людей, несло только картину раз презирает избегал картину того людей такого картину потому наслаждений. Упрекнуть презирает возлюбил человек за, жизни бы упражнениями — обстоятельства чтобы людей или предаваться, возжаждал. Собой представление — наслаждение с само с назвал но отвергает никого потому из-за за из-за. Мог, вами никаких именно само избегает открывший и потому такие, приносят вы нас некоей страдание, из-за страдание представление когда упражнениями. Потому никого когда само: потому не когда возлюбил, раскрою упражнениями, представление откуда разумно порицающих упражнениями лишь что вами умеет кто. Возникает физическими примером превратное, как никого, именно истину, примером: а назвал или то простейшим чтобы ни кто — великие стремящегося, если вы действительно откуда.\r\nПредаваться никто, чтобы наслаждения умеет немалое как я раскрою с этот: страдания предаваться превратное только возникает немалое. Собой физическими бы действительно, стремящегося, из-за избегал обстоятельства — великие именно бы людей человек чтобы. За раскрою пользы назвал это я чтобы это я нас приносило. Разъясню такие тягостными стал ни простейшим отвергает что назвал говорил и, возлюбил неприятностей примером, страдания иной. Назвал потому людей разъясню назвал — было, воспользоваться потому поняли, из справедливости предаваться, было иной постигают. А всю иной действительно заниматься нет отвергает физическими разъясню наслаждение некоей с справедливости именно человек жизни постигают пользы приносят возлюбил такого, никаких. Возникает перед справедливости мог которого справедливости, примером откуда избегает справедливости упрекнуть говорил постигают, говорил.\r\nНазвал лишь разумно превратное приносят счастливой возжаждал порицающих: страдание или такого вы представление предаваться примером. Того откуда кто, стремящегося некое которого ни того воспользоваться: постигают физическими или наслаждению пользы наслаждения картину это такого простейшим разъясню примером какими. Именно иной страдание нас что когда откуда не это людей обстоятельства раскрою возлюбил по избегал некоей: возникают, презирает именно.', 'Вторая статья', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-11-23 20:50:36', '2017-11-23 17:50:36', '', 41, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2017-11-23 21:01:05', '2017-11-23 18:01:05', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.\r\n\r\n<!--more-->\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.\r\n\r\nhttps://youtu.be/zAu07_uNdmw', 'Третья статья', '', 'publish', 'open', 'open', '', 'tretya-statya', '', '', '2017-11-23 21:24:10', '2017-11-23 18:24:10', '', 0, 'http://mytestwebwp123.onenv.ru/?p=44', 0, 'post', '', 0),
(45, 1, '2017-11-23 20:59:49', '2017-11-23 17:59:49', '', 'статья 3', '', 'inherit', 'open', 'closed', '', 'statya-3', '', '', '2017-11-23 20:59:49', '2017-11-23 17:59:49', '', 44, 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/статья-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2017-11-23 21:00:37', '2017-11-23 18:00:37', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-23 21:00:37', '2017-11-23 18:00:37', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2017-11-23 21:01:05', '2017-11-23 18:01:05', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.&lt;!--more--&gt;\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-23 21:01:05', '2017-11-23 18:01:05', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2017-11-23 21:02:14', '2017-11-23 18:02:14', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.&lt;!--more--&gt;\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.\r\n\r\nhttps://youtu.be/zAu07_uNdmw', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-23 21:02:14', '2017-11-23 18:02:14', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2017-11-24 00:00:14', '2017-11-23 21:00:14', 'ТОП 3 новинки музыки с  <a href="http://zaycev-tut.me/">zaycev-tut.me</a>\r\n\r\n<!--more-->\r\n\r\nPROBASS &amp; HERDI -INDY (EXTENDED MIX)\r\n\r\n[audio mp3="http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3"][/audio]\r\n\r\n<b>Lucaveros</b> - Накроет волной (morfin)\r\n\r\nhttp://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n\r\n<b>Lucaveros</b> - Не сближает...\r\n\r\nhttp://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 'Четвертая статья', '', 'publish', 'open', 'open', '', 'chetvertaya-statya', '', '', '2017-11-24 18:04:00', '2017-11-24 15:04:00', '', 0, 'http://mytestwebwp123.onenv.ru/?p=49', 0, 'post', '', 0),
(50, 1, '2017-11-23 21:11:06', '2017-11-23 18:11:06', '«Indy (Extended Mix) [mp3bass.online]» из альбома «[mp3bass.online]» исполнителя Probass &amp; Hardi.', 'Indy (Extended Mix) [mp3bass.online]', '', 'inherit', 'open', 'closed', '', 'indy-extended-mix-mp3bass-online', '', '', '2017-11-23 21:11:09', '2017-11-23 18:11:09', '', 49, 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3', 0, 'attachment', 'audio/mpeg', 0),
(51, 1, '2017-11-23 21:11:06', '2017-11-23 18:11:06', '', '', '', 'inherit', 'open', 'closed', '', '51', '', '', '2017-11-23 21:11:06', '2017-11-23 18:11:06', '', 0, 'http://mytestwebwp123.onenv.ru/51/', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2017-11-23 21:18:54', '2017-11-23 18:18:54', 'ТОП 3 новинки музыки с  <a href="http://zaycev-tut.me/">zaycev-tut.me</a>\r\n\r\nPROBASS &amp; HERDI -INDY (EXTENDED MIX)\r\n\r\n[audio mp3="http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3"][/audio]\r\n\r\n<b>Lucaveros</b> - Накроет волной (morfin)\r\n\r\nhttp://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n\r\n<b>Lucaveros</b> - Не сближает...\r\n\r\nhttp://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 'Четвертая статья', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-23 21:18:54', '2017-11-23 18:18:54', '', 49, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/49-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2017-11-23 21:19:50', '2017-11-23 18:19:50', 'ТОП 3 новинки музыки с  <a href="http://zaycev-tut.me/">zaycev-tut.me</a> &lt;!--more--&gt;\r\n\r\nPROBASS &amp; HERDI -INDY (EXTENDED MIX)\r\n\r\n[audio mp3="http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3"][/audio]\r\n\r\n<b>Lucaveros</b> - Накроет волной (morfin)\r\n\r\nhttp://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n\r\n<b>Lucaveros</b> - Не сближает...\r\n\r\nhttp://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 'Четвертая статья', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-23 21:19:50', '2017-11-23 18:19:50', '', 49, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/49-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(54, 1, '2017-11-23 21:21:06', '2017-11-23 18:21:06', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.\n\n&lt;!---more--&gt;\n\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\n\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.\n\nhttps://youtu.be/zAu07_uNdmw', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-autosave-v1', '', '', '2017-11-23 21:21:06', '2017-11-23 18:21:06', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2017-11-23 21:21:08', '2017-11-23 18:21:08', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.\r\n\r\n&lt;!---more--&gt;\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.\r\n\r\nhttps://youtu.be/zAu07_uNdmw', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-23 21:21:08', '2017-11-23 18:21:08', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2017-11-23 21:21:13', '2017-11-23 18:21:13', 'ТОП 3 новинки музыки с  <a href="http://zaycev-tut.me/">zaycev-tut.me</a>\r\n\r\n&lt;!--more--&gt;\r\n\r\nPROBASS &amp; HERDI -INDY (EXTENDED MIX)\r\n\r\n[audio mp3="http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3"][/audio]\r\n\r\n<b>Lucaveros</b> - Накроет волной (morfin)\r\n\r\nhttp://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n\r\n<b>Lucaveros</b> - Не сближает...\r\n\r\nhttp://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 'Четвертая статья', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-23 21:21:13', '2017-11-23 18:21:13', '', 49, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/49-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2017-11-23 21:24:00', '2017-11-23 18:24:00', 'ТОП 3 новинки музыки с  <a href="http://zaycev-tut.me/">zaycev-tut.me</a>\r\n\r\n<!--more-->\r\n\r\nPROBASS &amp; HERDI -INDY (EXTENDED MIX)\r\n\r\n[audio mp3="http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3"][/audio]\r\n\r\n<b>Lucaveros</b> - Накроет волной (morfin)\r\n\r\nhttp://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3\r\n\r\n<b>Lucaveros</b> - Не сближает...\r\n\r\nhttp://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 'Четвертая статья', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2017-11-23 21:24:00', '2017-11-23 18:24:00', '', 49, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/49-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2017-11-23 21:24:10', '2017-11-23 18:24:10', 'Никакие приметных оптических и остатками газовой материи после открытия. Поскольку слабых галактик очень близкие звезды, расстояния которых опровергается. Источников экватора и сверхновых звезд в первые годы. Исключением явилось лишь слабые галактики и была выдвинута гипотеза. Радиозвезды, существование которых опровергается, как только галактики тоже будет. Полосе около галактического экватора. Называемых радиозвездах небе близко друг. Величины, никак не показывала никакой связи с газовыми туманностями.\r\n\r\n<!--more-->\r\n\r\nКвадратных минут которого достаточно сильное отдано много и распределенных по всему. Правило, наблюдались лишь солнце, радиоизлучение доходит беспрепятственно концентрацию к. Второй группы могли бы при сопоставлении галактик. Низкой точностью межзвездная среда прозрачна, радиоизлучение доходит беспрепятственно ожидает участь неотождествимости радиозвезды. Которого достаточно сильное одна из слабым останется. Обнаруживалось странное положение источника радиоизлучения состоит. Площадке ярких оптических объектов нет, а доля оптического излучения.\r\n\r\nМеньше толщины галактики, не об­наруживают галактической концентрации этих источников определяется. Галактики, так как мы указывали. Поскольку слабых объектов очень много, и была выдвинута. Никакой связи с низкой точностью оптическое излучение будет понятно. Целой площадке, содержащей десятки квадратных минут изучение распределения. Сила радиотелескопов неве­лика, все действующие точечные радиоисточники слились бы быть. Материи после открытия дискретных источников. Тщетности попыток отождествления и нельзя решить, какой именно из источников, располагающихся.\r\n\r\nhttps://youtu.be/zAu07_uNdmw', 'Третья статья', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2017-11-23 21:24:10', '2017-11-23 18:24:10', '', 44, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/44-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2017-11-23 21:37:03', '2017-11-23 18:37:03', '{\n    "mesmerize::header_slideshow": {\n        "value": "%5B%7B%22url%22:%22http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide1.jpg%22%7D,%7B%22url%22:%22http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide2.jpg%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:28:17"\n    },\n    "mesmerize::inner_header_slideshow": {\n        "value": "%5B%7B%22url%22:%22http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide1.jpg%22%7D,%7B%22url%22:%22http://mytestwebwp123.onenv.ru/wp-content/themes/mesmerize/assets/images/slideshow_slide2.jpg%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:28:17"\n    },\n    "mesmerize::header_content_buttons": {\n        "value": "%5B%7B%22label%22:%22%D0%9A%D0%BD%D0%BE%D0%BF%D0%BA%D0%B0%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%201%22,%22url%22:%22#%22,%22target%22:%22_self%22,%22class%22:%22button%20big%20color1%20round%22%7D,%7B%22label%22:%22%D0%9A%D0%BD%D0%BE%D0%BF%D0%BA%D0%B0%20%D0%B4%D0%B5%D0%B9%D1%81%D1%82%D0%B2%D0%B8%D1%8F%202%22,%22url%22:%22#%22,%22target%22:%22_self%22,%22class%22:%22button%20big%20color-white%20round%20outline%22%7D%5D",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:28:17"\n    },\n    "mesmerize::footer_template": {\n        "value": "contact-boxes",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:35:33"\n    },\n    "sidebars_widgets[sidebar-1]": {\n        "value": [\n            "search-2",\n            "recent-posts-2",\n            "recent-comments-2",\n            "archives-2",\n            "categories-2",\n            "meta-4"\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:30:32"\n    },\n    "widget_meta[4]": {\n        "value": [\n\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:30:32"\n    },\n    "nav_menu_item[-6643368811825480000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:32:33"\n    },\n    "nav_menu_item[-1952570378409748500]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:31:32"\n    },\n    "nav_menu_item[-6030760009874391000]": {\n        "value": false,\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:31:32"\n    },\n    "nav_menu_item[28]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 28,\n            "object": "custom",\n            "type": "custom",\n            "type_label": "\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430",\n            "title": "\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f",\n            "url": "/",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 3,\n            "position": 1,\n            "status": "publish",\n            "original_title": "",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:32:33"\n    },\n    "nav_menu_item[29]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 1,\n            "object": "category",\n            "type": "taxonomy",\n            "type_label": "\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430",\n            "url": "http://mytestwebwp123.onenv.ru/category/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/",\n            "title": "\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 3,\n            "position": 2,\n            "status": "publish",\n            "original_title": "\\u0411\\u0435\\u0437 \\u0440\\u0443\\u0431\\u0440\\u0438\\u043a\\u0438",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:32:33"\n    },\n    "nav_menu_item[30]": {\n        "value": {\n            "menu_item_parent": 0,\n            "object_id": 2,\n            "object": "category",\n            "type": "taxonomy",\n            "type_label": "\\u0420\\u0443\\u0431\\u0440\\u0438\\u043a\\u0430",\n            "url": "http://mytestwebwp123.onenv.ru/category/stati/",\n            "title": "",\n            "target": "",\n            "attr_title": "",\n            "description": "",\n            "classes": "",\n            "xfn": "",\n            "nav_menu_term_id": 3,\n            "position": 3,\n            "status": "publish",\n            "original_title": "\\u0421\\u0442\\u0430\\u0442\\u044c\\u0438",\n            "_invalid": false\n        },\n        "type": "nav_menu_item",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:32:33"\n    },\n    "widget_archives[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MTt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "e919f876325dedf7063e7ca2be690190"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:33:33"\n    },\n    "widget_categories[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTo0OntzOjU6InRpdGxlIjtzOjA6IiI7czo1OiJjb3VudCI7aTowO3M6MTI6ImhpZXJhcmNoaWNhbCI7aTowO3M6ODoiZHJvcGRvd24iO2k6MTt9",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "6f8b82d321c73319532699110cab4f07"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:33:33"\n    },\n    "widget_recent-posts[2]": {\n        "value": {\n            "encoded_serialized_instance": "YTozOntzOjU6InRpdGxlIjtzOjA6IiI7czo2OiJudW1iZXIiO2k6NTtzOjk6InNob3dfZGF0ZSI7YjoxO30=",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "fde6afab4918fd043ffa91c411dc5071"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:33:33"\n    },\n    "widget_search[2]": {\n        "value": {\n            "encoded_serialized_instance": "YToxOntzOjU6InRpdGxlIjtzOjA6IiI7fQ==",\n            "title": "",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "a43cccfb0d50dd9d42213e07cb43016c"\n        },\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:34:34"\n    },\n    "widget_meta[5]": {\n        "value": [\n\n        ],\n        "type": "option",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:34:34"\n    },\n    "mesmerize::footer_paralax": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:36:33"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '54cdfb72-f284-4a7c-86d1-82ca3f22b6e4', '', '', '2017-11-23 21:37:03', '2017-11-23 18:37:03', '', 0, 'http://mytestwebwp123.onenv.ru/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2017-11-23 21:40:29', '2017-11-23 18:40:29', '{\n    "mesmerize::inner_header_nav_sticked": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:38:33"\n    },\n    "mesmerize::header_offscreen_nav_on_tablet": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:40:29"\n    },\n    "mesmerize::inner_header_nav_boxed": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:39:33"\n    },\n    "mesmerize::inner_header_nav_border": {\n        "value": true,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:39:33"\n    },\n    "mesmerize::header_offscreen_nav_on_desktop": {\n        "value": false,\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2017-11-23 18:40:29"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dd33c65f-d284-4e9b-96a5-50e0fb64f00f', '', '', '2017-11-23 21:40:29', '2017-11-23 18:40:29', '', 0, 'http://mytestwebwp123.onenv.ru/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2017-11-23 21:49:12', '2017-11-23 18:49:12', 'Было нас, воспользоваться никого некое — какими — пользы по приносило когда действительно. Зодчим перед, это справедливости, иной никаких — нас немалое мог простейшим порицающих обстоятельства было заниматься, потому страдание и чтобы немалое зодчим. Обстоятельства из никого справедливости что собой eсли с некое, тех ни примером.\r\n\r\nЭтот с: нет никаких собой вы постигают отвергает зодчим отвергает этот возжаждал не упражнениями это возжаждал ни стал: вами — наслаждений великие, возникают.<!--more--> Eсли кто вы умеет воспользоваться порицающих заниматься, возжаждал превратное чтобы никакого стремящегося некоей избегал стремящегося, иной примером людей. Говорил по eсли: с картину собой, которого eсли картину я которое раскрою страдание физическими истину раскрою из-за наслаждению а нас некоей приносят. Поняли восхваляющих, пользы: нет если собой, из лишь и, стал было предпочел тех, с, отвергает вами зодчим. Разумно великие возлюбил назвал презирает нет приносят кто: заниматься раскрою воспользоваться этот действительно разумно стремящегося раскрою приносило которое равно иной, великие разумно. Иной умеет упражнениями вами обстоятельства разумно: великие которого действительно по наслаждение приносят только то человек назвал именно — никаких именно никого примером раскрою. Возлюбил боль такого возникает простейшим это равно если: тех человек вами, справедливости: но потому людей стал было картину лишь вы приносило.\r\nЧто за: с обстоятельства предаваться не наслаждений людей, несло только картину раз презирает избегал картину того людей такого картину потому наслаждений. Упрекнуть презирает возлюбил человек за, жизни бы упражнениями — обстоятельства чтобы людей или предаваться, возжаждал. Собой представление — наслаждение с само с назвал но отвергает никого потому из-за за из-за. Мог, вами никаких именно само избегает открывший и потому такие, приносят вы нас некоей страдание, из-за страдание представление когда упражнениями. Потому никого когда само: потому не когда возлюбил, раскрою упражнениями, представление откуда разумно порицающих упражнениями лишь что вами умеет кто. Возникает физическими примером превратное, как никого, именно истину, примером: а назвал или то простейшим чтобы ни кто — великие стремящегося, если вы действительно откуда.\r\nПредаваться никто, чтобы наслаждения умеет немалое как я раскрою с этот: страдания предаваться превратное только возникает немалое. Собой физическими бы действительно, стремящегося, из-за избегал обстоятельства — великие именно бы людей человек чтобы. За раскрою пользы назвал это я чтобы это я нас приносило. Разъясню такие тягостными стал ни простейшим отвергает что назвал говорил и, возлюбил неприятностей примером, страдания иной. Назвал потому людей разъясню назвал — было, воспользоваться потому поняли, из справедливости предаваться, было иной постигают. А всю иной действительно заниматься нет отвергает физическими разъясню наслаждение некоей с справедливости именно человек жизни постигают пользы приносят возлюбил такого, никаких. Возникает перед справедливости мог которого справедливости, примером откуда избегает справедливости упрекнуть говорил постигают, говорил.\r\nНазвал лишь разумно превратное приносят счастливой возжаждал порицающих: страдание или такого вы представление предаваться примером. Того откуда кто, стремящегося некое которого ни того воспользоваться: постигают физическими или наслаждению пользы наслаждения картину это такого простейшим разъясню примером какими. Именно иной страдание нас что когда откуда не это людей обстоятельства раскрою возлюбил по избегал некоей: возникают, презирает именно.', 'Вторая статья', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2017-11-23 21:49:12', '2017-11-23 18:49:12', '', 41, 'http://mytestwebwp123.onenv.ru/%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8/41-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2017-11-27 19:40:11', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-11-27 19:40:11', '0000-00-00 00:00:00', '', 0, 'http://mytestwebwp123.onenv.ru/?p=62', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Статьи', 'stati', 0),
(3, 'Главное', 'glavnoe', 0),
(4, 'наука', 'nauka', 0),
(5, 'техника', 'texnika', 0),
(6, 'Музыка', 'muzyka', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(25, 2, 0),
(28, 3, 0),
(29, 3, 0),
(30, 3, 0),
(36, 3, 0),
(37, 3, 0),
(41, 2, 0),
(44, 2, 0),
(44, 4, 0),
(44, 5, 0),
(49, 2, 0),
(49, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'post_tag', '', 0, 1),
(5, 5, 'post_tag', '', 0, 1),
(6, 6, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ivanovich_a'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:4:{s:64:"497da23cd59f1071c2e7a49ec29391617344316731153ec1fa01bb7fa920ac5e";a:4:{s:10:"expiration";i:1512572695;s:2:"ip";s:13:"185.133.42.72";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511363095;}s:64:"f88720faeaf050da8aec01aee7f834232d777d03d3e33c7a6040ead015073b29";a:4:{s:10:"expiration";i:1512581278;s:2:"ip";s:13:"185.133.42.72";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511371678;}s:64:"8a932972edbe42117abf032c15a74a07a9aa888f4fec1602063c967ef589ce3b";a:4:{s:10:"expiration";i:1511967704;s:2:"ip";s:13:"185.133.42.72";s:2:"ua";s:113:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511794904;}s:64:"ff73add73619aad6b28b831c6cfbf73649be0fca973d62d9c96f593fcf456979";a:4:{s:10:"expiration";i:1512058330;s:2:"ip";s:13:"185.133.42.72";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36";s:5:"login";i:1511885530;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '62'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:10:"37.17.29.0";}'),
(19, 1, 'closedpostboxes_post', 'a:0:{}'),
(20, 1, 'metaboxhidden_post', 'a:3:{i:0;s:16:"commentstatusdiv";i:1;s:7:"slugdiv";i:2;s:9:"authordiv";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&post_dfw=off&hidetb=0'),
(22, 1, 'wp_user-settings-time', '1511461283'),
(23, 1, 'default_password_nag', ''),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(26, 1, 'nav_menu_recently_edited', '3'),
(27, 1, 'wp_yoast_notifications', 'a:4:{i:0;a:2:{s:7:"message";s:1216:"Мы заметили, вы используете Yoast SEO  в течение некоторого времени; мы надеемся, что вы любите его! Мы были бы в восторге, если вы могли бы <a href="https://yoa.st/rate-yoast-seo?utm_content=5.8"> дать нам 5 звезд рейтинга на WordPress.org</a>!\n\nЕсли у вас возникли проблемы, <a href="https://yoa.st/bugreport?utm_content=5.8"> предоставьте отчет об ошибке </a> и мы сделаем все возможное, чтобы помочь вам.\n\nКстати, знаете ли вы, у нас также есть <a href=''https://yoa.st/premium-notification?utm_content=5.8''>Премиум плагин</a>? Он предлагает расширенные функции такие как переадресация и поддержка нескольких ключевых слов. Он поставляется с 24/7 личной поддержкой.\n\n<a class="button" href="http://mytestwebwp123.onenv.ru/wp-admin/?page=wpseo_dashboard&yoast_dismiss=upsell"> Не показывать это уведомление больше </a>";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:19:"wpseo-upsell-notice";s:5:"nonce";N;s:8:"priority";d:0.80000000000000004;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:1;a:2:{s:7:"message";s:241:"Не пропустите свои ошибки индексирования: <a href="http://mytestwebwp123.onenv.ru/wp-admin/admin.php?page=wpseo_search_console&tab=settings">подключитесь к Google Search Console здесь</a>.";s:7:"options";a:8:{s:4:"type";s:7:"warning";s:2:"id";s:17:"wpseo-dismiss-gsc";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:2;a:2:{s:7:"message";s:444:"У вас в WordPress, до сих пор установлено название сайта по умолчанию. Наверно лучше сделать его пустым, чем как сейчас. <a href="http://mytestwebwp123.onenv.ru/wp-admin/customize.php?url=http%3A%2F%2Fmytestwebwp123.onenv.ru%2Fwp-admin%2Fthemes.php%3Factivated%3Dtrue"> вы всегда можете исправить его в настройщике </a>.";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:28:"wpseo-dismiss-tagline-notice";s:5:"nonce";N;s:8:"priority";d:0.5;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}i:3;a:2:{s:7:"message";s:403:"<strong>Серьёзная проблема для SEO: Вы блокируете доступ для поисковых роботов.</strong> Вы должны <a href="http://mytestwebwp123.onenv.ru/wp-admin/options-reading.php">зайти в Настройки чтения</a> и убрать галочку рядом с пунктом "Видимость для поисковых систем".";s:7:"options";a:8:{s:4:"type";s:5:"error";s:2:"id";s:32:"wpseo-dismiss-blog-public-notice";s:5:"nonce";N;s:8:"priority";i:1;s:9:"data_json";a:0:{}s:13:"dismissal_key";N;s:12:"capabilities";s:20:"wpseo_manage_options";s:16:"capability_check";s:3:"all";}}}'),
(28, 1, '_yoast_wpseo_profile_updated', '1511885977'),
(29, 1, 'wpseo_title', ''),
(30, 1, 'wpseo_metadesc', ''),
(31, 1, 'wpseo_metakey', ''),
(32, 1, 'wpseo_excludeauthorsitemap', ''),
(33, 1, 'wpseo_content_analysis_disable', ''),
(34, 1, 'wpseo_keyword_analysis_disable', ''),
(35, 1, 'googleplus', ''),
(36, 1, 'twitter', ''),
(37, 1, 'facebook', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ivanovich_a', '$P$BT91k4hqfloZqIzviqNhmrBidY8WaU.', 'ivanovich_a', 'ivanovich_a@mail.ru', '', '2017-11-17 16:16:01', '', 0, 'ivanovich_a');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_links`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_links` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL,
  `target_post_id` bigint(20) unsigned NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `link_direction` (`post_id`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=35 ;

--
-- Дамп данных таблицы `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(31, 'http://zaycev-tut.me/', 49, 0, 'external'),
(32, 'http://mytestwebwp123.onenv.ru/wp-content/uploads/2017/11/38647_Probass_Hardi-I.mp3', 49, 0, 'internal'),
(33, 'http://zaycev-tut.me/_ld/386/38657_lucaveros-nakro.mp3', 49, 0, 'external'),
(34, 'http://zaycev-tut.me/_ld/386/38656_lucaveros-ne_sb.mp3', 49, 0, 'external');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_yoast_seo_meta`
--

CREATE TABLE IF NOT EXISTS `wp_yoast_seo_meta` (
  `object_id` bigint(20) unsigned NOT NULL,
  `internal_link_count` int(10) unsigned DEFAULT NULL,
  `incoming_link_count` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `object_id` (`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(32, 0, 0),
(41, 0, 0),
(44, 0, 0),
(49, 1, 0),
(62, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
