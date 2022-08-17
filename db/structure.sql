-- 
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2020 at 01:10 PM
-- Server version: 8.0.22-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Exam`
--

Create DATABASE `Exam`;

use `Exam`;

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` bigint NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `pswdFailedAttempts` int DEFAULT NULL,
  `password` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `verification_token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `createdUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `updatedUser` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `createdTime` datetime NOT NULL,
  `updatedTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_USERNAME` (`username`),
  ADD UNIQUE KEY `UK_EMAIL` (`email`),
  ADD UNIQUE KEY `UK_RESET_TOKEN` (`password_reset_token`);
COMMIT;

INSERT INTO `User` (`id`, `username`, `name`, `auth_key`, `status`, `pswdFailedAttempts`, `password`, `password_hash`, `password_reset_token`, `email`, `verification_token`, `createdUser`, `updatedUser`, `createdTime`, `updatedTime`) VALUES
(1, 'admin', 'Lilja Lampinen', '007OojGHPBXwngl5UE8so5NBkUuyhKf_', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'lilja@example.com', NULL, 'admin', 'admin', '2020-11-26 17:41:55', '2020-11-26 17:41:55'),
(2, 'heinz', 'Heinz Georg', '', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'heinz@example.com', NULL, 'admin', 'admin', '2020-11-26 07:58:53', '2020-11-26 10:58:53'),
(3, 'katie', 'Katie Hughes', '', 1, NULL, '96e79218965eb72c92a549dd5a330112', '$2y$13$6rHoTJhsber6KZ.Ny0p4A.R77cfliz6xwEFTea/jqrOsb7oC3hEpC', NULL, 'katie@example.com', NULL, 'admin', 'admin', '2020-11-26 06:58:53', '2020-11-26 06:58:53');
COMMIT;
