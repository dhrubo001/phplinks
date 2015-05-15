-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2015 at 10:30 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phplinks`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Custom PHP', 1, '2015-04-06 05:13:33', '2015-04-06 05:13:33'),
(2, 'Codeigniter', 1, '2015-04-06 05:13:33', '2015-04-06 05:13:33'),
(3, 'Laravel', 1, '2015-04-06 05:13:33', '2015-04-06 05:13:33'),
(4, 'Cake PHP', 1, '2015-04-06 05:13:33', '2015-04-06 05:13:33'),
(5, 'Symphony', 1, '2015-04-06 05:13:33', '2015-04-06 05:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `link_id`, `user_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(1, 30, 11, 'Nice and usefull link , thanks :)', 1, '2015-04-07 06:00:12', '2015-04-07 06:00:12'),
(2, 30, 11, 'new comment goes here', 1, '2015-04-07 06:27:52', '2015-04-07 06:27:52'),
(3, 28, 11, 'New mesage from dhrubo :) hello', 1, '2015-04-07 06:32:16', '2015-04-07 06:32:16'),
(4, 2, 11, 'Message from dhrubo001', 1, '2015-04-07 12:24:36', '2015-04-07 12:24:36'),
(5, 31, 11, 'New message', 1, '2015-04-09 07:09:25', '2015-04-09 07:09:25'),
(6, 31, 1, 'new commentfr rom xfeil', 1, '2015-04-09 07:17:51', '2015-04-09 07:17:51'),
(7, 5, 12, 'Message from jhnaku', 1, '2015-04-09 11:55:18', '2015-04-09 11:55:18'),
(8, 1, 12, 'From jhanku', 1, '2015-04-09 12:17:15', '2015-04-09 12:17:15'),
(9, 6, 11, 'Comment from dhrubo', 1, '2015-04-20 03:43:10', '2015-04-20 03:43:10'),
(10, 23, 11, 'Again a new comment from dhrubo', 1, '2015-04-20 03:47:58', '2015-04-20 03:47:58'),
(11, 34, 11, 'Really helpfull', 1, '2015-04-29 03:38:17', '2015-04-29 03:38:17'),
(12, 25, 11, 'Message from mobile device', 1, '2015-04-29 03:57:59', '2015-04-29 03:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Malta', '2015-04-06 04:45:19', '2015-04-06 04:45:19'),
(2, 'Taiwan', '2015-04-06 04:45:19', '2015-04-06 04:45:19'),
(3, 'Pitcairn Islands', '2015-04-06 04:45:19', '2015-04-06 04:45:19'),
(4, 'Hungary', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(5, 'Sudan', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(6, 'Czech Republic', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(7, 'Jersey', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(8, 'Mozambique', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(9, 'Cocos (Keeling) Islands', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(10, 'Norway', '2015-04-06 04:45:20', '2015-04-06 04:45:20'),
(11, 'Botswana', '2015-04-06 04:45:28', '2015-04-06 04:45:28'),
(12, 'Seychelles', '2015-04-06 04:45:28', '2015-04-06 04:45:28'),
(13, 'Ecuador', '2015-04-06 04:45:29', '2015-04-06 04:45:29'),
(14, 'Andorra', '2015-04-06 04:45:30', '2015-04-06 04:45:30'),
(15, 'Ecuador', '2015-04-06 04:45:30', '2015-04-06 04:45:30'),
(16, 'Lebanon', '2015-04-06 04:45:30', '2015-04-06 04:45:30'),
(17, 'Monaco', '2015-04-06 04:45:30', '2015-04-06 04:45:30'),
(18, 'Togo', '2015-04-06 04:45:31', '2015-04-06 04:45:31'),
(19, 'Turkey', '2015-04-06 04:45:31', '2015-04-06 04:45:31'),
(20, 'United Kingdom', '2015-04-06 04:45:31', '2015-04-06 04:45:31');

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE IF NOT EXISTS `friend_requests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender_id` bigint(20) NOT NULL,
  `requested_id` bigint(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1' COMMENT '0=Request Sent,1=Accepted,2=Declined',
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `sender_id`, `requested_id`, `status`, `message`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 1, '', '2015-04-29 04:25:04', '2015-04-29 04:25:04'),
(2, 11, 8, 1, '', '2015-04-29 04:35:15', '2015-04-29 04:35:15'),
(3, 11, 6, 2, '', '2015-05-03 08:47:58', '2015-05-03 09:04:14'),
(4, 11, 10, 1, '', '2015-05-07 06:47:17', '2015-05-07 06:47:17');

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `title`, `slug`, `description`, `user_id`, `status`, `created_at`, `updated_at`, `link`, `category_id`) VALUES
(1, 'Et similique facilis eaque voluptate.', '', 'Qui quasi sit ratione modi quisquam recusandae eos. Soluta consequatur atque vel praesentium. Aspernatur nobis qui quas voluptates temporibus.', 2, 1, '2015-04-06 04:58:14', '2015-04-06 04:58:14', 'http://www.jacobs.net/libero-similique-ex-voluptatum-repellendus-deserunt', 1),
(2, 'Ea saepe aliquid sed molestias dolorum.', '', 'Porro eos laudantium explicabo sunt voluptates repellendus. Rerum accusantium molestiae id sit quo. Labore consectetur reprehenderit et et. Cum sequi veritatis sed rem dolores.', 9, 1, '2015-04-06 04:58:14', '2015-04-06 04:58:14', 'https://www.welch.com/veniam-repellat-quam-magni-accusantium', 1),
(3, 'Dolores voluptatem cum velit cumque et porro earum.', '', 'Et blanditiis distinctio nemo. Inventore aut vero voluptas deleniti quasi corporis est vitae. Et provident impedit doloremque consequuntur.', 10, 1, '2015-04-06 04:58:14', '2015-04-06 04:58:14', 'http://boehm.biz/non-voluptatibus-dolor-a-ut.html', 3),
(4, 'Id natus nam provident similique enim qui.', '', 'Sint facilis voluptatem sit porro ut necessitatibus. Natus illo corporis quia qui. Debitis nisi officia aut excepturi. Eius consequatur sunt et quas aperiam consequuntur.', 8, 1, '2015-04-06 04:58:14', '2015-04-06 04:58:14', 'http://www.hilll.info/eos-perspiciatis-laborum-qui-aliquam-repudiandae.html', 2),
(5, 'Ut ipsa ea praesentium similique et.', '', 'Consequatur aut consequatur mollitia consequatur quam consectetur vero nemo. Numquam consequuntur nihil atque velit tempore cum est. Consequuntur voluptatem tempore dicta assumenda.', 3, 1, '2015-04-06 04:58:14', '2015-04-06 04:58:14', 'http://www.simonis.net/', 3),
(6, 'Magnam animi sint beatae iusto dolores itaque.', '', 'Sunt a pariatur qui neque quia. Dolor est earum quia voluptates quia. Ut consequuntur quasi ab est. Omnis ad quisquam veritatis. Asperiores et et rem et laudantium.', 2, 1, '2015-04-06 04:58:15', '2015-04-06 04:58:15', 'http://www.champlin.net/', 5),
(7, 'Sint excepturi iure eveniet et aut quia voluptates.', '', 'Reiciendis quas qui ut consequatur et qui dolor. Eligendi deleniti omnis quod deserunt. Voluptatem mollitia eaque sit blanditiis tempora ducimus. Repellat et odio ut tenetur quos aut.', 4, 1, '2015-04-06 04:58:15', '2015-04-06 04:58:15', 'http://sporer.com/expedita-maxime-voluptas-ipsum-repellendus-non', 2),
(8, 'Temporibus assumenda esse dolorum voluptatem amet nihil ex cum.', '', 'Vel magnam laborum repellendus autem enim. Et error harum est. Veniam et minima debitis rem ut.', 9, 1, '2015-04-06 04:58:15', '2015-04-06 04:58:15', 'https://www.upton.com/voluptatibus-sint-harum-nobis-neque-a-praesentium', 3),
(9, 'Totam occaecati odit libero.', '', 'Debitis vel qui molestias hic repudiandae delectus adipisci sed. Aspernatur quo nostrum et iure excepturi dolor. Consequuntur sit officiis velit repellat qui eos.', 3, 1, '2015-04-06 04:58:15', '2015-04-06 04:58:15', 'http://gottlieb.org/', 1),
(10, 'Molestiae inventore et blanditiis reprehenderit aliquid.', '', 'Maxime non laborum quaerat deserunt non. Architecto non et nemo at. Reiciendis iste veritatis et eum. Aut et in ea reprehenderit.', 10, 1, '2015-04-06 04:58:15', '2015-04-06 04:58:15', 'http://www.goodwin.org/beatae-assumenda-maiores-quasi-asperiores-quas-et.html', 5),
(11, 'Expedita ab ipsam consequuntur consequatur unde quae assumenda.', '', 'Odit qui facilis omnis atque occaecati est. Quae error architecto perferendis libero dolor sint. Ratione quo rerum aliquam alias ad corrupti omnis.', 5, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://www.gerhold.com/', 5),
(12, 'Magni iusto ut optio quis omnis.', '', 'Sit nulla tempore quod ut ducimus illo eius aut. Quia nobis temporibus optio voluptatem. Similique dolores exercitationem voluptas ratione ipsam.', 5, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'https://www.cronin.info/illum-non-autem-molestias-cum-fugiat-vero-delectus', 5),
(13, 'Dicta temporibus autem dicta sed.', '', 'Ipsum dicta est delectus et sunt eos enim. Inventore illum cupiditate voluptatem eligendi. Reprehenderit consequuntur sit non sunt.', 8, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://kihn.com/recusandae-reprehenderit-magni-eos-dolor-error-aut.html', 1),
(14, 'Doloribus dolores placeat ea amet velit.', '', 'Mollitia accusamus aut fuga. Laboriosam officia ipsam sit ducimus autem eum. Assumenda rerum id vero aliquid saepe nemo blanditiis beatae.', 2, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://donnelly.com/fuga-nam-odio-nostrum-velit-non-est-qui.html', 2),
(15, 'Cupiditate quam officia et sunt non aut quo corporis.', '', 'Aspernatur et odit nemo eum esse. Ut harum consequuntur tempora quia. Neque nesciunt inventore aut pariatur aut. Ut corrupti quis veritatis ut.', 7, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'https://www.kemmer.net/cum-quam-consequuntur-sed-totam-beatae', 5),
(16, 'Voluptas enim fugit suscipit nisi.', '', 'Dolores doloremque autem non commodi natus. Ducimus voluptas quis non asperiores non sapiente optio provident. Labore corporis impedit ipsam praesentium.', 4, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://kerluke.com/fuga-eos-distinctio-repellat-impedit-vero', 1),
(17, 'Consequatur quia perspiciatis aut doloribus et optio qui.', '', 'Autem ut pariatur aliquid et. Ut ut accusantium omnis possimus assumenda quas cum vel. Placeat dolor cumque placeat ea nobis.', 6, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://www.purdy.com/magni-eaque-dolores-quas-labore-ut-est', 4),
(18, 'Perspiciatis dolore enim quidem nobis.', '', 'Neque laboriosam quod aliquid similique totam laborum soluta. Mollitia distinctio delectus voluptatem maiores sint aut perferendis et. Ducimus odio accusamus fuga iure eos ut reiciendis.', 2, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://cummings.com/et-cum-nam-nemo-sed-doloribus.html', 1),
(19, 'Ducimus omnis deserunt id enim.', '', 'Enim mollitia eius ipsum harum. Ut quam deleniti eum autem commodi et. Omnis voluptatem id velit illum facere sed est rerum. Qui alias dolorem harum esse ut.', 7, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://www.mante.com/consequatur-nihil-ipsum-adipisci-autem', 5),
(20, 'Ducimus qui nam rerum neque temporibus enim.', '', 'Et quia repudiandae voluptate consequatur ad itaque. Quas assumenda aut sapiente est. Iusto nam minus odit.', 3, 1, '2015-04-06 05:15:54', '2015-04-06 05:15:54', 'http://www.rosenbaum.com/', 1),
(21, 'Cupiditate iure soluta harum doloremque voluptas debitis saepe.', '', 'Deserunt numquam nobis porro ex iste necessitatibus fugiat. Rem sed laboriosam occaecati. Illo eveniet non qui ut dolores illum sed.', 9, 1, '2015-04-06 05:16:09', '2015-04-06 05:16:09', 'http://crona.com/culpa-omnis-quaerat-vitae-ducimus-maxime-aut-soluta-recusandae.html', 3),
(22, 'Laborum velit eum dolorem vel in voluptatem repellat.', '', 'Tenetur aspernatur dolor est ipsam modi veniam. Modi assumenda et placeat molestiae. Autem ea voluptatibus in doloribus porro. Est exercitationem fugiat porro quo quos ipsam aut.', 8, 1, '2015-04-06 05:16:09', '2015-04-06 05:16:09', 'https://www.weimann.com/expedita-quia-quia-ea-qui-perspiciatis-odit', 5),
(23, 'Optio quibusdam optio adipisci alias quo aut.', '', 'Nam ut quia dolorum maiores non architecto. Reiciendis itaque magni et. Quia optio ut perspiciatis.', 6, 1, '2015-04-06 05:16:09', '2015-04-06 05:16:09', 'http://little.biz/corrupti-ad-voluptas-error-sapiente-omnis-iste', 5),
(24, 'Quam labore illo doloremque magni.', '', 'Ut explicabo maiores ut. Sed iure recusandae minus illum fugiat possimus hic veniam. Quia ipsa quas a et.', 5, 1, '2015-04-06 05:16:09', '2015-04-06 05:16:09', 'http://mann.biz/', 1),
(25, 'Corporis et nisi tenetur libero.', '', 'Qui consectetur architecto quae. Laboriosam nesciunt impedit et voluptates at.', 7, 1, '2015-04-06 05:16:09', '2015-04-06 05:16:09', 'http://tillman.com/rerum-id-sit-debitis-vel', 1),
(26, 'Vero ipsa assumenda tenetur qui quam aliquid deserunt.', '', 'Neque iste blanditiis et qui. Ea officiis eos dolores nihil aut eius vel. Ea dignissimos reprehenderit dolore. Pariatur perferendis voluptate qui cupiditate dolorem.', 2, 1, '2015-04-06 05:16:10', '2015-04-06 05:16:10', 'https://christiansen.com/et-nihil-doloremque-ab-ipsam-ullam.html', 1),
(27, 'Vel nostrum dolor quidem explicabo necessitatibus.', '', 'Distinctio nostrum pariatur saepe quis minima. Ut blanditiis dolorum nam. Tempore odio facere minus optio quos.', 8, 1, '2015-04-06 05:16:10', '2015-04-06 05:16:10', 'http://www.batz.org/necessitatibus-ad-nulla-voluptas-ea-ea-sit-voluptas', 2),
(28, 'Delectus qui tempora deleniti quo aut.', '', 'Aliquid omnis ab voluptates architecto. Ex consequatur autem dolore provident animi. Tenetur esse error aliquam non eos maiores et.', 6, 1, '2015-04-06 05:16:10', '2015-04-06 05:16:10', 'https://hermiston.org/non-delectus-accusantium-enim-alias-distinctio-eos.html', 1),
(29, 'Dolorem possimus ex sit vitae.', '', 'Et quo repudiandae consequatur officiis repudiandae. Aut voluptatibus id voluptatem aliquam. Laborum qui eligendi cum numquam ducimus. Occaecati atque id doloremque dolorum.', 8, 1, '2015-04-06 05:16:10', '2015-04-06 05:16:10', 'http://bernier.com/', 5),
(30, 'Tenetur quis nihil accusamus modi velit et adipisci.', '', 'Quo dolor reiciendis eligendi iure beatae ducimus sed. Tenetur modi dicta temporibus. Quia ad ducimus laudantium possimus vitae sed vel quia. Eveniet itaque in id nostrum commodi.', 5, 1, '2015-04-06 05:16:10', '2015-04-06 05:16:10', 'https://gislason.com/vitae-aut-ratione-aut.html', 5),
(31, 'Laravel 5 XSS Middleware ', '', 'This piece of middleware can be applied at a global level, or on a per-route basis. The idea is that instead of polluting your databases with HTML and other potentially damaging data as a result of user input, this middleware will immediately strip all tags from any input, before it gets to validation or saved to a database. The result? A more dependable solution that doesn''t require developer memory to implement safe output rules + cleaner data in your database.', 11, 1, '2015-04-07 07:00:34', '2015-04-07 07:00:34', 'http://laravel-tricks.com/tricks/laravel-5-xss-middleware', 3),
(32, 'Model Based Setting Different Connection ', '', 'Model Based Setting Different Connection when working with 2 or more database in laravel', 11, 1, '2015-04-07 07:01:43', '2015-04-07 07:01:43', 'http://laravel-tricks.com/tricks/model-based-setting-different-connection', 3),
(33, 'Running Artisan from PHP', 'running-artisan-from-php', 'artisan migrate --env=test --path=app/database/migrations/test\r\n\r\nuse:\r\nArtisan::call(''migrate'', array(\r\n    ''--env'' => ''test'',\r\n    ''--path'' => ''app/database/migrations/test'',\r\n));\r\n\r\nThat''s it!', 1, 1, '2015-04-09 07:19:39', '2015-04-09 07:19:39', 'http://advancedlaravel.com/running-artisan-php', 3),
(34, 'Running Laravel Lumen from sub-directory', 'running-laravel-lumen-from-sub-directory', 'Lumen is the new micro framework from laravel, you can found more info here : Lumen Website. I ran lumen without homestead, just plain apache. After opening the /public folder i got error :', 11, 1, '2015-04-29 03:37:29', '2015-04-29 03:37:29', 'http://todiadiyatmo.com/running-laravel-lumen-from-sub-directory/', 3);

-- --------------------------------------------------------

--
-- Table structure for table `link_fabs`
--

CREATE TABLE IF NOT EXISTS `link_fabs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- Dumping data for table `link_fabs`
--

INSERT INTO `link_fabs` (`id`, `link_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 7, '2015-04-06 06:57:01', '2015-04-06 06:57:01'),
(2, 27, 4, '2015-04-06 06:57:01', '2015-04-06 06:57:01'),
(3, 27, 3, '2015-04-06 06:57:01', '2015-04-06 06:57:01'),
(4, 9, 6, '2015-04-06 06:57:01', '2015-04-06 06:57:01'),
(5, 7, 9, '2015-04-06 06:57:01', '2015-04-06 06:57:01'),
(6, 5, 6, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(7, 22, 3, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(8, 29, 8, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(9, 7, 3, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(10, 3, 8, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(11, 21, 8, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(12, 11, 3, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(13, 24, 1, '2015-04-06 06:57:15', '2015-04-06 06:57:15'),
(14, 2, 6, '2015-04-06 06:57:16', '2015-04-06 06:57:16'),
(15, 1, 3, '2015-04-06 06:57:16', '2015-04-06 06:57:16'),
(16, 23, 1, '2015-04-06 06:57:24', '2015-04-06 06:57:24'),
(17, 14, 9, '2015-04-06 06:57:24', '2015-04-06 06:57:24'),
(18, 11, 7, '2015-04-06 06:57:24', '2015-04-06 06:57:24'),
(19, 23, 6, '2015-04-06 06:57:25', '2015-04-06 06:57:25'),
(20, 15, 8, '2015-04-06 06:57:25', '2015-04-06 06:57:25'),
(21, 18, 8, '2015-04-06 06:57:25', '2015-04-06 06:57:25'),
(22, 2, 3, '2015-04-06 06:58:32', '2015-04-06 06:58:32'),
(23, 2, 3, '2015-04-06 06:58:32', '2015-04-06 06:58:32'),
(24, 2, 10, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(25, 2, 9, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(26, 2, 2, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(27, 2, 7, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(28, 2, 3, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(29, 2, 5, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(30, 2, 2, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(31, 2, 9, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(32, 2, 8, '2015-04-06 06:58:33', '2015-04-06 06:58:33'),
(33, 5, 12, '2015-04-09 12:03:57', '2015-04-09 12:03:57'),
(37, 32, 12, '2015-04-09 12:09:07', '2015-04-09 12:09:07'),
(38, 31, 12, '2015-04-09 12:10:58', '2015-04-09 12:10:58'),
(39, 1, 12, '2015-04-09 12:15:43', '2015-04-09 12:15:43'),
(40, 6, 12, '2015-04-09 12:23:19', '2015-04-09 12:23:19'),
(41, 15, 12, '2015-04-09 12:25:34', '2015-04-09 12:25:34'),
(42, 13, 12, '2015-04-09 12:45:01', '2015-04-09 12:45:01'),
(43, 6, 11, '2015-04-20 03:44:07', '2015-04-20 03:44:07'),
(44, 23, 11, '2015-04-20 03:47:40', '2015-04-20 03:47:40'),
(45, 34, 11, '2015-04-29 03:37:48', '2015-04-29 03:37:48'),
(46, 29, 11, '2015-04-29 03:58:35', '2015-04-29 03:58:35'),
(47, 34, 8, '2015-04-29 04:44:44', '2015-04-29 04:44:44'),
(48, 28, 11, '2015-05-03 08:33:10', '2015-05-03 08:33:10'),
(49, 3, 11, '2015-05-07 06:47:08', '2015-05-07 06:47:08');

-- --------------------------------------------------------

--
-- Table structure for table `link_likes`
--

CREATE TABLE IF NOT EXISTS `link_likes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=60 ;

--
-- Dumping data for table `link_likes`
--

INSERT INTO `link_likes` (`id`, `link_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 15, 9, '2015-04-06 05:52:54', '2015-04-06 05:52:54'),
(2, 28, 4, '2015-04-06 05:52:54', '2015-04-06 05:52:54'),
(3, 20, 4, '2015-04-06 05:52:54', '2015-04-06 05:52:54'),
(4, 11, 1, '2015-04-06 05:52:54', '2015-04-06 05:52:54'),
(5, 27, 2, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(6, 21, 1, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(7, 13, 7, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(8, 6, 1, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(9, 24, 1, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(10, 25, 10, '2015-04-06 05:53:17', '2015-04-06 05:53:17'),
(11, 9, 8, '2015-04-06 05:53:51', '2015-04-06 05:53:51'),
(12, 3, 7, '2015-04-06 05:53:51', '2015-04-06 05:53:51'),
(13, 12, 10, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(14, 10, 10, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(15, 8, 9, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(16, 26, 3, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(17, 4, 9, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(18, 24, 1, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(19, 17, 10, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(20, 2, 3, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(21, 15, 8, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(22, 28, 4, '2015-04-06 05:53:52', '2015-04-06 05:53:52'),
(23, 1, 5, '2015-04-06 05:54:10', '2015-04-06 05:54:10'),
(24, 12, 7, '2015-04-06 05:54:11', '2015-04-06 05:54:11'),
(25, 30, 10, '2015-04-06 05:54:11', '2015-04-06 05:54:11'),
(26, 22, 4, '2015-04-06 05:54:11', '2015-04-06 05:54:11'),
(27, 7, 7, '2015-04-06 05:54:11', '2015-04-06 05:54:11'),
(28, 23, 5, '2015-04-06 05:54:26', '2015-04-06 05:54:26'),
(29, 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 30, 11, '2015-04-07 04:40:59', '2015-04-07 04:40:59'),
(31, 29, 11, '2015-04-07 04:51:28', '2015-04-07 04:51:28'),
(32, 28, 11, '2015-04-07 04:53:01', '2015-04-07 04:53:01'),
(33, 19, 11, '2015-04-07 04:53:44', '2015-04-07 04:53:44'),
(34, 11, 11, '2015-04-07 04:54:30', '2015-04-07 04:54:30'),
(35, 1, 11, '2015-04-07 04:55:23', '2015-04-07 04:55:23'),
(36, 7, 11, '2015-04-07 04:55:58', '2015-04-07 04:55:58'),
(37, 32, 11, '2015-04-07 08:26:03', '2015-04-07 08:26:03'),
(38, 23, 11, '2015-04-07 08:27:21', '2015-04-07 08:27:21'),
(39, 16, 11, '2015-04-07 08:27:56', '2015-04-07 08:27:56'),
(40, 6, 11, '2015-04-07 08:28:58', '2015-04-07 08:28:58'),
(41, 2, 11, '2015-04-07 08:30:53', '2015-04-07 08:30:53'),
(42, 31, 11, '2015-04-09 07:01:52', '2015-04-09 07:01:52'),
(43, 32, 1, '2015-04-09 07:17:23', '2015-04-09 07:17:23'),
(44, 31, 1, '2015-04-09 07:18:05', '2015-04-09 07:18:05'),
(45, 33, 11, '2015-04-09 07:20:59', '2015-04-09 07:20:59'),
(46, 33, 12, '2015-04-09 11:40:55', '2015-04-09 11:40:55'),
(47, 32, 12, '2015-04-09 11:42:55', '2015-04-09 11:42:55'),
(48, 5, 12, '2015-04-09 11:54:05', '2015-04-09 11:54:05'),
(49, 31, 12, '2015-04-09 12:10:57', '2015-04-09 12:10:57'),
(50, 1, 12, '2015-04-09 12:20:36', '2015-04-09 12:20:36'),
(51, 7, 12, '2015-04-09 12:21:33', '2015-04-09 12:21:33'),
(52, 6, 12, '2015-04-09 12:23:45', '2015-04-09 12:23:45'),
(53, 15, 12, '2015-04-09 12:26:34', '2015-04-09 12:26:34'),
(54, 13, 12, '2015-04-09 12:45:02', '2015-04-09 12:45:02'),
(55, 34, 11, '2015-04-29 03:37:43', '2015-04-29 03:37:43'),
(56, 34, 11, '2015-04-29 03:37:45', '2015-04-29 03:37:45'),
(57, 34, 11, '2015-04-29 03:37:47', '2015-04-29 03:37:47'),
(58, 34, 8, '2015-04-29 04:44:42', '2015-04-29 04:44:42'),
(59, 3, 11, '2015-05-07 06:47:06', '2015-05-07 06:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `link_visited`
--

CREATE TABLE IF NOT EXISTS `link_visited` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `link_visited`
--

INSERT INTO `link_visited` (`id`, `link_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 30, 11, '2015-04-07 07:17:30', '2015-04-07 07:17:30'),
(2, 19, 11, '2015-04-07 07:23:31', '2015-04-07 07:23:31'),
(3, 32, 11, '2015-04-07 08:26:01', '2015-04-07 08:26:01'),
(4, 29, 11, '2015-04-07 08:27:01', '2015-04-07 08:27:01'),
(5, 23, 11, '2015-04-07 08:27:16', '2015-04-07 08:27:16'),
(6, 16, 11, '2015-04-07 08:27:52', '2015-04-07 08:27:52'),
(7, 6, 11, '2015-04-07 08:28:52', '2015-04-07 08:28:52'),
(8, 2, 11, '2015-04-07 08:30:50', '2015-04-07 08:30:50'),
(9, 31, 11, '2015-04-09 07:01:48', '2015-04-09 07:01:48'),
(10, 32, 1, '2015-04-09 07:17:15', '2015-04-09 07:17:15'),
(11, 31, 1, '2015-04-09 07:17:39', '2015-04-09 07:17:39'),
(12, 33, 1, '2015-04-09 07:19:49', '2015-04-09 07:19:49'),
(13, 33, 11, '2015-04-09 07:20:56', '2015-04-09 07:20:56'),
(14, 33, 12, '2015-04-09 11:40:51', '2015-04-09 11:40:51'),
(15, 32, 12, '2015-04-09 11:42:52', '2015-04-09 11:42:52'),
(16, 5, 12, '2015-04-09 11:53:24', '2015-04-09 11:53:24'),
(17, 31, 12, '2015-04-09 12:10:54', '2015-04-09 12:10:54'),
(18, 1, 12, '2015-04-09 12:15:34', '2015-04-09 12:15:34'),
(19, 7, 12, '2015-04-09 12:21:21', '2015-04-09 12:21:21'),
(20, 6, 12, '2015-04-09 12:23:14', '2015-04-09 12:23:14'),
(21, 15, 12, '2015-04-09 12:25:30', '2015-04-09 12:25:30'),
(22, 13, 12, '2015-04-09 12:44:50', '2015-04-09 12:44:50'),
(23, 34, 11, '2015-04-29 03:37:40', '2015-04-29 03:37:40'),
(24, 25, 11, '2015-04-29 03:57:41', '2015-04-29 03:57:41'),
(25, 34, 8, '2015-04-29 04:44:30', '2015-04-29 04:44:30'),
(26, 28, 11, '2015-05-03 08:33:04', '2015-05-03 08:33:04'),
(27, 3, 11, '2015-05-07 06:47:03', '2015-05-07 06:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2015_04_06_095140_create_users_table', 1),
('2015_04_06_095505_create_countries_table', 2),
('2015_04_06_103654_create_categories_table', 3),
('2015_04_06_111547_create_links_likes_table', 4),
('2015_04_07_111911_create_comments_table', 5),
('2015_04_07_123520_create_link_visited_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `requesttypes`
--

CREATE TABLE IF NOT EXISTS `requesttypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_at` timestamp NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `requesttypes`
--

INSERT INTO `requesttypes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Request Sent', '2015-04-29 11:02:40', '2015-04-29 11:02:40'),
(2, 'Accepted', '2015-04-29 11:02:40', '2015-04-29 11:02:40'),
(3, 'Declined', '2015-04-29 11:02:50', '2015-04-29 11:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `username` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profile_image` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `country_id`, `username`, `password`, `email`, `remember_token`, `profile_image`, `created_at`, `updated_at`) VALUES
(1, 19, 'xfeil', '$2y$10$eagwJG7/Rx6Txa4KdIFPV.YZ9krMw6MW.p5fHv3w8RynP.KFVK2te', 'sanford.rosalind@gmail.com', 'XaSSNHYZ6yL78mxNGGaWMAP3YLRd7D4H6cu7kKts2XloNXsTULkrStRTjU5f', '', '2015-04-06 04:52:30', '2015-04-09 07:20:26'),
(2, 3, 'orutherfor', '$2y$10$eagwJG7/Rx6Txa4KdIFPV.YZ9krMw6MW.p5fHv3w8RynP.KFVK2te', 'pearline23@sawayn.com', NULL, '', '2015-04-06 04:52:30', '2015-04-06 04:52:30'),
(3, 15, 'coralie.sp', 'tFntnn<', 'xmante@yahoo.com', NULL, '', '2015-04-06 04:52:30', '2015-04-06 04:52:30'),
(4, 17, 'melvin.tow', 'x8cE/I;&^w', 'jacky.batz@sanford.org', NULL, '', '2015-04-06 04:52:30', '2015-04-06 04:52:30'),
(5, 3, 'bauch.drak', '9}ffnA[fVO5CD@=R]-', 'reynolds.adah@jakubowski.info', NULL, '', '2015-04-06 04:52:30', '2015-04-06 04:52:30'),
(6, 12, 'winfield.s', '$2y$10$eagwJG7/Rx6Txa4KdIFPV.YZ9krMw6MW.p5fHv3w8RynP.KFVK2te', 'romaguera.hiram@yahoo.com', 'ZYkJYI0GSi13CMT3juxaK0XilrhunWNg0qta4zA5UOB7BopUfDfd6x70lqVy', '', '2015-04-06 04:52:30', '2015-05-03 09:23:23'),
(7, 2, 'coleman65', 'bh''ZLEV1V$eMa', 'ndaugherty@gmail.com', NULL, '', '2015-04-06 04:52:30', '2015-04-06 04:52:30'),
(8, 5, 'rupert.wat', '$2y$10$eagwJG7/Rx6Txa4KdIFPV.YZ9krMw6MW.p5fHv3w8RynP.KFVK2te', 'bstamm@yahoo.com', 'wEEROK3lUBpwG2JVVXAfeIp9E22VSVqgtZGoZNgl5f0fIL6sJTSY7yUxkK6C', '', '2015-04-06 04:52:30', '2015-04-29 05:59:00'),
(9, 14, 'nfadel', 'raA7I6LLAL+mj%1W`%FX', 'brionna.witting@gmail.com', NULL, '', '2015-04-06 04:52:31', '2015-04-06 04:52:31'),
(10, 11, 'vnikolaus', 'uq_+j->B?d,DP7', 'stiedemann.eliane@gmail.com', NULL, '', '2015-04-06 04:52:31', '2015-04-06 04:52:31'),
(11, 3, 'dhrubo001', '$2y$10$eagwJG7/Rx6Txa4KdIFPV.YZ9krMw6MW.p5fHv3w8RynP.KFVK2te', 'dhrubojyoti_das@yahoo.in', 'ox9D5El5cxBaHWiW7DCudbg1pdWbo5FKowlLWlPqZ39JYBHDYFoNCghopPOE', '', '2015-04-07 04:07:42', '2015-05-07 06:47:25'),
(12, 0, 'jhanku', '$2y$10$.AKdTQq/jyIb4JCFFfLZr.ToewJulkSS1uMwY3OlbGwhUoh4WEoIK', 'jhanku_das@gmail.com', 'ULzqLaDsmg2LboO47FBh7cvGbeJzIcyhZyGt9MWGqynIsqqlyxRfofHKoci4', '', '2015-04-09 11:40:40', '2015-04-09 12:51:22');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
