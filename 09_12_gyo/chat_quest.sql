-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2020-07-15 16:15:30
-- サーバのバージョン： 10.4.11-MariaDB
-- PHP のバージョン: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsf_d06_db12`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `chat_quest`
--

CREATE TABLE `chat_quest` (
  `id` int(12) NOT NULL,
  `quest1` int(12) NOT NULL,
  `quest2` int(12) NOT NULL,
  `RoomNumber` int(12) NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `chat_quest`
--

INSERT INTO `chat_quest` (`id`, `quest1`, `quest2`, `RoomNumber`, `time`) VALUES
(1, 1, 1, 1, '2020-07-13 22:22:21'),
(2, 2, 1, 3, '2020-07-13 22:22:38');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `chat_quest`
--
ALTER TABLE `chat_quest`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `chat_quest`
--
ALTER TABLE `chat_quest`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;