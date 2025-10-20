-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2025 at 08:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portfolio`
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
(1, 'admin', 'mhrsifat13@gmail.com', '$2y$10$oB67wBQwVIdt77a.vPGu9uTY3w6AISyEsl/I3/K25pMbIQLaOlH5G', 'active', '2025-05-13 01:13:34', '', 'Guest');

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
(2, 'This is a test', 1, '2025-05-13 11:12:04', 1),
(3, 'This is some text', 1, '2025-05-13 11:22:45', 1),
(4, 'This is some text', 1, '2025-05-13 11:22:46', 1),
(5, 'Test 5', 1, '2025-05-13 16:19:22', 1),
(6, 'Test 6 test aga', 2, '2025-05-13 16:19:32', 1),
(7, 'Test 7', 1, '2025-05-13 16:51:16', 1),
(8, 'Test 6 test aga', 2, '2025-05-13 18:24:47', 1),
(9, 'Test 6 test again', 2, '2025-05-13 18:30:45', 1),
(14, 'Phage 2 test', 2, '2025-05-13 22:14:34', 1),
(15, 'Phage 2 test 2', 2, '2025-05-13 22:16:41', 1),
(16, 'Phage 2 test 3', 1, '2025-05-13 22:25:36', 1),
(17, 'Phage 2 test 4', 2, '2025-05-13 22:28:07', 1),
(18, 'Test 6 test aga', 1, '2025-05-13 22:48:13', 1),
(19, 'Step-by-step Explanation:', 2, '2025-05-15 09:19:39', 1),
(24, 'ছাড়া পেলেন বোতলকাণ্ডের সেই শিক্ষার্থী, উপদেষ্টা মাহফুজের সঙ্গে ছবি', 3, '2025-05-17 09:54:17', 1),
(25, 'UTF-8 হচ্ছে একটা character encoding system।', 2, '2025-05-18 11:31:06', 1);

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
(1, 6, 'This is a test', 'Jjhb'),
(2, 7, '<p>Domain</p><p><strong>New domain</strong></p><p><i>Newnns</i></p><p>&nbsp;</p>', NULL),
(3, 8, 'Hununiby', 'Hubhcrxnknjvc'),
(4, 9, 'Kowkw\r\nKa.AnAjAjMama', 'Jnznznsnzj'),
(9, 14, 'Ksjjsjs', '<h3>jhshshshe</h3><h4>Jsjsh</h4>'),
(10, 15, 'Jjs', '<p>Hhsh</p>'),
(11, 16, 'Jsjhshs', '<p>Bsbhsbshjehs</p>'),
(12, 17, 'Nnznzns', '<p>Bbzbs</p>'),
(13, 18, 'Hshdhdhdhhdhdhd', '<p><strong>Hshdhdhdhhdhdhdhdhhdh</strong></p>'),
(14, 19, 'Uncomment session_start() in modify_blog.php:Witho...', '<p><strong>Uncomment session_start() in modify_blog.php:</strong><br>Without an active session, the CSRF token isn\'t stored or retrieved, causing validation failure in upload.php.</p><p><strong>Correct Thumbnail Image Path in modify_blog.php:</strong></p><figure class=\"table\"><table><tbody><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></tbody></table></figure><p><br>The current thumbnail\'s image source points to the wrong directory. Update it from portfolio to blog.</p><p><strong>Modified Files:</strong></p><p><strong>modify_blog.php:</strong></p><p>php</p><p>&nbsp;</p><p>&lt;?php session_start(); // Uncommented this line // Database connection using USER class try { &nbsp;$db = new USER(); &nbsp;$pdo = $db-&gt;getConnection(); &nbsp;$pdo-&gt;setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); } catch (Exception $e) { &nbsp;echo \"Database connection failed: \" . $e-&gt;getMessage(); &nbsp;exit; } // ... [rest of the code remains the same until the thumbnail display part] ?&gt; &lt;!DOCTYPE html&gt; &lt;html lang=\"en\"&gt; &lt;head&gt; &nbsp;&lt;!-- ... head section remains unchanged ... --&gt; &lt;/head&gt; &lt;body class=\"p-4\"&gt; &nbsp;&lt;div class=\"container\"&gt; &nbsp; &nbsp;&lt;!-- ... rest of the HTML remains the same ... --&gt; &nbsp; &nbsp; &nbsp;&lt;div class=\"mb-3\"&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;label class=\"form-label\"&gt;Current Thumbnail&lt;/label&gt;&lt;br&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;?php if ($blog[\'thumb_uploaded_name\']): ?&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&lt;img src=\"/../../images/blog/&lt;?= $blog[\'thumb_uploaded_name\'] ?&gt;\" &lt;!-- Corrected directory from portfolio to blog --&gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;alt=\"Thumbnail\" class=\"&lt;?= $blog[\'thumb_name\'] ?&gt;\" style=\"max-width:150px;\"&gt;&lt;br&gt;&lt;br&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;?php endif; ?&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;label class=\"form-label\"&gt;New Thumbnail (optional)&lt;/label&gt; &nbsp; &nbsp; &nbsp; &nbsp;&lt;input type=\"file\" name=\"thumbnail\" class=\"form-control\"&gt; &nbsp; &nbsp; &nbsp;&lt;/div&gt; &nbsp; &nbsp; &nbsp;&lt;!-- ... rest of the HTML remains the same ... --&gt;</p><p><strong>upload.php</strong> (no changes needed, ensure it has session_start() at the top as it already does).</p><p><strong>Explanation:</strong></p><p><strong>Session Start:</strong> The session must be active to store and retrieve the CSRF token correctly.</p><p><strong>Thumbnail Path:</strong> The image directory was incorrect, leading to broken images but not affecting uploads. Correcting it ensures consistency.</p><p>These changes address the CSRF validation failure due to inactive sessions and fix the thumbnail display path.</p>'),
(19, 24, 'জিজ্ঞাসাবাদ শেষে ছ...', '<p>জিজ্ঞাসাবাদ শেষে ছেড়ে দেওয়া হয়েছে তথ্য উপদেষ্টা মাহফুজ আলমের ওপর বোতল নিক্ষেপকারী সেই জবি শিক্ষার্থীকে। তাকে পরিবারের কাছে হস্তান্তর করেছে ঢাকা মহানগর গোয়েন্দা (ডিবি) পুলিশ।</p><p>আজ শুক্রবার বিকেলে তাকে পরিবারের কাছে হস্তান্তর করা হয়। বিষয়টি নিশ্চিত করেছেন ডিএমপির উপ-পুলিশ কমিশনার (ডিসি) মুহাম্মদ তালেবুর রহমান।</p><p>&nbsp;</p><p>এ দিকে জবির ওই শিক্ষার্থীকে ছেড়ে দেওয়ার পর উপদেষ্টা মাহফুজ আলমের সঙ্গে একটি ছবি প্রকাশ্য এসেছে। এ সময় ওই শিক্ষার্থীর পরিবারও মাহফুজ আলমের সঙ্গে ছিলেন।</p><p>ওই শিক্ষার্থীর সঙ্গে একটি ছবি ফেসবুকে পোস্ট করা হয়েছে মাহফুজ আলমের আইডি থেকে। সেখানে অ্যাডমিন জানিয়েছেন, তথ্য উপদেষ্টার উপর আক্রমণকারী মোহাম্মদ হুসাইনকে প্রাথমিক জিজ্ঞাসাবাদ শেষে ছেড়ে দে্য়ও হয়েছ।</p><p>ডিবি অফিসে তার সাথে ও তার পরিবারের সাথে কথা বলেছেন তথ্য উপদেষ্টা। আন্দোলন শেষে তিনি তাকে বাসায় আসার দাওয়াত দিয়েছেন। এর আগে দুপুরে তিনি হুসাইনকে প্রাথমিক জিজ্ঞাসাবাদ শেষে অভিভাবকদের জিম্মায় হস্তান্তরের অনুরোধ জানিয়েছিলেন স্বরাষ্ট্র মন্ত্রণালয়ে।</p><p>&nbsp;</p><p>ওই পোস্টে আরো জানানো হয়, শিক্ষা উপদেষ্টা জানিয়েছেন আর কয়েক ঘন্টার মধ্যেই জবির সমস্যার সমাধান নিয়ে সরকারের স্পষ্ট রোডম্যাপ জানানো হবে।</p><p>জবির শিক্ষার্থীদের আবাসন সঙ্কট দ্রুতই সমাধান হোক।</p><p>&nbsp;</p><p>এর আগে বিকেলে জবি শিক্ষার্থীদের আন্দোলন থেকে বোতলকাণ্ডে অভিযুক্ত শিক্ষার্থীকে ছেড়ে দেওয়ার দাবি জানানো হয়। তদন্ত ব্যতীত কোনো পদক্ষেপ নিলে ডিবি অফিস ঘেরাও করার হুঁশিয়ারি দেন তারা।</p>'),
(20, 25, 'বাংলায় বুঝালে:👉 UTF-8 হল??...', '<p>বাংলায় বুঝালে:</p><p>👉 <strong>UTF-8</strong> হলো এমন একটা পদ্ধতি, যেটা কম্পিউটারকে বলে দেয় কোন <strong>বাইনারি কোড</strong> (০ আর ১) কোন <strong>অক্ষর (character)</strong> বোঝায়।</p><p>এটা দিয়ে আপনি <strong>ইংরেজি, বাংলা, চাইনিজ, আরবি — সব ভাষার অক্ষর একসাথে সঠিকভাবে রাখতে আর দেখাতে পারবেন।</strong></p><h3>উদাহরণ:</h3><p>আপনি যখন <strong>\"আমি তোমাকে ভালোবাসি\"</strong> লেখেন, তখন কম্পিউটার সেটাকে ০ আর ১ এ রূপান্তর করে। কোন অক্ষর কোন ০-১ হবে, সেটা নির্ধারণ করে <strong>UTF-8</strong>।</p><p>এছাড়া <strong>UTF-8</strong> একটা <strong>variable-length encoding</strong>।<br>মানে একেক অক্ষর একেক সাইজের হতে পারে।</p><p>ইংরেজি অক্ষর: ১ বাইট</p><p>বাংলা অক্ষর: ২-৩ বাইট<br>(যেমন: অ → ৩ বাইট)</p><h3>কেন ব্যবহার করা হয়?</h3><p>✅ পৃথিবীর সব ভাষার অক্ষর একসাথে রাখতে<br>✅ ওয়েবসাইটে অক্ষর ভেঙে না যাওয়ার জন্য<br>✅ ডাটাবেসে multi-language ডাটা রাখতে</p><h3>কঠিন শব্দের বাংলা:</h3><p><strong>Encoding</strong> → এনকোডিং (কোডিং করে রাখা পদ্ধতি)</p><p><strong>Variable-length</strong> → ভ্যারিয়েবল দৈর্ঘ্য (আলাদা আলাদা সাইজের)</p><p><strong>Character</strong> → অক্ষর</p><p><strong>Binary</strong> → ০ আর ১ এর কোড</p><p>চাইলে আমি আরও ডিপলি বোঝাতে পারব, বা কোডে দেখিয়ে দিতে পারব কিভাবে <strong>UTF-8</strong> কাজ করে।<br>বলো — যাবে? 😎</p>');

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
(1, 'Domain', '2025-05-13 05:11:05'),
(2, 'Test 1 category', '2025-05-13 11:54:55'),
(3, 'News', '2025-05-17 03:17:21');

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
-- Table structure for table `portfolio_image`
--

CREATE TABLE `portfolio_image` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `port_name` varchar(255) NOT NULL,
  `port_uploaded_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolio_image`
--

INSERT INTO `portfolio_image` (`id`, `blog_id`, `port_name`, `port_uploaded_name`, `created_at`) VALUES
(1, 24, 'This is a test portfolio 2', 'port_68295572058b74.86627475.png', '2025-05-18 09:35:14'),
(2, 19, '2nd test', 'port_6829581cc75327.10622847.png', '2025-05-18 09:46:36'),
(3, 19, '3rd test', 'port_682958544aa272.44860238.png', '2025-05-18 09:47:32'),
(5, 19, 'new', 'port_682965fded72e4.58298062.jpg', '2025-05-18 10:45:49'),
(6, 24, 'new', 'port_682967ba29e066.83165290.png', '2025-05-18 10:53:14');

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
(2, 2, 'hero.jpg', '6822d4a41635a.jpg', '2025-05-13 05:12:04'),
(3, 5, 'img_2_1746940558952.jpg', '68231caaa24cd.jpg', '2025-05-13 10:19:22'),
(4, 6, 'img_2_1746940558952.jpg', '68231cb49c76a.jpg', '2025-05-13 10:19:32'),
(5, 7, 'img_1_1746619061646.jpg', '68232424b5daf.jpg', '2025-05-13 10:51:16'),
(6, 9, 'img_1_1746619061646.jpg', 'thumb_68233b754579f.jpg', '2025-05-13 12:30:45'),
(11, 14, 'img_1_1746619061646.jpg', 'thumb_68236feaa6948.jpg', '2025-05-13 16:14:34'),
(12, 15, 'img_2_1746632849838.jpg', 'thumb_68237069beade.jpg', '2025-05-13 16:16:41'),
(13, 19, 'ChatGPT Image ? ??, ????, ??_??_?? AM.png', 'thumb_68255d4b13c53.png', '2025-05-15 03:19:39'),
(14, 19, '', 'thumb_68255d4b13c53.png', '2025-05-15 08:02:26'),
(18, 24, '1747400891-d6d55a82f7452d28747769bddd786a39.jpg', 'thumb_6828086958074.jpg', '2025-05-17 03:54:17'),
(19, 25, '1747415983-5154731320077d5b50a4197dbeea2753.webp', 'thumb_6829709a128e1.webp', '2025-05-18 05:31:06');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  `total_view` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `blog_id`, `total_view`) VALUES
(1, 9, 1257),
(6, 14, 2760),
(7, 15, 1315),
(8, 16, 690),
(9, 17, 912),
(10, 18, 2612),
(11, 19, 309),
(16, 24, 555),
(17, 25, 410);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_blog_cat` (`blog_cat_id`),
  ADD KEY `idx_blog_admin` (`created_by_admin`);

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
-- Indexes for table `modify`
--
ALTER TABLE `modify`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_modify_blog` (`blog_id`);

--
-- Indexes for table `portfolio_image`
--
ALTER TABLE `portfolio_image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id` (`blog_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `blog_description`
--
ALTER TABLE `blog_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `modify`
--
ALTER TABLE `modify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolio_image`
--
ALTER TABLE `portfolio_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `thumbnail`
--
ALTER TABLE `thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_ibfk_1` FOREIGN KEY (`blog_cat_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `blog_ibfk_2` FOREIGN KEY (`created_by_admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `portfolio_image`
--
ALTER TABLE `portfolio_image`
  ADD CONSTRAINT `portfolio_image_ibfk_1` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`id`) ON DELETE CASCADE;

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
