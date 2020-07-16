-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2020 年 7 月 16 日 13:00
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `chatRoom`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `chat`
--

CREATE TABLE `chat` (
  `id` int(128) NOT NULL,
  `user_id` int(128) NOT NULL,
  `chat` varchar(150) NOT NULL,
  `life` enum('exist','deleted') NOT NULL DEFAULT 'exist',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `room_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `chat`
--

INSERT INTO `chat` (`id`, `user_id`, `chat`, `life`, `created_at`, `updated_at`, `room_id`) VALUES
(1, 1, 'こんばんわん', 'exist', '2020-07-13', '2020-07-13', 2),
(2, 3, 'こんばんha', 'exist', '2020-07-13', '2020-07-13', 2),
(3, 3, 'ヤッホー', 'exist', '2020-07-13', '2020-07-13', 1),
(4, 4, 'コンバッ！', 'exist', '2020-07-13', '2020-07-13', 1),
(20, 2, 'こんにちは！', 'exist', '2020-07-15', '2020-07-15', 1),
(21, 2, '♪───Ｏ（≧∇≦）Ｏ────♪', 'exist', '2020-07-15', '2020-07-15', 1),
(22, 2, 'わーい', 'exist', '2020-07-15', '2020-07-15', 1),
(23, 2, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(24, 2, 'こんにち', 'exist', '2020-07-16', '2020-07-16', 1),
(25, 1, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(26, 1, '上がりです', 'exist', '2020-07-16', '2020-07-16', 1),
(27, 2, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(28, 1, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(29, 2, 'お疲れ様です', 'exist', '2020-07-16', '2020-07-16', 1),
(30, 2, 'あああ', 'exist', '2020-07-16', '2020-07-16', 1),
(31, 2, 'うぇーい', 'exist', '2020-07-16', '2020-07-16', 1),
(32, 1, 'うぇーい', 'exist', '2020-07-16', '2020-07-16', 1),
(33, 2, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(34, 2, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(35, 1, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(36, 1, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 1),
(37, 2, 'こんばんは', 'exist', '2020-07-16', '2020-07-16', 1),
(38, 1, 'こんにちは！', 'exist', '2020-07-16', '2020-07-16', 2);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int(128) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
