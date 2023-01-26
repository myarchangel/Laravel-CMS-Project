-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: lsapp
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2021_09_27_224255_create_posts_table',1),(5,'2022_01_22_051359_add_user_id_to_posts',2),(6,'2022_01_22_072013_add_user_id_to_posts2',3),(10,'2022_01_22_164823_add_cover_image_to_posts',4),(11,'2022_01_24_004824_add_featured_to_posts',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `cover_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (13,'Post One - What is in a Post?','<p>This is post one... A post is your message to the world. Feel free to express your innermost self.</p>','2022-01-23 06:48:21','2022-01-25 21:23:56',4,'ca4_1643149436.jpg',0),(15,'What is Lorem Ipsum?','<h2>What is Lorem Ipsum?</h2>\r\n\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<h2>Why do we use it?</h2>\r\n\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Where does it come from?</h2>\r\n\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\r\n\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from &quot;de Finibus Bonorum et Malorum&quot; by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n\r\n<h2>Where can I get some?</h2>\r\n\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','2022-01-25 04:03:59','2022-01-25 21:32:13',3,'ca17_1643149933.jpg',4),(16,'Donec cursus placerat justo vitae tempus','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer eu nulla vitae nunc commodo ornare. Curabitur luctus quam sed augue consequat, ut suscipit mi consequat. Etiam egestas, libero quis ornare facilisis, ex metus congue elit, vitae vehicula odio dolor ac nibh. Vestibulum auctor, tortor sed egestas pulvinar, erat odio malesuada purus, eget finibus mauris nunc eget turpis. Sed turpis nulla, mollis quis vehicula at, mattis a leo. Fusce vitae viverra felis. Aenean dapibus eget est sed dictum. Nulla sapien quam, tincidunt ut leo eu, scelerisque rutrum dui. Nam laoreet tellus velit. Nulla vel ex id sem aliquet hendrerit eget at augue. Nullam a auctor justo. Nulla id libero nisi.</p>\r\n\r\n<p>Donec cursus placerat justo vitae tempus. Aliquam pretium mauris in venenatis commodo. Phasellus vestibulum metus id consectetur finibus. Donec nec varius orci. Vivamus tempus turpis viverra velit lacinia, dignissim mattis est sollicitudin. Fusce bibendum tristique dolor feugiat elementum. Quisque venenatis vitae sapien id fermentum. Fusce interdum massa at convallis imperdiet. In at orci lacinia, scelerisque tortor ut, maximus nibh. Donec ornare malesuada consectetur. Proin et nisi metus. Cras dictum lobortis mi eget tristique. Vestibulum ut purus velit. Quisque a enim hendrerit, ultrices mauris a, mollis erat. Phasellus quis varius tortor, ac tristique tellus. Nulla nec semper quam.</p>\r\n\r\n<p>Praesent et placerat magna. Fusce et tortor elementum, scelerisque quam auctor, malesuada tortor. Quisque vel pulvinar ipsum, ornare accumsan est. Donec facilisis est vitae tincidunt egestas. Fusce ac consequat arcu. Maecenas iaculis aliquam turpis eget rhoncus. Sed fringilla augue erat, quis malesuada magna tristique non. Maecenas feugiat, eros et finibus volutpat, enim arcu placerat lectus, quis placerat magna ligula vel turpis. Ut tempor cursus nibh nec tempor. Duis eleifend urna augue, at porta elit pulvinar id.</p>\r\n\r\n<p>In pretium efficitur sapien, ac lacinia eros dapibus quis. Donec non nisl ex. Proin sed gravida lacus. Pellentesque lectus dui, efficitur ac ornare nec, tincidunt at ante. Maecenas id purus sagittis, iaculis mauris vitae, porttitor enim. Pellentesque ac urna mauris. Phasellus consectetur ut urna quis sagittis.</p>\r\n\r\n<p>Aliquam hendrerit risus vel aliquet blandit. Nam euismod dui elit, quis vulputate dolor sodales sit amet. Praesent enim nulla, venenatis eget posuere quis, commodo ac nisi. Aenean quis venenatis tortor. Ut non ipsum justo. Proin sapien felis, accumsan euismod fermentum vel, mattis quis nibh. Morbi iaculis nisi eget est posuere, vel porttitor purus sagittis. Phasellus non iaculis velit, ut dapibus mauris. Maecenas eget mi nec turpis rhoncus finibus at non lacus. Phasellus imperdiet ornare enim nec gravida. Nullam faucibus lectus non est vehicula congue. Donec vitae mi scelerisque nunc vulputate tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mi nisl, consectetur dignissim ante et, volutpat egestas ligula.</p>','2022-01-25 04:05:53','2022-01-25 21:32:53',3,'ca11_1643149973.jpg',5),(17,'Lorem ipsum, or lipsum as it is sometimes known','<p><em>Lorem ipsum</em>, or&nbsp;<em>lipsum</em>&nbsp;as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero&#39;s&nbsp;<em>De Finibus Bonorum et Malorum</em>&nbsp;for use in a type specimen book. It usually begins with:</p>\r\n\r\n<blockquote>&ldquo;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&rdquo;</blockquote>\r\n\r\n<p>The purpose of&nbsp;<em>lorem ipsum</em>&nbsp;is to create a natural looking block of text (sentence, paragraph, page, etc.) that doesn&#39;t distract from the layout. A practice not without&nbsp;<a href=\"https://loremipsum.io/#controversy\">controversy</a>, laying out pages with meaningless filler text can be very useful when the focus is meant to be on design, not content.</p>\r\n\r\n<p>The passage experienced a surge in popularity during the 1960s when Letraset used it on their dry-transfer sheets, and again during the 90s as desktop publishers bundled the text with their software. Today it&#39;s seen all around the web; on templates, websites, and stock designs. Use our&nbsp;<a href=\"https://loremipsum.io/#generator\">generator</a>&nbsp;to get your own, or read on for the authoritative history of&nbsp;<em>lorem ipsum</em>.</p>','2022-01-25 04:10:23','2022-01-25 21:39:35',3,'ca5_1643150375.jpg',0),(18,'What Is Lorem Ipsum?','<p>Lorem ipsum is the short-hand term for the most popular placeholder text in history, used for decades by graphic designers, web developers, and the publishing industry. Here&rsquo;s what a paragraph of lorem ipsum looks like: Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Though lorem ipsum is sometimes referred to as greek copy or greeking, lorem ipsum text is a garbled form of Latin text. Latin is the language of ancient Rome. (Today, classical Latin is no longer spoken and is considered a dead language, although a variant, Ecclesiastical Latin, is still used by the Roman Catholic Church). Why Use Lorem Ipsum? Lorem Ipsum, as filler text, is used: To demonstrate font faces In draft designs and mockups. &ldquo;Why do you need fancy pants, special text to do this?&rdquo; you ask. The Client Hasn&rsquo;t Delivered the Copy One of the most typical uses of lorem ipsum is when a client has not yet finalized the copy for a project, yet the designer wants to get feedback on early design drafts. Rather than fill the design with text, say, from a random source like a newspaper article or novel, the designer will often use lorem ipsum. There&rsquo;s an additional reason for this though. You Want to Highlight the Design Elements Graphic designers often report that when a client sees a design with actual text, they focus on the text itself and become distracted from evaluating the design elements. But when using lorem ipsum, the text &mdash; because it&rsquo;s meaningless &mdash; takes a back seat to the visual elements under scrutiny. Furthermore, these text snippets contain, more or less, an even distribution of the letters of the alphabet.<br />\r\n<br />\r\nC/O https://placeholder.com/text/lorem-ipsum/</p>','2022-01-25 04:12:55','2022-01-25 21:36:23',3,'ca10_1643150183.jpg',0),(19,'Plain Text Lorem Ipsum','<p>If you&rsquo;d rather use lorem ipsum that doesn&rsquo;t include HTML markup (eg, to use in Microsoft Word, WordPress&rsquo;s visual editor, or the WYSIWYG editor of your choice), you can use this version. Lorem Ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. How to Generate Lorem Ipsum with Design and Dev Tools Most modern design and development software tools ship with a built-in lorem ipsum generator or enable you to easily install a plugin (or &ldquo;package&rdquo;) generator. Here are the instructions for generating lorem ipsum in some of the most common design and dev tools. Adobe Photoshop If you are using Adobe Photoshop, to create type (and, more specifically, lorem-ipsum placeholder text), you will need to: Use the text function by hitting T on your keyboard or by selecting the T in the left-hand navigation panel Draw a text box With the cursor active inside the text box you just drew, go to Type &gt; Paste lorem ipsum. Adobe Illustrator For Adobe Illustrator, you can create text frames using the Type tool. Illustrator will automatically fill the frame with placeholder text, a behavior that is on by default. Note that this text also appears when you convert a non-text item to one that contains text.<br />\r\n&nbsp;</p>','2022-01-25 04:14:46','2022-01-25 21:37:00',3,'ca6_1643150220.jpg',0),(20,'WordPress and LaTeX','<p>The easiest way to make lorem ipsum available to you in WordPress is to install one of the many available plugins. To do so, you will need to: Log in to your WordPress dashboard. Navigate to Plugins &gt; Add New. Run a search for &ldquo;lorem ipsum&rdquo; and choose the plugin you would like to install. Click Install Now Click Activate. WordPress will take care of the rest. Web-Based Generator If you want something web-based that will generate text on the fly, consider Dummy Text &mdash; a javascript program that allows you to easily insert lorem ipsum in headers, paragraphs, and lists. What&rsquo;s the History Behind Lorem Ipsum? If you google the history of lorem ipsum you&rsquo;ll find many articles that say it was created in the 1500s by Renaissance era book printers. But is that true? In this nascent period of publishing, typefaces were sculpted (or &ldquo;punchcut&rdquo;) and cast in metal alloys. This was a painstaking, multi-step process involving steel, copper, fire, wood, and water.</p>\r\n\r\n<p>For those who are typesetting their documents using LaTeX, lorem ipsum is available via the lipsum package, which allows you to input up to 150 paragraphs of filler text. You can also input individual lorem ipsum sentences. Visual Studio Code Microsoft&rsquo;s open-source IDE, Visual Studio Code, ships with Emmet installed. This gives you an easy shortcut for generating lorem: just type &ldquo;lorem&rdquo; and hit &ldquo;enter.&rdquo;<br />\r\n&nbsp;</p>','2022-01-25 04:17:44','2022-01-25 21:29:27',4,'ca22_1643149766.jpg',2),(21,'Type Casting','<p>Type casting: The matrix was placed in the bottom of a hand-held mold. A molten lead alloy was then poured into the mold to form a single cast metal letter called a &ldquo;sort&rdquo; or &ldquo;type.&rdquo; This time-consuming work preceded the actual printing process. Video: insights into the historic practice of punchcutting, produced by an organization dedicated to increasing knowledge of Francesco Griffo, a famed punchcutter of the Italian Renaissance.[/caption] Did Renaissance Type Founders Use Dummy Text? Consider: Why would these busy type designers (called &ldquo;type founders&rdquo;) bother to create dummy text? And who would samples of dummy text be for? We find our next clue by visiting a time period two centuries after the Renaissance. Introducing Specimen Sheets In the 18th century, owners of type foundries sometimes published &ldquo;specimen sheets&rdquo; displaying samples of their various typefaces. During this era, there was a greater variety of typefaces available. So we can understand the value in creating &ldquo;specimen sheets.&rdquo; We note though, that one of the most famous type founders of that period, William Caslon, was so successful (and busy) that it wasn&rsquo;t until 10 years after the launch of his business that he got around to creating a specimen sheet. So it&rsquo;s fair to say specimen sheets weren&rsquo;t always a priority for printers. Did They Use Lorem Ipsum? These specimen sheets used passages from classical works of literature. No historic samples of dummy text &mdash; lorem ipsum or otherwise &mdash; have been found from the 16th, 17th, or 18th &mdash; or even 19th &mdash; centuries.<br />\r\nThen he did a search for that term in an index of classical Latin literature. Sure enough, he found a match in a phrase from a work on ethics written in 54 BC by Marcus Tullius Cicero: De Finibus Bonorum et Malorum (On the Ends of Good and Evil). Here&rsquo;s the passage that contains consectetur: Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. The English translation of this passage reads: Nor is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>','2022-01-25 04:20:04','2022-01-25 21:31:03',4,'ca16_1643149863.jpg',3),(22,'An Absurd Story','<p>So the idea that lorem ipsum dummy text was created in the 1500s sounds absurd, doesn&rsquo;t it? Yet this fake history is so widely circulated that it&rsquo;s become a form of dummy text itself, notes DLPDigital, a London-based agency. Investigating the Origins of Lorem Ipsum &ldquo;Speculation, not scholarship,&rdquo; is how Dr. Richard McClintock describes this dubious history. McClintock holds a PhD in Latin and is the former publications director for Hampden-Sydney College. We think he has the best theory on the origins of lorem ipsum. He shared it in an interview with Public Radio International. In the mid-1990s, McClintock searched the lorem ipsum passage for the most unusual Latin word he could find. (Yes, there are some intact Latin words in it.) That word was consectetur, which means to follow after. A Piece of the Puzzle: Cicero&rsquo;s Treatise on Ethics Then he did a search for that term in an index of classical Latin literature. Sure enough, he found a match in a phrase from a work on ethics written in 54 BC by Marcus Tullius Cicero: De Finibus Bonorum et Malorum (On the Ends of Good and Evil). Here&rsquo;s the passage that contains consectetur: Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. The English translation of this passage reads: Nor is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but occasionally circumstances occur in which toil and pain can procure him some great pleasure.</p>','2022-01-25 04:21:18','2022-01-25 21:26:18',4,'ca24_1643149578.jpg',1);
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Brad Pitt','bradpitt@gmail.com',NULL,'$2y$10$Q2x5Jsalz4Wdc2oSPWphz.PAHTm0qYgSdU0R63D4wweyjB7bGPmTq',NULL,'2021-10-05 03:05:45','2021-10-05 03:05:45'),(2,'Brad Pitt2','bradpitt2@gmail.com',NULL,'$2y$10$XGI/MBsj3dpVe6y/XM73i.AwfeFfPKaL/f6PXHYJ37MxeXR6OAevO',NULL,'2021-10-05 04:31:11','2021-10-05 04:31:11'),(3,'Brad Pitt3','bradpitt3@gmail.com',NULL,'$2y$10$mgAvqVjED2U3G1Kt1pwr/.LlLQ3Fnh9.tKTDylXhQu/2VBn443L8i',NULL,'2022-01-22 02:54:26','2022-01-22 02:54:26'),(4,'John Doe','johndoe@gmail.com',NULL,'$2y$10$i2z7SKShhuZ33oU7BSXSO.hQVPf9HplvHnG6O4UnJzu90JZ7qOzgG',NULL,'2022-01-22 14:27:51','2022-01-22 14:27:51');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-26  1:52:33
