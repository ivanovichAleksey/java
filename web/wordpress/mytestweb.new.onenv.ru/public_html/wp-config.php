<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define('DB_NAME', ' ivanovich_a_wp');

/** Имя пользователя MySQL */
define('DB_USER', ' ivanovich_a_wp');

/** Пароль к базе данных MySQL */
define('DB_PASSWORD', 'TgkVzrsIOp');

/** Имя сервера MySQL */
define('DB_HOST', 'localhost');

/** Кодировка базы данных для создания таблиц. */
define('DB_CHARSET', 'utf8mb4');

/** Схема сопоставления. Не меняйте, если не уверены. */
define('DB_COLLATE', '');

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'xAIN]2pIhXS2XW259ynv$jWWf{C7][1t@H}Wbqj6u6@g{x|wScim}hhLpJu5~2:o');
define('SECURE_AUTH_KEY',  'pH4GjAC3t5AmUBxUN5t}IsrjCsAHE5!/_z*.;/r0z#qnjYzrp39$/{R9,6APR9LA');
define('LOGGED_IN_KEY',    'F<,DXrih1;4Cxz|@</X:{.d3TqC5>;S~bH3ai dgxX_<CIOVpn&vRLBWIJ3qze<-');
define('NONCE_KEY',        'wE$ppY$hdKzC3R+9qRrIX-%*j]qlMBv?sq9yGcPozFnw)x<ov=o7kDQRO[k|R/p)');
define('AUTH_SALT',        ' /$cp=M1oHF~$sAUQ!o{U}FGN-@ON!O)YI!ake:RlL9lt,l{.~!p.-X&?t=K]q{{');
define('SECURE_AUTH_SALT', ':Hrf-:hLF.NNYW]YxT)6>a<|AP9B>oB<B0l;w%:*!W.v I9m$PwC,v-Qked/2<:6');
define('LOGGED_IN_SALT',   'q0mbov_[Y*iNMwm cpSsQNlz#?P3po9SCz>&O%,IIA9r~nrxFvGl2n=l+1v-Nlx-');
define('NONCE_SALT',       'JqY+U45dWG-b2=>AG%h4ye1lv5}-WU,L6}xL%o(rRx~XQ[^18nZUG-qwWygbBaq%');

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix  = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Инициализирует переменные WordPress и подключает файлы. */
require_once(ABSPATH . 'wp-settings.php');
