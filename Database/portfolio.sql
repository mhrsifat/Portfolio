-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 20, 2025 at 12:14 PM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mhrsifa1_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `pic` varchar(100) NOT NULL,
  `type` enum('Admin','Author','Editor','Guest') NOT NULL DEFAULT 'Guest'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `pass`, `status`, `created_at`, `pic`, `type`) VALUES
(1, 'admin', 'mhrsifat13@gmail.com', '$2y$10$oB67wBQwVIdt77a.vPGu9uTY3w6AISyEsl/I3/K25pMbIQLaOlH5G', 'active', '2025-05-13 01:13:34', '301241124.gif', 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_cat_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by_admin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `blog_title`, `blog_cat_id`, `created_date`, `created_by_admin`) VALUES
(38, 'Test Blog Title', 5, '2025-07-08 10:10:51', 1),
(39, 'Second Test Blog Title', 5, '2025-07-08 10:40:56', 1);

-- --------------------------------------------------------

--
-- Table structure for table `blog_description`
--

CREATE TABLE `blog_description` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `short_description` mediumtext DEFAULT NULL,
  `full_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_description`
--

INSERT INTO `blog_description` (`id`, `blog_id`, `short_description`, `full_description`) VALUES
(33, 38, 'What is Lorem Ipsum?Lorem Ipsum is...', '<p>this is some demo content.<br><br>What is Lorem Ipsum?</p><p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p><h2>Why do we use it?</h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p><p>&nbsp;</p><figure class=\"image image-style-side\"><img style=\"aspect-ratio:393/451;\" src=\"https://mhrsifat.xyz/images/uploads/blog_img_686ca0cee5bdf.jpg\" width=\"393\" height=\"451\"></figure><p><br>&nbsp;</p><h2>Where does it come from?</h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>'),
(34, 39, 'Lorem ipsum dolor sit amet consectetur adipiscing elit. Quis...', '<p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><figure class=\"image\"><img style=\"aspect-ratio:1536/1024;\" src=\"https://mhrsifat.xyz/images/uploads/blog_img_686de1d379f7f.png\" width=\"1536\" height=\"1024\"></figure><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p><p>Lorem ipsum dolor sit amet consectetur adipiscing elit. Quisque faucibus ex sapien vitae pellentesque sem placerat. In id cursus mi pretium tellus duis convallis. Tempus leo eu aenean sed diam urna tempor. Pulvinar vivamus fringilla lacus nec metus bibendum egestas. Iaculis massa nisl malesuada lacinia integer nunc posuere. Ut hendrerit semper vel class aptent taciti sociosqu. Ad litora torquent per conubia nostra inceptos himenaeos.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `cat_name`, `created_at`) VALUES
(5, 'Test Category', '2025-07-08 04:33:37');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `commenter_name` varchar(100) NOT NULL,
  `commenter_email` varchar(150) NOT NULL,
  `comment_text` mediumtext NOT NULL,
  `allowed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `blog_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(150) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(12, 'Joanna Riggs', 'joannariggs83@gmail.com', 'Video Promotion for your website', 'Hi,<br />\r\n<br />\r\nI just visited mhrsifat.xyz and wondered if you&#039;d ever thought about having an engaging video to explain what you do?<br />\r\n<br />\r\nA couple of samples to check out for a Service and a Product:<br />\r\n<br />\r\nhttps://www.youtube.com/watch?v=uMI9l_FHwA8<br />\r\n<br />\r\nhttps://www.youtube.com/watch?v=67neUK1vylc<br />\r\n<br />\r\nOur prices start from just $195 (USD).<br />\r\n<br />\r\nLet me know if you&#039;re interested in seeing more samples of our previous work or have any questions.<br />\r\n<br />\r\nRegards,<br />\r\nJoanna', '2025-06-30 08:52:21'),
(13, 'Mike Ethan Evans', 'info@professionalseocleanup.com', 'Urgent: Toxic Links Found on mhrsifat.xyz', 'Hi, <br />\r\nWhile reviewing mhrsifat.xyz, we spotted toxic backlinks that could put your site at risk of a Google penalty. <br />\r\n <br />\r\nWe can clean up your link profile and protect your rankings — all for just $5. <br />\r\n <br />\r\nFix it now before Google does: <br />\r\nhttps://www.professionalseocleanup.com/ <br />\r\n <br />\r\nNeed help or questions? Chat here: <br />\r\nhttps://www.professionalseocleanup.com/whatsapp/ <br />\r\n <br />\r\nBest, <br />\r\nMike Ethan Evans<br />\r\n <br />\r\n+1 (855) 221-7591 <br />\r\ninfo@professionalseocleanup.com', '2025-07-04 14:24:02'),
(15, 'Alex Amin', 'alexamin4x4@gmail.com', 'Investment Funds Opportunity', 'Greetings, <br />\r\n <br />\r\nI hope you’re doing well. We are reaching out to explore potential partnerships with business executives interested in exclusive, high-value investment opportunities. <br />\r\n <br />\r\nOur network comprises established high-net-worth individuals (HNWIs) from Russia and the Middle East, seeking collaborative ventures with trusted partners. The specifics of the opportunity, including investment size and terms, can be shared upon further discussion under strict confidentiality. <br />\r\n <br />\r\nWe prioritize risk free approach for all involved parties, we’d welcome the chance to discuss further at your convenience. <br />\r\n <br />\r\nBest regards, <br />\r\nAlex Amin <br />\r\nEmail: infinitycapitalmru@gmail.com', '2025-07-09 23:14:56'),
(16, 'Mike Maqnus Svensson', 'info@digital-x-press.com', 'Add AEO to your SEO strategies today !', 'Hi, <br />\r\nI recognize that most website owners find it challenging recognizing that Answer Engine Optimization (AEO) is a long-term game and a well-planned monthly initiative. <br />\r\n <br />\r\nSadly, very few businesses have the patience to observe the incremental yet meaningful benefits that can completely transform their search performance. <br />\r\n <br />\r\nWith regular search engine updates, a stable, ongoing approach including Answer Engine Optimization (AEO) is critical for getting a strong return on investment. <br />\r\n <br />\r\nIf you see this as the ideal strategy, partner with us! <br />\r\n <br />\r\nExplore Our Monthly SEO Services https://www.digital-x-press.com/unbeatable-seo/ <br />\r\n <br />\r\nReach Out on Instant Messaging https://www.digital-x-press.com/whatsapp-us/ <br />\r\n <br />\r\nWe offer unbeatable performance for your investment, and you will enjoy choosing us as your digital marketing ally. <br />\r\n <br />\r\nKind regards, <br />\r\nDigital X SEO Experts <br />\r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-07-12 02:02:32'),
(17, 'Nikita Joshi', 'nikita.rocketdigitaltech@gmail.com', 'Cae ytftzv', 'Hi,<br />\r\n<br />\r\nJust had a look at your site – it’s well-designed, but not performing well in search engines.<br />\r\n<br />\r\nWould you be interested in improving your SEO and getting more traffic?<br />\r\n<br />\r\nI can send over a detailed proposal with affordable packages.<br />\r\n<br />\r\nWarm regards,<br />\r\nNikita', '2025-07-12 13:23:07'),
(19, 'Mike Jiirqen Mercier', 'mike@monkeydigital.co', 'Collaboration Request', 'Hello, <br />\r\n <br />\r\nThis is Mike from Monkey Digital, <br />\r\nI am getting in touch to discuss a great business deal. <br />\r\n <br />\r\nHow would you like to show our ads on your site and redirect via your unique referral link towards popular services from our business? <br />\r\n <br />\r\nThis way, you receive a solid 35% residual income, continuously from any sales that generate from your audience. <br />\r\n <br />\r\nThink about it, all businesses need SEO, so this is a big opportunity. <br />\r\n <br />\r\nWe already have over 12,000 affiliates and our commissions are sent monthly. <br />\r\nIn the past month, we paid out a significant amount in affiliate earnings to our partners. <br />\r\n <br />\r\nIf interested, kindly contact us here: <br />\r\nhttps://monkeydigital.co/affiliates-whatsapp/ <br />\r\n <br />\r\nOr register today: <br />\r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ <br />\r\n <br />\r\nLooking forward, <br />\r\nMike Jiirqen Mercier<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-07-12 20:15:03'),
(20, 'Fabian Sellar', 'fabian.sellar3@outlook.com', 'The Only YouTube Guide You Need (Now With Private Label Rights!)', 'Hi,<br />\r\n<br />\r\nI just wanted to share an a YouTube A-Z system that guides you to build a thriving YouTube business, and here&#039;s the revolutionary part: it comes with full private label rights (PLR) to sell as your own.<br />\r\n<br />\r\nThis 55+ page blueprint covers:<br />\r\n<br />\r\nFoundation Blueprint: Niche, audience, and channel optimization.<br />\r\nContent Engine: Creating videos people want to watch.<br />\r\nGrowth Accelerator: Demystifying the algorithm, SEO, and clickable thumbnails.<br />\r\nMonetization Machine: Unlocking 7+ income streams, including sponsorships.<br />\r\n<br />\r\nThe real game-changer is the PLR! You get permission to:<br />\r\n<br />\r\nSell this eBook and keep 100% of the money.<br />\r\nPut your name on it as the author.<br />\r\nUse it as a high-value bonus, break it into articles, or build your email list.<br />\r\n<br />\r\nWe&#039;ve done the hard work; you get to profit instantly and build your authority.<br />\r\n<br />\r\nBut that&#039;s not all. You&#039;ll also receive the Complete Creator&#039;s Launch Kit absolutely FREE! This bonus kit includes:<br />\r\n<br />\r\n1. Pro Channel Branding Kit: Logo templates, YouTube intro/outro logos, end screens, channel art, lower third graphics, and a YouTube thumbnail bundle.<br />\r\n2. Viral Video Essentials: YT motion graphics, title animations, video transitions, animated subscribe buttons, and YouTube ranking tools.<br />\r\n3. Audio Engineer&#039;s Sound Pack: Royalty-free background music, popular YouTuber sound effects, and transition sound effects.<br />\r\n<br />\r\nFind out more here:<br />\r\nhttps://furtherinfo.info/ytmastery<br />\r\n<br />\r\nBest regards,<br />\r\nFabian', '2025-07-14 11:30:37'),
(21, 'Mike Guilherme Martin', 'mike@monkeydigital.co', 'Boost Your Website Traffic with Country-Specific Social Ads – Only $10 for 10K Visits!', 'Hi there, <br />\r\n <br />\r\nI wanted to reach out with something that could seriously improve your website’s visitor count. We work with a trusted ad network that allows us to deliver authentic, location-based social ads traffic for just $10 per 10,000 visits. <br />\r\n <br />\r\nThis isn&#039;t fake traffic—it’s engaged traffic, tailored to your chosen market and niche. <br />\r\n <br />\r\nWhat you get: <br />\r\n <br />\r\n10,000+ real visitors for just $10 <br />\r\nLocalized traffic for any country <br />\r\nHigher volumes available based on your needs <br />\r\nProven to work—we even use this for our SEO clients! <br />\r\n <br />\r\nInterested? Check out the details here: <br />\r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ <br />\r\n <br />\r\nOr connect instantly on WhatsApp: <br />\r\nhttps://monkeydigital.co/whatsapp-us/ <br />\r\n <br />\r\nLooking forward to working with you! <br />\r\n <br />\r\nBest, <br />\r\nMike Guilherme Martin<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-07-16 01:09:01'),
(22, 'Johnny Brunelle', 'hacked@mhrsifat.xyz', 'Your WebSite Has Been Hacked', 'We have hacked your website https://mhrsifat.xyz and extracted your databases.<br />\r\n<br />\r\nHow did this happen?<br />\r\n<br />\r\nOur team has found a vulnerability within your site that we were able to exploit. After finding the vulnerability we were able to get your database credentials and extract your entire database and move the information to an offshore server.<br />\r\n<br />\r\nWhat does this mean?<br />\r\n<br />\r\nWe will systematically go through a series of steps of totally damaging your reputation. First your database will be leaked or sold to the highest bidder which they will use with whatever their intentions are. Next if there are e-mails found they will be e-mailed that their information has been sold or leaked and your site https://mhrsifat.xyz was at fault thusly damaging your reputation and having angry customers/associates with whatever angry customers/associates do. Lastly any links that you have indexed in the search engines will be de-indexed based off of blackhat techniques that we used in the past to de-index Our targets.<br />\r\n<br />\r\nHow do i stop this?<br />\r\n<br />\r\nWe are willing to refrain from destroying your site&#039;s reputation for a small fee. The current fee is $5000 in bitcoins (0.043 BTC).<br />\r\n<br />\r\nSend the bitcoin to the following Bitcoin address (Make sure to copy and paste):<br />\r\n<br />\r\n bc1qel7v90m26e98a2mlgka5t2087wxk733ssv6u7h <br />\r\n<br />\r\nOnce you have paid we will automatically get informed that it was your payment. Please note that you have to make payment within 5 days after receiving this e-mail or the database leak, e-mails dispatched, and de-index of your site WiLL start!<br />\r\n<br />\r\nHow do i get Bitcoins?<br />\r\n<br />\r\nYou can easily buy bitcoins via several websites or even offline from a Bitcoin-ATM.<br />\r\n<br />\r\nWhat if i don&#039;t pay?<br />\r\n<br />\r\nWe will start the attack at the indicated date and uphold it until you do, there&#039;s no counter measure to this, you will Only end up wasting more money trying to find a solution. We will completely destroy your reputation amongst google and your customers.<br />\r\n<br />\r\nThis is not a hoax, do not reply to this email, don&#039;t try to reason or negotiate, we will not read any replies. Once you have paid we will stop what we were doing and you will never hear from us again!<br />\r\n<br />\r\nPlease note that Bitcoin is anonymous and no one will find out that you have complied.', '2025-07-18 18:09:04'),
(23, 'Mike Lars-Erik Smit', 'info@strictlydigital.net', 'Semrush links for mhrsifat.xyz', 'Hello, <br />\r\n <br />\r\nReceiving some bunch of links pointing to mhrsifat.xyz could have 0 value or harmful results for your website. <br />\r\n <br />\r\nIt really isn’t important the number of backlinks you have, what matters is the number of search terms those websites rank for. <br />\r\n <br />\r\nThat is the most important element. <br />\r\nNot the meaningless Domain Authority or ahrefs DR score. <br />\r\nAnyone can manipulate those. <br />\r\nBUT the amount of high-traffic search terms the domains that link to you contain. <br />\r\nThat’s the bottom line. <br />\r\n <br />\r\nHave such links redirect to your site and your rankings will skyrocket! <br />\r\n <br />\r\nWe are providing this powerful offer here: <br />\r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ <br />\r\n <br />\r\nNeed more details, or want to know more, chat with us here: <br />\r\nhttps://www.strictlydigital.net/whatsapp-us/ <br />\r\n <br />\r\nSincerely, <br />\r\nMike Lars-Erik Smit<br />\r\n <br />\r\nstrictlydigital.net <br />\r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-07-19 02:33:49'),
(25, 'Edgar Hoffmann', 'ce8982913@gmail.com', 'Confidential Investment Opportunity', 'Dear Friend, <br />\r\n <br />\r\nMy name is Edgar Hoffmann, and I am writing to you from Slovakia. <br />\r\n <br />\r\nI am currently facing targeted actions by the Slovakian government, and my bank assets have become the focus of these measures. I have €16,560,000 deposited in a Slovak bank, and I intend to transfer these funds out of the country to a bank account that is not in my name. <br />\r\n <br />\r\nIf you are capable of receiving the funds and investing them on a long-term basis, please contact me to indicate your interest. We can then discuss the details further. <br />\r\n <br />\r\nYou may reach me directly at my personal email: hoffmannedgar636@gmail.com. Kindly use this email address for all correspondence. <br />\r\n <br />\r\nI look forward to hearing from you. <br />\r\n <br />\r\nWarm regards, <br />\r\n <br />\r\nEdgar Hoffmann', '2025-07-19 09:59:55'),
(26, 'Gemma Marshall', 'gemmamarshall811@gmail.com', 'Social Media Growth Service', 'Hi there,<br />\r\n<br />\r\nWe run a Social Media growth service, which increases your number of followers both safely and practically.<br />\r\n<br />\r\n- We guarantee to gain you 700-1500+ followers per month.<br />\r\n- People follow because they are interested in your profile, increasing likes, comments and interaction.<br />\r\n- All actions are made manually by our team. We do not use any &#039;bots&#039;.<br />\r\n<br />\r\nThe price is just $40 (USD) per month, and we can start immediately.<br />\r\n<br />\r\nIf you have any questions, let me know, and we can discuss further.<br />\r\n<br />\r\nKind Regards,<br />\r\nGemma', '2025-07-21 10:41:54'),
(27, 'Mike Anders Nilsen', 'info@speed-seo.net', 'Find mhrsifat.xyz SEO Issues totally free', 'Hi, <br />\r\nWorried about hidden SEO issues on your website? Let us help — completely free. <br />\r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. <br />\r\n <br />\r\nRun Your Free SEO Check Now <br />\r\nhttps://www.speed-seo.net/check-site-seo-score/ <br />\r\n <br />\r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ <br />\r\n <br />\r\nBest regards, <br />\r\n <br />\r\n <br />\r\nMike Anders Nilsen<br />\r\n <br />\r\nSpeed SEO Digital <br />\r\nEmail: info@speed-seo.net <br />\r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-07-27 06:23:23'),
(28, 'Starseed Council', 'starseed@x99a1366.xyz', 'Trying to get in touch', 'Was instructed this the best way to get into contact with Linda on behalf of the starseed council. You were sent down to Earth for the human experience but there was an anomaly in the system that can&#039;t be corrected. We can&#039;t get the exact date and only that it will happen in 2025. The wars/conflict with India and Pakistan, Ukraine and Russia, Iran and Israel are going to lead to a nuclear war which will be an extinction level event destroying the majority of the population on Earth. In the past this was corrected but too many happening at one time happening at one time is making it impossible to correct. This is disrupting the whole experience and are calling back starseeds to their home planets and dimensions. In certain situations like this, we can pull you out at the last moment or be able to leave anytime you want now being aware after the veil of forgetfulness. Based on the level of the event you can be pulled out prior. Memory purges and alterations can be initiated for the next experience on another planet/dimension or could just choose to go back to the originating dimension or planet that you are originally from. s9d8f7a896ew', '2025-07-27 14:38:55'),
(29, 'Marcelo Cooper', 'cooper.marcelo@yahoo.com', 'No Sales From AI? Your Content Gets Ignored?', 'Hello,<br />\r\n<br />\r\nWe have a promotional offer for your website mhrsifat.xyz.<br />\r\n<br />\r\nAI Affiliate Goldmine is a completely beginner-friendly system that shows you how to use AI to create content, get organic traffic, build your email list, and earn affiliate commissions, even if you are starting from scratch.<br />\r\n<br />\r\n- You&#039;re not wasting hours trying to figure out AI tools.<br />\r\n<br />\r\n- You&#039;re not guessing what to post or write each day<br />\r\n<br />\r\n- You&#039;re not struggling to grow your business.<br />\r\n<br />\r\n<br />\r\nSee it in action: https://www.novaai.expert/AIAffiliateGoldmine<br />\r\n<br />\r\nYou are receiving this message because we believe our offer may be relevant to you. <br />\r\nIf you do not wish to receive further communications from us, please click here to UNSUBSCRIBE:<br />\r\nhttps://www.novaai.expert/unsubscribe?domain=mhrsifat.xyz<br />\r\nAddress: 209 West Street Comstock Park, MI 49321<br />\r\nLooking out for you, Ethan Parker', '2025-08-03 04:14:12'),
(30, 'Mike Alexandre Schneider', 'info@professionalseocleanup.com', 'Urgent: Toxic Links Found on mhrsifat.xyz', 'Hi, <br />\r\nWhile reviewing mhrsifat.xyz, we spotted toxic backlinks that could put your site at risk of a Google penalty. <br />\r\n <br />\r\nWe can clean up your link profile and protect your rankings — all for just $5. <br />\r\n <br />\r\nFix it now before Google does: <br />\r\nhttps://www.professionalseocleanup.com/ <br />\r\n <br />\r\nNeed help or questions? Chat here: <br />\r\nhttps://www.professionalseocleanup.com/whatsapp/ <br />\r\n <br />\r\nBest, <br />\r\nMike Alexandre Schneider<br />\r\n <br />\r\n+1 (855) 221-7591 <br />\r\ninfo@professionalseocleanup.com', '2025-08-03 08:28:07'),
(31, 'Ellie Watson', 'elliewatson215@gmail.com', 'Quality Backlink Partnership for mhrsifat.xyz (DA 64)', 'Hi,<br />\r\n<br />\r\nI hope this email finds you well.<br />\r\n<br />\r\nI&#039;m reaching out as I&#039;ve been impressed with the content on mhrsifat.xyz. We&#039;re offering a unique opportunity to enhance your online presence with a high-quality backlink from our website. We boast strong domain metrics with a Domain Authority (DA) of 64 (Moz) and a Domain Rating (DR) of 30 (Ahrefs).<br />\r\n<br />\r\nWe offer flexible options, including guest posting, content creation, and strategic link insertions, all designed to significantly boost your SEO and drive targeted traffic.<br />\r\n<br />\r\nIf you&#039;re interested in boosting your site&#039;s SEO, please let us know. If this isn&#039;t a good fit for you, no problem, just delete this email.<br />\r\n<br />\r\nLooking forward to the possibility of collaborating.<br />\r\n<br />\r\nKind Regards<br />\r\nEllie', '2025-08-05 06:19:03'),
(33, 'Mike Andreas Martinez', 'mike@monkeydigital.co', 'Collaboration Request', 'Hey, <br />\r\n <br />\r\nThis is Mike from Monkey Digital, <br />\r\nI am reaching out about a great opportunity. <br />\r\n <br />\r\nHow would you like to place our ads on your platform and link back via your personalized tracking link towards high-demand products from our website? <br />\r\n <br />\r\nThis way, you receive a recurring 35% residual income, every month from any purchases that are made from your website. <br />\r\n <br />\r\nThink about it, all businesses benefit from SEO, so this is a big opportunity. <br />\r\n <br />\r\nWe already have thousands of affiliates and our payments are processed every month. <br />\r\nIn the past month, we reached $27280 in affiliate earnings to our partners. <br />\r\n <br />\r\nIf this sounds good, kindly contact us here: <br />\r\nhttps://monkeydigital.co/affiliates-whatsapp/ <br />\r\n <br />\r\nOr register today: <br />\r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ <br />\r\n <br />\r\nCheers, <br />\r\nMike Andreas Martinez<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-08-06 22:03:05'),
(34, 'Marcela Mcclanahan', 'mcclanahan.marcela@msn.com', 'Gets You Traffic From Google, YouTube AND ChatGPT!', 'Hello,<br />\r\n<br />\r\nWe have a promotional offer for your website mhrsifat.xyz.<br />\r\n<br />\r\nIf You Want FREE, Targeted Traffic <br />\r\nFrom The TOP 3 Free Traffic Sources, <br />\r\nThen Pay Close Attention...<br />\r\nSee it in action: https://goldsolutions.pro/TrafficSniper<br />\r\n<br />\r\nYou are receiving this message because we believe our offer may be relevant to you. <br />\r\nIf you do not wish to receive further communications from us, please click here to UNSUBSCRIBE:<br />\r\nhttps://goldsolutions.pro/unsubscribe?domain=mhrsifat.xyz<br />\r\nAddress: 209 West Street Comstock Park, MI 49321<br />\r\nLooking out for you, Ethan Parker', '2025-08-07 23:01:50'),
(35, 'Lauren Murphy', 'laurenseo434@gmail.com', 'SEO Solutions to Grow mhrsifat.xyz', 'Hi,<br />\r\n<br />\r\nI&#039;ve just been on mhrsifat.xyz and wanted to reach out as we help businesses like yours significantly enhance their online visibility.<br />\r\n<br />\r\nWe offer comprehensive SEO solutions, including keyword research, our Ultimate Optimization Package, Google Map Citations, high-authority backlink building, and on-demand Ahrefs Reports.<br />\r\n<br />\r\nOur process focuses on delivering measurable results through strategic analysis and continuous improvement.<br />\r\n<br />\r\nIf this is of interest and/or have any questions, just get in touch and we can discuss further.<br />\r\n<br />\r\nKind Regards,<br />\r\nLauren', '2025-08-08 22:08:16'),
(36, 'Mike Jiirqen Gustafsson', 'info@digital-x-press.com', 'Add AEO to your SEO strategies today !', 'Hi, <br />\r\nI realize that some companies struggle understanding that Answer Engine Optimization (AEO) is a long-term game and a strategically planned ongoing investment. <br />\r\n <br />\r\nUnfortunately, very few website owners have the willingness to recognize the gradual yet significant results that can completely boost their digital visibility. <br />\r\n <br />\r\nWith regular search engine updates, a stable, long-term strategy including Answer Engine Optimization (AEO) is essential for getting a positive ROI. <br />\r\n <br />\r\nIf you agree this as the right strategy, partner with us! <br />\r\n <br />\r\nDiscover Our Monthly SEO Services https://www.digital-x-press.com/unbeatable-seo/ <br />\r\n <br />\r\nReach Out on Instant Messaging https://www.digital-x-press.com/whatsapp-us/ <br />\r\n <br />\r\nWe provide remarkable results for your investment, and you will appreciate choosing us as your growth partner. <br />\r\n <br />\r\nWarm regards, <br />\r\nDigital X SEO Experts <br />\r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-08-10 09:55:24'),
(37, 'Ripon Hossain', 'riponhossainmd744@gmail.com', 'portfolio', 'Please build my portfolio like as your portfolio', '2025-08-12 12:49:11'),
(38, 'Mike Daniel Gustafsson', 'info@strictlydigital.net', 'Semrush links for mhrsifat.xyz', 'Hi there, <br />\r\n <br />\r\nGetting some collection of links pointing to mhrsifat.xyz might bring 0 value or negative impact for your site. <br />\r\n <br />\r\nIt really doesn’t matter how many backlinks you have, what matters is the number of keywords those platforms rank for. <br />\r\n <br />\r\nThat is the key factor. <br />\r\nNot the fake Moz DA or ahrefs DR score. <br />\r\nAnyone can manipulate those. <br />\r\nBUT the volume of high-traffic search terms the sites that point to your site rank for. <br />\r\nThat’s what really matters. <br />\r\n <br />\r\nGet these quality links link to your domain and you will ROCK! <br />\r\n <br />\r\nWe are providing this special service here: <br />\r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ <br />\r\n <br />\r\nIn doubt, or need more information, message us here: <br />\r\nhttps://www.strictlydigital.net/whatsapp-us/ <br />\r\n <br />\r\nSincerely, <br />\r\nMike Daniel Gustafsson<br />\r\n <br />\r\nstrictlydigital.net <br />\r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-08-16 13:47:21'),
(39, 'Mike Edward Bonnet', 'mike@monkeydigital.co', 'Boost Your Website Traffic with Targeted Social Ads – Only $10 for 10K Visits!', 'Hello, <br />\r\n <br />\r\nI wanted to reach out with something that could seriously boost your website’s traffic. We work with a trusted ad network that allows us to deliver genuine, location-based social ads traffic for just $10 per 10,000 visits. <br />\r\n <br />\r\nThis isn&#039;t bot traffic—it’s engaged traffic, tailored to your preferred location and niche. <br />\r\n <br />\r\nWhat you get: <br />\r\n <br />\r\n10,000+ genuine visitors for just $10 <br />\r\nLocalized traffic for multiple regions <br />\r\nLarger traffic packages available based on your needs <br />\r\nProven to work—we even use this for our SEO clients! <br />\r\n <br />\r\nReady to scale? Check out the details here: <br />\r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ <br />\r\n <br />\r\nOr ask any questions on WhatsApp: <br />\r\nhttps://monkeydigital.co/whatsapp-us/ <br />\r\n <br />\r\nLet&#039;s get started today! <br />\r\n <br />\r\nBest, <br />\r\nMike Edward Bonnet<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-08-17 08:04:16'),
(40, 'Mike Lucas Rouxson', 'info@speed-seo.net', 'Find mhrsifat.xyz SEO Issues totally free', 'Hi, <br />\r\nWorried about hidden SEO issues on your website? Let us help — completely free. <br />\r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. <br />\r\n <br />\r\nRun Your Free SEO Check Now <br />\r\nhttps://www.speed-seo.net/check-site-seo-score/ <br />\r\n <br />\r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ <br />\r\n <br />\r\nBest regards, <br />\r\n <br />\r\n <br />\r\nMike Lucas Rouxson<br />\r\n <br />\r\nSpeed SEO Digital <br />\r\nEmail: info@speed-seo.net <br />\r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-08-19 08:33:19'),
(41, 'git.php', 'sonarmadina570@gmail.com', 'Request to Enable Specific PHP Functions', 'sfdfsd', '2025-08-26 11:16:27'),
(42, 'Danielelazy', 'sjogrentomas0@gmail.com', 'Remove false and misleading Google reviews, guaranteed. Only pay if I succeed', 'Hello mhrsifat.xyz, <br />\r\n <br />\r\nAdam here from Erasify (Erasify.eu) <br />\r\n <br />\r\nI&#039;m wondering if your business has a review on Google that you perceive as misleading, false, or perhaps even written by a competitor? If so, I can help you remove it, and you only pay if I succeed. My teams success rate is over 99%, and it usually takes us less than a week to get it removed. <br />\r\n <br />\r\nInterested? <br />\r\n <br />\r\nYou can reach me at my Whatsapp number +46 72-4473401 (you can also call me at that number too), or you can book a quick videocall at https://calendly.com/aw--u2_r/15min', '2025-08-27 10:24:09'),
(43, 'Mike Svein Bertrand', 'info@professionalseocleanup.com', 'Urgent: Toxic Links Found on mhrsifat.xyz', 'Hi, <br />\r\nWhile reviewing mhrsifat.xyz, we spotted toxic backlinks that could put your site at risk of a Google penalty. <br />\r\n <br />\r\nWe can clean up your link profile and protect your rankings — all for just $5. <br />\r\n <br />\r\nFix it now before Google does: <br />\r\nhttps://www.professionalseocleanup.com/ <br />\r\n <br />\r\nNeed help or questions? Chat here: <br />\r\nhttps://www.professionalseocleanup.com/whatsapp/ <br />\r\n <br />\r\nBest, <br />\r\nMike Svein Bertrand<br />\r\n <br />\r\n+1 (855) 221-7591 <br />\r\ninfo@professionalseocleanup.com', '2025-08-28 02:05:58'),
(44, 'Mike Thierry Nilsson', 'info@digital-x-press.com', 'Add AEO to your SEO strategies today !', 'Hi, <br />\r\nI realize that many businesses find it challenging grasping that SEO is a long-term game and a carefully organized ongoing investment. <br />\r\n <br />\r\nUnfortunately, very few businesses have the willingness to recognize the incremental yet significant benefits that can completely change their online presence. <br />\r\n <br />\r\nWith regular search engine updates, a stable, ongoing approach including Answer Engine Optimization (AEO) is vital for achieving a positive ROI. <br />\r\n <br />\r\nIf you agree this as the ideal strategy, work with us! <br />\r\n <br />\r\nCheck out Our Monthly SEO Services https://www.digital-x-press.com/unbeatable-seo/ <br />\r\n <br />\r\nTalk to Us on Instant Messaging https://www.digital-x-press.com/whatsapp-us/ <br />\r\n <br />\r\nWe offer remarkable results for your resources, and you will appreciate choosing us as your growth partner. <br />\r\n <br />\r\nBest regards, <br />\r\nDigital X SEO Experts <br />\r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-09-02 01:13:27'),
(45, 'Test', 'mdhafizurrahmansifat@gmail.com', 'Test', 'Ggbhh', '2025-09-03 18:36:17'),
(46, 'TommyBuill', 'urbmocyvyooz7m4@tempmail.us.com', 'Shop Verified PVA Accounts Easily at AccStores.com', 'For bulk verified accounts, https://AccStores.com is your trusted source. We offer PVA accounts that are secure and reliable, created using unique server IPs to ensure they work seamlessly. Explore our collection today and enjoy fast delivery and great prices on all your account needs. <br />\r\n <br />\r\nCheck This Out: <br />\r\n <br />\r\nhttps://AccStores.com <br />\r\n <br />\r\nGrateful Thanks!', '2025-09-05 12:21:19'),
(47, 'Mike Dieter Mercier', 'mike@monkeydigital.co', 'Collaboration Request', 'Hey, <br />\r\n <br />\r\nThis is Mike from Monkey Digital, <br />\r\nI am getting in touch to discuss a exciting opportunity. <br />\r\n <br />\r\nHow would you like to place our banners on your website and connect via your personalized referral link towards hot-selling products from our business? <br />\r\n <br />\r\nThis way, you receive a recurring 35% profit share, continuously from any sales that generate from your audience. <br />\r\n <br />\r\nThink about it, all businesses require SEO, so this is a huge opportunity. <br />\r\n <br />\r\nWe already have thousands of affiliates and our payments are processed monthly. <br />\r\nLast month, we paid out over $27,000 in commissions to our partners. <br />\r\n <br />\r\nIf you want in, kindly contact us here: <br />\r\nhttps://monkeydigital.co/affiliates-whatsapp/ <br />\r\n <br />\r\nOr register today: <br />\r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ <br />\r\n <br />\r\nBest Regards, <br />\r\nMike Dieter Mercier<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-09-07 00:27:00'),
(48, 'GrantItala', 'nomin.momin+191j6@mail.ru', 'Odkwsdjferheejdfehueyidjaswdhuheufhe fjhwegfweuihdwhfi ifhewidjawsjdgewuifhqw', 'Mfwdjwdhefiejfh fhiwuewuoioruiwes jkcsjhcksdlalsdjfhgh ejdowkkDIEWHRUEOFIW JIEWFOKDWDJEWIHFIEWFJEWFJIkhfjejfie efjfwjdfe mhrsifat.xyz', '2025-09-12 17:49:50'),
(49, 'Mike Arthur Wagner', 'mike@monkeydigital.co', 'Boost Your Website Traffic with Targeted Social Ads – Only $10 for 10K Visits!', 'Dear Webmaster, <br />\r\n <br />\r\nI wanted to check in with something that could seriously improve your website’s reach. We work with a trusted ad network that allows us to deliver authentic, location-based social ads traffic for just $10 per 10,000 visits. <br />\r\n <br />\r\nThis isn&#039;t junk clicks—it’s actual users, tailored to your target country and niche. <br />\r\n <br />\r\nWhat you get: <br />\r\n <br />\r\n10,000+ genuine visitors for just $10 <br />\r\nLocalized traffic for multiple regions <br />\r\nHigher volumes available based on your needs <br />\r\nTrusted by SEO experts—we even use this for our SEO clients! <br />\r\n <br />\r\nInterested? Check out the details here: <br />\r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ <br />\r\n <br />\r\nOr ask any questions on WhatsApp: <br />\r\nhttps://monkeydigital.co/whatsapp-us/ <br />\r\n <br />\r\nLet&#039;s get started today! <br />\r\n <br />\r\nBest, <br />\r\nMike Arthur Wagner<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-09-12 19:09:58'),
(50, 'Joshuaviads', 'janetflint7@gmail.com', 'Urgently withdraw your earned $3,758,645', 'You registered in our mining affiliate program on January 19, 2021. <br />\r\nYou have accumulated $3,758,645 in your account, but for some reason you have not logged into your personal account since October 17, 2023. <br />\r\nWe closed on August 22, 2025. <br />\r\nIf you want to withdraw your $3,758,645, then pay the withdrawal fee before September 20, 2025, since now all payments to partners are made manually. <br />\r\nYou can pay the commission here: bitcoin:bc1qa5r6cuvqde4kx5m4s3a5mh2j8arkpt0ve5lf69?amount=0.02371&amp;message=Payment%20of%20the%20fee%20for%20the%20payment%20of%20%243%2C758%2C645%2C%20due%20September%2020%2C%202025&amp;time=1757758069&amp;exp=604800 <br />\r\nIn other words, send a withdrawal fee of 0.02371 BTC to a bitcoin wallet: bc1qa5r6cuvqde4kx5m4s3a5mh2j8arkpt0ve5lf69 <br />\r\nAfter payment, $3,758,645 will be credited to your account. <br />\r\nIf you do not pay the commission by September 20, 2025, you will no longer be able to receive your $3,758,645', '2025-09-17 11:20:11'),
(51, 'Mike Heinz Taylor', 'info@speed-seo.net', 'Find mhrsifat.xyz SEO Issues totally free', 'Hi, <br />\r\nWorried about hidden SEO issues on your website? Let us help — completely free. <br />\r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. <br />\r\n <br />\r\nRun Your Free SEO Check Now <br />\r\nhttps://www.speed-seo.net/check-site-seo-score/ <br />\r\n <br />\r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ <br />\r\n <br />\r\nBest regards, <br />\r\n <br />\r\n <br />\r\nMike Heinz Taylor<br />\r\n <br />\r\nSpeed SEO Digital <br />\r\nEmail: info@speed-seo.net <br />\r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-09-18 13:49:04'),
(52, 'Russelfloca', 'minggao1993@gmail.com', 'Upgrade Your Tech Without Upgrading Your Bill.', 'Drive Engagement: What’s in Your Box? https://telegra.ph/Win-iPhones-Samsung-09-18-3417?7e8m8a1r7y5qj5e', '2025-09-19 15:08:11'),
(53, 'BrianUsaps', 'abidinajo94@gmail.com', 'The iPhone 16 Pro 512GB is the definition of premium.', 'The iPhone 16 Pro is a technological triumph for you. https://telegra.ph/Win-iPhones-Samsung-09-18-3962?0w9j6f5i3z7toy3 <br />\r\nElevate your status with a winning iPhone 16 Pro 512GB. https://telegra.ph/Win-iPhones-Samsung-09-18-1720?8x4p9a1p4c0sr43 <br />\r\nThe Galaxy S24 Ultra is power and beauty, won today. https://telegra.ph/Win-iPhones-Samsung-09-18-1248?5z3l0f5p3x8qe4p <br />\r\nTHE S24 ULTRA IS THE LIFE OF THE PARTY, DELIVERED TO YOU. https://telegra.ph/Win-iPhones-Samsung-09-18-4094?0c2o0s5r7c0mie0 <br />\r\nThe iPhone 16 Pro 512GB is the value champion for winners. https://telegra.ph/Win-iPhones-Samsung-09-18-3745?2e7n0k5o7v6dd56', '2025-09-21 09:05:39'),
(54, 'BrianUsaps', 'cherrrycore001@gmail.com', 'Samsung Galaxy S24 Ultra: The Android king awaits you.', 'From S10E to S24 Ultra. See what others have won. https://telegra.ph/Win-iPhones-Samsung-09-18-1162?1a1o6f4w4q5yvlr <br />\r\nUSE YOUR BALANCE TO CLAIM DELIVERY OF YOUR S24 ULTRA. https://telegra.ph/Win-iPhones-Samsung-09-18-2802?4s2j9a4w4u8dyc1 <br />\r\nENHANCE YOUR DAY. CLICK TO WIN. CELEBRATE YOUR S24 ULTRA. https://telegra.ph/Win-iPhones-Samsung-09-18-2933?1e5g7g4t6w9tm50 <br />\r\nWin an iPhone 16 Pro and open up new possibilities. https://telegra.ph/Win-iPhones-Samsung-09-18-4083?4v3m0s1q6b9rgl7 <br />\r\nTRACK YOUR PARCEL EASILY WITH THE CODE IN “MY PARCELS”. https://telegra.ph/Win-iPhones-Samsung-09-18-3656?1f8i7l5q5r5fn3q', '2025-09-23 08:24:30'),
(55, 'BrianUsaps', 'caro.kuch@web.de', 'Sehr sexy Madchen, die nur hier nach schnellem Sex suchen', 'Dating fur Erwachsene mit zig Millionen sexy Madchen http://service.k28.de/out/?https://telegra.ph/Online-Dating-f%C3%BCr-Sex-09-23?7688', '2025-09-24 11:27:28'),
(56, 'BrianUsaps', 'ammi265@yahoo.fr', 'Very sexy girls meet for sex only on this dating site', 'Very beautiful girls are looking for sex for one time only on this site https://www.bayreviews.com/link/aHR0cHM6Ly90ZWxlZ3JhLnBoL09ubGluZS1kYXRpbmctZm9yLXNleC0wOS0yND81MDIz', '2025-09-25 18:08:08'),
(57, 'BrianUsaps', 'mr.applegate77@gmail.com', 'VERY SEXY WOMEN MEET FOR SEX ONLY ON THIS DATING SITE', 'Very sexy girls are looking for sex for one time only on this site https://www.4oito.com.br/r?u=https%3A%2F%2Ftelegra.ph%2FOnline-dating-for-sex-09-24%3F7113&amp;bid=88', '2025-09-27 05:30:48'),
(58, 'Mike Matthias Durand', 'info@professionalseocleanup.com', 'Fix August Google Spam update ranking problems for free', 'Hi, <br />\r\nWhile reviewing mhrsifat.xyz, we spotted toxic backlinks that could put your site at risk of a Google penalty. Especially that this Google SPAM update had a high impact in ranks. This is an easy and quick fix for you. Totally free of charge. No obligations. <br />\r\n <br />\r\nFix it now: <br />\r\nhttps://www.professionalseocleanup.com/ <br />\r\n <br />\r\nNeed help or questions? Chat here: <br />\r\nhttps://www.professionalseocleanup.com/whatsapp/ <br />\r\n <br />\r\nBest, <br />\r\nMike Matthias Durand<br />\r\n <br />\r\n+1 (855) 221-7591 <br />\r\ninfo@professionalseocleanup.com', '2025-09-27 12:14:59'),
(59, 'BrianUsaps', 'jeramybaker777@gmail.com', 'ADULT DATING WITH MILLIONS OF SEXY WOMEN', 'VERY SEXY GIRLS ARE LOOKING FOR SEX FOR ONE TIME ONLY HERE http://www.asc-aqua.cn/?cn=https%3A%2F%2Ftelegra.ph%2FOnline-dating-for-sex-09-24%3F6112', '2025-09-28 16:34:23'),
(60, 'BrianUsaps', 'quiannaholden@yahoo.com', 'Beautiful girls want sex with you only here', 'VERY ATTRACTIVE GIRLS WANT SEX WITH YOU ONLY HERE https://en.keraben.com/boletines/redir?dir=telegra.ph%2FOnline-dating-for-sex-09-24%3F8877', '2025-09-30 07:01:01'),
(61, 'Mike Arne Hoffmann', 'info@digital-x-press.com', 'Add AEO to your SEO strategies today !', 'Hi, <br />\r\nI realize that most website owners find it challenging recognizing that Answer Engine Optimization (AEO) is a gradual process and a strategically planned ongoing investment. <br />\r\n <br />\r\nSadly, very few website owners have the willingness to observe the incremental yet meaningful results that can completely boost their search performance. <br />\r\n <br />\r\nWith Google’s evolving algorithms, a consistent, continuous SEO strategy including Answer Engine Optimization (AEO) is critical for getting a positive ROI. <br />\r\n <br />\r\nIf you recognize this as the best approach, partner with us! <br />\r\n <br />\r\nDiscover Our Monthly SEO Services https://www.digital-x-press.com/unbeatable-seo/ <br />\r\n <br />\r\nTalk to Us on Instant Messaging https://www.digital-x-press.com/whatsapp-us/ <br />\r\n <br />\r\nWe deliver exceptional performance for your budget, and you will appreciate choosing us as your digital marketing ally. <br />\r\n <br />\r\nBest regards, <br />\r\nDigital X SEO Experts <br />\r\nPhone/WhatsApp: +1 (844) 754-1148', '2025-10-02 00:37:38'),
(62, 'Mike Peder Johnson', 'mike@monkeydigital.co', 'Collaboration Request', 'Hey, <br />\r\n <br />\r\nThis is Mike from Monkey Digital, <br />\r\nI am contacting you to discuss a exciting opportunity. <br />\r\n <br />\r\nHow would you like to feature our promotions on your platform and link back via your unique affiliate link towards hot-selling SEO solutions from our website? <br />\r\n <br />\r\nThis way, you make a solid 35% commission, every month from any purchases that generate from your site. <br />\r\n <br />\r\nThink about it, all businesses benefit from SEO, so this is a huge opportunity. <br />\r\n <br />\r\nWe already have 12k+ affiliates and our payments are processed every month. <br />\r\nLast month, we paid out over $27,000 in payouts to our affiliates. <br />\r\n <br />\r\nIf this sounds good, kindly message us here: <br />\r\nhttps://monkeydigital.co/affiliates-whatsapp/ <br />\r\n <br />\r\nOr register today: <br />\r\nhttps://www.monkeydigital.co/join-our-affiliate-program/ <br />\r\n <br />\r\nBest Regards, <br />\r\nMike Peder Johnson<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-10-02 15:11:39'),
(63, 'slm_vdMi', 'reststerthorring1986@larpan-mobi4omes.ru', 'slm принтер купить', 'Найдите идеальный вариант для своего бизнеса и &lt;a href=https://klpl3r.ru/&gt;slm 3d принтер купить|3д принтер slm купить|slm принтер по металлу купить|slm принтер купить&lt;/a&gt; уже сегодня! <br />\r\nТакже можно посетить группы в соцсетях, посвященные slm печати.', '2025-10-08 00:35:15'),
(64, 'Arif', 'arifur@gmail.com', 'You jony sins', 'iam arif from usa', '2025-10-08 12:02:24'),
(65, 'Mike Bjorn De Smet', 'mike@monkeydigital.co', 'Boost Your Website Traffic with Targeted Social Ads – Only $10 for 10K Visits!', 'Dear Webmaster, <br />\r\n <br />\r\nI wanted to check in with something that could seriously boost your website’s traffic. We work with a trusted ad network that allows us to deliver real, location-based social ads traffic for just $10 per 10,000 visits. <br />\r\n <br />\r\nThis isn&#039;t fake traffic—it’s engaged traffic, tailored to your chosen market and niche. <br />\r\n <br />\r\nWhat you get: <br />\r\n <br />\r\n10,000+ genuine visitors for just $10 <br />\r\nCountry-specific traffic for your chosen location <br />\r\nHigher volumes available based on your needs <br />\r\nProven to work—we even use this for our SEO clients! <br />\r\n <br />\r\nWant to give it a try? Check out the details here: <br />\r\nhttps://www.monkeydigital.co/product/country-targeted-traffic/ <br />\r\n <br />\r\nOr ask any questions on WhatsApp: <br />\r\nhttps://monkeydigital.co/whatsapp-us/ <br />\r\n <br />\r\nLooking forward to getting you more traffic! <br />\r\n <br />\r\nBest, <br />\r\nMike Bjorn De Smet<br />\r\n <br />\r\nPhone/whatsapp: +1 (775) 314-7914', '2025-10-11 15:02:45'),
(66, 'Mike Stefan Nilsen', 'info@strictlydigital.net', 'Semrush links for mhrsifat.xyz', 'Greetings, <br />\r\n <br />\r\nReceiving some collection of links pointing to mhrsifat.xyz might bring no value or harmful results for your website. <br />\r\n <br />\r\nIt really doesn’t matter the total backlinks you have, what is crucial is the number of ranking terms those platforms are optimized for. <br />\r\n <br />\r\nThat is the critical factor. <br />\r\nNot the fake Moz DA or ahrefs DR score. <br />\r\nThat anyone can do these days. <br />\r\nBUT the amount of high-traffic search terms the sites that point to your site have. <br />\r\nThat’s what really matters. <br />\r\n <br />\r\nMake sure these backlinks redirect to your site and you will ROCK! <br />\r\n <br />\r\nWe are introducing this powerful service here: <br />\r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ <br />\r\n <br />\r\nNeed more details, or need more information, chat with us here: <br />\r\nhttps://www.strictlydigital.net/whatsapp-us/ <br />\r\n <br />\r\nBest regards, <br />\r\nMike Stefan Nilsen<br />\r\n <br />\r\nstrictlydigital.net <br />\r\nPhone/WhatsApp: +1 (877) 566-3738', '2025-10-11 16:26:19'),
(67, 'Joanna Riggs', 'joannariggs83@gmail.com', 'My thoughts on a video for mhrsifat.xyz', 'Hi,<br />\r\n<br />\r\nI just visited mhrsifat.xyz and wondered if you&#039;ve ever considered an impactful video to advertise your business? Our videos can generate impressive results on both your website and across social media.<br />\r\n<br />\r\nOur videos cost just $195 (USD) for a 30 second video ($239 for 60 seconds) and include a full script, voice-over and video.<br />\r\n<br />\r\nI can show you some previous videos we&#039;ve done if you want me to send some over. Let me know if you&#039;re interested in seeing samples of our previous work.<br />\r\n<br />\r\nRegards,<br />\r\nJoanna<br />\r\n<br />\r\nUnsubscribe: https://unsubscribe.video/unsubscribe.php?d=mhrsifat.xyz', '2025-10-15 07:53:39'),
(68, 'Mathew Lundgren', 'tomlawman@edny.net', 'Providing the funding for your projects', 'Hello, <br />\r\n <br />\r\nAt Cateus Investment Company (CIC), we understand that the right funding structure can significantly accelerate your business growth. Whether you’re an early-stage startup or a scaling enterprise, our investment solutions are tailored to align with your vision and long-term success. <br />\r\n <br />\r\nWe currently offer two primary financing options: <br />\r\n•	Debt Financing: Access capital at a competitive 3% annual interest rate, with no prepayment penalties—ideal for businesses seeking straightforward, low-cost funding while maintaining full ownership. <br />\r\n•	Convertible Debt Financing: A hybrid solution offering 3% annual interest with a conversion feature. After two years, the debt can convert into a 10–15% equity stake, providing both immediate funding and future alignment of interests. <br />\r\n <br />\r\nIf you’re seeking strategic funding with flexibility, we invite you to share your pitch deck or executive summary. Our team is ready to work with you to identify the most effective investment structure to support your business trajectory. <br />\r\n <br />\r\nWe look forward to exploring how CIC can partner with you to unlock your company’s full potential. <br />\r\n <br />\r\nWarm regards, <br />\r\nOman Rook <br />\r\nExecutive Investment Consultant | Director <br />\r\nCateus Investment Company (CIC) <br />\r\noman-rook@cateusgroup.org | cateusgroup@gmail.com <br />\r\nhttp://www.cateusinvestmentsgroup.com/', '2025-10-16 12:47:35'),
(69, 'kursy_jsOr', 'clfhcdmixOr@ugaritopari.site', 'курсы по нейросетям', 'Курс по нейросетям поможет вам освоить передовые технологии и применить их в своих проектах. <br />\r\nОпыт работы с нейросетями может стать весомым плюсом для карьерного роста. <br />\r\nмашинное обучение и искусственный интеллект &lt;a href=https://www.kurspoai.com/&gt;https://kurspoai.com/&lt;/a&gt;', '2025-10-17 14:27:20'),
(70, 'Mike George Schneider', 'info@speed-seo.net', 'Find mhrsifat.xyz SEO Issues totally free', 'Hi, <br />\r\nWorried about hidden SEO issues on your website? Let us help — completely free. <br />\r\nRun a 100% free SEO check and discover the exact problems holding your site back from ranking higher on Google. <br />\r\n <br />\r\nRun Your Free SEO Check Now <br />\r\nhttps://www.speed-seo.net/check-site-seo-score/ <br />\r\n <br />\r\nOr chat with us and our agent will run the report for you: https://www.speed-seo.net/whatsapp-with-us/ <br />\r\n <br />\r\nBest regards, <br />\r\n <br />\r\n <br />\r\nMike George Schneider<br />\r\n <br />\r\nSpeed SEO Digital <br />\r\nEmail: info@speed-seo.net <br />\r\nPhone/WhatsApp: +1 (833) 454-8622', '2025-10-19 16:24:07');

-- --------------------------------------------------------

--
-- Table structure for table `modify`
--

CREATE TABLE `modify` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `modify_date` datetime NOT NULL DEFAULT current_timestamp(),
  `total_modify` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `port_url` varchar(255) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_desc` varchar(255) NOT NULL,
  `port_cat` varchar(255) NOT NULL,
  `port_uploaded_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `port_url`, `port_name`, `port_desc`, `port_cat`, `port_uploaded_name`, `created_at`) VALUES
(26, 'https://sanda.mhrsifat.xyz/', 'Sanda Chat', 'A simple chatting application for fun.', 'PHP,Ajax,JavaScript', 'port_686de756545bd8.09593879.png', '2025-07-09 09:51:50'),
(27, 'https://sunlight.mhrsifat.xyz/', 'Sunlight Blog - Learning Project', 'A fun blog site.', 'WordPress,Bootstrap 5,JavaScript', 'port_68750bda411425.02503963.jpg', '2025-07-14 15:53:30'),
(28, 'https://logitrack.mhrsifat.xyz/', 'LogiTrack', 'A logistrick website - Learning Project', 'React,PHP,Tailwind', 'port_68b7c543d3b178.18528638.png', '2025-09-03 10:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `subscribe`
--

CREATE TABLE `subscribe` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thumbnail`
--

CREATE TABLE `thumbnail` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `thumb_name` varchar(255) NOT NULL,
  `thumb_uploaded_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `thumbnail`
--

INSERT INTO `thumbnail` (`id`, `blog_id`, `thumb_name`, `thumb_uploaded_name`, `created_at`) VALUES
(31, 38, 'rajib128-1751086629-63e2ead_xlarge.jpg', 'thumb_686ca0f8483c3.jpg', '2025-07-08 04:10:51'),
(32, 39, 'branches-1753745_640.jpg', 'thumb_686ca1588e8eb.jpg', '2025-07-08 04:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `initial_view` int(50) NOT NULL DEFAULT 0,
  `real_views` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `blog_id`, `initial_view`, `real_views`) VALUES
(30, 38, 746, 35),
(31, 39, 268, 36);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `name` (`username`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_description`
--
ALTER TABLE `blog_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_comment_blog` (`blog_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modify`
--
ALTER TABLE `modify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_modify_blog` (`blog_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_views_blog` (`blog_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `blog_description`
--
ALTER TABLE `blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `modify`
--
ALTER TABLE `modify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thumbnail`
--
ALTER TABLE `thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_description`
--
ALTER TABLE `blog_description`
  ADD CONSTRAINT `blog_description_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `modify`
--
ALTER TABLE `modify`
  ADD CONSTRAINT `modify_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD CONSTRAINT `thumbnail_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
