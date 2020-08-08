-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2020 at 06:17 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codewithdhyan`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'this', '7654345656', 'dghfhjghj fgjhgv fhgfhg', '2020-08-02 05:07:01', 'firstpost@gmail.com'),
(3, 'bhai', '8765906543', 'ggh yuh yhjh uh h', '2020-08-06 09:16:59', 'bhai@gmail.com'),
(4, 'something', '8787878787', 'bachgaya bancho', '2020-08-06 09:21:58', 'rt6t@gmail.com'),
(5, '56657', 'gyhrfyuhne', 'rfgggggg', '2020-08-06 09:23:01', 'hiiii@gmail.com'),
(6, 'gg', '9876543210', 'fg', '2020-08-06 09:24:17', 'mahish@gmail.com'),
(7, 'bagwan', '7856789556', 'hffjjjjhh', '2020-08-07 18:41:08', 'bancho@gmail.com'),
(8, 'hg', '6576879043', 'hkhjh', '2020-08-03 01:25:46', 'mahish@gmail.com'),
(9, 'hg', '6576879043', 'hkhjh', '2020-08-03 01:29:03', 'mahish@gmail.com'),
(10, 'hg', '6576879043', 'hkhjh', '2020-08-03 01:29:23', 'mahish@gmail.com'),
(11, 'g', '7654323210', 'huhhub yyyb yyy yhjuobui ubhy ', '2020-08-03 06:15:46', 'D@gmail.com'),
(12, 'g', '7654323210', 'huhhub yyyb yyy yhjuobui ubhy ', '2020-08-03 06:19:13', 'D@gmail.com'),
(13, 'j', '7878787878', 'jjjjj', '2020-08-03 06:30:04', 'hiiii@gmail.com'),
(14, 'vf', '0000000000', 'tgf', '2020-08-03 06:34:13', 'ygu@gmail.com'),
(15, 'yu', '0000888899', 'jjj', '2020-08-03 06:36:29', 'hhh@gmail.com'),
(16, 'j', '8888888788', 'nnnnb', '2020-08-03 06:42:09', 'jjjj@gmail.com'),
(17, 'j', '8888888788', 'nnnnb', '2020-08-03 06:59:27', 'jjjj@gmail.com'),
(18, 'y', '888888888', 'yyy', '2020-08-03 07:06:07', 'yhyuu2ggh.j');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `img_file` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `date`, `img_file`) VALUES
(1, 'My first web post', 'coming soon........', 'first-post', '', '2020-08-08 00:03:28', 'home-bg.jpg'),
(2, 'This is my second post', 'coming soon..', 'second-post', 'Hi this will be updated soon don\'t worry hi supreetha', '2020-08-06 10:30:34', 'img.hkh'),
(3, 'Installing Flask-Mail', 'soon...', 'third_slug', 'Configuring Flask-Mail\r\nFlask-Mail is configured through the standard Flask config API. These are the available options (each is explained later in the documentation):\r\n\r\nMAIL_SERVER : default ‘localhost’\r\nMAIL_PORT : default 25\r\nMAIL_USE_TLS : default False\r\nMAIL_USE_SSL : default False\r\nMAIL_DEBUG : default app.debug\r\nMAIL_USERNAME : default None\r\nMAIL_PASSWORD : default None\r\nMAIL_DEFAULT_SENDER : default None\r\nMAIL_MAX_EMAILS : default None\r\nMAIL_SUPPRESS_SEND : default app.testing\r\nMAIL_ASCII_ATTACHMENTS : default False', '2020-08-04 17:58:03', ''),
(4, 'Sending messages', 'soon...', 'forth_slug', 'To send a message first create a Message instance:\r\n\r\nfrom flask_mail import Message\r\n\r\n@app.route(\"/\")\r\ndef index():\r\n\r\n    msg = Message(\"Hello\",\r\n                  sender=\"from@example.com\",\r\n                  recipients=[\"to@example.com\"])\r\nYou can set the recipient emails immediately, or individually:\r\n\r\nmsg.recipients = [\"you@example.com\"]\r\nmsg.add_recipient(\"somebodyelse@example.com\")\r\nIf you have set MAIL_DEFAULT_SENDER you don’t need to set the message sender explicity, as it will use this configuration value by default:\r\n\r\nmsg = Message(\"Hello\",\r\n              recipients=[\"to@example.com\"])\r\nIf the sender is a two-element tuple, this will be split into name and address:\r\n\r\nmsg = Message(\"Hello\",\r\n              sender=(\"Me\", \"me@example.com\"))\r\n\r\nassert msg.sender == \"Me <me@example.com>\"\r\nThe message can contain a body and/or HTML:\r\n\r\nmsg.body = \"testing\"\r\nmsg.html = \"<b>testing</b>\"', '2020-08-04 17:58:03', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
