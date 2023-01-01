-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2023 at 02:56 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larapos`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `name`, `description`, `icon`, `created_at`, `updated_at`) VALUES
(203, 'Men', 'Est hic ullam doloremque eum. Veniam eos commodi quos aut fugit. Ipsa voluptatem quaerat eos dignissimos facere quos. Sit quis sit quia et iste.', 'https://via.placeholder.com/640x480.png/007755?text=nemo', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(505, 'Women', 'women', '', NULL, NULL),
(506, 'Kids', 'kids', '', '2022-12-08 13:50:44', '0000-00-00 00:00:00'),
(507, 'Electronics', 'Electronics', '', '2022-12-12 13:51:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` set('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `option1`, `option2`, `option3`, `status`, `created_at`, `updated_at`) VALUES
(203, 'Common', 'common@example.com', '479.762.1071', '4244 Bayer Court Suite 822North Madie, NC 80250', 'Werner Cremin II', 'Dr. Lon Cassin', 'Mr. Allan D\'Amore', '1', '2022-12-03 04:37:03', '2022-12-12 10:14:16'),
(204, 'Meggie Dare DDS', 'lloyd17@swift.com', '(973) 917-0238', '25601 Kunze Hollow Apt. 385\nNorth Reubenshire, MD 41854-1986', 'Ulices Hagenes', 'Prof. Maci Price', 'Ludie Schiller', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(205, 'Miss Maia Muller', 'gislason.brandyn@rutherford.info', '272-958-8456', '188 Fahey Mount Apt. 736\nRusselborough, NJ 02652', 'Lila Toy', 'Barrett Collins', 'Demarcus Gleichner', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(206, 'Theodore Hermann PhD', 'emmanuel.gerlach@hotmail.com', '(283) 266-4501', '50032 Elroy Creek Suite 796\nNorth Vickiestad, PA 06933', 'Laney Lehner', 'Danny Hilpert', 'Amira Will', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(207, 'Abdiel Feil', 'maude.kautzer@walker.biz', '(334) 954-0383', '8050 Rempel Crossing Suite 050\nCourtneymouth, NE 59691', 'Curtis Gulgowski', 'Mr. Garrick Cormier', 'Dr. Derek Prohaska Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(208, 'Dr. Brooks D\'Amore MD', 'powlowski.sadye@gmail.com', '+1-732-843-2256', '3288 Monahan Shore\nCloydfort, KS 97659', 'Prof. Elmore Wyman', 'Kamren McLaughlin', 'Amaya Hahn', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(209, 'Edison Mayer Sr.', 'devon02@reilly.com', '(667) 560-3847', '54461 Pouros Squares Apt. 871\nKlockoport, IA 97054-0945', 'Easton McClure PhD', 'Mr. Fletcher Torp III', 'Santino Lind', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(210, 'Esta Blanda', 'jalyn99@heller.com', '1-830-455-8243', '2664 Abshire Corners\nKuhlmanstad, TN 25257-3189', 'Carlo Hickle', 'Prof. Mabel Denesik', 'Marcelino Conn', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(211, 'Greyson Friesen', 'zula38@hotmail.com', '+1 (571) 283-3059', '1835 Dave Forks\nPort Bryana, PA 22466', 'Dustin Wiegand', 'Miss Cara Beahan', 'Marty Denesik', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(212, 'Georgianna McGlynn MD', 'madelyn.hermiston@hotmail.com', '978-642-4355', '34534 Florence Drive Apt. 990\nEast Janaechester, OR 56085-9441', 'Hubert Runte Sr.', 'Ms. Evie Mueller', 'Ray Langosh', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(213, 'Keshaun Satterfield', 'eldred98@runolfsson.com', '414.327.5232', '490 Alvis Rest Suite 394\nLake Rebachester, GA 39965', 'Theresia Mohr', 'Miss Jacklyn Steuber II', 'Krista Schinner', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(214, 'Mr. Paris Schmitt', 'cali82@greenholt.com', '+1-445-789-4551', '6299 Dominique Road Apt. 492\nWest Rosemaryton, VA 47586', 'Sedrick Will', 'Chase Zulauf', 'Juana Waters', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(215, 'Newton Gerhold V', 'bernier.michael@gmail.com', '283.413.9745', '323 Tromp Point\nUptonshire, MS 35076', 'Izabella Simonis', 'Shaylee Block Jr.', 'Arianna Trantow', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(216, 'Miss Magdalen Bartell', 'xmueller@aufderhar.biz', '+1-515-266-2387', '9322 Breitenberg Trail Suite 475\nLake Majorfurt, ND 57156-0289', 'Mr. Charles Collier', 'Dr. Eleanore Durgan', 'Jeramy Lubowitz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(217, 'Novella Leannon II', 'ooconner@wiza.com', '+1 (425) 467-5528', '599 Gleason Circles Apt. 549\nHoegerhaven, AK 34592', 'Joey Kohler V', 'Bianka Roberts', 'Dr. Trever Block', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(218, 'Sofia Lowe III', 'nbradtke@yahoo.com', '(657) 539-2984', '84852 Hegmann Manors\nSouth Layneberg, AK 76297', 'Sasha Marks', 'Maribel Gislason DVM', 'Mr. Kareem Murphy', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(219, 'Gwen Barrows', 'teresa.lubowitz@johnston.com', '+1-203-623-1801', '1410 Kunze Spring Apt. 563\nMrazfurt, PA 30881-2098', 'Bria McKenzie', 'Devonte Moore', 'Estell Waelchi', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(220, 'Laurie Hintz', 'kyra.watsica@yahoo.com', '(470) 738-2247', '199 Helene View Suite 203\nWest Harmonymouth, NM 42794', 'Eugenia Roob', 'Miss Caleigh Mann', 'Claude Keeling', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(221, 'Bella Roberts', 'gbartell@boehm.info', '1-478-399-4301', '251 Wilkinson Rest Apt. 010\nSouth Antwonport, OR 11143', 'Felicia Terry', 'Mr. Christopher Thiel', 'Tevin Jones', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(222, 'Mr. Tavares Shanahan', 'nturcotte@yahoo.com', '+1-737-427-9150', '4210 McLaughlin Stravenue Suite 440\nLittelville, ID 52386', 'Ms. Meggie Streich', 'Layla Osinski', 'Shana Schumm Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(223, 'Tanner Simonis V', 'qcassin@lubowitz.com', '(610) 227-5977', '22240 Ana Mount Suite 607\nEast Kraig, IL 45705', 'Nicola Casper', 'Dr. Tony Lowe', 'Manuela Marvin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(224, 'Mitchel Fahey', 'murazik.mandy@hotmail.com', '870.643.1716', '13078 Ivah Causeway\nJensenborough, MO 00732', 'Shad Crist', 'Skye Kreiger', 'Antonina Deckow', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(225, 'Niko Schuster', 'runolfsdottir.carlee@littel.biz', '1-458-208-8553', '35726 Otilia Ridges\nRempelchester, NV 86993-0580', 'Prof. Jaqueline Feil I', 'Minnie Trantow', 'Susana Hamill', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(226, 'Dr. Delta Hermiston', 'heaven69@yahoo.com', '831.469.7842', '71850 Marco Turnpike Suite 931\nBartellville, IL 30391', 'Calista Haag', 'Prof. Brent Stracke II', 'Dr. Alec McClure', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(227, 'Amara Daugherty', 'dwight35@bailey.info', '(914) 838-3735', '54760 Bogisich Wells Apt. 482\nNitzschefort, FL 85846-4431', 'Mrs. Annetta Bernhard', 'Yessenia Denesik', 'Dr. Archibald Lynch', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(228, 'Karelle Sporer', 'webster.smith@bartoletti.net', '1-912-395-6960', '392 Nathanial Greens Apt. 872\nConroyberg, NH 25066', 'Emely Effertz V', 'Mertie Lebsack', 'Dr. Jarrell Mraz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(229, 'Mr. Lambert Ward Sr.', 'ondricka.antoinette@larkin.com', '+16304389166', '4067 Johns Crest Apt. 397\nPort Kennethfort, MT 28120', 'Deon Pagac', 'Lorenzo Steuber', 'Madge Conn', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(230, 'Pierre McKenzie V', 'pframi@yahoo.com', '470.805.6334', '40187 Mavis Oval\nHalfurt, AK 92912', 'Prof. Casey Marks', 'Dewitt White', 'Ava Denesik', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(231, 'Roy Breitenberg', 'brenden83@hotmail.com', '678.413.5618', '5978 Felicia Streets\nKeelingmouth, GA 08149', 'Herman Mayert', 'Mrs. Mittie Hermann', 'Delpha Wisozk', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(232, 'Beau Farrell', 'kaleb00@baumbach.net', '+1 (650) 984-5072', '7533 Bianka Parkway Suite 036\nEast Crystelshire, AK 49976', 'Prof. Joan Jacobi', 'Emelia Stracke', 'Prof. Amalia Welch I', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(233, 'Mr. Ola Zboncak', 'leone.gorczany@yahoo.com', '+1-317-634-9790', '102 Lynch Rest Apt. 270\nGloverfort, TN 82993', 'Jerald Schuppe III', 'Clare Hagenes', 'Julius Rohan', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(234, 'Prof. Barton Kiehn', 'stuart35@mayert.com', '+14356960483', '85696 Stroman Camp Suite 650\nLegrosshire, RI 31761-8826', 'Loyce King', 'Sammie McKenzie', 'Miss Helena Lubowitz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(235, 'Jazlyn Ruecker', 'nicolas.leopoldo@yahoo.com', '607.330.7551', '3589 Boyd Fork Apt. 586\nBogantown, ND 22548', 'Gabriel Grady', 'Jazmyne Terry I', 'Alexandrine Jacobs', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(236, 'Lawson O\'Keefe', 'anna.goodwin@mohr.net', '1-386-436-4750', '27543 Angelina Lake Apt. 147\nDickinsonville, NC 36261-6061', 'Tyreek Parisian', 'Alia Stroman', 'Cassandre Roberts DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(237, 'Lonny Wolff', 'cara98@hotmail.com', '(239) 663-9390', '853 Grimes Wall\nThielstad, MA 99283', 'Dr. Lonnie Bradtke II', 'Fermin Braun', 'Forest Dickens', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(238, 'Ms. Winnifred Gerlach Sr.', 'little.reta@funk.net', '1-601-777-5582', '541 Oma Brooks Suite 671\nSheilaborough, MO 72261', 'Dr. Prudence Morissette I', 'Dr. Sydney Lueilwitz I', 'Oliver Senger', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(239, 'Ocie West', 'xthiel@yahoo.com', '+1-571-333-7084', '23993 Connelly Drive Suite 118\nTorreyberg, DC 09559-4402', 'Jody Kuphal', 'Lacy Schinner', 'Neha Wolf', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(240, 'Angus Douglas', 'crona.alphonso@hotmail.com', '+1 (986) 236-3575', '18126 Jamir Light\nRauside, GA 25840', 'Lorenzo Kunde', 'Eloy Schoen', 'Prof. Aubrey Roob DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(241, 'Kaela Kautzer', 'roslyn.pacocha@tromp.com', '+16898326814', '27911 Robel Expressway\nRyannmouth, AK 54185-0901', 'Gloria Lindgren', 'Carmella Crona DDS', 'Dr. Melisa Renner', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(242, 'Mia Hermann', 'gtrantow@rempel.net', '539.814.3582', '53698 Ressie Harbor Suite 649\nSouth Alvenabury, NY 27505', 'Prof. Marvin Hammes V', 'Melvina Connelly', 'Violette Borer Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(243, 'Else Stamm', 'cindy47@yahoo.com', '412-264-7653', '770 Allison Burgs\nHeidenreichton, MD 01504-1059', 'Zackary Mohr DDS', 'Princess Boyer', 'Kaleigh Stoltenberg', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(244, 'Mathew Sauer', 'beatty.dasia@jacobi.com', '907-490-3429', '7970 Runolfsson Shore\nGusikowskichester, IN 91211', 'Jovany Hickle', 'Ms. Gudrun Kassulke III', 'Ms. Nora Kunze Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(245, 'Reginald Dicki IV', 'lexus16@hotmail.com', '551-974-4482', '49058 Hipolito Vista\nAileenfurt, AL 55723', 'Joanie Johnson', 'Mr. Rashad Connelly DVM', 'Mrs. Raegan Hermiston', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(246, 'Isaiah Wuckert IV', 'zspencer@hotmail.com', '+1.989.541.5002', '6291 Littel Throughway\nSouth Gunnar, WY 82822-0821', 'Shakira Cummings', 'Aidan Jakubowski', 'Mr. Robin Satterfield Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(247, 'Brook Adams', 'brody.runolfsson@rowe.org', '279-304-2145', '19790 Natasha Rest\nPort Idella, NJ 00194-4759', 'Isai DuBuque DVM', 'Kory Luettgen', 'Ms. Creola Grant', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(248, 'Erna Boyer V', 'janet.beatty@hotmail.com', '+1-412-666-3806', '3161 Lind Shoals\nPort Lavada, KS 01595-2107', 'Lilliana Christiansen', 'Dr. Jose Bednar', 'Colleen Lakin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(249, 'Virginie Barton', 'feil.ansel@gmail.com', '541.666.1193', '4645 Bode Spur\nFerryberg, WI 80209-1291', 'Lizeth Hartmann II', 'Marianne Streich', 'Mikel Bauch II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(250, 'Trever Blanda', 'swaniawski.murray@farrell.biz', '785.200.8736', '6322 Garret Island Suite 150\nHahnchester, TX 68575', 'Miss Dora Bogan PhD', 'Dr. Rosie Hackett', 'Fausto Leuschke', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(251, 'Emerson Gutkowski', 'akohler@yahoo.com', '+1-952-265-2222', '6458 Richie Forks\nNoeliaville, VA 18759', 'Dr. Daryl Wolff', 'Cassidy Yost', 'Mr. Lorenzo Schmitt Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(252, 'Dr. Shanelle Murray II', 'gerda.schaefer@gmail.com', '986.682.6878', '9793 Luis Shoal\nPort Kendra, NH 17859', 'Emmanuelle Cremin', 'Rosa Gutkowski', 'Dillan Denesik Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(253, 'Adrianna Watsica', 'ryder24@hotmail.com', '458.672.3240', '2897 Dach Court\nEast Augustineport, NM 74499-4336', 'Daphne Leffler', 'Luna Brekke', 'Lenna Reinger', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(254, 'Miss Tatyana Fahey', 'judah.okon@hotmail.com', '(575) 375-9064', '68754 Fadel Landing Apt. 987\nNew Marcellastad, WY 41525', 'Prof. Craig Ziemann', 'Darron Batz', 'Gunner Wisozk', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(255, 'Prof. Lorena Krajcik', 'abernathy.dejah@botsford.org', '+17695496307', '17667 Markus Hill\nVernonshire, MD 72022', 'Ludie Waelchi', 'Pablo Medhurst II', 'Mr. Larue Beer Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(256, 'Elody Reilly', 'zoila.walter@von.net', '848-847-8541', '3461 Bergnaum Highway Apt. 629\nWest Angelmouth, ME 60405-4312', 'Jaren Kerluke MD', 'Miss Kasandra Morar PhD', 'Javier Cassin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(257, 'Frida Cormier', 'daron36@hotmail.com', '1-779-265-6197', '6579 Mann Mill Suite 569\nRosellaburgh, ME 22448-3068', 'Prof. Jermey Grant II', 'Mr. Dusty Predovic', 'Aliya Emmerich', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(258, 'Hortense Tillman PhD', 'feil.javon@gmail.com', '(870) 354-8645', '59225 Kristian Fords\nSwaniawskichester, WA 10041-4483', 'Bobbie Wiza', 'Dorris Schmitt', 'Delilah Sporer', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(259, 'Kris Rosenbaum', 'delaney09@turcotte.com', '+15679109634', '5000 Mann Coves Apt. 793\nPort Mitchel, VT 86511-8344', 'Levi Hoppe', 'Violette Lubowitz', 'Dr. Randi Braun III', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(260, 'Penelope Kerluke', 'carroll.michelle@yahoo.com', '704-759-7575', '559 Irving Estates\nRoslynfort, OR 36382-1068', 'Myrtie Becker', 'Jasmin Swaniawski DVM', 'Prof. Hudson Emmerich Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(261, 'Mckenna Wyman', 'adrien.koss@rice.org', '737.530.5361', '9961 Baumbach Center\nLabadiemouth, WA 19619-2152', 'Dr. Francesca Ritchie IV', 'Robb Steuber Sr.', 'Carole Medhurst', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(262, 'Martina Lakin', 'morissette.sincere@hotmail.com', '+1 (520) 377-0848', '3901 Colt Loop Suite 825\nNorth Darenside, CT 40500', 'Eric Schulist', 'Jamaal Anderson', 'Rosario Wisoky', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(263, 'Cordia Franecki', 'wbecker@fisher.com', '(931) 666-9073', '2652 Labadie Terrace\nDonnellyborough, NE 28063', 'Penelope Cole DVM', 'William O\'Reilly', 'Buddy O\'Kon', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(264, 'Everardo Champlin', 'wunsch.sandy@hotmail.com', '+1-410-370-3602', '97171 Claud Ramp\nPadbergberg, WA 94521', 'Prof. Lenny Hayes PhD', 'Edd Mills', 'Mr. Ruben Osinski', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(265, 'Mrs. Angeline Hauck V', 'mertz.wilfred@kunze.com', '+1-754-202-4644', '98396 Freddie Mill\nEast Eloyberg, AZ 02859', 'Reed Wolf', 'Aidan Hilpert', 'Jerod Stark DVM', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(266, 'Lottie Farrell', 'arianna.huels@gerhold.com', '+17439702761', '66987 Hollis Expressway Suite 647\nKacistad, UT 15788-5706', 'Josue Orn', 'Dale Zulauf', 'Renee Osinski', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(267, 'Emmanuel Veum', 'zgorczany@bartoletti.com', '1-336-316-0469', '5654 Kilback Mills\nEast Korey, NC 88846', 'Mr. Cameron Hegmann', 'Antonina Auer', 'Mrs. Dolores Kshlerin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(268, 'Amie Weber', 'opal35@dickens.com', '1-210-736-4076', '829 Douglas Heights Apt. 640\nWest Laverntown, NV 88095-5090', 'Dr. Domingo Terry', 'Helga Gutmann', 'Marianna Kuhlman', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(269, 'Ms. Talia Hudson IV', 'kale.gleichner@kuhlman.info', '817.586.8745', '2877 Orpha Lights Apt. 319\nSouth Sonny, ID 59222', 'Stacy Simonis', 'Courtney Schoen', 'Dr. Viola Beahan DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(270, 'Sister Johns Sr.', 'mayert.damien@hotmail.com', '650.693.0390', '5440 Berge Extension Suite 900\nGorczanyhaven, SD 90996-9717', 'Mr. Lamont Kertzmann', 'Dr. Laney Russel V', 'Prof. Merlin Grant PhD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(271, 'Johnpaul Gulgowski', 'robin.mayer@hotmail.com', '501-435-8851', '9928 Weldon Mill\nLake Eveline, ND 85207-6867', 'Laurie Tromp', 'Sigrid Lang DDS', 'Magnolia Will', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(272, 'Eva Cruickshank V', 'pkeeling@greenholt.com', '1-725-438-6302', '280 Jaylin Circle Apt. 164\nLittleshire, WI 31464-9826', 'Frederique Kutch', 'Izabella Hyatt', 'Justina Brekke', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(273, 'Kip Schuster Sr.', 'dtowne@yahoo.com', '+1 (408) 746-9903', '3883 Schimmel Highway Apt. 289\nWunschfurt, KY 42959', 'Coy Klein DVM', 'Darren Sporer', 'Prof. Arvilla Nicolas DVM', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(274, 'Alex Batz', 'legros.cameron@hickle.com', '+1.223.910.0412', '15190 Stamm Plaza Apt. 032\nPort Lorenafort, NH 22308-2372', 'Dr. Wayne Langworth', 'Garland Goyette', 'Larissa Rosenbaum', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(275, 'Leola King', 'cruickshank.bryon@hotmail.com', '(802) 828-0766', '185 Lauryn Lakes Apt. 458\nEast Ameliaberg, NM 54332-3269', 'Jessie Wolf', 'Mr. Delbert White', 'Prof. Sophia Homenick', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(276, 'Carroll Kerluke', 'qemmerich@quigley.com', '+18166877607', '4554 Minnie Hollow\nEast Tara, AZ 25809-7965', 'Prof. Pink Reichert', 'Dortha Wehner', 'Raleigh Hermann', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(277, 'Rasheed Wiza', 'clementina89@yahoo.com', '1-913-881-6730', '60337 Myrl Flats\nPort Giamouth, MS 81166-4586', 'Miss Angelica Zulauf', 'Hyman Crooks', 'Cale Hartmann', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(278, 'Santiago Carter', 'wisoky.alize@hotmail.com', '763.466.5322', '361 Archibald Crescent Apt. 039\nNew Mortimerborough, WA 66012-5523', 'Ms. Guadalupe Gutkowski II', 'Mr. Solon Mante MD', 'Dr. Emmanuel Russel PhD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(279, 'Jody Mraz', 'spinka.shayna@brown.net', '+1-279-829-0672', '9109 Diana Bridge Apt. 131\nPort Natalie, DE 73318-7321', 'Mr. Alek Schuster', 'Mona Cole DDS', 'Mr. Consuelo Schultz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(280, 'Mr. Luther Hettinger MD', 'robel.ciara@jakubowski.com', '678-271-6715', '328 Lavinia Land\nCecileland, OK 64379', 'Mrs. Dessie Beier', 'Immanuel Von', 'Dr. Marjory Murazik', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(281, 'Prof. Titus Stamm', 'lucy43@gmail.com', '+1 (916) 984-7120', '3953 Lueilwitz Bypass Apt. 240\nD\'angelofurt, OH 24657', 'Dr. Bettye Tromp III', 'Miss Maria Johns Sr.', 'Joan O\'Hara', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(282, 'Jada McLaughlin', 'josiane75@howe.net', '734.643.3943', '48954 Sim Fields Suite 947\nLake Prudence, WV 55452-7709', 'Dena Huel', 'Jamir Pfannerstill', 'Miss Precious Goodwin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(283, 'Prof. Teresa Morissette III', 'marks.danny@yahoo.com', '(629) 612-1122', '82634 Krajcik Rapids Suite 086\nAureliochester, WI 63462', 'Kareem Kessler', 'Doug Orn', 'Caterina Pouros', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(284, 'Golda Vandervort', 'yblick@miller.org', '223-289-0621', '181 Arvid Island\nKeelingberg, OH 55530', 'Mr. Boyd O\'Kon', 'Miss Veronica Rodriguez I', 'Birdie Ankunding', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(285, 'Adolph Wisozk', 'viva.oconner@gmail.com', '+1 (878) 255-7314', '957 Jocelyn Street\nPort Nakiaburgh, NV 44173', 'Mittie Hermann', 'Philip Lubowitz', 'Maurice Little II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(286, 'Percival Prosacco', 'alycia95@gmail.com', '1-320-322-4477', '6636 Hosea Squares\nPort Antoniettaville, DE 09752', 'Angela Wolf III', 'Camron Spencer', 'Sharon Harber', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(287, 'Rosetta Dach MD', 'rodrigo.schaden@bogan.com', '(314) 738-0883', '9573 Delilah Drives\nAnnabellport, MO 34269', 'Hoyt Paucek', 'Ms. Vivian Rosenbaum', 'Dorothea Grant', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(288, 'Ms. Agnes Torphy Jr.', 'nyost@hotmail.com', '+1.219.978.1110', '47988 Heathcote Shoal Suite 211\nNorth Albertabury, MT 99659-9974', 'Elda Parker Jr.', 'Lazaro Zemlak', 'Howard Stark', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(289, 'Ramiro Boyle', 'stoltenberg.gustave@gmail.com', '+1-405-484-0383', '6700 Ernestine Run Apt. 851\nShieldsview, IA 45419', 'Charlene Morar', 'Keegan Olson', 'Mr. Brendan Pouros I', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(290, 'Mr. Dell Johnston', 'zkohler@crona.com', '443.664.6210', '7109 Daron Spurs Suite 239\nSouth Neoma, TN 21737', 'Tatum Nienow', 'Noe Schumm', 'Mr. Jules Larson', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(291, 'Mr. Emerson Monahan V', 'vframi@kunde.com', '(662) 273-2567', '82894 Sawayn Plaza Suite 254\nPort Mattie, NE 50152', 'Flossie Wolff', 'Dr. Cruz Borer', 'Ursula Shanahan', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(292, 'Demond Willms', 'keebler.esmeralda@hotmail.com', '+1 (203) 481-4775', '9046 Kaley Groves\nNorth Michealborough, HI 26602-8584', 'Meaghan Graham', 'Reanna Leffler DDS', 'Otha Kreiger Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(293, 'Myrtis Crona', 'braeden.mohr@gmail.com', '(920) 828-7417', '19049 Macejkovic Gateway Suite 076\nEast Alexysside, UT 88762', 'Prof. Jabari Kessler', 'Lizeth Wyman DDS', 'Daphney Sawayn', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(294, 'Mrs. Aylin Steuber', 'greyson95@yahoo.com', '(678) 269-8581', '56533 Herman Canyon Suite 181\nWest Greyson, ME 33500', 'Monique Weber', 'Alexander Bauch', 'Mrs. Dorothy Stoltenberg', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(295, 'Dr. Barney Lehner II', 'antonia.oconnell@hotmail.com', '+1 (401) 480-9627', '3356 Hettinger Drive Suite 013\nJoshton, MA 62820', 'Luisa Pollich', 'Mr. Oren Brown Sr.', 'Tyrese Howell', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(296, 'Lavinia Gleason', 'delores72@abshire.org', '+1-757-694-9186', '5735 Clara Expressway Apt. 633\nSouth Staceyborough, ME 49560-3260', 'Ephraim Stoltenberg Sr.', 'Collin Hirthe DDS', 'Cory Bergnaum', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(297, 'Alford Goodwin', 'dallin.conn@will.info', '+1.563.869.3412', '167 Jett Rapids\nMartaberg, IA 25616-2347', 'Mr. Elbert Koch MD', 'Ms. Carley Kreiger V', 'Dr. Eusebio Crooks', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(298, 'Ms. Brandy Jacobs', 'crutherford@yahoo.com', '715.310.8676', '91782 Emerald Hills\nMarcoton, AL 47687', 'Kareem Kulas', 'Esteban Lang I', 'Kale Watsica', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(299, 'Arch Hermiston', 'verner.schmitt@koelpin.net', '484.412.4208', '64064 Tressie Expressway Apt. 340\nHartmannberg, OK 56009', 'Abbie Abbott', 'Ned Wyman Sr.', 'Ena Toy', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(300, 'Gregorio Paucek', 'solon19@jaskolski.com', '(216) 473-8452', '8267 Marielle Union\nAgnesside, IN 88794', 'Nicolette Hane', 'Mabelle Fadel', 'Emma Swift', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(301, 'Rasheed Bayer', 'corkery.helene@hotmail.com', '+17478802899', '757 Leatha Glen\nLake Miraclehaven, ID 36541', 'Mrs. Astrid Cremin IV', 'Dr. Elda Mueller DVM', 'Taylor O\'Kon', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(302, 'Alexie Wiza', 'rosie.schoen@yahoo.com', '+17475300157', '13569 Roderick Drives Suite 491\nDallasville, ND 15730-7316', 'Hyman Corkery Jr.', 'Prof. Wilburn Satterfield PhD', 'Mrs. Gwendolyn Hagenes', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(303, 'Santiago Tremblay', 'cormier.lizeth@hotmail.com', '1-732-790-3528', '3713 Anthony Islands\nPurdyland, WA 67502', 'Marie Sanford', 'Janice Mohr V', 'Dr. Celestino Balistreri Sr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(304, 'Miss Zola Gleichner DDS', 'tremblay.rebeka@hermiston.biz', '769.820.3164', '3112 Charlene Brooks Apt. 697\nCurtistown, SD 76517', 'Jade Davis', 'Vernon Sauer', 'Marian Lesch', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(305, 'Miss Lea Gleichner Jr.', 'mbernhard@fisher.com', '+1 (442) 948-8844', '13262 Heller Creek Apt. 534\nEveside, MO 77444-3277', 'Prof. Julia Eichmann', 'Nathaniel Roob IV', 'Trey Green', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(306, 'Viva Bode I', 'rdaugherty@bosco.com', '+15206445878', '9744 Fannie Viaduct Suite 048\nEast Rebeccaville, ID 71206-1139', 'Myrl Boyer', 'Arden Hill', 'Ms. Tabitha Bernhard', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(307, 'Alicia Kuvalis', 'howe.darrion@crooks.com', '1-469-724-4613', '4667 White Springs\nIsaachaven, VT 63297', 'Alejandra Weber DVM', 'Kali Klocko', 'Mallie Dibbert', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(308, 'Sebastian Hand', 'stanton.jefferey@muller.com', '1-754-932-4558', '6020 Camden Knolls\nNew Rickie, DE 91042', 'Susan Williamson', 'Eveline Renner', 'Andrew Stoltenberg', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(309, 'Ms. Madaline Wiza', 'easton.hermiston@schaden.com', '1-484-406-7856', '91750 John Mill\nBoyerstad, KY 14492', 'Wyatt Berge', 'Mara Larkin', 'Laron Fay', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(310, 'Minerva Nicolas', 'gaylord.imogene@streich.biz', '+1.925.877.2427', '97546 Parker Shoals Suite 140\nSouth Hulda, NM 51447-5012', 'Reta Hilpert', 'Alek Stroman', 'Lavon Dach', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(311, 'Prof. Toni Anderson IV', 'nolan.austin@gleason.net', '423-424-5608', '8698 Damon Isle Apt. 492\nLueilwitzmouth, AK 17989-5401', 'Ms. Anastasia Kling', 'Doris Turner', 'Mrs. Kacie Shanahan', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(312, 'Jasmin Morissette II', 'rachael.glover@yahoo.com', '+1-480-906-6183', '3498 Dwight Square Suite 836\nPort Reinabury, NM 42796', 'Harvey Ankunding', 'Mr. Orion Barrows V', 'Bo Daugherty', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(313, 'Lavon Tremblay II', 'lesley.schimmel@gmail.com', '+1 (909) 598-6951', '7538 Nadia Valley Suite 454\nCarmelaside, CA 65846', 'Rogelio Keeling V', 'Trevion Toy', 'Magdalen Dickens PhD', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(314, 'Nicholas Upton DDS', 'chaz.hodkiewicz@gmail.com', '+1-941-647-6468', '18189 Duncan Manor\nEast Keith, NE 13495-6363', 'Camren Reynolds', 'Joe Donnelly', 'Herta Lueilwitz', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(315, 'Ned Stark', 'bernier.brice@schamberger.com', '+1-854-592-3515', '7566 Pfannerstill Gateway\nCodytown, NJ 87653', 'Angelo Cummerata', 'Pablo Funk', 'Jessika McClure', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(316, 'Jacey Rowe', 'fritsch.nathan@daugherty.com', '260-306-1827', '55108 Smitham Streets\nAngelitafort, IL 71645-4326', 'Jazmyne Corwin', 'Jacinto Beahan', 'Dr. Kyla Green', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(317, 'Prof. Ephraim Huel II', 'amely.sauer@mayert.com', '402.353.8405', '86458 Hackett Pines\nSouth Wandaburgh, TN 92598-2000', 'Prof. Lafayette Blick', 'Raphaelle Abernathy III', 'Elna Mraz', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(318, 'Lurline Bernier V', 'hintz.flo@hotmail.com', '(937) 442-2579', '41493 Carroll Terrace Apt. 961\nDemarcoborough, SD 74519', 'Dr. Blake Wilkinson', 'Jamarcus Schaefer', 'Tiana Mann', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(319, 'Rachelle Prohaska', 'hudson.kristina@tromp.com', '681.541.6782', '550 Howe Junctions Suite 666\nNorth Nadia, HI 90061', 'Marcella Ratke V', 'Jesse Dickens', 'Prof. Aracely Cummerata', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(320, 'Mr. Ian Bergnaum DVM', 'quinn49@zulauf.com', '818.401.7776', '2342 Merle Orchard\nSouth Mavericktown, VA 28991-9532', 'Leatha Kohler V', 'Uriel Zboncak Sr.', 'Prof. Ena Armstrong', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(321, 'Duncan Schmitt', 'assunta72@renner.org', '1-669-413-1954', '558 Toney Groves Suite 048\nNew Dorthyburgh, SC 71934', 'Dr. Elody McKenzie', 'Narciso Terry', 'Torey Christiansen', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(322, 'Ms. Aurelie Abbott PhD', 'omer.yost@wyman.info', '216-441-7147', '7813 Bednar Wall\nWest Madalyn, SC 12141', 'Elda Corwin', 'D\'angelo Ortiz', 'Jillian Yost', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(323, 'Miss Althea Dietrich', 'robel.lizzie@gmail.com', '+1-270-499-6072', '738 Ludwig Hill Suite 440\nWest Christopherland, SD 98216-1854', 'Idella Stoltenberg', 'Dr. Zelda Hirthe PhD', 'Martina Renner', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(324, 'Mrs. Rosalyn Goodwin Sr.', 'pat.mckenzie@gmail.com', '+1.225.404.9804', '6879 Ebony Flats\nClaudville, WA 19182-4296', 'Prof. Muriel Braun', 'Oren Pacocha', 'Mrs. Liliane Lockman', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(325, 'Magdalen Watsica', 'ruthe54@hotmail.com', '878-658-3200', '50002 Javier Ranch Apt. 254\nElimouth, NH 95458-2936', 'Dr. Justyn Baumbach', 'Mr. Raven Kassulke DVM', 'Lavina Armstrong', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(326, 'Brad Emard', 'ewisozk@spencer.org', '980.714.6336', '448 Darby Radial\nEast Lloyd, FL 46986-6676', 'Miss Kirsten Steuber I', 'Gregoria Anderson', 'Dusty Connelly', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(327, 'Yasmeen Keebler MD', 'yfadel@gmail.com', '573.445.5472', '705 Madelynn Square\nGilberthaven, ND 10264', 'Meta Mosciski', 'Harvey Keeling V', 'Daisy Ledner V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(328, 'Rasheed Ebert IV', 'fcartwright@mcdermott.com', '1-607-994-1211', '1851 Pfeffer Points Suite 712\nWest Ivorystad, IA 23798', 'Earline Kautzer', 'Prof. Kenton Shields IV', 'Prof. Lavern Towne III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(329, 'Newell Walsh', 'rempel.jayne@gmail.com', '+1-984-585-9568', '3737 Weber Haven\nStokesborough, NC 89581-7293', 'Prof. Alice Vandervort', 'Thaddeus Brown', 'Tyson Jerde', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(330, 'Mr. Jaime Dach', 'pat35@yahoo.com', '(856) 264-1291', '39247 Fae Summit\nNew Dillanbury, CA 37050', 'Ms. Destiney Kohler IV', 'Mortimer White', 'Prof. Helmer Abshire III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(331, 'Mrs. Natasha Mitchell DVM', 'camryn07@bailey.net', '562.425.5299', '61657 Kulas Parkways Apt. 641\nJadaborough, TN 94711-5895', 'Beatrice Swift', 'Mr. Presley Schuster MD', 'Mr. Alexie Sipes', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(332, 'Owen Smitham', 'jpfannerstill@towne.com', '1-325-919-5314', '23326 Donnelly Shore Suite 803\nRunolfssonstad, WA 54018-5916', 'Lucile Towne', 'Jovani Luettgen', 'Miss Carolanne McGlynn', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(333, 'Mauricio Lehner', 'adonis.ziemann@dubuque.info', '+1 (928) 225-3992', '6512 Lavinia Pine Apt. 917\nHelenaland, VT 24241', 'Jaren West V', 'Clementine Gerlach', 'Jed O\'Connell I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(334, 'Ricardo Schumm', 'efrain01@yahoo.com', '820.570.3987', '42120 Rempel Motorway Apt. 834\nAaliyahmouth, NM 45573-3585', 'Chance Green', 'Destiny Pollich', 'Antonetta Jakubowski', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(335, 'Mr. Jermey Padberg DDS', 'auer.christine@yahoo.com', '+16512863877', '69310 Lorenzo Avenue Suite 541\nSouth Jaydeborough, WA 32294', 'Orin Schoen', 'Vita Dare DDS', 'Prof. Winston Haley', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(336, 'Cristal Stamm III', 'carmella29@gmail.com', '414-834-1716', '11425 Jairo Passage Suite 146\nDejuanside, IA 36326', 'Erik Marquardt', 'Merle Koss', 'Prof. Keon Morissette III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(337, 'Prof. Leonardo Grant PhD', 'garett51@gmail.com', '364.636.8922', '113 Melisa Prairie Apt. 994\nNew Charles, WY 78681', 'Phoebe Kovacek', 'Stanley Champlin', 'Dr. Vladimir Blanda', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(338, 'Maritza Sipes', 'yundt.rick@yahoo.com', '+1 (202) 859-3826', '2294 Harber Crest Apt. 998\nEast Elouise, KY 53142-0082', 'Liana Reichert', 'Prof. Marlin Schaden', 'Rory Leuschke', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(339, 'Ms. Joanie Gutkowski Sr.', 'tschmidt@yahoo.com', '423.603.1765', '4974 Erdman Mission\nNorth Dennischester, ID 81014-8525', 'Brigitte Jast', 'Prof. Barney Walsh', 'Kelvin Connelly', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(340, 'Vivienne Hermiston DDS', 'jblick@crist.org', '737-959-2459', '63206 Reilly Lodge Suite 874\nWest Alanis, VT 79476', 'Shany Quigley', 'Brown McDermott', 'Gabrielle Bogisich', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(341, 'Prof. Lacy Armstrong', 'abbott.hilario@yahoo.com', '1-267-339-5457', '96304 Labadie Turnpike Apt. 682\nWest Lupe, MS 45206-1617', 'Frankie Nicolas I', 'Mrs. Itzel Gutmann III', 'Brandyn Bechtelar', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(342, 'Nico Farrell Jr.', 'walsh.emmitt@kihn.com', '+1-210-532-6929', '2901 Greenholt Loaf\nAndersonstad, LA 17694', 'Burley Wintheiser MD', 'Domenick Walker', 'Patience Ebert', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(343, 'Ted Pouros', 'brekke.audreanne@sipes.info', '234-276-1852', '493 Becker Cape\nNew Kalebville, MD 15886', 'Prof. Santos Hill Sr.', 'Ms. Lucinda Abernathy', 'Fannie Strosin', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(344, 'Mr. Lorenzo Harvey', 'bosco.sherman@steuber.com', '+1-601-220-1235', '32254 Veum Pine\nFisherfort, WY 18244-0720', 'Alanis Legros', 'Eliezer Prosacco', 'Mrs. Princess Nienow', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(345, 'Nelson Bruen', 'donato00@steuber.info', '+1-571-335-7422', '42029 Sanford Bypass Apt. 895\nNew Halmouth, NC 34368', 'Damon Veum', 'Lavonne Larson', 'Mr. Deion Lind PhD', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(346, 'Alvah Huel', 'cleta.anderson@runte.com', '+1-757-477-1750', '789 Diana Shoal Apt. 947\nSouth Maude, ID 02311-2013', 'Lee Wiza III', 'Cheyanne Hartmann', 'Cole Aufderhar', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(347, 'Mrs. Bettye Nienow PhD', 'qhettinger@gmail.com', '(831) 770-3845', '88102 Hermann Ways\nNew Earnest, IL 13757', 'Gunner Lang', 'Merlin Murazik', 'Melyssa Hermann', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(348, 'Mrs. Freeda Mante', 'nicolas27@hotmail.com', '(541) 619-0248', '789 Kshlerin Forks\nSouth Agustinafort, IL 81370', 'Grayce Mitchell', 'Godfrey Douglas', 'Camille Denesik II', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(349, 'Magali Treutel', 'estella77@yahoo.com', '+1-541-903-1022', '4552 Kristy Flat\nNew Nathan, WY 02834-8177', 'Jayce Fahey', 'Rodrigo Waelchi', 'Lonzo Sawayn', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(350, 'Kelley Reichert', 'oconner.raquel@yahoo.com', '540.285.3012', '121 Rahsaan Fords Apt. 808\nMicaelafurt, ND 12552-6207', 'Mr. Sydney Mueller', 'Nella Metz', 'Kali Klein', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(351, 'Dr. Shannon Rutherford', 'champlin.brendan@hettinger.com', '+1 (680) 506-7329', '31116 Kattie Knolls Suite 272\nMorissetteland, AL 98819', 'Mrs. Deja Okuneva', 'Dr. Maxine McClure II', 'Ms. Marlee Bogisich', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(352, 'Christopher Friesen III', 'ohara.elmira@pagac.org', '+1.605.226.5454', '3957 Halle Mountains Apt. 925\nMarleeside, AL 93074-5992', 'Abdiel Bartell DDS', 'Milan Hilpert PhD', 'Mrs. Ernestine Harvey', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(353, 'Marianne Harber', 'immanuel.corkery@witting.com', '+1.603.718.8533', '590 Sipes Mountain\nNew Kameronfort, LA 89358-0526', 'Judson Berge MD', 'Velma Borer', 'Dallin Towne V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(354, 'Jaylin Donnelly', 'augusta.beier@hotmail.com', '+1.938.484.9688', '60970 Israel Lake Apt. 834\nSchummfort, NC 33301', 'Emelie Corkery', 'Bethel Dach Sr.', 'Audrey Paucek', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(355, 'Scot Hoppe', 'shana45@gmail.com', '269-470-7722', '579 Brooks Fork\nWest Jaquelin, ID 39624', 'Caitlyn Keebler', 'Jackson Prohaska', 'Mrs. Viola Hand III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(356, 'Hilbert Lang I', 'blanda.braulio@murray.com', '318.488.3411', '4741 Baumbach Mission\nMaxinemouth, NM 11143', 'Dr. Jerel Keebler', 'Lenore Padberg', 'Martine Champlin DDS', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(357, 'Sebastian McKenzie Sr.', 'ithompson@dickinson.com', '(551) 634-4203', '690 Melvina Points\nNew Nya, WY 78411-9390', 'Miss Myrtle Okuneva', 'Jarred Stiedemann I', 'Kristin Gutmann', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(358, 'Vladimir O\'Reilly', 'constance79@hotmail.com', '+1.820.452.2269', '309 Cierra Curve Apt. 024\nPort Maynard, RI 40161', 'Uriah Walsh Jr.', 'Prof. Fiona Hermiston DDS', 'Zoie Green', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(359, 'Raegan Satterfield III', 'welch.lola@renner.info', '1-417-310-0340', '381 Braeden Rapid Suite 907\nNew Bernadetteport, ND 14881-8012', 'Prof. Morton Connelly', 'Bailey Hoeger', 'Prof. Taurean McKenzie DDS', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(360, 'Laverne Schmidt', 'owehner@hotmail.com', '(458) 234-5754', '5114 Fadel Shoal\nPort Catharine, KY 54506-7340', 'Mr. Jerald Gleason Sr.', 'Briana Crona', 'Prof. Mandy Rempel II', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(361, 'Mr. Newton Lueilwitz I', 'oorn@hettinger.com', '+18327299111', '305 Scottie Station Apt. 584\nNew Makenna, CO 89528-0579', 'Miss Patsy Simonis Sr.', 'Dr. Lucy Renner', 'Cameron Smith', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(362, 'Jennings Anderson II', 'rachelle.ratke@hotmail.com', '623.480.9931', '84271 Friedrich Place\nProhaskaborough, HI 15521', 'Ayana Jaskolski', 'Griffin Stoltenberg', 'Alfreda Hackett', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(363, 'Prof. Maximillian Streich DDS', 'bjast@hotmail.com', '+1-563-887-6865', '74080 Littel Stream\nNorth Allene, MD 72771-4623', 'Nickolas Brakus III', 'Dr. Bobby Quitzon', 'Kailey Langworth', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(364, 'Stefan Hoppe', 'qdaugherty@oconner.com', '(540) 624-1381', '681 Clara Crossroad Apt. 427\nSouth Melbaburgh, VA 58726-9049', 'June Rath', 'Mr. Benny Torphy V', 'Joshua Hauck IV', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(365, 'Willow Kshlerin', 'torrey.dooley@walter.info', '(283) 707-9518', '162 Abernathy Harbors Suite 061\nKassulkeburgh, MT 76945-4307', 'Mr. Nels Morar', 'Haleigh Jacobson', 'Ethel Kemmer', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(366, 'Lenore Schmeler II', 'cjakubowski@hansen.info', '(540) 756-3245', '245 Orin Mountains\nNew Audreyview, WI 16409', 'May Jakubowski', 'Orrin Hahn', 'Ms. Mossie Moore', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(367, 'Mr. Ben Larson', 'mlehner@yahoo.com', '+1.818.208.7611', '247 Schumm Street Suite 318\nLizahaven, GA 95575-8251', 'Darwin Sporer', 'Carmine Lueilwitz', 'Josiah Purdy', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(368, 'Rollin Roberts', 'vivian.mitchell@gmail.com', '213.976.4607', '787 Ziemann Forest Suite 581\nPort Candidamouth, CA 59483-8083', 'Rickey Pfannerstill', 'Amani Emard', 'Jaquan Monahan', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(369, 'Jordy Tremblay', 'durward.gulgowski@hotmail.com', '630.849.0624', '8816 Trinity Knoll Suite 394\nSchadenshire, VT 06298-6437', 'Dr. Selena Fadel V', 'Maiya Schinner', 'Rosella Douglas', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(370, 'Dr. Clair Pfeffer III', 'ruth.spencer@yahoo.com', '743-255-1684', '55253 Kylee Flat Apt. 108\nLake Treverburgh, LA 36648-0501', 'Mr. Lamont Torp', 'Amina Hill', 'Emmalee Thompson I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(371, 'Jamal Luettgen', 'ankunding.ted@dare.com', '971.936.6801', '414 Botsford Drives Apt. 711\nClaireborough, TX 07307', 'Sammy Rowe', 'Josh Waelchi', 'Camden Keebler IV', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(372, 'Ludie Johnson', 'chloe42@gmail.com', '351.350.4152', '262 Kassandra Inlet\nOlgaport, CO 87051-2429', 'Flavie Turner', 'Alessandra Gottlieb DDS', 'Juwan Beatty', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(373, 'Noe Mueller Sr.', 'nelda.gulgowski@satterfield.com', '321.625.3883', '2168 Enrique Spring\nWest Elsa, PA 29062-7566', 'Miss Julianne Harvey MD', 'Johnson Lesch', 'Miss Neva Hamill DDS', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(374, 'Price Grady', 'bmccullough@davis.com', '1-559-575-5070', '3591 Konopelski Knoll\nJohnstonville, RI 52047-4040', 'Audreanne Connelly', 'Lew Considine Jr.', 'Dr. Georgette McCullough Jr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(375, 'Matteo Heathcote', 'spencer89@anderson.com', '+1-307-946-3736', '261 Dovie Shore\nEdgarfurt, DE 79421', 'Mrs. Belle Grady I', 'Mrs. Myrtis Mertz', 'Lacy Bartoletti', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(376, 'Berenice Effertz', 'hackett.ophelia@pacocha.biz', '660.927.0858', '638 Pagac Lane\nMayertville, PA 86159-7973', 'Yessenia Ferry', 'Helena Mohr', 'Mr. Terrill Swaniawski V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(377, 'Kenya Jakubowski', 'wbaumbach@cole.com', '208.914.2511', '1326 Christiansen Stravenue\nWuckertshire, MO 48176', 'Johnpaul Ratke III', 'Miss Rylee Parisian MD', 'Aurelia Wyman DVM', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(378, 'Vickie Hintz', 'robb.hills@smitham.com', '+15718542193', '8536 White Ranch Suite 196\nHuelmouth, MO 07130', 'Okey Vandervort', 'Rafaela Flatley I', 'Raoul Hessel', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(379, 'Ms. Bonita O\'Reilly DVM', 'carlee.schroeder@yahoo.com', '539-499-7107', '63949 King Inlet Apt. 135\nJanessachester, NH 21883-4452', 'Dr. Lukas Dietrich', 'Angeline Runolfsson', 'Friedrich Harber', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(380, 'Waino Kerluke', 'qsawayn@harber.biz', '+1 (440) 894-7362', '14219 Kailey Rapid Apt. 039\nEast Madie, CT 05518-2908', 'Dr. Walker Hegmann IV', 'Mitchel Cormier', 'Louisa Sanford Sr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(381, 'Ms. Jaunita Feeney Sr.', 'baby40@willms.com', '+1-484-325-9087', '549 Fatima Landing\nNorth Ashleigh, ME 61586', 'Miss Jazlyn Hoeger IV', 'Dr. Elias Wolf Sr.', 'Travon Johnson', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(382, 'Kareem Cremin', 'lavonne25@hotmail.com', '(678) 877-4282', '417 Tierra Port\nFayfort, KY 31068', 'Prof. Leon Armstrong I', 'Mr. Lloyd Lind', 'Dan Haag', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(383, 'Gino Muller', 'langosh.deven@lindgren.com', '+1-757-617-6998', '39788 Mateo Village\nWest Charity, ME 60067', 'Tiara Breitenberg', 'Prof. Alexanne Robel DDS', 'Dr. Sabrina Mitchell Jr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(384, 'Palma Stehr', 'cmccullough@yahoo.com', '+19318845859', '7214 Antoinette Fort\nAbbottside, OR 60816-2799', 'Micaela Howell', 'Cordelia Mraz', 'Magdalen Hackett', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(385, 'Prof. Noe Deckow', 'nframi@ziemann.com', '484.890.7570', '70237 Batz Court\nEmmytown, IN 95904-5010', 'Evie Haag', 'Bailey Waelchi DDS', 'Marcelina Kautzer III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(386, 'Angelica Klein PhD', 'nhartmann@yahoo.com', '270-816-9626', '1480 Roma Track\nEribertoside, SD 52714-8212', 'Prof. Jane Emmerich V', 'Zane Schaefer', 'Miss Agustina Schroeder', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(387, 'Carol Champlin', 'isaac66@schultz.com', '336-773-3036', '21180 Dietrich Creek\nLake Dax, ND 30359-4513', 'Dr. Clotilde Beier', 'Jairo Blanda', 'Mr. Matt Pacocha Sr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(388, 'Andy Quitzon', 'izboncak@yahoo.com', '(402) 288-4808', '56669 Darian Avenue\nEast Douglas, SC 86911-8516', 'Eva Rohan', 'Miss Icie Herzog', 'Prof. Armand DuBuque', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(389, 'Terrance Treutel', 'orpha.leannon@kunze.com', '1-412-868-4709', '69902 Ullrich Lane Suite 052\nRaoulstad, IN 26505-3433', 'Prof. Jackson McClure II', 'Alize Macejkovic', 'Monica Nader DVM', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(390, 'Elinore Graham III', 'pemmerich@gmail.com', '(360) 936-0609', '835 Homenick Lights\nWillyberg, MA 20118', 'Tavares Keeling', 'Mr. Joe Deckow Sr.', 'Prof. Richard Adams', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(391, 'Claudine Kling', 'mittie38@yahoo.com', '520.403.0229', '52685 Claire Terrace Suite 768\nLake Cecil, FL 87408-4387', 'Mrs. Berenice Yundt', 'Titus Parisian', 'Prof. Vernice Barrows I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(392, 'Allan Greenholt', 'monty.daugherty@hotmail.com', '(435) 971-3251', '819 Botsford Field Apt. 699\nSouth Preston, TX 29767-3269', 'Ms. Harmony Lowe MD', 'Carmen Torp', 'Nestor Bauch', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(393, 'Quinton Zulauf DVM', 'dgutkowski@romaguera.com', '+1 (208) 481-9811', '931 Hettinger Lane\nEast Theresa, MS 84415-8139', 'Sage Zemlak', 'Flossie King', 'Eldred Lemke', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(394, 'Dr. Vance Ziemann', 'hgreenholt@hudson.com', '743.933.5575', '4203 Schowalter Mews Suite 174\nBodeburgh, WY 76587-2471', 'Haley Heidenreich', 'Lulu Schmeler', 'Gerald Treutel V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(395, 'Nakia Brown', 'garfield76@hotmail.com', '+1-440-584-8595', '70371 Crooks Heights Suite 234\nSchmittmouth, OR 54846-2748', 'Mr. Bell Altenwerth DDS', 'Miss Sabina Prohaska', 'Jennings Thompson', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(396, 'Jesse Russel', 'nader.antonetta@hotmail.com', '+1-360-894-9559', '7206 Bartoletti Isle Suite 157\nRobbfort, KY 57738', 'Tyrel Bernier', 'Mr. Davin Gerlach', 'Zetta Crona', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(397, 'Felipe Borer', 'fritsch.kariane@bednar.biz', '(984) 915-6168', '833 Zulauf Centers Suite 721\nLake Carliefort, GA 68696', 'Giovani Lubowitz Jr.', 'Lexus Mills', 'Conor Gleason III', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(398, 'Clementine Rempel', 'dock.beier@hotmail.com', '+1.463.273.3507', '34721 Weimann Gardens\nTorphyberg, KS 94908-5001', 'Regan Wisozk', 'Kolby Cassin', 'Lilla Littel', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(399, 'Parker Wilderman', 'cory.koch@wiegand.com', '(480) 417-9615', '9619 Dallas Plain Suite 191\nPaucekmouth, OK 93928', 'Phyllis Reichert', 'Cristobal Blick', 'Jordan Klocko', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(400, 'Rylan Botsford', 'dietrich.alfreda@oberbrunner.info', '847-323-0123', '372 Karlie Rest\nParisianborough, WI 81843-9898', 'Eric Hyatt', 'Edmund Emmerich II', 'Violet Kihn V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(401, 'Mr. Alden Padberg III', 'nfisher@gmail.com', '1-341-415-6084', '8577 Reichel Cape\nAdityaview, KY 09750-3379', 'Eloy Parisian', 'Jettie Volkman', 'Obie Harber Sr.', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(402, 'Mr. Torrance Bailey PhD', 'ruthie49@homenick.org', '872.897.1349', '24391 Alfonzo Pass\nNew Deonte, MN 57533-7112', 'Dr. Buck Bogan', 'Finn Kuphal', 'Savion Bins Sr.', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(403, 'Lorenza Ankunding', 'bsporer@yahoo.com', '1-914-479-6115', '527 Rashad Avenue\nLake Eladio, ME 65633-8002', 'Madge Stiedemann', 'Adele Lubowitz', 'Juliet Davis', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(404, 'Milo Quitzon', 'pfeffer.aurelio@collins.net', '+1-603-998-6234', '719 Marks Causeway\nWest Dawn, IA 41815-5376', 'Prof. Jessie Schoen IV', 'Prof. Cloyd Hodkiewicz', 'Mr. Reece Ziemann', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(405, 'Miss Shanny Zulauf', 'damon.dooley@yahoo.com', '+1 (971) 350-5268', '9361 Mona Way Suite 307\nNienowberg, MS 55165-6239', 'Abigale Turcotte', 'Ms. Cecile Grant', 'Audrey Smitham I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(406, 'Spencer Franecki', 'cnitzsche@hotmail.com', '+1.364.601.5915', '3779 Cristal Road Apt. 874\nMoorefurt, MI 66028', 'Catherine Howe', 'Ms. Alvina Schoen MD', 'Benjamin Wuckert', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(407, 'Laury Kirlin', 'vauer@hotmail.com', '1-351-279-8470', '4337 Angeline Brooks\nLake Paxton, SC 24652', 'Alexanne Kshlerin', 'Prof. Manuela Kovacek', 'Prof. Kristofer Streich', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(408, 'Jameson Crona', 'rickey.koss@crona.com', '+16789075758', '68892 Mckayla Ridge Apt. 750\nWest Venashire, IL 37293-2512', 'Connie Breitenberg', 'Chelsea Kshlerin', 'Dr. Annette Herman I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(409, 'Nedra Bosco', 'jbauch@yahoo.com', '+1-234-650-0907', '612 Nikki Wells\nSatterfieldfort, VT 63272', 'Angeline Deckow MD', 'Ms. Virginie Zboncak', 'Astrid Borer', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(410, 'Jarrett Rodriguez', 'langworth.javon@prohaska.biz', '+1 (830) 451-8462', '314 Hickle Forge\nWest Lomabury, AZ 61301-0367', 'Prof. Noemi Mohr MD', 'Jorge Kulas MD', 'Mathias Wisozk', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(411, 'Prof. Ilene DuBuque II', 'zulauf.destiney@gmail.com', '+1 (214) 406-2962', '841 Kaycee Stream\nLake Adriel, TN 81992', 'Ms. Pinkie Osinski MD', 'Griffin Crooks', 'Raleigh Vandervort', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(412, 'Miss Tess Hill', 'buster14@yahoo.com', '+19793362745', '56972 Casimir Mount\nHuelsville, CO 53526-9726', 'Harry Goodwin', 'Ms. Eliane Hickle DDS', 'Prof. Ephraim Rippin', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(413, 'Trent Gutkowski', 'esta.armstrong@gmail.com', '1-747-962-6998', '2653 Mitchell Pine\nMullerfort, VT 66840', 'Tamara Frami', 'Ms. Kamille Lueilwitz MD', 'Aleen Fadel I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(414, 'Dr. Jany Green DDS', 'ryleigh44@gmail.com', '1-321-755-2074', '524 Ethyl Manor Suite 034\nLake Caseytown, NM 18107-3747', 'Armando Weimann', 'Kelsi Ebert', 'Fleta Mante MD', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(415, 'Tracy Weimann', 'miller.delphia@gmail.com', '920.331.4856', '657 Elroy Common Apt. 555\nPort Maryborough, TX 77076-9599', 'Vernie Schultz', 'Afton Berge', 'Lavon Wehner', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49');
INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `address`, `option1`, `option2`, `option3`, `status`, `created_at`, `updated_at`) VALUES
(416, 'Nettie Labadie', 'scotty.langworth@funk.com', '856-574-9451', '26135 McLaughlin Drive Apt. 890\nLefflerbury, MS 64954-5250', 'Myrna Mertz', 'Jerrold Fadel PhD', 'Raina Zemlak', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(417, 'Mr. Hayley Daniel', 'kale.moore@mueller.com', '1-534-352-5925', '87358 Jena Freeway\nOlsonshire, OK 43483', 'Ezequiel Toy', 'Prof. Cyril Kutch Jr.', 'Ms. Valerie McClure Jr.', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(418, 'Demarco Zemlak', 'wlebsack@considine.com', '+1.475.840.8427', '47623 Gutkowski Key Apt. 374\nOkunevafurt, ND 00489-6153', 'Kayla Krajcik', 'Maximillian Hermann', 'Alia Mitchell', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(419, 'Pascale Kohler', 'xwisozk@huels.com', '832-992-4144', '3110 Tromp Burg Suite 510\nWernerborough, SD 91369-5271', 'Mr. Lambert Lakin', 'Donna Hessel DVM', 'Jennifer Jakubowski II', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(420, 'Kallie Streich', 'konopelski.kelsi@yahoo.com', '1-941-238-2706', '61435 Walker Ranch\nSouth Beverly, ID 02865-3937', 'Gilbert Lynch', 'Oscar Wisozk DDS', 'Stefan Little', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(421, 'Carter McLaughlin', 'crystal.ortiz@hotmail.com', '469.242.5314', '58092 Simonis Lane Suite 190\nNorth Gunnar, MT 99555', 'Prof. Kayden Satterfield', 'Troy Wunsch', 'Walton Lind', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(422, 'Vada Pagac', 'victor.nitzsche@yahoo.com', '470-962-4235', '42576 Stuart Way Apt. 470\nJaspertown, OR 77005-6144', 'Nat Hansen', 'Lucile Howe', 'Zander Leannon', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(423, 'Prof. Wilhelm Gaylord', 'bwill@von.com', '+1 (816) 698-0196', '886 Sauer Haven\nSouth Melisahaven, KS 93426-0124', 'Lucinda Cummings', 'Dolly Pfeffer', 'Mr. Torey Ryan IV', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(424, 'Mabelle Skiles', 'stracke.wallace@yahoo.com', '330-587-9111', '29000 Alta Squares\nBrakusborough, OH 42038-0146', 'Prof. Aric Boehm', 'Neil Johns', 'Dr. Isadore Langworth MD', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(425, 'Flo Huel', 'emurray@hotmail.com', '+14408969981', '28763 Witting Rapids Apt. 282\nNew Carlifurt, ND 35833-1547', 'Reynold Bartell', 'Jon Abbott', 'Georgiana Mayert DDS', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(426, 'Mr. Daren Stracke PhD', 'schultz.ludie@wunsch.biz', '1-305-561-6558', '1671 Rebecca Groves\nJaydeberg, WI 92695', 'Jacques Daniel', 'D\'angelo Morar', 'Ashton Ledner I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(427, 'Libby Lowe', 'morn@heidenreich.org', '+19853788580', '28792 Dibbert Corners\nPurdyton, OR 59238-7333', 'Caleb Pacocha', 'Marge Lueilwitz', 'Prof. Vernon Ortiz', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(428, 'Elvera Maggio', 'keichmann@gmail.com', '+1-412-448-7542', '238 Lakin Burgs\nWest Sheridanside, DE 01036', 'Jazmyne Ernser', 'Mr. Ephraim Schulist', 'Prof. Adella Schowalter', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(429, 'Miss Robyn Aufderhar', 'aaliyah.runolfsdottir@barton.biz', '1-740-913-6325', '367 Jacobson View\nNew Maraview, WY 01778', 'Hilbert Kunde', 'Garrett Sporer', 'Miss Bridgette Goodwin I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(430, 'Monserrate Nitzsche Jr.', 'tkiehn@shanahan.biz', '978-493-4568', '16205 Hand Corners\nSheashire, PA 01283', 'Marquise Bins', 'Teresa Williamson', 'Prof. Chet Marks', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(431, 'Dr. Maverick Bartoletti I', 'gmiller@schulist.com', '785.492.1766', '62554 Bauch Trail Apt. 590\nWalkerville, ND 40789-8413', 'Edyth Price', 'Prof. Hans Orn', 'Mrs. Else Weber III', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(432, 'Brandyn West', 'meghan95@purdy.info', '515.539.9495', '56853 Velma Springs\nDickinsonstad, NY 51191', 'Javonte Kilback', 'Johann Legros', 'Werner Fadel', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(433, 'Rubye Mosciski V', 'schmitt.coleman@yahoo.com', '+1-662-358-4020', '901 Krajcik View\nKochtown, OH 03342-3256', 'Oswald Schmidt', 'Kaylin Pacocha', 'Tyrel Renner III', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(434, 'Jamil Fisher DDS', 'yhermiston@schumm.com', '323.949.7015', '5310 Savion Inlet\nBalistreriland, MO 45732', 'Dr. Darion Nitzsche III', 'Yasmine Streich', 'Erika Moore', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(435, 'Dr. Chance Ankunding DDS', 'caleb18@hamill.org', '256.682.0743', '7192 Gusikowski Bypass\nPort Delfina, MT 21204-3291', 'Damon Ryan DDS', 'Stephanie McCullough', 'Ms. Malika Hegmann', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(436, 'Nasir Spencer', 'voconner@yahoo.com', '737.254.8147', '235 Alysson Cliff\nHeathcotechester, ID 66370-1345', 'Prof. Emmalee Feeney', 'Mittie Mueller', 'D\'angelo Little', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(437, 'Maci Rutherford', 'mframi@yahoo.com', '1-602-715-5341', '17382 Halvorson Mill Suite 397\nConnellystad, WY 11750', 'Dr. Daryl White DVM', 'Jordon Durgan', 'Annamae Lueilwitz', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(438, 'Roman O\'Hara', 'elouise.moen@yahoo.com', '+1.678.845.8503', '392 Demarcus Circle\nNew Kaylistad, LA 50569-7665', 'Laron Rau', 'Prof. Quinton Kuhlman DVM', 'Ms. Verdie Schmidt PhD', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(439, 'Rebeca Adams', 'qbechtelar@mosciski.com', '+19167374976', '7419 Sherwood Lock Apt. 237\nLake Magnusland, WA 57071', 'Eunice Connelly', 'Dr. Cristina Block I', 'Prof. Katheryn Schuster', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(440, 'Miss Eleanore Ernser', 'wilkinson.carole@gmail.com', '+1-423-220-3309', '9701 Swift Grove\nPort Lenoreberg, WY 73093-2045', 'Kristina Oberbrunner', 'Cordia Graham', 'Simeon Murphy DDS', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(441, 'Victor Romaguera', 'boehm.evie@hotmail.com', '(915) 429-2247', '81067 Torp Plaza Suite 197\nSouth Lew, RI 71916', 'Maxime Waters', 'Brook Pollich', 'Mr. Arnulfo Gleason III', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(442, 'Elvie Swaniawski', 'zreinger@gmail.com', '1-918-580-9760', '1698 Milo Points\nNew Isadorehaven, CA 94077-4715', 'Arne Keebler', 'Ms. Pearl Kohler DDS', 'Donnie Batz', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(443, 'Mrs. Phoebe Leffler DVM', 'sfranecki@yahoo.com', '(351) 461-9358', '69003 Medhurst Rest Suite 639\nEast Fernport, NH 66449-3818', 'Dr. Della Grady Sr.', 'Sarina Becker', 'Jedediah Wilkinson', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(444, 'Alessandro Bechtelar', 'marks.armando@gmail.com', '432.272.7207', '814 Hackett Squares Apt. 611\nEast Samantha, WY 97777', 'Prof. Virgil Stoltenberg II', 'Ms. Marlene Hermann V', 'Dr. Marley Leffler DDS', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(445, 'Eunice Dietrich', 'pbeahan@yahoo.com', '985-218-6815', '41784 Hodkiewicz Corners Apt. 542\nJoycefurt, OH 60910', 'Samson Dickens', 'Pete Hackett IV', 'Talon Goodwin', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(446, 'Mr. Caesar Collins', 'dschiller@block.com', '208.910.1324', '232 Farrell Point Apt. 246\nNewtonhaven, TN 62431', 'Mr. Rickey Abbott', 'Janie Hackett', 'Brenna Terry', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(447, 'Marisol Feeney', 'clubowitz@stiedemann.com', '+1 (872) 655-6072', '88443 Littel Lane\nLake Kasandraland, MA 47819-5815', 'Alanna Rice', 'Mr. Madison Mayert', 'Bessie Rutherford I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(448, 'Prof. Adolfo Nicolas', 'joanie.boyle@botsford.org', '610.895.2848', '105 Mack Ranch Suite 596\nNew Robyn, ID 45766-1711', 'Bernardo Bogan', 'Dr. Orion Hilpert', 'Colby Stroman', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(449, 'Eleonore Quitzon', 'qmurray@christiansen.com', '762-960-7751', '106 Osinski Drives\nPort Rockyborough, ME 05594', 'Nyah Eichmann', 'Nelle Fay', 'Simone Pacocha Sr.', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(450, 'Tyrique Bergstrom', 'wswift@yahoo.com', '+1 (870) 882-1087', '3633 Avis Prairie Suite 784\nPort Mauricioland, NC 81144-7817', 'Alessandro Mayert Jr.', 'Elza Labadie V', 'Ms. Mallie Maggio IV', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(451, 'Carleton Schoen', 'abernier@carroll.biz', '1-260-481-2597', '922 Myrtice Hill Suite 221\nNew Cleora, UT 02293', 'Prof. Percival Purdy II', 'Aliya Gutmann', 'Gilberto Yundt', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(452, 'Ellen Kiehn', 'ferry.sigmund@armstrong.com', '(443) 343-8069', '13690 Ida Falls Suite 189\nPort Queenieshire, SC 08832', 'Maurice Bogisich', 'Jayne Daugherty V', 'Yasmeen King', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(453, 'Leola Langworth', 'aniyah77@weimann.biz', '(808) 708-4703', '982 Hilma Mountain Suite 631\nNorth Anachester, UT 14456', 'Emiliano Ledner', 'Tyree Rolfson IV', 'Carolyne Torphy', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(454, 'Dr. Doris Johns', 'olen05@hotmail.com', '+1 (806) 608-4611', '2017 Cyrus Well Suite 969\nSouth Amelia, SC 49764', 'Dr. Nannie Jaskolski II', 'Noe Schoen', 'Kirsten Lehner', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(455, 'Hershel Bauch Jr.', 'julien50@hotmail.com', '+1 (850) 407-4538', '94854 Avery Coves\nPaulinetown, CA 10578', 'Jaquan Ferry', 'Lydia Anderson', 'Stacey Hermann', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(456, 'Westley Rogahn', 'mbeahan@hotmail.com', '+1-864-842-7053', '833 Javier Plains\nElenorachester, ID 56593-6683', 'Anais Rippin IV', 'Mrs. Maude Wilderman MD', 'Dr. David Witting Sr.', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(457, 'Caterina Labadie III', 'anthony07@yahoo.com', '336.310.2695', '93021 Osinski Ville\nWest Jordonton, OR 81526', 'Kavon Spencer Sr.', 'August King', 'Bethel Howe III', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(458, 'Valentina Moore DDS', 'lemke.gaetano@yahoo.com', '(458) 464-1178', '81816 Pfeffer Gateway\nJudsonborough, VT 25898-2445', 'Dr. Hassan Cartwright V', 'Carmella Considine', 'Maria King', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(459, 'Kay Vandervort', 'qraynor@yahoo.com', '+1-361-867-1350', '911 Jordane Junctions\nKarlichester, OR 58401-6339', 'Dr. Max Adams', 'Americo Nikolaus', 'Gabrielle Shields', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(460, 'Dr. Linnie Bednar DDS', 'koss.toy@yahoo.com', '808-925-7907', '315 Nienow Forks\nSoniamouth, CA 28048-5379', 'Melany O\'Conner', 'Taryn Medhurst', 'Dr. Andre Schmeler V', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(461, 'Kristoffer Bogisich', 'willa34@predovic.com', '+1-980-274-0525', '168 Cathryn Road Suite 290\nLake Lulubury, NJ 97518-9377', 'Ms. Eulah Graham III', 'Dr. Kendra Murphy Jr.', 'Jailyn Braun', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(462, 'Marshall Klein', 'carlo.hills@bailey.net', '458.831.5255', '9258 Christiana Lodge\nEast Reneport, NC 88055', 'Jordon Daugherty', 'Prof. Elliott Tremblay I', 'Dr. Zack Hagenes', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(463, 'Mohammed Quigley Jr.', 'grimes.kaelyn@gibson.com', '(704) 774-1630', '23908 Davis Motorway\nYoshikoshire, VA 64227-8962', 'Isai Buckridge', 'Duncan Wiegand V', 'Dr. Wilfred Purdy IV', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(464, 'Chadrick Veum', 'benny32@hotmail.com', '(971) 971-8302', '504 Chanel Curve\nLourdesfort, SD 04726-2471', 'Ms. Una Breitenberg', 'Birdie Gleichner', 'Coty Schiller PhD', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(465, 'Kristian Krajcik', 'amara.tillman@legros.net', '+1-220-369-8347', '7014 Hammes Junction Suite 720\nAdalinefurt, NE 92075', 'Nikko Kemmer', 'Hadley Fahey', 'Zachariah Lynch', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(466, 'Ashlee Runolfsdottir DVM', 'velva.barton@hotmail.com', '1-479-617-4057', '216 White Springs Apt. 602\nLake Javon, MA 88728', 'Verlie McKenzie', 'Ms. Susanna Larkin', 'Lionel Lueilwitz IV', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(467, 'Crystel Kuhlman', 'rollin.hessel@gmail.com', '+1-681-635-7163', '446 Borer Freeway\nMillermouth, RI 34049-4053', 'Alysson McCullough', 'Gay Nitzsche', 'Coleman Balistreri DDS', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(468, 'Kirstin Sanford III', 'parisian.judge@renner.com', '+1-531-350-2161', '460 Labadie Ways\nMaeganport, DC 13648', 'Dr. Makenna Tremblay', 'Georgette Bayer', 'Tremayne Stoltenberg', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(469, 'Jaden Lindgren', 'xschneider@gmail.com', '402.709.2322', '288 Schulist Squares Suite 471\nMichelland, NH 34110-9306', 'Quinten Olson', 'Delilah Waters', 'Jason Wehner', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(470, 'Liza Wiza Sr.', 'stroman.damien@rempel.net', '+1-814-548-0203', '65734 Gleason Fort\nSouth Micaelafort, MT 25651', 'Mr. Orin Dare DVM', 'Miss Celine McDermott Jr.', 'Mrs. Alyson O\'Connell', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(471, 'Torey Russel', 'hodkiewicz.chase@boyer.org', '283-401-1423', '5312 Abernathy Islands Suite 317\nWest Alfville, KS 93507', 'Evie Mante', 'Daisy Stanton', 'Rosella Homenick', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(472, 'Mack Rath', 'nelson01@gmail.com', '(475) 926-1791', '69602 Romaguera Lane Apt. 158\nJayneberg, AZ 14620-1647', 'Reilly Mitchell', 'Jevon Ebert', 'Mr. Michael Kirlin', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(473, 'Elvis Torp', 'tremayne.baumbach@hotmail.com', '928-733-1386', '9091 Scarlett Heights Suite 696\nWest Mario, RI 12158-3576', 'Dr. Pamela Altenwerth', 'Dr. Rebeca Rosenbaum IV', 'Carli Stracke', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(474, 'Prof. Mauricio Homenick', 'nakia81@hotmail.com', '440.816.2836', '9507 Letitia Squares\nWest Rossie, MD 82655-7869', 'Marjolaine Smith', 'Demarco Haag', 'Abdiel Kihn', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(475, 'Lillian Parisian', 'judah74@yahoo.com', '+1 (432) 246-0287', '442 Crist Cape\nGerlachchester, MA 46407', 'Eldon Walter', 'Dr. Alanis Harber PhD', 'Dr. Gilda Doyle I', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(476, 'Kasey Swift II', 'gpacocha@brakus.com', '845-663-3288', '892 Lester Island\nEast Danfort, WV 59517', 'Walton Kovacek', 'Hellen Buckridge', 'Emilie Thompson', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(477, 'Prof. Alessia Schultz MD', 'beatty.neal@okeefe.info', '530.701.4539', '1419 Marks Roads\nNew Kurt, CA 82269-7167', 'Rodrick Rohan', 'Rylan Muller I', 'Darien Rath III', '1', '2022-12-03 04:37:49', '2022-12-03 04:37:49'),
(478, 'Cameron Mann', 'cummings.lorena@gmail.com', '330-261-6431', '493 Macejkovic Rue\nNew Ulisesmouth, MN 77042', 'Vallie Konopelski', 'Cristal Eichmann', 'Dr. Murl O\'Conner', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(479, 'Luz Barrows', 'ikreiger@berge.org', '1-440-700-4349', '6825 Janice Parkways Apt. 659\nHellerchester, NY 53431-4965', 'Rosamond Hodkiewicz', 'Prof. Cale Connelly', 'Janessa Rogahn III', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(480, 'Ms. Margie Schroeder MD', 'armand.sauer@kulas.info', '(510) 738-8160', '81264 Myrna Fords\nNorth Amelystad, NY 83504', 'Tania King MD', 'Kathleen Kemmer', 'Jaleel Kassulke', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(481, 'Kailee King', 'vkris@gmail.com', '650-925-1112', '5924 Hahn Ridges\nHesselshire, WI 31150-7596', 'Ilene Walsh', 'Cole Baumbach', 'Giuseppe Bogisich', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(482, 'Hilbert McClure Sr.', 'patrick.stokes@johns.biz', '(724) 739-0950', '7498 Theresa Road Apt. 348\nMaiyaton, MS 93801', 'Dr. Bernie Mayert', 'Candice Hoppe', 'Mrs. Matilde Bogan IV', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(483, 'Tyree Hickle', 'frank26@kub.info', '+1-562-486-3736', '172 Koss Mission\nBoyershire, NY 40450', 'Dimitri Gutmann', 'Alexandre Glover', 'Katrine Ferry', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(484, 'Orville Lind II', 'beer.alan@hotmail.com', '+1-310-245-5554', '7036 Pollich Street\nPort Edythe, CA 07050-0578', 'Dr. Emanuel Jones II', 'Dr. Heidi Rogahn', 'Dr. Stanford Powlowski', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(485, 'Dr. Jacky Wiegand III', 'ymurray@gmail.com', '(843) 212-9037', '460 Bryana Lodge Apt. 409\nNorth Ora, ND 55929', 'Uriel Gorczany DVM', 'Prof. Archibald Runolfsdottir', 'Shanna Schaefer', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(486, 'Sabina Berge', 'cronin.nathanial@kris.org', '640-374-1683', '17201 Evelyn Circles\nHackettport, WA 88443', 'Prof. Asha Block', 'Adela Lowe', 'Cleve Smitham', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(487, 'Annamae Monahan', 'cristian03@yahoo.com', '1-973-645-0039', '59088 Johns Light\nRockyton, TN 40975', 'Lucious Thompson', 'Magdalena Johnson', 'Bria Mitchell', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(488, 'Aliya Will', 'larue35@gmail.com', '+1.949.565.7693', '75431 Hettinger Rue\nNorth Alanafurt, KY 28227', 'Arielle Kerluke', 'Sammie Erdman', 'Ms. Marian O\'Keefe', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(489, 'Darrell Lang', 'jordan.hegmann@walter.com', '1-361-879-0196', '588 Pouros Ford\nPort Matteoville, TN 78113', 'Dr. Cydney Fadel MD', 'Patricia Schmidt', 'Dr. Jaeden Hegmann', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(490, 'Ms. Georgianna Hyatt', 'blake82@blanda.com', '872-270-4854', '8873 Alphonso Trail Apt. 831\nEdgardoside, IL 79902', 'Roberta Mosciski MD', 'Kali Kilback', 'Dr. Wyman Carter', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(491, 'Tamara Treutel', 'salma58@gmail.com', '980-620-0396', '9619 Noe Locks\nWest Hannahberg, TN 26215-2060', 'Domenic Kiehn', 'Ima Krajcik', 'Adah Lynch DVM', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(492, 'Dr. Chadd Schowalter I', 'ortiz.sarina@gmail.com', '1-213-570-3409', '54072 Camron Forges Suite 940\nWest Eldon, AL 55183', 'Webster Streich', 'Danika Gutmann', 'Macy Hills V', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(493, 'Prof. Shea Ratke', 'kayley16@okon.com', '229.887.5758', '57347 Berge Mount\nPort Eribertobury, NC 58194-5153', 'Maybell Kling', 'Dr. Johnathon Powlowski', 'Dr. Floyd Dickens', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(494, 'Prof. Eric McGlynn', 'oyost@homenick.net', '1-630-486-8868', '5620 Hannah Estate\nModestaport, WA 91511', 'Marvin Friesen', 'Vinnie Swaniawski', 'Dimitri Dickinson', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(495, 'Kiley Moore', 'arthur01@schaden.org', '1-630-860-7415', '748 Lorena Tunnel Apt. 685\nNorth Myrticemouth, NC 54176', 'Antoinette Mayert PhD', 'Abigayle Walker', 'Ciara Beer IV', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(496, 'Jose Rowe', 'hirthe.lola@schmitt.biz', '857-298-0445', '393 Lexie Dam\nWest Lydia, CO 18152', 'Mr. Jefferey Hermann PhD', 'Darrel Schmeler II', 'Sim Boehm', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(497, 'Dr. Quinten Labadie Jr.', 'lawrence08@marquardt.org', '1-214-608-0572', '276 Keely Stream Suite 462North Alveramouth, SC 28154-6682', 'Alyson Ondricka', 'Ms. Kasey Shanahan', 'Ms. Tabitha Yundt II', '1', '2022-12-03 04:37:50', '2022-12-09 16:53:48'),
(498, 'Dr. Reginald Willms IV', 'cassandra.windler@denesik.org', '(817) 815-7392', '900 Ferry Park\nEast Garland, VT 66157', 'Izaiah Hegmann', 'Nedra Rodriguez IV', 'Sylvan White', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(499, 'Sadye Collier', 'webster59@krajcik.com', '(402) 778-6844', '28440 Rempel Greens Apt. 345\nPort Janieside, MN 24815', 'Mr. Carson Abbott MD', 'Asia Russel', 'Breana Spencer', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(500, 'Megane Gibson', 'annette.baumbach@hotmail.com', '+1 (312) 719-6838', '9431 Moises Rapid\nTreuteltown, SD 24177', 'Dr. Juwan Beer', 'Prof. Hayden Padberg IV', 'Monroe Glover', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logpaths`
--

CREATE TABLE `logpaths` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logpaths`
--

INSERT INTO `logpaths` (`id`, `path`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:17:47', '2022-12-02 06:17:47'),
(2, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:17:50', '2022-12-02 06:17:50'),
(3, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:17:55', '2022-12-02 06:17:55'),
(4, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:17:59', '2022-12-02 06:17:59'),
(5, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:18:01', '2022-12-02 06:18:01'),
(6, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 06:18:02', '2022-12-02 06:18:02'),
(7, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', NULL, '2022-12-02 08:42:05', '2022-12-02 08:42:05'),
(8, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', NULL, '2022-12-02 08:42:36', '2022-12-02 08:42:36'),
(9, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-02 10:15:26', '2022-12-02 10:15:26'),
(10, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 05:03:10', '2022-12-03 05:03:10'),
(11, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 05:04:14', '2022-12-03 05:04:14'),
(12, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 05:05:59', '2022-12-03 05:05:59'),
(13, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 11:26:52', '2022-12-03 11:26:52'),
(14, 'http://localhost/code/Genuity/pratices/day19/larapos/public/carousel/12/test', '1', '2022-12-03 11:26:57', '2022-12-03 11:26:57'),
(15, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', NULL, '2022-12-03 16:24:19', '2022-12-03 16:24:19'),
(16, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', NULL, '2022-12-03 16:24:34', '2022-12-03 16:24:34'),
(17, 'http://localhost/code/Genuity/pratices/day19/larapos/public/carousel/12/test', '1', '2022-12-03 16:24:59', '2022-12-03 16:24:59'),
(18, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 16:25:01', '2022-12-03 16:25:01'),
(19, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 16:31:08', '2022-12-03 16:31:08'),
(20, 'http://localhost/code/Genuity/pratices/day19/larapos/public/alllogs', '1', '2022-12-03 17:15:29', '2022-12-03 17:15:29'),
(21, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-08 07:26:23', '2022-12-08 07:26:23'),
(22, 'http://localhost/code/Genuity/pratices/day21/New%20folder/larapos/public/alllogs', '1', '2022-12-08 07:35:57', '2022-12-08 07:35:57'),
(23, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:13:17', '2022-12-08 13:13:17'),
(24, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:14:24', '2022-12-08 13:14:24'),
(25, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:24:00', '2022-12-08 13:24:00'),
(26, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:24:32', '2022-12-08 13:24:32'),
(27, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:27:13', '2022-12-08 13:27:13'),
(28, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:27:51', '2022-12-08 13:27:51'),
(29, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:27:56', '2022-12-08 13:27:56'),
(30, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:28:03', '2022-12-08 13:28:03'),
(31, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:28:38', '2022-12-08 13:28:38'),
(32, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:29:10', '2022-12-08 13:29:10'),
(33, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:30:35', '2022-12-08 13:30:35'),
(34, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:30:50', '2022-12-08 13:30:50'),
(35, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:31:09', '2022-12-08 13:31:09'),
(36, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:31:41', '2022-12-08 13:31:41'),
(37, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:32:43', '2022-12-08 13:32:43'),
(38, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:32:47', '2022-12-08 13:32:47'),
(39, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:34:25', '2022-12-08 13:34:25'),
(40, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:34:29', '2022-12-08 13:34:29'),
(41, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:35:05', '2022-12-08 13:35:05'),
(42, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:35:09', '2022-12-08 13:35:09'),
(43, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:36:41', '2022-12-08 13:36:41'),
(44, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:38:08', '2022-12-08 13:38:08'),
(45, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/3/nice', '1', '2022-12-08 13:38:12', '2022-12-08 13:38:12'),
(46, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:42:52', '2022-12-08 13:42:52'),
(47, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:44:24', '2022-12-08 13:44:24'),
(48, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:45:35', '2022-12-08 13:45:35'),
(49, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:45:50', '2022-12-08 13:45:50'),
(50, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:46:58', '2022-12-08 13:46:58'),
(51, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:48:49', '2022-12-08 13:48:49'),
(52, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:49:01', '2022-12-08 13:49:01'),
(53, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:49:17', '2022-12-08 13:49:17'),
(54, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:49:56', '2022-12-08 13:49:56'),
(55, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:50:15', '2022-12-08 13:50:15'),
(56, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:50:24', '2022-12-08 13:50:24'),
(57, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:50:29', '2022-12-08 13:50:29'),
(58, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:51:00', '2022-12-08 13:51:00'),
(59, 'http://localhost/code/Genuity/pratices/day21/larapos/public/carousel/2/nice', '1', '2022-12-08 13:51:17', '2022-12-08 13:51:17'),
(60, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-10 10:18:49', '2022-12-10 10:18:49'),
(61, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-12 03:30:17', '2022-12-12 03:30:17'),
(62, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-12 03:39:15', '2022-12-12 03:39:15'),
(63, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-12 03:55:54', '2022-12-12 03:55:54'),
(64, 'http://localhost/code/Genuity/pratices/day21/larapos/public/alllogs', '1', '2022-12-12 04:17:42', '2022-12-12 04:17:42'),
(65, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '6', '2022-12-12 14:37:32', '2022-12-12 14:37:32'),
(66, 'http://192.168.54.118/web3-batch-laravel/larapos/public/carousel/12/test', '8', '2022-12-15 12:08:18', '2022-12-15 12:08:18'),
(67, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:44', '2022-12-21 13:33:44'),
(68, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:49', '2022-12-21 13:33:49'),
(69, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:50', '2022-12-21 13:33:50'),
(70, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:51', '2022-12-21 13:33:51'),
(71, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:53', '2022-12-21 13:33:53'),
(72, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:54', '2022-12-21 13:33:54'),
(73, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:55', '2022-12-21 13:33:55'),
(74, 'http://192.168.54.118/web3-batch-laravel/larapos/public/alllogs', '10', '2022-12-21 13:33:59', '2022-12-21 13:33:59');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_23_065908_larapos', 1),
(6, '2022_11_27_230029_create_logpaths_table', 1),
(7, '2022_11_28_161228_create_catagories_table', 1),
(8, '2022_12_01_034842_create_customers_table', 1),
(9, '2022_12_01_035037_create_suppliers_table', 1),
(10, '2022_12_01_035120_create_products_table', 1),
(11, '2022_12_05_000619_create_profiles_table', 2),
(12, '2022_12_06_035150_create_sales_table', 3),
(13, '2022_12_15_180253_create_saledetails_table', 3),
(14, '2022_12_17_180253_create_purchases_table', 4),
(15, '2022_12_17_190253_create_purchasedetails_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `catagory_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `unitprice` double(8,2) DEFAULT NULL,
  `saleprice` double(8,2) DEFAULT NULL,
  `unit` set('kg','gm','dozon','hali','piece','litter') COLLATE utf8mb4_unicode_ci NOT NULL,
  `unitvalue` tinyint(4) NOT NULL,
  `quantity` int(11) NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount` tinyint(4) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dimention` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` set('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `catagory_id`, `supplier_id`, `unitprice`, `saleprice`, `unit`, `unitvalue`, `quantity`, `weight`, `discount`, `image`, `dimention`, `option1`, `option2`, `option3`, `option4`, `option5`, `status`, `created_at`, `updated_at`) VALUES
(124, 'test product for men', 'some description asfdsdfd', 203, 218, 200.00, 300.00, 'piece', 1, 200, '12', 0, 'products/sBIkZp1tqdk87l5QVFZ1xTVvfetPRfWlE9rNUj9u.jpg', NULL, '1', '2', '3', '4', NULL, '1', '2022-12-12 14:27:59', '2022-12-12 14:27:59'),
(125, 'T-shirt', 'Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato Potato', 203, 220, 1.00, 1.00, 'dozon', 12, 12, '12', 12, 'products/q09fpNsiLhNLXEcwEletdbBxo0GbcrBlNA0tnLip.jpg', NULL, '1', '1', '2', '3', '3', '1', '2022-12-12 14:39:03', '2022-12-12 14:39:03'),
(126, 'Tshart', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In rutrum purus at auctor rhoncus. Praesent magna turpis, auctor sit amet lorem id, viverra sodales nunc. Vestibulum pellentesque, odio id tempus consequat, nibh quam vehicula neque', 203, 220, 400.00, 1000.00, 'piece', 1, 100, '12', 0, 'products/lwSygs1IZuvQZvZCguUk349dv1bNdv5GAuHjSKFz.jpg', NULL, '3', '3', '3', '3', '3', '1', '2022-12-12 14:40:14', '2022-12-12 14:40:14'),
(127, 'Cap', 'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam euismod venenatis orci, vulputate pretium tortor.', 505, 225, 300.00, 500.00, 'piece', 1, 1, '2', 12, 'products/s7IVUoJo5QyY4yY57Lyt3bS6GMAYckRdrq3mxSLp.jpg', NULL, '3', '3', '3', '3', '3', '1', '2022-12-12 14:42:59', '2022-12-12 14:42:59'),
(128, 'Printed Dres', 'Process planning: he hree-dimensional cutting echnology is o show he body\'s neat shape and elegant quality. Over-he-knee, beautiful print, fully show he elegance and charm of women', 505, 211, 1250.00, 2000.00, 'piece', 120, 300, '1', 50, 'products/5B5aB2dD3zr69ShnLt0aDFndTgew2CgH5EoTbR2c.jpg', NULL, '1', '1', '1', '1', '1', '1', '2022-12-12 14:43:02', '2022-12-12 14:43:02'),
(129, 'Light', 'In physics, the term \"light\" may refer more broadly to electromagnetic radiation of any wavelength', 507, 220, 2000.00, 2500.00, 'piece', 1, 1, '500', 30, 'products/5P29WV8w0YoLfehkLaMHLpZlrDoK7cujDGZGpIxj.jpg', NULL, '1', '1', '1', '1', '1', '1', '2022-12-12 14:43:12', '2022-12-15 11:07:36'),
(130, 'arg jarsey', 'This jarsey is dorkar.. eta amar o apnar mon valo rakhe ,,,,', 203, 273, 300.00, 350.00, 'piece', 123, 12, '500', 99, 'products/pGgSdLoqrNIlfhPNQqkYVBRau5ZQnwVoIGgCmtdc.jpg', NULL, '1', '2', '3', '4', '5', '1', '2022-12-12 14:44:36', '2022-12-12 14:44:36'),
(131, '3pic', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.', 505, 224, 700.00, 1500.00, 'piece', 1, 100, '21', 0, 'products/w0quLOOPtIuLYqFKeSIc0ncoppAp0tgqm76cq51v.jpg', NULL, '3', '3', '3', '3', '3', '1', '2022-12-12 14:46:06', '2022-12-12 14:46:06'),
(132, 'Love', 'Love is Power................................................................?', 506, 225, 5000.00, 10000.00, 'piece', 1, 1, '0', 0, 'products/0dBN2r3Z8Q0LJuFbshmI3pCKj2CEV0aVeERgqiaY.jpg', NULL, '3', '3', '3', '3', '3', '1', '2022-12-12 14:49:03', '2022-12-12 14:49:03'),
(133, 'watch', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas a viverra leo. Nunc sagittis porttitor pulvinar. Quisque eu odio dui. Sed malesuada lorem arcu, sit amet malesuada sapien iaculis ac. Sed tempus, massa non placerat condimentum, risus sem facilisis ipsum,', 507, 208, 1000.00, 1200.00, 'piece', 12, 100, '200g', 0, 'products/7bfcP23UcwVRR0APBp8rwQ2vW4JhD9PFvIKCQinq.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-12-14 12:11:59', '2022-12-14 12:11:59'),
(134, 'Camra', 'The Lorem Ipsum for photos.', 507, 225, 12000.00, 15000.00, 'piece', 50, 12, '13', 0, 'products/gtgkqAdDzCNJkd7QvyHXHhSlToCC8MruGj8Q66T8.jpg', NULL, '1', '1', '1', '1', '1', '1', '2022-12-14 12:18:23', '2022-12-14 12:18:23'),
(135, 'bag', 'carry your books in the bag', 203, 208, 600.00, 500.00, 'piece', 12, 10, '12', 5, 'products/BnoMSmCOtWqVjHulq8V1sbtcTwulewFLNUSXDjgA.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', '2022-12-15 11:10:59', '2022-12-15 11:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` set('m','f','o') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkdin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fiver` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upwork` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `nickname`, `phone`, `address`, `blood_group`, `gender`, `image`, `facebook`, `instagram`, `linkdin`, `twitter`, `fiver`, `upwork`, `created_at`, `updated_at`) VALUES
(6, 1, 'Admin', '01640638628', 'Dhaka,bangladesh', 'B-', 'm', 'profile/jUkF89MoqNtz6XWTxjhckgg239NA8mac1vsc4DCg.jpg', 'moard', 'morad', 'morad', 'morad', 'morad', 'morad', '2022-12-08 10:42:28', '2022-12-12 14:25:08'),
(7, 8, 'asf', 'dsaf', 'asf', 'b-', 'm', 'D:\\xampp8110\\tmp\\php6CE0.tmp', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-15 10:44:36', '2022-12-15 10:44:36'),
(8, 2, 'Mamun', '01911123456', 'Mirpur', 'B+', 'm', 'profile/Bwr6CluIOiIzd0akZuZAxoBlozl62eRxZ4pM66l6.jpg', 'mamun', 'mamun', 'mamun', 'mamun', 'mamun', 'mamun', '2022-12-19 13:25:56', '2022-12-19 13:29:06'),
(9, 10, 'Ashik', '042154154554', 'feni', 'AB-', 'm', 'profile/A8sI1pUwNIrTA2T8I82zcwmJc9AiPOx3hCRCI2Qi.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-19 13:31:58', '2022-12-19 13:32:10'),
(10, 12, 'rafsan', '0123654789', 'mirpur,dhaka', 'A+', 'm', 'profile/shOCRKVhTHoOIJDUxKiX9ZyLDFJ5xKhI80RFa0fB.jpg', 'ad', 'afe', 'afget', 'ager', 'agr', 'a4er', '2022-12-21 14:34:07', '2022-12-21 14:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `purchasedetails`
--

CREATE TABLE `purchasedetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `purchase_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchasedetails`
--

INSERT INTO `purchasedetails` (`id`, `purchase_id`, `product_id`, `quantity`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 134, 3, 15000.00, 0, '2023-01-01 08:31:45', '2023-01-01 08:31:45'),
(2, 1, 127, 3, 500.00, 12, '2023-01-01 08:31:45', '2023-01-01 08:31:45'),
(3, 2, 127, 2, 500.00, 12, '2023-01-01 08:31:45', '2023-01-01 08:31:45'),
(4, 2, 134, 2, 15000.00, 0, '2023-01-01 08:31:45', '2023-01-01 08:31:45'),
(5, 3, 134, 3, 15000.00, 0, '2023-01-01 08:31:47', '2023-01-01 08:31:47'),
(6, 3, 127, 3, 500.00, 12, '2023-01-01 08:31:47', '2023-01-01 08:31:47'),
(7, 4, 134, 13, 15000.00, 0, '2023-01-01 08:38:05', '2023-01-01 08:38:05'),
(8, 4, 127, 17, 500.00, 12, '2023-01-01 08:38:05', '2023-01-01 08:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED NOT NULL,
  `discount` double(8,2) NOT NULL DEFAULT 0.00,
  `total` bigint(20) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` set('cash','bKash','cod') COLLATE utf8mb4_unicode_ci NOT NULL,
  `trxid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` set('c','i') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'c',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `user_id`, `supplier_id`, `discount`, `total`, `comment`, `payment`, `trxid`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 207, 20.00, 46300, 'hi', 'bKash', 'jttd yhj5yehdg hyrtsb', 'c', '2023-01-01 08:31:44', '2023-01-01 08:31:44'),
(2, 2, 207, 80.00, 30800, 'test', 'bKash', '123123123', 'c', '2023-01-01 08:31:45', '2023-01-01 08:31:45'),
(3, 1, 207, 20.00, 46300, 'hi', 'bKash', 'jttd yhj5yehdg hyrtsb', 'c', '2023-01-01 08:31:47', '2023-01-01 08:31:47'),
(4, 2, 207, 80.00, 202400, '888888', 'bKash', '231321321', 'c', '2023-01-01 08:38:05', '2023-01-01 08:38:05');

-- --------------------------------------------------------

--
-- Table structure for table `saledetails`
--

CREATE TABLE `saledetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `saledetails`
--

INSERT INTO `saledetails` (`id`, `sale_id`, `product_id`, `quantity`, `price`, `discount`, `created_at`, `updated_at`) VALUES
(1, 9, 126, 2, 1000.00, 0, '2022-12-15 13:05:38', '2022-12-15 13:05:38'),
(2, 9, 127, 3, 500.00, 12, '2022-12-15 13:05:38', '2022-12-15 13:05:38'),
(3, 9, 130, 4, 350.00, 99, '2022-12-15 13:05:38', '2022-12-15 13:05:38'),
(4, 11, 126, 5, 1000.00, 0, '2022-12-19 13:34:24', '2022-12-19 13:34:24'),
(5, 11, 127, 5, 500.00, 12, '2022-12-19 13:34:24', '2022-12-19 13:34:24'),
(6, 12, 126, 5, 1000.00, 0, '2022-12-19 13:34:26', '2022-12-19 13:34:26'),
(7, 12, 127, 5, 500.00, 12, '2022-12-19 13:34:26', '2022-12-19 13:34:26'),
(8, 13, 126, 5, 1000.00, 0, '2022-12-19 13:34:28', '2022-12-19 13:34:28'),
(9, 13, 127, 5, 500.00, 12, '2022-12-19 13:34:28', '2022-12-19 13:34:28'),
(10, 15, 127, 3, 500.00, 12, '2022-12-19 13:55:56', '2022-12-19 13:55:56'),
(11, 15, 134, 2, 15000.00, 0, '2022-12-19 13:55:56', '2022-12-19 13:55:56'),
(12, 15, 126, 3, 1000.00, 0, '2022-12-19 13:55:56', '2022-12-19 13:55:56'),
(13, 15, 125, 4, 1.00, 12, '2022-12-19 13:55:56', '2022-12-19 13:55:56'),
(14, 16, 126, 6, 1000.00, 0, '2022-12-19 13:56:31', '2022-12-19 13:56:31'),
(15, 16, 127, 3, 500.00, 12, '2022-12-19 13:56:31', '2022-12-19 13:56:31'),
(16, 16, 134, 5, 15000.00, 0, '2022-12-19 13:56:31', '2022-12-19 13:56:31'),
(17, 18, 127, 4, 500.00, 12, '2022-12-19 14:20:56', '2022-12-19 14:20:56'),
(18, 19, 127, 4, 500.00, 12, '2022-12-19 14:20:59', '2022-12-19 14:20:59'),
(19, 20, 127, 4, 500.00, 12, '2022-12-19 14:21:06', '2022-12-19 14:21:06'),
(20, 21, 126, 3, 1000.00, 0, '2022-12-19 14:25:30', '2022-12-19 14:25:30'),
(21, 21, 134, 3, 15000.00, 0, '2022-12-19 14:25:31', '2022-12-19 14:25:31'),
(22, 21, 127, 3, 500.00, 12, '2022-12-19 14:25:31', '2022-12-19 14:25:31'),
(23, 21, 124, 3, 300.00, 0, '2022-12-19 14:25:31', '2022-12-19 14:25:31'),
(24, 21, 133, 3, 1200.00, 0, '2022-12-19 14:25:31', '2022-12-19 14:25:31'),
(25, 22, 127, 3, 500.00, 12, '2022-12-19 14:30:21', '2022-12-19 14:30:21'),
(26, 22, 134, 3, 15000.00, 0, '2022-12-19 14:30:21', '2022-12-19 14:30:21'),
(27, 23, 127, 1, 500.00, 12, '2022-12-21 13:26:25', '2022-12-21 13:26:25'),
(28, 23, 134, 1, 15000.00, 0, '2022-12-21 13:26:25', '2022-12-21 13:26:25'),
(29, 24, 127, 1, 500.00, 12, '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(30, 24, 134, 1, 15000.00, 0, '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(31, 25, 127, 1, 500.00, 12, '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(32, 25, 134, 1, 15000.00, 0, '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(33, 26, 127, 1, 500.00, 12, '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(34, 27, 127, 1, 500.00, 12, '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(35, 26, 134, 1, 15000.00, 0, '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(36, 27, 134, 1, 15000.00, 0, '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(37, 28, 127, 1, 500.00, 12, '2022-12-21 13:26:43', '2022-12-21 13:26:43'),
(38, 28, 134, 1, 15000.00, 0, '2022-12-21 13:26:43', '2022-12-21 13:26:43'),
(39, 29, 127, 1, 500.00, 12, '2022-12-21 13:26:43', '2022-12-21 13:26:43'),
(40, 29, 134, 1, 15000.00, 0, '2022-12-21 13:26:43', '2022-12-21 13:26:43'),
(41, 30, 127, 1, 500.00, 12, '2022-12-21 13:28:18', '2022-12-21 13:28:18'),
(42, 30, 134, 1, 15000.00, 0, '2022-12-21 13:28:18', '2022-12-21 13:28:18'),
(43, 31, 127, 1, 500.00, 12, '2022-12-21 13:28:19', '2022-12-21 13:28:19'),
(44, 31, 134, 1, 15000.00, 0, '2022-12-21 13:28:19', '2022-12-21 13:28:19'),
(45, 32, 127, 1, 500.00, 12, '2022-12-21 13:28:24', '2022-12-21 13:28:24'),
(46, 32, 134, 1, 15000.00, 0, '2022-12-21 13:28:24', '2022-12-21 13:28:24'),
(47, 36, 127, 1, 500.00, 12, '2022-12-21 14:20:37', '2022-12-21 14:20:37'),
(48, 36, 134, 1, 15000.00, 0, '2022-12-21 14:20:37', '2022-12-21 14:20:37'),
(49, 37, 127, 1, 500.00, 12, '2022-12-21 14:21:21', '2022-12-21 14:21:21'),
(50, 37, 134, 1, 15000.00, 0, '2022-12-21 14:21:21', '2022-12-21 14:21:21'),
(51, 38, 126, 2, 1000.00, 0, '2022-12-21 14:22:38', '2022-12-21 14:22:38'),
(52, 38, 129, 4, 2500.00, 30, '2022-12-21 14:22:38', '2022-12-21 14:22:38'),
(53, 38, 134, 3, 15000.00, 0, '2022-12-21 14:22:38', '2022-12-21 14:22:38'),
(54, 39, 125, 6, 1.00, 12, '2022-12-21 14:23:31', '2022-12-21 14:23:31'),
(55, 39, 126, 6, 1000.00, 0, '2022-12-21 14:23:31', '2022-12-21 14:23:31'),
(56, 39, 130, 43, 350.00, 99, '2022-12-21 14:23:31', '2022-12-21 14:23:31'),
(57, 40, 125, 6, 1.00, 12, '2022-12-21 14:23:45', '2022-12-21 14:23:45'),
(58, 40, 126, 6, 1000.00, 0, '2022-12-21 14:23:45', '2022-12-21 14:23:45'),
(59, 40, 130, 43, 350.00, 99, '2022-12-21 14:23:46', '2022-12-21 14:23:46'),
(60, 41, 127, 3, 500.00, 12, '2022-12-21 14:24:16', '2022-12-21 14:24:16'),
(61, 41, 133, 4, 1200.00, 0, '2022-12-21 14:24:16', '2022-12-21 14:24:16'),
(62, 41, 128, 5, 2000.00, 50, '2022-12-21 14:24:16', '2022-12-21 14:24:16'),
(63, 42, 127, 3, 500.00, 12, '2022-12-21 14:24:20', '2022-12-21 14:24:20'),
(64, 42, 133, 4, 1200.00, 0, '2022-12-21 14:24:20', '2022-12-21 14:24:20'),
(65, 42, 128, 5, 2000.00, 50, '2022-12-21 14:24:20', '2022-12-21 14:24:20'),
(66, 43, 127, 3, 500.00, 12, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(67, 43, 133, 4, 1200.00, 0, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(68, 43, 128, 5, 2000.00, 50, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(69, 44, 127, 3, 500.00, 12, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(70, 44, 133, 4, 1200.00, 0, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(71, 44, 128, 5, 2000.00, 50, '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(72, 45, 127, 3, 500.00, 12, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(73, 45, 133, 4, 1200.00, 0, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(74, 45, 128, 5, 2000.00, 50, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(75, 46, 127, 3, 500.00, 12, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(76, 46, 133, 4, 1200.00, 0, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(77, 47, 127, 3, 500.00, 12, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(78, 46, 128, 5, 2000.00, 50, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(79, 48, 127, 3, 500.00, 12, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(80, 47, 133, 4, 1200.00, 0, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(81, 48, 133, 4, 1200.00, 0, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(82, 47, 128, 5, 2000.00, 50, '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(83, 48, 128, 5, 2000.00, 50, '2022-12-21 14:24:23', '2022-12-21 14:24:23'),
(84, 49, 127, 3, 500.00, 12, '2022-12-21 14:24:23', '2022-12-21 14:24:23'),
(85, 49, 133, 4, 1200.00, 0, '2022-12-21 14:24:23', '2022-12-21 14:24:23'),
(86, 49, 128, 5, 2000.00, 50, '2022-12-21 14:24:23', '2022-12-21 14:24:23'),
(87, 50, 127, 3, 500.00, 12, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(88, 51, 127, 3, 500.00, 12, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(89, 50, 133, 4, 1200.00, 0, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(90, 51, 133, 4, 1200.00, 0, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(91, 51, 128, 5, 2000.00, 50, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(92, 50, 128, 5, 2000.00, 50, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(93, 52, 127, 3, 500.00, 12, '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(94, 53, 127, 3, 500.00, 12, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(95, 52, 133, 4, 1200.00, 0, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(96, 53, 133, 4, 1200.00, 0, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(97, 52, 128, 5, 2000.00, 50, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(98, 53, 128, 5, 2000.00, 50, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(99, 54, 127, 3, 500.00, 12, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(100, 54, 133, 4, 1200.00, 0, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(101, 54, 128, 5, 2000.00, 50, '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(102, 55, 127, 3, 500.00, 12, '2022-12-21 14:24:26', '2022-12-21 14:24:26'),
(103, 55, 133, 4, 1200.00, 0, '2022-12-21 14:24:26', '2022-12-21 14:24:26'),
(104, 55, 128, 5, 2000.00, 50, '2022-12-21 14:24:26', '2022-12-21 14:24:26'),
(105, 56, 127, 3, 500.00, 12, '2022-12-21 14:24:32', '2022-12-21 14:24:32'),
(106, 56, 133, 4, 1200.00, 0, '2022-12-21 14:24:32', '2022-12-21 14:24:32'),
(107, 56, 128, 5, 2000.00, 50, '2022-12-21 14:24:32', '2022-12-21 14:24:32'),
(108, 57, 129, 1, 2500.00, 30, '2022-12-21 14:24:37', '2022-12-21 14:24:37'),
(109, 58, 129, 1, 2500.00, 30, '2022-12-21 14:24:43', '2022-12-21 14:24:43'),
(110, 59, 127, 3, 500.00, 12, '2022-12-21 14:38:20', '2022-12-21 14:38:20'),
(111, 59, 133, 4, 1200.00, 0, '2022-12-21 14:38:20', '2022-12-21 14:38:20'),
(112, 59, 128, 5, 2000.00, 50, '2022-12-21 14:38:20', '2022-12-21 14:38:20'),
(113, 60, 127, 3, 500.00, 12, '2022-12-21 14:38:26', '2022-12-21 14:38:26'),
(114, 60, 133, 4, 1200.00, 0, '2022-12-21 14:38:26', '2022-12-21 14:38:26'),
(115, 60, 128, 5, 2000.00, 50, '2022-12-21 14:38:26', '2022-12-21 14:38:26'),
(116, 61, 127, 3, 500.00, 12, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(117, 61, 133, 4, 1200.00, 0, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(118, 61, 128, 5, 2000.00, 50, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(119, 62, 127, 3, 500.00, 12, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(120, 62, 133, 4, 1200.00, 0, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(121, 63, 127, 3, 500.00, 12, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(122, 62, 128, 5, 2000.00, 50, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(123, 63, 133, 4, 1200.00, 0, '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(124, 63, 128, 5, 2000.00, 50, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(125, 64, 127, 3, 500.00, 12, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(126, 64, 133, 4, 1200.00, 0, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(127, 64, 128, 5, 2000.00, 50, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(128, 65, 127, 3, 500.00, 12, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(129, 65, 133, 4, 1200.00, 0, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(130, 65, 128, 5, 2000.00, 50, '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(131, 66, 127, 3, 500.00, 12, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(132, 66, 133, 4, 1200.00, 0, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(133, 67, 127, 3, 500.00, 12, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(134, 66, 128, 5, 2000.00, 50, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(135, 67, 133, 4, 1200.00, 0, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(136, 67, 128, 5, 2000.00, 50, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(137, 68, 127, 3, 500.00, 12, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(138, 68, 133, 4, 1200.00, 0, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(139, 68, 128, 5, 2000.00, 50, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(140, 69, 127, 3, 500.00, 12, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(141, 69, 133, 4, 1200.00, 0, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(142, 69, 128, 5, 2000.00, 50, '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(143, 70, 127, 3, 500.00, 12, '2022-12-21 14:38:34', '2022-12-21 14:38:34'),
(144, 70, 133, 4, 1200.00, 0, '2022-12-21 14:38:34', '2022-12-21 14:38:34'),
(145, 70, 128, 5, 2000.00, 50, '2022-12-21 14:38:34', '2022-12-21 14:38:34'),
(146, 73, 127, 1, 500.00, 12, '2022-12-21 14:44:28', '2022-12-21 14:44:28'),
(147, 74, 127, 1, 500.00, 12, '2022-12-21 14:44:29', '2022-12-21 14:44:29'),
(148, 75, 127, 1, 500.00, 12, '2022-12-21 14:46:00', '2022-12-21 14:46:00'),
(149, 76, 127, 1, 500.00, 12, '2022-12-21 14:46:03', '2022-12-21 14:46:03'),
(150, 77, 127, 1, 500.00, 12, '2022-12-21 14:46:05', '2022-12-21 14:46:05'),
(151, 78, 127, 1, 500.00, 12, '2022-12-21 14:46:36', '2022-12-21 14:46:36'),
(152, 78, 134, 1, 15000.00, 0, '2022-12-21 14:46:36', '2022-12-21 14:46:36'),
(153, 78, 126, 1, 1000.00, 0, '2022-12-21 14:46:36', '2022-12-21 14:46:36'),
(154, 78, 130, 1, 350.00, 99, '2022-12-21 14:46:36', '2022-12-21 14:46:36'),
(155, 79, 134, 1, 15000.00, 0, '2022-12-21 14:46:50', '2022-12-21 14:46:50'),
(156, 79, 127, 1, 500.00, 12, '2022-12-21 14:46:50', '2022-12-21 14:46:50'),
(157, 80, 134, 1, 15000.00, 0, '2022-12-21 14:46:51', '2022-12-21 14:46:51'),
(158, 81, 134, 1, 15000.00, 0, '2022-12-21 14:46:53', '2022-12-21 14:46:53'),
(159, 82, 126, 1, 1000.00, 0, '2022-12-21 14:47:40', '2022-12-21 14:47:40'),
(160, 83, 127, 1, 500.00, 12, '2022-12-21 14:47:46', '2022-12-21 14:47:46'),
(161, 83, 134, 1, 15000.00, 0, '2022-12-21 14:47:46', '2022-12-21 14:47:46'),
(162, 84, 127, 3, 500.00, 12, '2022-12-21 14:48:04', '2022-12-21 14:48:04'),
(163, 84, 134, 9, 15000.00, 0, '2022-12-21 14:48:04', '2022-12-21 14:48:04'),
(164, 85, 127, 1, 500.00, 12, '2022-12-21 14:50:00', '2022-12-21 14:50:00'),
(165, 85, 134, 1, 15000.00, 0, '2022-12-21 14:50:01', '2022-12-21 14:50:01'),
(166, 85, 126, 1, 1000.00, 0, '2022-12-21 14:50:01', '2022-12-21 14:50:01'),
(167, 86, 134, 1, 15000.00, 0, '2022-12-21 14:50:08', '2022-12-21 14:50:08'),
(168, 87, 132, 3, 10000.00, 0, '2022-12-21 14:50:11', '2022-12-21 14:50:11'),
(169, 88, 134, 3, 15000.00, 0, '2022-12-21 14:50:18', '2022-12-21 14:50:18'),
(170, 88, 127, 4, 500.00, 12, '2022-12-21 14:50:18', '2022-12-21 14:50:18'),
(171, 90, 127, 3, 500.00, 12, '2022-12-21 14:51:10', '2022-12-21 14:51:10'),
(172, 91, 134, 3, 15000.00, 0, '2022-12-21 14:51:10', '2022-12-21 14:51:10'),
(173, 91, 127, 5, 500.00, 12, '2022-12-21 14:51:10', '2022-12-21 14:51:10'),
(174, 91, 126, 3, 1000.00, 0, '2022-12-21 14:51:10', '2022-12-21 14:51:10'),
(175, 92, 132, 2, 10000.00, 0, '2022-12-21 14:51:35', '2022-12-21 14:51:35'),
(176, 92, 129, 2, 2500.00, 30, '2022-12-21 14:51:35', '2022-12-21 14:51:35'),
(177, 92, 133, 2, 1200.00, 0, '2022-12-21 14:51:35', '2022-12-21 14:51:35'),
(178, 94, 127, 1, 500.00, 12, '2022-12-21 14:53:44', '2022-12-21 14:53:44'),
(179, 94, 134, 1, 15000.00, 0, '2022-12-21 14:53:45', '2022-12-21 14:53:45'),
(180, 95, 129, 5, 2500.00, 30, '2022-12-21 14:54:08', '2022-12-21 14:54:08'),
(181, 95, 132, 3, 10000.00, 0, '2022-12-21 14:54:09', '2022-12-21 14:54:09'),
(182, 95, 133, 5, 1200.00, 0, '2022-12-21 14:54:09', '2022-12-21 14:54:09'),
(183, 96, 127, 5, 500.00, 12, '2022-12-21 14:58:30', '2022-12-21 14:58:30'),
(184, 96, 134, 21, 15000.00, 0, '2022-12-21 14:58:30', '2022-12-21 14:58:30'),
(185, 103, 133, 20, 1200.00, 0, '2022-12-21 14:59:54', '2022-12-21 14:59:54'),
(186, 104, 127, 1, 500.00, 12, '2022-12-21 14:59:54', '2022-12-21 14:59:54'),
(187, 104, 134, 1, 15000.00, 0, '2022-12-21 14:59:54', '2022-12-21 14:59:54'),
(188, 105, 127, 2, 500.00, 12, '2022-12-21 14:59:56', '2022-12-21 14:59:56'),
(189, 106, 127, 1, 500.00, 12, '2022-12-21 15:00:27', '2022-12-21 15:00:27'),
(190, 116, 127, 1, 500.00, 12, '2022-12-21 15:00:50', '2022-12-21 15:00:50'),
(191, 116, 134, 1, 15000.00, 0, '2022-12-21 15:00:50', '2022-12-21 15:00:50'),
(192, 118, 127, 1, 500.00, 12, '2022-12-21 15:03:32', '2022-12-21 15:03:32'),
(193, 118, 134, 1, 15000.00, 0, '2022-12-21 15:03:32', '2022-12-21 15:03:32'),
(194, 119, 127, 1, 500.00, 12, '2022-12-21 15:03:40', '2022-12-21 15:03:40'),
(195, 119, 134, 1, 15000.00, 0, '2022-12-21 15:03:40', '2022-12-21 15:03:40'),
(196, 120, 127, 1, 500.00, 12, '2022-12-21 15:03:43', '2022-12-21 15:03:43'),
(197, 121, 127, 1, 500.00, 12, '2022-12-21 15:03:54', '2022-12-21 15:03:54'),
(198, 122, 127, 1, 500.00, 12, '2023-01-01 08:34:55', '2023-01-01 08:34:55'),
(199, 122, 134, 1, 15000.00, 0, '2023-01-01 08:34:55', '2023-01-01 08:34:55'),
(200, 123, 127, 3, 500.00, 12, '2023-01-01 08:35:05', '2023-01-01 08:35:05'),
(201, 123, 134, 3, 15000.00, 0, '2023-01-01 08:35:05', '2023-01-01 08:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT 0.00,
  `total` bigint(20) NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` set('cash','bKash','cod') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` set('c','i') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'c',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `customer_id`, `discount`, `total`, `comment`, `payment`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 203, 11.00, 4480, 'no comment', 'cash', 'c', '2022-12-15 12:54:38', '2022-12-15 12:54:38'),
(2, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:22', '2022-12-15 12:58:22'),
(3, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:24', '2022-12-15 12:58:24'),
(4, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:24', '2022-12-15 12:58:24'),
(5, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:28', '2022-12-15 12:58:28'),
(6, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:29', '2022-12-15 12:58:29'),
(7, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:29', '2022-12-15 12:58:29'),
(8, 8, 203, 0.00, 54185, 'no comment', 'cash', 'c', '2022-12-15 12:58:49', '2022-12-15 12:58:49'),
(9, 2, 203, 13.00, 3334, 'no comment', 'cash', 'c', '2022-12-15 13:05:38', '2022-12-15 13:05:38'),
(10, 8, 203, 0.00, 0, 'no comment', 'cash', 'c', '2022-12-15 13:10:30', '2022-12-15 13:10:30'),
(11, 10, 203, 20.00, 7200, 'no comment', 'cash', 'c', '2022-12-19 13:34:24', '2022-12-19 13:34:24'),
(12, 10, 203, 20.00, 7200, 'no comment', 'cash', 'c', '2022-12-19 13:34:26', '2022-12-19 13:34:26'),
(13, 10, 203, 20.00, 7200, 'no comment', 'cash', 'c', '2022-12-19 13:34:28', '2022-12-19 13:34:28'),
(14, 10, 203, 0.00, 0, 'no comment', 'cash', 'c', '2022-12-19 13:48:37', '2022-12-19 13:48:37'),
(15, 2, 203, 323.52, 34000, 'no comment', 'cash', 'c', '2022-12-19 13:55:56', '2022-12-19 13:55:56'),
(16, 10, 203, 320.00, 82000, 'no comment', 'cash', 'c', '2022-12-19 13:56:31', '2022-12-19 13:56:31'),
(17, 10, 203, 0.00, 0, 'no comment', 'cash', 'c', '2022-12-19 14:03:32', '2022-12-19 14:03:32'),
(18, 10, 203, 0.00, 1760, NULL, 'cash', 'c', '2022-12-19 14:20:56', '2022-12-19 14:20:56'),
(19, 10, 203, 0.00, 1760, NULL, 'cash', 'c', '2022-12-19 14:20:59', '2022-12-19 14:20:59'),
(20, 10, 203, 20.00, 1740, NULL, 'cash', 'c', '2022-12-19 14:21:06', '2022-12-19 14:21:06'),
(21, 2, 203, 20.00, 53800, NULL, 'cash', 'c', '2022-12-19 14:25:30', '2022-12-19 14:25:30'),
(22, 2, 203, 20.00, 46300, 'hiii', 'cash', 'c', '2022-12-19 14:30:21', '2022-12-19 14:30:21'),
(23, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:25', '2022-12-21 13:26:25'),
(24, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(25, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:28', '2022-12-21 13:26:28'),
(26, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(27, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(28, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:42', '2022-12-21 13:26:42'),
(29, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:26:43', '2022-12-21 13:26:43'),
(30, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:28:18', '2022-12-21 13:28:18'),
(31, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:28:19', '2022-12-21 13:28:19'),
(32, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 13:28:24', '2022-12-21 13:28:24'),
(36, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 14:20:36', '2022-12-21 14:20:36'),
(37, 1, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 14:21:21', '2022-12-21 14:21:21'),
(38, 6, 203, 4000.00, 50000, NULL, 'cash', 'c', '2022-12-21 14:22:38', '2022-12-21 14:22:38'),
(39, 1, 203, 0.78, 6155, NULL, 'bKash', 'c', '2022-12-21 14:23:31', '2022-12-21 14:23:31'),
(40, 1, 203, 0.78, 6155, 'hi', 'bKash', 'c', '2022-12-21 14:23:45', '2022-12-21 14:23:45'),
(41, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:15', '2022-12-21 14:24:15'),
(42, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:20', '2022-12-21 14:24:20'),
(43, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:20', '2022-12-21 14:24:20'),
(44, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(45, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:21', '2022-12-21 14:24:21'),
(46, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(47, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(48, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(49, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:22', '2022-12-21 14:24:22'),
(50, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(51, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(52, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(53, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:24', '2022-12-21 14:24:24'),
(54, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:25', '2022-12-21 14:24:25'),
(55, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:26', '2022-12-21 14:24:26'),
(56, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:24:32', '2022-12-21 14:24:32'),
(57, 6, 203, 0.00, 2500, NULL, 'cash', 'c', '2022-12-21 14:24:37', '2022-12-21 14:24:37'),
(58, 6, 203, 500.00, 2000, NULL, 'cash', 'c', '2022-12-21 14:24:43', '2022-12-21 14:24:43'),
(59, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:20', '2022-12-21 14:38:20'),
(60, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:26', '2022-12-21 14:38:26'),
(61, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:26', '2022-12-21 14:38:26'),
(62, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(63, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:27', '2022-12-21 14:38:27'),
(64, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(65, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(66, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(67, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:28', '2022-12-21 14:38:28'),
(68, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(69, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:29', '2022-12-21 14:38:29'),
(70, 2, 203, 120.00, 11000, 'She is a good customer', 'cash', 'c', '2022-12-21 14:38:34', '2022-12-21 14:38:34'),
(71, 6, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 14:44:05', '2022-12-21 14:44:05'),
(72, 6, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 14:44:15', '2022-12-21 14:44:15'),
(73, 6, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 14:44:28', '2022-12-21 14:44:28'),
(74, 6, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 14:44:29', '2022-12-21 14:44:29'),
(75, 6, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 14:46:00', '2022-12-21 14:46:00'),
(76, 6, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 14:46:03', '2022-12-21 14:46:03'),
(77, 6, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 14:46:05', '2022-12-21 14:46:05'),
(78, 10, 203, 0.00, 16850, NULL, 'cash', 'c', '2022-12-21 14:46:36', '2022-12-21 14:46:36'),
(79, 1, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 14:46:50', '2022-12-21 14:46:50'),
(80, 6, 203, 0.00, 15000, NULL, 'cash', 'c', '2022-12-21 14:46:51', '2022-12-21 14:46:51'),
(81, 6, 203, 0.00, 15000, NULL, 'cash', 'c', '2022-12-21 14:46:53', '2022-12-21 14:46:53'),
(82, 2, 203, 0.00, 1000, NULL, 'cash', 'c', '2022-12-21 14:47:40', '2022-12-21 14:47:40'),
(83, 1, 203, 500.00, 15000, NULL, 'cash', 'c', '2022-12-21 14:47:46', '2022-12-21 14:47:46'),
(84, 2, 203, 20.00, 136300, NULL, 'cash', 'c', '2022-12-21 14:48:04', '2022-12-21 14:48:04'),
(85, 10, 203, 0.00, 16500, NULL, 'cash', 'c', '2022-12-21 14:50:00', '2022-12-21 14:50:00'),
(86, 6, 203, 0.00, 15000, NULL, 'cash', 'c', '2022-12-21 14:50:08', '2022-12-21 14:50:08'),
(87, 2, 203, 0.00, 30000, NULL, 'cash', 'c', '2022-12-21 14:50:11', '2022-12-21 14:50:11'),
(88, 2, 203, 60.00, 46700, NULL, 'cash', 'c', '2022-12-21 14:50:18', '2022-12-21 14:50:18'),
(89, 6, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 14:50:37', '2022-12-21 14:50:37'),
(90, 2, 203, 0.00, 1320, NULL, 'cash', 'c', '2022-12-21 14:51:09', '2022-12-21 14:51:09'),
(91, 10, 203, 0.00, 50200, NULL, 'cash', 'c', '2022-12-21 14:51:10', '2022-12-21 14:51:10'),
(92, 2, 203, 900.00, 25000, '900 discount', 'cash', 'c', '2022-12-21 14:51:35', '2022-12-21 14:51:35'),
(94, 2, 203, 0.00, 15500, 'asdf', 'cash', 'c', '2022-12-21 14:53:44', '2022-12-21 14:53:44'),
(95, 2, 203, 250.00, 44500, 'test', 'cash', 'c', '2022-12-21 14:54:08', '2022-12-21 14:54:08'),
(96, 2, 203, 200.00, 317000, 'big big', 'cash', 'c', '2022-12-21 14:58:30', '2022-12-21 14:58:30'),
(97, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:15', '2022-12-21 14:59:15'),
(98, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:19', '2022-12-21 14:59:19'),
(99, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:20', '2022-12-21 14:59:20'),
(100, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:22', '2022-12-21 14:59:22'),
(101, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:24', '2022-12-21 14:59:24'),
(102, 2, 203, 0.00, 0, 'big big', 'cash', 'c', '2022-12-21 14:59:26', '2022-12-21 14:59:26'),
(103, 2, 203, 4000.00, 20000, '23432454554', 'cash', 'c', '2022-12-21 14:59:54', '2022-12-21 14:59:54'),
(104, 1, 203, 500.00, 15000, 'my test', 'cash', 'c', '2022-12-21 14:59:54', '2022-12-21 14:59:54'),
(105, 2, 203, 80.00, 800, 'wow wow wow', 'cash', 'c', '2022-12-21 14:59:56', '2022-12-21 14:59:56'),
(106, 10, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 15:00:27', '2022-12-21 15:00:27'),
(107, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:32', '2022-12-21 15:00:32'),
(108, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:32', '2022-12-21 15:00:32'),
(109, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:33', '2022-12-21 15:00:33'),
(110, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:33', '2022-12-21 15:00:33'),
(111, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:34', '2022-12-21 15:00:34'),
(112, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:34', '2022-12-21 15:00:34'),
(113, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:34', '2022-12-21 15:00:34'),
(114, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:35', '2022-12-21 15:00:35'),
(115, 10, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:00:36', '2022-12-21 15:00:36'),
(116, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 15:00:50', '2022-12-21 15:00:50'),
(117, 1, 203, 0.00, 0, NULL, 'cash', 'c', '2022-12-21 15:03:21', '2022-12-21 15:03:21'),
(118, 10, 203, 0.00, 15500, NULL, 'cash', 'c', '2022-12-21 15:03:32', '2022-12-21 15:03:32'),
(119, 1, 203, 500.00, 15000, NULL, 'cash', 'c', '2022-12-21 15:03:40', '2022-12-21 15:03:40'),
(120, 10, 203, 0.00, 500, NULL, 'cash', 'c', '2022-12-21 15:03:43', '2022-12-21 15:03:43'),
(121, 2, 203, 0.00, 500, 'sadfdf', 'cash', 'c', '2022-12-21 15:03:54', '2022-12-21 15:03:54'),
(122, 1, 203, 500.00, 15000, NULL, 'cash', 'c', '2023-01-01 08:34:55', '2023-01-01 08:34:55'),
(123, 2, 203, 20.00, 46300, 'asdf', 'bKash', 'c', '2023-01-01 08:35:05', '2023-01-01 08:35:05');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` set('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `option1`, `option2`, `option3`, `status`, `created_at`, `updated_at`) VALUES
(207, 'Dr. Vito Marvin I', 'walker.georgianna@kuhic.org', '+1 (520) 275-2962', '8664 Medhurst GardensSouth Shanon, MI 06090-3246', 'Ransom McKenzie', 'Elva Turcotte IV', 'Evie Erdman DDS', '1', '2022-12-03 04:37:03', '2022-12-09 15:19:02'),
(208, 'Moises Nader', 'savannah34@donnelly.com', '+1.762.247.2384', '50880 Theo Locks\nFannieville, SC 07958', 'Elissa Muller PhD', 'Kayden Schinner', 'Dr. Thurman Tremblay II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(209, 'Jason Christiansen Jr.', 'melyssa.braun@wintheiser.com', '430-886-9458', '32469 Parker Pines\nClotildechester, RI 00120', 'Mr. Kiley Mosciski', 'Selmer Kerluke', 'Kallie Legros II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(210, 'Grayson Hackett', 'apouros@gmail.com', '1-325-684-2399', '6002 Josh Turnpike\nAmelieview, NV 20842', 'Dr. Melyssa Johns DVM', 'Kelly Koepp', 'Cecile Gleichner', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(211, 'Leola Bahringer', 'magdalena.volkman@ortiz.biz', '1-802-513-7688', '53757 Walker Mount\nLake Dawsonside, DE 61286-5451', 'Alfreda Spencer', 'Fred Aufderhar', 'Ima Koepp', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(212, 'Aida Maggio', 'audrey58@gmail.com', '+1-479-880-0683', '733 Mable Way Suite 493\nRusselstad, KY 74810-9631', 'Maymie Mertz', 'Kassandra Runolfsdottir', 'Jairo Gorczany', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(213, 'Renee Lemke', 'hortense89@stehr.net', '1-469-530-0306', '84774 Queen Canyon\nNorth Lauriane, NJ 70900-6297', 'Julie Grant II', 'Dr. Monica Rau DVM', 'Nathen Hickle', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(214, 'Mr. Jeramy Moore', 'nitzsche.jamie@romaguera.com', '+1-820-697-8768', '39320 Ericka Cliff Apt. 885\nMuellerhaven, MT 85295-6465', 'Devonte Goyette', 'Houston Robel', 'Prof. Morgan Schowalter', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(215, 'Evie Reinger', 'hdach@kulas.com', '906-695-7799', '6581 Laurie Spur\nWest Parismouth, AZ 40815', 'Dr. Jacinto Konopelski', 'Ruthie Welch III', 'Dr. Derrick Terry V', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(216, 'Mr. Terence Schultz', 'israel.murphy@nolan.com', '707.927.5962', '268 Legros Flat\nValliemouth, WI 00550-2486', 'Arnoldo Grant', 'Carmen Kerluke DDS', 'Jamal Heidenreich', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(217, 'Dr. Greyson Murazik', 'dach.maurine@abshire.com', '+1.770.667.8880', '98504 Henriette Groves Apt. 322Helmerhaven, WY 39095-5622', 'Creola Rau', 'Alphonso Mayer', 'Kayden Aufderhar PhD', '1', '2022-12-03 04:37:03', '2022-12-09 15:10:33'),
(218, 'Hayley Schoen', 'hanna07@hotmail.com', '+1 (573) 721-4751', '1386 Rowe Track Apt. 490\nDuBuqueville, OK 48144-6442', 'Damaris Grimes', 'Tom Rippin MD', 'Dr. Rhiannon Schimmel', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(219, 'Dr. Ken Swaniawski Sr.', 'econn@bogisich.net', '+1-828-906-5253', '723 Rutherford Field\nNew Tomview, KS 06997-0771', 'Jerel Bechtelar', 'Keira Greenholt III', 'Mrs. Amie Prohaska I', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(220, 'Monserrate Walker', 'krystel69@moen.info', '1-270-262-9237', '78080 Hickle Run Apt. 711\nPort Lilyburgh, DE 13787', 'Dorcas Goodwin', 'Dr. Rubye Littel III', 'Oma Herzog MD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(221, 'Mr. Stephon Murphy Sr.', 'kris.carlotta@hotmail.com', '1-352-594-9474', '23804 Roob HollowWest Waylon, AL 61662-9728', 'Cristopher Keebler', 'Mr. Kaleb Pollich III', 'Van Cruickshank', '1', '2022-12-03 04:37:03', '2022-12-09 15:19:09'),
(222, 'Dr. Leslie Ortiz', 'genoveva.jerde@satterfield.com', '+1-806-755-3580', '891 Delilah Spring\nNorth Maudie, WA 90047', 'Prince Ryan', 'Jo Fay MD', 'Miss Odessa Witting', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(223, 'Jayson Crona', 'tracey09@yahoo.com', '+1-484-393-2474', '95544 Titus Freeway\nBaileyfort, SD 78118', 'Aniya Trantow', 'Hulda Pagac', 'Boris Berge', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(224, 'Verner McKenzie', 'bkirlin@gorczany.org', '872.798.7662', '777 Schulist Keys\nKohlerland, MS 88073', 'Wilma Price Jr.', 'Jessyca Labadie', 'Francisco Borer', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(225, 'Jon Auer', 'eichmann.mylene@hotmail.com', '+1 (641) 917-1240', '26442 Carroll Mountain Suite 617\nWest Berniefurt, MO 01200-1776', 'Prof. Leon Bergstrom', 'Jameson Howell', 'Rosalind Becker', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(226, 'Miss Lurline Cruickshank II', 'cchristiansen@hotmail.com', '(313) 460-2233', '1241 Bert Square\nSouth Jordaneton, AR 57662', 'Prof. Cyril Prosacco III', 'Alec Graham Sr.', 'Afton Ferry II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(227, 'Jace Von', 'maureen08@hotmail.com', '+1.231.582.8980', '42123 Gleason Club Suite 221\nEast Constancechester, ME 50499', 'Allene Blick', 'Sofia Johnston', 'Jeffery Abshire', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(228, 'Ms. Queen Lesch DDS', 'simonis.baby@ledner.com', '612.734.9152', '18533 Quitzon Light\nNew Herthachester, CT 63288', 'Larissa Kulas III', 'Alvena Franecki III', 'Ms. Teresa Murphy DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(229, 'Marjorie Sipes', 'kaitlyn.block@hotmail.com', '1-516-525-5242', '8257 Raegan Pine Suite 153\nBettefort, WI 25073', 'Savion Jakubowski DVM', 'Meagan Abernathy', 'Oral Stoltenberg', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(230, 'Mr. Rickie Greenfelder', 'estroman@gmail.com', '+1-901-819-2298', '3861 Jones Neck\nWizaburgh, AL 80137-5572', 'Yasmeen Schumm', 'Bennett Pfeffer', 'Carmela Doyle I', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(231, 'Izaiah Legros', 'daphney.feest@rippin.info', '469-546-8961', '7760 Paula Squares Apt. 383\nKurtberg, LA 24438', 'Dr. Rogers Shanahan I', 'Bernard Dickens', 'Conner Effertz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(232, 'Mr. Federico Ankunding', 'istreich@greenholt.com', '530-453-4058', '8652 Sylvan Shores Suite 479\nCassinton, WA 37388', 'Russ Stehr DDS', 'Marlene Kris', 'Donato Ryan', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(233, 'Ladarius Olson', 'mike31@ratke.org', '540-447-9664', '1011 Wolf Crest\nKaleyhaven, MA 10914', 'Prof. Ahmad Reinger I', 'Kolby Wyman', 'Raymond Schumm', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(234, 'Prof. Clemens Mayer IV', 'ona10@pfeffer.org', '651.664.7092', '90375 Yost Motorway\nChristiansenstad, MA 73337', 'Zachariah Harvey', 'Rhea Sporer', 'Kevin Pfeffer DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(235, 'Belle Moen', 'oberbrunner.gus@gmail.com', '(805) 858-4284', '40431 Rodriguez Falls Suite 480\nHalvorsonchester, ND 17925-1912', 'Dr. Christelle Gislason DDS', 'Jaqueline Bashirian DDS', 'Aurelie Satterfield', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(236, 'Montana Douglas DVM', 'newton.watsica@jones.org', '726-570-5954', '872 Johnston Mill Suite 612\nEast Elinorton, NV 08427-0422', 'Larue O\'Keefe', 'Waldo Pfeffer I', 'Easton Mills Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(237, 'Reyna Kling', 'cristal72@lesch.info', '1-534-748-6595', '98034 Eusebio Throughway\nWhitebury, WY 73623-7608', 'Toney Glover', 'Lucinda Torp DDS', 'Brad Baumbach', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(238, 'Heather Wunsch', 'lehner.irma@hotmail.com', '(831) 270-0197', '2920 Haag Land\nRobelshire, IN 44647', 'Francisco Emard', 'Prof. Otho Luettgen', 'Derrick Sipes', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(239, 'Ms. Lauryn Muller', 'dietrich.lorenz@schmidt.net', '(541) 433-6389', '35291 Hodkiewicz Rest\nKaitlinport, CO 17496', 'Clotilde Mohr PhD', 'Elliott Franecki', 'Adolf Kilback', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(240, 'Sanford Beahan', 'juanita.gottlieb@hotmail.com', '1-986-296-8215', '5168 Ledner Points\nWavamouth, ID 14878', 'Kamron Gusikowski', 'Allie McCullough', 'Monty Stracke', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(241, 'Chelsea Schuppe', 'alfonzo89@denesik.biz', '351-501-0188', '90730 Jamil Cliff Suite 542\nEast Emiliotown, NJ 83642-5570', 'Steve Hermiston IV', 'Chesley Franecki Jr.', 'Karlie Becker', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(242, 'Nicklaus Quigley', 'lynch.rachel@gmail.com', '+1-870-862-6442', '665 Pat Tunnel Apt. 638\nNoemiehaven, WY 79769-0824', 'Prof. Salvador Beer V', 'Tina Botsford', 'Miss Marcelina Padberg', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(243, 'Elise Rowe', 'gertrude.auer@hotmail.com', '+1.650.714.4399', '584 Lilla Ranch Suite 215\nAdamsview, NY 86936-6477', 'Mrs. Madge McGlynn', 'Bonita Reinger III', 'Marilyne Murphy', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(244, 'Dr. Gaetano Stokes', 'weissnat.brando@wyman.info', '+1-959-341-8448', '441 Julien Walks Suite 086\nPort Jonatan, MT 82881', 'Mr. Buck Abshire', 'Andreane Kuhlman', 'Magnus Gutkowski Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(245, 'Clemmie Roberts', 'kling.brandon@auer.org', '+1-406-868-0204', '3680 Mante Orchard Suite 307\nElianeberg, NH 68025', 'Kayleigh Nader', 'Hank Rath', 'Luisa Predovic', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(246, 'Daniela Pouros', 'langworth.orpha@yahoo.com', '+1-586-741-4825', '384 Fisher Trail Suite 251\nHarrisborough, DE 25417', 'Adele Willms', 'Celestino Mitchell', 'Dr. Mitchell Schuppe', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(247, 'Joel Boyer', 'dimitri.feil@nader.net', '1-678-393-4459', '176 Name Knolls Apt. 620\nNew Aniya, NJ 30250-6369', 'Mr. Weston Lebsack', 'Mr. Werner Breitenberg MD', 'Nils Sawayn III', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(248, 'Ms. Margaretta Abbott III', 'bosco.frederic@yundt.com', '+1-623-657-9320', '2570 Dagmar Crossing\nNorth Chesley, DE 10863-5990', 'Alta Fadel', 'Prof. Merle Mohr MD', 'Catalina Daniel', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(249, 'Golden Hauck', 'rogahn.vicky@gmail.com', '(269) 414-6631', '863 Jayson Grove Apt. 818\nHageneston, PA 10393', 'Ms. Katherine Turner III', 'Jessyca DuBuque', 'Reed Reinger', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(250, 'Dr. Ronaldo Gusikowski', 'jschimmel@gmail.com', '920-967-3690', '29786 Hans Freeway\nPort Carissaport, NV 06579-7211', 'Norbert Predovic', 'Dr. Hermina Bailey Jr.', 'Prof. Antonio Herzog', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(251, 'Mr. Mauricio McClure', 'anika60@sauer.info', '(307) 986-0963', '8153 Dayana Summit\nAnikaborough, IL 23667-8604', 'Miss Ellie Flatley V', 'Arch Rath', 'Braxton Erdman', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(252, 'Mrs. Tess Hoppe', 'larkin.rolando@gmail.com', '980-385-4942', '270 Ashton Road\nMaxietown, OR 42388-9940', 'Dr. Jamarcus Effertz DVM', 'Zion Skiles', 'Mrs. Assunta Weissnat', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(253, 'Jude Kris', 'larkin.elta@powlowski.biz', '+1.918.505.0917', '9827 Dianna Junctions\nLake Celine, NJ 39316-8859', 'Jacques Hansen', 'Jaydon Cummerata', 'Prof. Alphonso Reichel', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(254, 'Dr. Jules Rohan Sr.', 'oceane97@hotmail.com', '1-737-496-5577', '26405 Lynch Cliffs Apt. 599\nRippinport, MT 63982', 'Miss Christine Witting', 'Buster Moore', 'Ervin Fahey Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(255, 'Jayne Ondricka', 'pmuller@rosenbaum.net', '(269) 609-2141', '806 Mann Circles\nSouth Jessycamouth, KY 00684', 'Johnpaul Schuster', 'Prof. Meaghan Lynch PhD', 'Robbie Gerhold', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(256, 'Denis Willms', 'goodwin.glenda@raynor.com', '(925) 450-7260', '6655 Janick Rue\nNew Isaiahton, OR 36244', 'Amelie Ortiz', 'Lura Stokes', 'Prof. Raul Cormier IV', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(257, 'Triston Kulas MD', 'harris.gerard@yahoo.com', '1-878-551-2788', '864 Hirthe Ridges Apt. 716\nFriesenberg, ND 56485', 'Miss Courtney Jast DVM', 'Carmine Klocko', 'Prof. Noah Will', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(258, 'Cullen Keeling', 'shuels@harvey.com', '628-657-0745', '50516 Bradford Estate Apt. 410\nSavionmouth, NY 51389', 'Providenci Becker Sr.', 'Micah Schneider', 'Lucius Zieme', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(259, 'Mrs. Meaghan Padberg', 'thora76@gmail.com', '320.206.5343', '3079 Nina Tunnel\nGudrunport, LA 95104', 'Prof. Collin Kub', 'Jarvis Fadel', 'Prof. Mona Romaguera', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(260, 'Amelia Rolfson', 'bode.garfield@hotmail.com', '1-346-971-4553', '505 Kade Mission\nVincehaven, OK 22914', 'Jannie Koelpin', 'Mittie Ratke', 'Aracely Crona PhD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(261, 'Jacklyn Bergstrom', 'rosenbaum.santiago@yahoo.com', '+1-937-675-8867', '4294 Roscoe Route\nOsinskiport, MD 94034-6445', 'Rebeka Murphy PhD', 'Josiah Kris', 'Prof. Edison Tremblay Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(262, 'Mackenzie Thiel IV', 'ewald12@jenkins.com', '209.317.4721', '306 Goodwin Skyway\nCarsonburgh, UT 15267-7190', 'Lavinia Daniel', 'Mr. Ryann Bednar', 'Nettie Ortiz', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(263, 'Prof. Cortney Littel', 'poconnell@gmail.com', '(930) 234-3278', '453 Jakubowski Centers Suite 404\nPort Nataliaport, CO 59647-9045', 'Prof. Danika Auer Jr.', 'Dr. Napoleon West', 'Mrs. Annetta Kunze Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(264, 'Rachael Schroeder', 'keyshawn83@davis.biz', '+12812248245', '22500 Santina Squares Suite 421\nJermeyside, AK 37232', 'Beatrice Kunde', 'Kira Ondricka', 'Ms. Dovie Feil', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(265, 'Rod Howell', 'monahan.hanna@ruecker.com', '+1-661-307-8629', '29892 Jace Circle\nNew Emely, CO 11278-9498', 'Eden Cormier', 'Mrs. Nelle Labadie PhD', 'Ms. Marian Wiegand', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(266, 'Marcelle Reinger', 'adalberto.lemke@nicolas.com', '+1 (563) 866-1411', '44784 O\'Keefe Mission\nEast Lorenza, AR 48942-5645', 'Dr. Leta Gottlieb', 'Will Berge PhD', 'Junius Trantow', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(267, 'Nigel Prosacco', 'adelle84@hotmail.com', '878-395-5429', '37223 Dino Lake Apt. 358\nFisherton, VA 21076-0377', 'Ms. Rebekah Langosh', 'Prof. Erwin Emard Sr.', 'Keshaun Cruickshank', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(268, 'Skyla Sanford', 'ljacobi@cruickshank.org', '248-529-1481', '1757 Upton Squares Apt. 191\nNorth Sophiafort, WI 70088', 'Arnold Hyatt I', 'Corrine O\'Hara', 'Dr. Seamus Luettgen Jr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(269, 'Madelynn Gutmann', 'walker.christy@hotmail.com', '1-458-313-5357', '88726 Ewald Plains Apt. 798\nNew Moriahborough, KY 80310-9010', 'Gennaro Kessler', 'Prof. Jake Mohr MD', 'Dr. Cheyanne Yundt Sr.', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(270, 'Jordyn Howe', 'vcole@gmail.com', '562.919.3073', '64847 Kohler Station Apt. 143\nPort Sethhaven, AR 81933', 'Darian Wilderman IV', 'Melissa Schumm', 'Angelo Friesen V', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(271, 'Horace Schuster II', 'isaac.fritsch@daniel.net', '(703) 947-9850', '33580 Bart Junction Apt. 443\nParkerville, CT 92399-7866', 'Dr. Jared O\'Kon DVM', 'Katelin Boyle', 'Mr. Wilber Simonis', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(272, 'Kara Doyle', 'hauck.greta@gmail.com', '364-253-1436', '8734 Gibson Junctions\nLake Garth, OK 95316-9712', 'Suzanne Jakubowski', 'Dr. Letitia Langworth', 'Jennifer Mann II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(273, 'Noemy Waelchi', 'gleichner.earnestine@morar.biz', '+1-434-777-0280', '9999 Ortiz Square Apt. 609\nNorth Madisenburgh, IA 00473-0568', 'Rowland Labadie', 'Sam Leannon', 'Cary Moen', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(274, 'Edwin Halvorson I', 'hbecker@gerhold.com', '+1 (857) 823-0745', '64891 Gino Cove\nEast Harmony, ME 58811', 'Jolie Lebsack', 'Ransom Kutch', 'Florida Kuphal', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(275, 'Camille Bechtelar', 'roconner@dietrich.com', '419-967-2764', '97137 Franecki Keys Suite 024\nSouth Sheila, DC 77317-5382', 'Miss Janie Reinger', 'Prof. Alfonso Baumbach', 'Eldon Schuster', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(276, 'Rebecca Heathcote', 'tosinski@trantow.com', '838-434-6880', '2200 Trantow Hill Apt. 442\nPort Nya, VA 00396-4104', 'Prof. Damion Nienow DDS', 'Myrtie Stroman', 'Karolann Kilback II', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(277, 'Dr. Dayne Schuppe', 'hubert.boyle@yahoo.com', '618-546-2584', '6676 Dickinson Place Suite 985\nBraunstad, MA 54472', 'Javon Kemmer', 'Moshe Monahan II', 'Tianna Borer', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(278, 'Mr. Arne Hilpert MD', 'stevie.romaguera@hotmail.com', '(470) 845-8520', '242 Dudley Avenue Suite 474\nLake Keshawnberg, TX 20877', 'Dr. Kennith Bogan PhD', 'Dr. Brendan Wunsch', 'Christelle Baumbach', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(279, 'Prof. Winnifred Streich I', 'maurice80@gmail.com', '+12139696314', '46890 Crona Causeway\nCollierhaven, VA 06108-1975', 'Kiarra Homenick', 'Kathlyn Spencer Jr.', 'Martine Beahan', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(280, 'Dr. Lavern Brown', 'eberge@hotmail.com', '805.783.3283', '3926 Wunsch River Suite 866\nMadelineshire, WY 65242-5261', 'Dr. Jaycee Swift', 'Miss Yolanda Gleason I', 'Myah Graham', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(281, 'Jamil Gutmann', 'cale.kilback@hotmail.com', '+1 (870) 637-7295', '98828 Maggio Villages\nCydneyfort, SD 52625-8601', 'Prof. Tressa Powlowski Sr.', 'Javier Hoppe', 'Fredrick Kirlin', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(282, 'Meta Dooley', 'noemi71@hermiston.net', '956.698.4028', '761 Megane Drive Suite 588\nJerroldville, SC 29976-7068', 'Neoma Hagenes', 'Mr. Orville Vandervort', 'Dr. Sterling Keebler MD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(283, 'Ms. Velda White Sr.', 'dhuels@yahoo.com', '1-689-246-2377', '923 Crawford Landing Suite 165\nSmithammouth, AZ 94146', 'Baby Sawayn Sr.', 'Prof. Stephany Schaefer DVM', 'Madyson Satterfield', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(284, 'Dr. Hunter Schuster V', 'pfannerstill.andre@yahoo.com', '458.749.0276', '3402 Macejkovic Gateway\nNorth Levi, AK 85314-3231', 'Prof. Demond Gutkowski', 'Jamaal Langworth', 'Prof. Carroll Nader', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(285, 'Gabriel D\'Amore', 'adam49@hotmail.com', '786-375-6884', '217 Emmanuelle Streets Apt. 390\nSouth Gerry, SC 13278', 'Diamond Rau', 'Gladyce Gleichner III', 'Schuyler Tillman', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(286, 'Loren Towne MD', 'hope87@kreiger.biz', '781-563-9132', '114 Molly Stravenue Apt. 829\nPort Citlallimouth, NE 30931-2816', 'Hulda Feil', 'Lonnie Hauck', 'Ms. Aiyana Waelchi DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(287, 'Ms. Cordie Aufderhar', 'donny.macejkovic@hotmail.com', '313.317.0662', '10267 Shanahan Terrace\nWest Erichbury, OR 87675', 'Ignacio Paucek', 'Boyd Bailey', 'Cleo Murphy', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(288, 'Mr. Eli Stamm III', 'ismael30@boyer.com', '+1-216-399-3868', '36030 Rempel Route Suite 942\nHellerchester, MD 39868-3714', 'Sierra Kling DVM', 'Dr. Enrique Jenkins', 'Anthony Witting', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(289, 'Myrl Grimes', 'schuster.icie@lockman.biz', '+1.769.609.3402', '115 Friesen Hill Apt. 186\nPort Lizeth, NY 99735-9272', 'Dr. Arvilla Stanton', 'Jaden Greenholt', 'Michelle Friesen IV', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(290, 'Norma Hilpert', 'brown.creola@koepp.com', '(760) 537-0337', '643 Gutmann Shores Suite 400\nArloside, MA 75791', 'Dr. Stevie Harvey', 'Prof. Damien Mraz', 'Mrs. Cordie Dibbert PhD', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(291, 'Toney Breitenberg', 'stanton.major@hotmail.com', '1-820-935-6852', '3617 Abshire Dam\nGleichnershire, AL 09106-5831', 'Prof. Cassie Rau Jr.', 'Letha Legros', 'Claudia Bradtke III', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(292, 'Russ Kautzer', 'antwon00@walter.com', '714-604-6230', '87214 Lehner Well\nAudraview, VA 09183', 'Emely Reynolds', 'Elinor McCullough', 'Prof. Tristin Farrell', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(293, 'Maud McCullough', 'pink22@hotmail.com', '+15867729689', '3394 Cormier Knolls\nCaseyfort, TN 32119-7006', 'Katrina Stanton', 'Lloyd Hyatt', 'Van Bauch', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(294, 'Romaine Walker', 'garfield56@fay.net', '+1.504.940.7750', '751 Dach Roads Suite 338\nGarrethaven, IL 28731-1259', 'Mr. Avery Kautzer', 'Louie Brakus V', 'Prof. Sarah VonRueden III', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(295, 'Madge Nitzsche', 'mekhi60@yahoo.com', '+1-845-925-1662', '143 Moen Spur\nLake Ricardoport, CA 19725', 'Myrl Zieme', 'Alta Flatley', 'Frankie Huels', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(296, 'Ilene Feeney IV', 'jason.swift@pollich.com', '+15404839600', '18631 Chyna Prairie Suite 209\nArtmouth, OK 16504-2662', 'Deja Bogisich V', 'Don Schiller', 'Herbert Maggio', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(297, 'Dr. Laisha Kutch', 'telly.jenkins@yahoo.com', '+1-928-674-8705', '29601 Hansen Pass\nNorth Ebony, GA 43842-6776', 'Thalia Keeling', 'Diana Shanahan', 'Bernadine Legros', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(298, 'Mrs. Alice Kutch', 'ariel.abbott@hotmail.com', '+1 (706) 485-3951', '7687 Sydnee Turnpike Apt. 991\nPort Amaraport, MI 25240-1784', 'Marquis Satterfield', 'Walker Abshire', 'Suzanne Dare', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(299, 'Yasmine Gleichner V', 'anne.anderson@yahoo.com', '(951) 651-2272', '921 Vincenzo Expressway Suite 475\nSouth Justinamouth, HI 74916', 'Prof. Clemens Hahn', 'Rod Lueilwitz', 'Delbert Jacobson', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(300, 'Lindsay O\'Keefe', 'celestine.parisian@hotmail.com', '+13863353753', '2645 Kerluke Rest\nWest Pearline, AL 40833-0240', 'Ronny Green', 'Mrs. Carlee Murphy', 'Ms. Matilde Runolfsson DDS', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(301, 'Maribel Stoltenberg', 'maya.rempel@kling.com', '903-798-0974', '81744 Ruecker Mountains\nCarolport, UT 19157-3976', 'Mr. Kay Rohan', 'Terrell Tremblay', 'Kaya Langosh V', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(302, 'Heidi Huels', 'heidenreich.may@gmail.com', '541-883-7032', '72931 Werner Track Apt. 020\nBayerton, SC 60555-8077', 'Kailey Lind', 'Adeline Heathcote', 'Zella Upton', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(303, 'Mrs. Trisha Maggio', 'barbara.morissette@yahoo.com', '1-209-405-3503', '39110 Gottlieb Harbor Suite 348\nNew Annettahaven, ND 12440-8659', 'Richmond Murazik', 'Miss Alda Kris', 'Isaias Lemke', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(304, 'Richard Klein DVM', 'adrian10@jacobs.com', '1-463-734-3596', '967 Selina Gateway Apt. 593\nPort Mose, VA 97363', 'Alva Daugherty', 'Stacy Graham', 'Robert Bernier III', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(305, 'Dr. Toni Ernser DVM', 'edmund.goodwin@gmail.com', '(726) 250-8137', '2401 Hubert Ville Apt. 952\nWest Chethaven, IN 20496-8325', 'Prof. Shaun Leffler V', 'Mervin Collier', 'Elena Braun', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(306, 'Reggie Breitenberg I', 'ariel.jaskolski@jacobson.com', '(954) 680-2278', '24622 Mueller Brooks Apt. 274\nBartellchester, AR 55106-1931', 'Bernice King', 'Ali Rohan', 'Amely Wilkinson V', '1', '2022-12-03 04:37:03', '2022-12-03 04:37:03'),
(307, 'Clark Heller', 'wjacobs@sanford.com', '203-346-9758', '723 Hoeger Groves Suite 381\nCydneyton, TN 51109-2950', 'Roosevelt Rutherford', 'Casper Walter', 'Mr. Roy Langosh', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(308, 'Rosina Botsford', 'ahmed37@herman.org', '520-229-3522', '1875 Shania Place Suite 925\nArloborough, GA 94532', 'Dina Borer', 'Francisca Beer', 'Myles Heathcote', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(309, 'Dr. Braeden Murazik MD', 'jwisoky@mcdermott.biz', '+1 (832) 856-5818', '3808 Bobbie Dale\nBeerfort, WI 66771', 'Garrett Sawayn', 'Libbie Hill', 'Bernadette Thompson', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(310, 'Spencer Murphy III', 'tatum.harris@yahoo.com', '984.907.6314', '6378 Schoen Mills Apt. 978\nPort Laviniaberg, WI 99319-0604', 'Brielle Turner', 'Imogene Heaney DVM', 'Sage Ledner', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(311, 'Guadalupe Ziemann', 'uondricka@hickle.com', '(541) 413-4452', '678 Mertz Dale\nPort Marlene, ID 32331', 'Miss Julia Reynolds', 'Collin Jacobs', 'Hilario Hahn', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(312, 'Emilia Schumm', 'bhuels@yahoo.com', '+1-234-918-1532', '5656 Amos Expressway\nLake Valentinaville, CT 43225', 'Miss Victoria Kling', 'Lavada Collins', 'Dr. Katherine Tillman IV', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(313, 'Prof. Maverick Barrows', 'lcruickshank@king.org', '(351) 790-6729', '35563 Delta Dale Suite 973\nNew Bellatown, ID 30185-4221', 'Hal Heathcote Jr.', 'D\'angelo Gibson Jr.', 'Larissa Yost', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(314, 'Miss Caroline Abbott III', 'luisa.feil@gmail.com', '989.383.5125', '15888 Ernser Avenue Apt. 647\nAllisonborough, OR 66606', 'Prof. Rafael Smith', 'Osborne Rolfson', 'Morris Mills', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(315, 'Meda McLaughlin', 'xboyer@hotmail.com', '1-816-722-9548', '767 Dan Inlet Apt. 851\nDanielfort, ID 86890', 'Mrs. Kathryn Erdman', 'Maddison Hayes', 'Shayne Kuhic', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(316, 'Prof. Nayeli Pfeffer IV', 'jkertzmann@gerlach.info', '940-359-8656', '6105 Kiehn Manors\nPort Ronaldo, ME 69442', 'Ramona Champlin', 'Noel Gaylord', 'Jackeline Pfeffer', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(317, 'Katlynn Graham', 'kristy50@marquardt.net', '(918) 563-7762', '51330 Schiller Road\nNorth Celia, OH 39142-1761', 'Maye Hayes', 'Prof. Flavie Abbott DDS', 'Arnulfo Gerlach', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(318, 'Miss Otha Bruen Jr.', 'soledad99@robel.com', '315-869-5926', '182 Crist Ridges Apt. 041\nNew Kaneburgh, TN 24688', 'Modesto Robel', 'Maci Schamberger', 'Shanie Langosh', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(319, 'Dr. Magdalen Littel', 'schoen.greg@bashirian.com', '+1-863-261-1822', '537 Aufderhar Manor Apt. 666\nKatherynfort, AR 30736', 'Kacie Hoppe', 'Karlie Herman', 'Samara Kirlin', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(320, 'Kelli Davis', 'ccarter@von.com', '1-650-905-6056', '777 Bettye Manors Apt. 143\nNew Patience, LA 61101-7036', 'Kip Mayer', 'Miss Beaulah Morissette II', 'Assunta Rutherford', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(321, 'Grayce Lind', 'travon92@hotmail.com', '(678) 667-8534', '3133 Carter Valleys Suite 227\nCaleighchester, NV 55790', 'Dr. Nellie Hills Jr.', 'Dr. Archibald Goodwin MD', 'Jed Turcotte DVM', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(322, 'Dr. Jeanne Bauch', 'pnikolaus@schmitt.info', '+1-430-317-2500', '415 Abigale Streets\nMonahanstad, DC 12147-1484', 'Prof. Green Klein', 'Orrin McDermott', 'Audie Fahey', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(323, 'Prof. Kacey Heller', 'rau.johnson@tromp.org', '1-678-593-1354', '9246 Buckridge Course Suite 410\nWest Devontechester, TX 34350', 'Darlene D\'Amore I', 'Ophelia Hoppe', 'Prof. Mae Jones PhD', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(324, 'Carmella Green', 'qconroy@berge.com', '270.500.4849', '11721 Monty Freeway Apt. 111\nFernstad, UT 96277-1191', 'Angel Paucek', 'Aimee Jakubowski DDS', 'Vickie Bahringer DDS', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(325, 'Brooks Collier', 'celia.streich@hotmail.com', '(973) 257-8571', '48056 Fay Burgs Suite 313\nEast Fannymouth, TN 79541', 'Columbus Altenwerth', 'Kathlyn Schulist PhD', 'Soledad Muller', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(326, 'Miss Dejah Nicolas', 'swift.christiana@murray.biz', '773-606-2576', '6549 Ed Shoal Suite 874\nJadonville, NH 66339', 'Dr. Valentina Ullrich IV', 'Jamison Cartwright', 'Charlie Glover Sr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(327, 'Hipolito Bauch II', 'eturcotte@reilly.com', '+1 (385) 625-9490', '391 Ortiz Fork Apt. 246\nCurtiston, VA 97877-0799', 'Prof. Alyce Cassin', 'Shanelle Wintheiser II', 'Robbie Ullrich', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(328, 'Mr. Mekhi Kris', 'kylee.bergstrom@hotmail.com', '(872) 428-6282', '304 Tracey Locks\nUrielchester, OH 12196-3854', 'Prof. Oscar Grant V', 'Makenzie Thompson', 'Myrl Jaskolski', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(329, 'Dr. Nicole Weimann', 'zrunolfsdottir@yahoo.com', '682-290-5713', '7995 Noe Green Suite 755\nEast Dayne, NY 05800-8312', 'Felicia Rolfson', 'Clifford Fisher', 'Royal Funk', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(330, 'Anderson Heidenreich I', 'walker.zion@maggio.net', '762.330.5479', '5573 Claudia Mountain\nEast Denis, MD 92636', 'Kyra O\'Reilly', 'Prof. Amie Bergstrom MD', 'Estrella Kilback', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(331, 'Quinn Metz', 'murray.suzanne@langworth.com', '+1.681.484.5340', '2648 Madonna Manors\nNorth Keagan, TN 17457-5888', 'Lorenz Jenkins PhD', 'Ethyl Luettgen', 'Dr. Nelson Wyman Jr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(332, 'Pearlie Hammes V', 'george53@ledner.com', '+1 (864) 233-9487', '67927 Satterfield Glens\nStokesview, TX 36167', 'Prof. London Armstrong PhD', 'Andreane Barton', 'Gaston Murazik DVM', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(333, 'Shad Grant', 'jonas55@dibbert.com', '1-620-346-8027', '36472 Torphy Center\nEast Roscoemouth, KY 17098-6781', 'Renee Reichel II', 'Sunny Hammes', 'Prof. Khalil Friesen', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(334, 'Mr. Davon Adams', 'omitchell@yahoo.com', '248.537.8510', '160 Lavonne Route Apt. 871\nWest Geo, AK 42017-9856', 'Emelia Koepp', 'Ms. Daphne Williamson', 'Loyce Von', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(335, 'Allan Hoppe', 'constantin44@batz.com', '1-534-746-1467', '5209 Volkman Roads Suite 648\nMantemouth, MI 16795', 'Reyna Macejkovic II', 'Nayeli Schroeder', 'Kole Wisozk', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(336, 'Jamel Ziemann II', 'vhalvorson@hirthe.com', '1-808-951-8933', '8281 Cristian Rue Suite 330\nEulaliaton, OK 31613', 'Prof. Sven Wiegand', 'Andrew Schaden', 'Mathew Konopelski', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(337, 'Halie Bailey', 'lloyd02@hotmail.com', '510.268.5239', '6843 Schaden Loaf Suite 777\nLake Esmeralda, KY 02049-0248', 'Mr. Marcus Hartmann DDS', 'Dayton Daugherty', 'Mrs. Holly Gaylord V', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(338, 'Drew Waelchi', 'jkessler@hotmail.com', '559-931-8843', '2323 Erik Avenue\nEast Joseph, WY 68335-0703', 'Mr. Mario Emard Jr.', 'Sim Hettinger PhD', 'Emerald Weber I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(339, 'Aileen Kreiger DDS', 'reed.roob@yahoo.com', '901.635.7705', '51110 Kellie Junction\nCheyennefort, IA 18295', 'Marlin Feeney', 'Dr. Johnathon Hill', 'Delores Abbott', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(340, 'Justyn Gutkowski III', 'kyleigh.welch@klein.com', '+1.781.853.5263', '4133 Littel Mission\nReingerchester, WY 77715', 'Murl Mills II', 'Tyrese Boehm', 'Dr. Dejuan Wilderman I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(341, 'Charlene Stokes MD', 'pgottlieb@yahoo.com', '+18148943713', '18929 Elena Prairie\nPort Kennethstad, NJ 33915-6609', 'Maida Beatty IV', 'Kelsi Towne IV', 'Delfina White', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(342, 'Louisa Predovic', 'fleta67@yahoo.com', '+1.720.509.4627', '1963 Schmeler Square\nLake Elvieton, AR 23998', 'Fidel Considine', 'Otis Schulist V', 'Johnnie King I', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(343, 'Miss Audrey Ortiz', 'sgrimes@lang.net', '+1.210.216.9217', '86330 Hirthe Junctions\nNew Nicoshire, OR 38821-4976', 'Prof. Pasquale Altenwerth', 'Lilian Deckow', 'Myra Collier', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(344, 'Ebony Hintz', 'ybrekke@hotmail.com', '478.334.0465', '4065 Lindgren Turnpike\nKovacekshire, VT 83052-4104', 'Jensen Veum', 'Mr. Colton Price', 'Leopold Kuphal', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(345, 'Vivianne Parisian', 'zcrona@daugherty.com', '316.414.3238', '32398 Cummerata View\nAufderharstad, SD 38311', 'Mr. Moriah Mayer', 'Mariana Lesch PhD', 'Russell Koelpin', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(346, 'Dr. Jeffery Bogan III', 'rogahn.gilda@yahoo.com', '+1.206.718.0302', '3613 Norris Hollow\nLueilwitzfort, VA 71303', 'Hiram Pfeffer', 'Darius Doyle', 'Mrs. Krista Satterfield', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(347, 'Carleton Block', 'destany24@hotmail.com', '325-964-7286', '1232 Schoen Fort Apt. 779\nJerrellmouth, MD 47916', 'Cloyd Feeney', 'Phyllis Walter', 'Marianne Schinner', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(348, 'Bonnie Osinski', 'klein.daron@schoen.info', '+1-256-893-0719', '956 Gladyce Run\nWhitemouth, MD 94529-2694', 'Delpha Aufderhar', 'Gilda Eichmann', 'Olaf Hyatt', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(349, 'Dr. Lindsay Metz', 'ari.breitenberg@hotmail.com', '1-240-262-3102', '789 Runte Mission Apt. 419\nIlaview, NH 96498', 'Miss Patience Jerde IV', 'Yvonne Schowalter', 'Mr. Jo Herman', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(350, 'Mr. Jaeden Labadie', 'stracke.rowena@gmail.com', '(609) 873-3858', '2075 Larson Springs\nLorenzoview, MD 05633', 'Mr. Warren Weimann IV', 'Prof. Watson Schowalter IV', 'Alfonzo Will', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(351, 'Annie Senger', 'amber.watsica@gmail.com', '1-341-772-3485', '623 Rippin Rapids Suite 897\nBergeville, GA 19642', 'Margie Sauer I', 'Katelin Lubowitz', 'Courtney Konopelski', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(352, 'Solon Buckridge', 'curt.daniel@hotmail.com', '1-341-633-3679', '124 Hintz Lock\nLake Clarkville, NY 95846', 'Dr. Christ Ullrich IV', 'Ms. Bethel Beier', 'Crawford Stehr DDS', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(353, 'Hassan Predovic', 'catalina.murazik@gerhold.com', '(217) 812-8719', '662 Ed Forest\nPort Carissaport, HI 27835-4088', 'Linnie Nienow', 'Ms. Amie Volkman', 'Prof. Harrison Harris', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(354, 'Dr. Pierce Hirthe III', 'alockman@marquardt.net', '(458) 796-4406', '38065 Wilderman Streets Suite 697\nPort Camila, KY 52984-3870', 'Emie Champlin', 'Mireya Cummings', 'Miss Libby Nader IV', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(355, 'Hershel Block', 'juanita.dare@yahoo.com', '(347) 717-1594', '5799 Damion Springs Suite 686\nTaureanport, OH 30377-3040', 'Fritz Frami', 'Dr. Parker Hoeger DVM', 'Lempi Bartoletti Sr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(356, 'Romaine Shields', 'abner07@fahey.com', '+1 (680) 436-2874', '6447 Cathryn Landing\nLake Dewaynechester, IA 21704-2934', 'Sigrid Cummerata', 'Beatrice Shields', 'Chase Pfannerstill Jr.', '1', '2022-12-03 04:37:46', '2022-12-03 04:37:46'),
(357, 'Emelia Casper', 'demetrius.christiansen@yahoo.com', '+1.585.287.0773', '3200 Peggie Circle\nEast Liza, MA 60362-2216', 'Edward Price IV', 'Miss Madisyn Bradtke', 'Peter Bode', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(358, 'Jolie Schinner', 'dorian.miller@hotmail.com', '+1-541-884-9850', '9698 Ola Forks Suite 123\nEast Kasandra, AR 30903', 'Prof. Louvenia D\'Amore', 'Hans Pfannerstill', 'Marie Yost', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(359, 'Bernadine Abshire', 'mayer.jennifer@yahoo.com', '1-916-246-6271', '65480 Dayana Islands Apt. 782\nBrianaburgh, WY 47338', 'Cruz Feil', 'Waldo Brown', 'Joey Mosciski', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(360, 'Prof. Aniya Kling', 'janessa.schamberger@kreiger.org', '+1.551.734.7849', '97301 Dach Vista Suite 954\nSouth Huldafurt, KY 28235', 'Cloyd Abbott', 'Jerad Bashirian', 'Mrs. Katlyn Denesik III', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(361, 'Danika Luettgen', 'owill@conroy.com', '847-314-4503', '1336 Funk Summit Suite 676\nNarcisoton, RI 17209', 'Mckenzie Stracke', 'Britney Kirlin V', 'Eloisa Kassulke Jr.', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(362, 'Ewell Lakin', 'nedra.von@hotmail.com', '+17265371399', '63751 Beatty Parkway\nNew Westleyview, VT 99171-0342', 'Walter Howell', 'Dr. Urban Hansen', 'Mckenna Oberbrunner', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(363, 'Cleveland Hamill', 'beau.conroy@weber.info', '+1-434-442-2147', '283 Tillman Forge\nRashadton, NC 13217', 'Talon Hudson', 'Dr. Hipolito Yost', 'Willie Balistreri', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(364, 'Susan Mueller', 'cora45@metz.com', '458-990-0358', '143 Tania Course Suite 767\nNorth Dianna, MA 16802', 'Dejah Nikolaus', 'Heath Schuppe', 'Bailey Gibson', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(365, 'Tara Runolfsdottir Sr.', 'kris.charlie@hotmail.com', '1-225-663-1689', '882 Caleigh Drives\nNew Terrillmouth, DC 75472-5741', 'Prof. Napoleon Kulas', 'Christy Brakus', 'Mr. Marcelo Hayes Jr.', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(366, 'Trevor Feest III', 'destini72@baumbach.com', '276.603.8898', '6827 Kylie Parkway Apt. 939\nTatummouth, AK 96845', 'Angelita Becker Jr.', 'Jerel Erdman', 'Shawna Schamberger MD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(367, 'Dr. Camden Jones', 'claudia52@yahoo.com', '1-858-898-3517', '9362 Kimberly Ridge\nNew Jorge, AR 16964-9312', 'Francesco Hahn MD', 'Thelma Schaden DDS', 'Maribel Davis', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(368, 'Assunta Wehner', 'orolfson@rosenbaum.com', '573-584-2116', '925 Adams Mountain Apt. 120\nKreigerport, RI 15129-8593', 'Dr. Baby Herzog', 'Meagan Hickle', 'Jacky Turner', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(369, 'Carli Koepp', 'lucio.baumbach@yahoo.com', '(325) 865-7426', '42238 Torey Canyon\nSouth Jennyfer, ME 95622-1037', 'Dr. Ceasar Schuster', 'Miss Alverta Torp', 'Dr. Monserrat Stanton', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(370, 'Linda Hill', 'domenick24@hotmail.com', '+1-404-464-3615', '5821 Bradly Inlet Suite 378\nKilbackside, LA 05652-1852', 'Makenzie Weimann', 'Heloise Wilkinson', 'Craig Jacobson', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(371, 'Triston Botsford', 'sidney.conn@hill.com', '+1 (681) 926-9215', '9945 Donny Bypass Apt. 735\nNorth Alexandreashire, SD 83035-4608', 'Dr. Damion Rath', 'Sofia Grant', 'Kaylie Will', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(372, 'Lillie Ullrich', 'joanie74@hotmail.com', '502.551.8784', '547 Legros Fort Suite 846\nNorth Laurieburgh, DE 49090', 'Webster Swift I', 'Coy Mraz', 'Mr. Brendon Harris IV', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(373, 'Miss Bonnie Zulauf III', 'jayde02@krajcik.com', '+1.325.282.8988', '879 Rempel Light Apt. 110\nSouth Bennett, NC 15747-1895', 'Emile Fahey', 'Trevor Schoen', 'Queenie Cremin', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(374, 'Merlin O\'Reilly', 'hwalker@gmail.com', '+1-417-845-1987', '61204 Rashad Plain Suite 883\nGaylordburgh, VT 53067-0304', 'Dr. Arne Mertz', 'Prof. Katelynn Harber', 'Mathilde Dicki', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(375, 'Miss Hattie Shields MD', 'jackie17@kunde.net', '651.504.3385', '581 Fritsch Valley Apt. 763\nWest Nyahland, WI 17456-1408', 'Vickie Watsica', 'Ova Torphy', 'Bethany Stracke', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(376, 'Prof. Jermey Funk III', 'verona86@gmail.com', '1-810-956-6997', '2200 Katrine Extensions Suite 546\nEast Saige, TX 59235', 'Prof. Sallie Kozey', 'Nella Graham', 'Zakary Bauch', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(377, 'Patience Batz', 'davis.lamont@hotmail.com', '(224) 582-0056', '411 Bins Wall\nFilomenamouth, AR 28112-4895', 'Karina Beer IV', 'Mr. Jillian Romaguera DVM', 'Emma Morissette', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(378, 'Lenore Lynch DDS', 'rwilderman@towne.com', '+12817500989', '8281 Corkery Groves\nJacobston, ME 75781-8078', 'Ms. Courtney Watsica DVM', 'Mr. Levi Champlin III', 'Miss Arlie Hayes MD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(379, 'Mrs. Leslie Schowalter', 'estefania.ruecker@hotmail.com', '463.315.9936', '826 Reilly Terrace Suite 147\nBudshire, NH 39625-6483', 'Braulio Gerhold', 'Orrin Purdy II', 'Dianna Metz', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(380, 'Prof. Freeda Russel PhD', 'dickinson.gabe@hotmail.com', '(231) 853-0148', '851 Kuphal Turnpike\nMurphyborough, NY 15969-6695', 'Casimer D\'Amore Jr.', 'Cassie Hettinger PhD', 'Fermin Carter MD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(381, 'Prof. Madaline Jerde PhD', 'velva.jaskolski@mcclure.net', '+19599274731', '545 Anahi Ferry\nNorth Roosevelt, MO 48779', 'Broderick Batz PhD', 'Cordell Johnson', 'Agustina Reinger II', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(382, 'Hershel Herman', 'oswald82@gmail.com', '+1.231.753.5377', '606 Maureen Islands\nLake Heloisebury, GA 30422', 'Brooklyn Shanahan', 'Alexandrine Mitchell', 'Dr. Antonina Smitham MD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(383, 'Gerson Heller', 'hansen.jesus@kuvalis.com', '(380) 314-6979', '3445 Jakayla Roads\nPort Durwardchester, MA 13310-5244', 'Barry Howe', 'Winona Kihn', 'Prof. Krystina Weissnat', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(384, 'Neva Ullrich I', 'donnelly.ron@bode.com', '+1 (904) 455-8632', '89494 Armstrong Underpass\nLebsackstad, SD 33349-6664', 'Miss Samanta Durgan MD', 'Isabell Halvorson MD', 'Mr. Rory Beer', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(385, 'Prof. Lionel Stiedemann I', 'talia.quigley@hotmail.com', '602-794-5394', '39828 Torrey Turnpike Suite 502\nVerlabury, PA 24235', 'Kathleen Jacobson', 'Nelle Wunsch', 'Donnell Bartoletti', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(386, 'Richard Trantow', 'paucek.sandrine@gmail.com', '1-401-932-4566', '371 Lilian Orchard\nNorth Lizashire, AR 38982', 'Mozell Ullrich Sr.', 'Mrs. Dayna Welch', 'Mrs. Ilene Kerluke', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(387, 'Mr. Jerald DuBuque', 'jaida22@dach.org', '+1.786.427.8427', '2275 Sigrid Land Apt. 172\nSouth Marjoryport, NC 61692', 'Virginia Runte', 'Pasquale Hegmann', 'Tavares Bradtke', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(388, 'Dr. Tyler Prohaska', 'sarina.gulgowski@gmail.com', '1-571-706-2893', '284 Mante Estates\nLaruebury, AR 59653-7395', 'Ms. Fabiola Brekke Jr.', 'Prof. Stanford Turcotte', 'Raheem Spencer', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(389, 'Dr. Vince Cruickshank', 'jaeden77@hotmail.com', '+1.314.348.9450', '837 Norbert Glen Suite 413\nRonside, OR 40414', 'Easter Prosacco', 'Giles Koelpin', 'Dr. Lavonne Senger PhD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(390, 'Mrs. Alejandra Larson', 'olarson@hotmail.com', '(801) 670-1062', '5626 Ferry Pass\nNew Gretchenport, MN 84323-8032', 'Cayla Larkin', 'Dr. Sven Rodriguez', 'Toby Hagenes', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(391, 'Destin Kub', 'baumbach.savanna@lang.com', '386.792.7694', '673 Prohaska Plaza\nAimeeshire, RI 42034-8761', 'Ms. Tierra Koepp DDS', 'Prof. Aurore Osinski Jr.', 'Ms. Dorothy Schimmel', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(392, 'Pearl Schoen', 'bkiehn@hotmail.com', '+1.223.948.1903', '91744 Feest Brook\nReganview, AR 85790-4671', 'Michaela Hoppe', 'Abbey Glover', 'Rhett Pfannerstill', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(393, 'Henry Strosin', 'reinhold.rath@vandervort.com', '+16172163450', '33612 Ernser Crossing\nAlejandrinchester, HI 87969-1387', 'Prof. Faustino Weber III', 'Lilliana Bruen', 'Rozella Vandervort', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(394, 'Miss Frida Armstrong Jr.', 'astark@purdy.com', '573-612-1744', '538 Tromp Manors\nFarrellville, VT 32531-5966', 'Amani Kertzmann', 'Lacey Marquardt', 'Kaylie Kiehn', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(395, 'Alf Zulauf', 'waters.dorothea@yahoo.com', '410.362.7412', '715 Charlene Loop Suite 499\nEast Hailey, KY 51460-9083', 'Camila Padberg', 'Albina Huels', 'Alia Cronin', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(396, 'Brock Corwin', 'marcella70@lueilwitz.com', '409-532-8743', '95717 Kuhlman Valleys Apt. 859\nNew Andreane, WA 10568-3779', 'Dr. Pablo Weimann Sr.', 'Christ Heaney', 'Mr. Jarrod Johnson MD', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(397, 'Miss Felicia Marquardt', 'emard.leta@yahoo.com', '+1-678-481-7621', '7083 Bednar Union Apt. 007\nBeattyville, MO 86393-5586', 'Lew Bogisich', 'Giovanna Tillman MD', 'Libbie Mayert', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(398, 'Catalina Hackett', 'ibrown@krajcik.biz', '251-640-3870', '58765 Aliya Corners\nAndreannemouth, AR 13239-3262', 'Ruby Yundt', 'Idella Bogisich', 'Dr. Jay Bergstrom', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(399, 'Hank Mante', 'norris.turcotte@yahoo.com', '503-694-3774', '239 Hickle Plaza Suite 003\nThielview, DE 86930', 'Prof. Sydney Hagenes Sr.', 'Reggie Zulauf PhD', 'Prof. Kaleb McKenzie Jr.', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(400, 'Stephon Yost', 'roxane77@rempel.biz', '(281) 861-0044', '615 Willms Causeway\nJonesmouth, ID 85141', 'Meredith Thiel II', 'Juliana Little', 'Prof. Jordyn Quitzon', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(401, 'Mr. Bernardo Jakubowski DVM', 'bernier.dalton@wuckert.com', '(714) 447-2203', '3821 Bartell Villages\nDenesikstad, MT 53102', 'Chanelle Dicki', 'Astrid Huels', 'Prof. Garth Bosco V', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(402, 'Ms. Jadyn Will', 'adonis.rowe@marks.com', '+1-828-649-0091', '1524 Nienow Squares\nLake Clinton, KY 82904', 'Kavon Stanton', 'Dr. Royce Heathcote III', 'Bryana Willms', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(403, 'Dora Kertzmann', 'marjolaine.macejkovic@gmail.com', '+16408465918', '513 Legros Rapid Suite 170\nSouth Federico, NC 93972', 'Ana Bashirian MD', 'Trinity Lebsack', 'Bria Wyman', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(404, 'Alysa Medhurst', 'nmccullough@yahoo.com', '+1.724.894.7887', '929 Shanie Crossroad Suite 437\nPatsyhaven, ME 36210-0289', 'Arch Ryan', 'Ms. Oma Hirthe MD', 'Jasper Klein', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(405, 'Herminio Crist DDS', 'marianna76@zboncak.com', '+1.301.510.8702', '248 McGlynn Pine Suite 452\nNorth Victor, AR 18734', 'Otho Gerhold I', 'Euna Botsford', 'Lavinia Rosenbaum', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(406, 'Lia Konopelski', 'laila.mertz@runolfsdottir.com', '618.656.3247', '38756 Dare Causeway Suite 784\nNew Laurettamouth, NC 92761-8922', 'Randy Carroll', 'Dr. Joshua Eichmann DDS', 'Prof. Precious Daniel III', '1', '2022-12-03 04:37:47', '2022-12-03 04:37:47'),
(407, 'Annie Jacobs', 'lydia.padberg@yahoo.com', '309.633.6523', '55329 Fahey Isle Suite 815\nSouth Audreannechester, MD 79679', 'Phoebe Towne', 'Mr. Kim Corkery PhD', 'Dayne Schultz', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(408, 'Marjorie DuBuque', 'hilpert.chelsey@yahoo.com', '(321) 357-3737', '811 Theodore Overpass\nPort Edgardoburgh, AR 20812-1847', 'Bette Schamberger', 'Rosamond Kunde III', 'Davon Schumm', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(409, 'Willow Rippin', 'kturner@harvey.com', '+18482092994', '761 Rippin Vista Suite 048\nBeierberg, AL 40108-9043', 'Lily Bauch', 'Luis Bergnaum', 'Joel Wisozk', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(410, 'Dr. Myrtie Rogahn Sr.', 'domenico.sanford@yahoo.com', '(563) 818-4966', '29489 Veda Radial Apt. 893\nGutkowskistad, PA 83242', 'Austyn Pollich', 'Miss Kristy Moen', 'Raegan Gottlieb', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(411, 'Jacynthe Schmeler', 'gregory.konopelski@yahoo.com', '(313) 331-6001', '786 Spencer Roads Suite 232\nLake Shanelleton, NY 29229', 'Newton Stark PhD', 'Fidel Hirthe', 'Gina Wilderman MD', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(412, 'Dewitt Langworth', 'zlabadie@gmail.com', '+16786493639', '655 Lueilwitz Square Suite 483\nWest Tianna, MN 31581-3279', 'Aurelio Lueilwitz II', 'Monroe Mante', 'Candice Luettgen', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(413, 'Dr. Christian Nitzsche', 'marc70@morar.net', '1-925-723-5115', '5644 Alia Curve Apt. 434\nWindlerchester, OH 46645-1733', 'Zena Hegmann', 'Maudie Reichel', 'Levi Kuhic PhD', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(414, 'Madilyn Rodriguez', 'heidenreich.elmer@yahoo.com', '+1-925-479-5333', '84199 Mertz Land\nPort Alexandre, RI 45657-5039', 'Roma Tillman', 'Mrs. Claudine Mueller V', 'Magnus Mohr', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(415, 'Abbie Smith', 'brenda.rice@gmail.com', '+1-574-220-1607', '469 Reginald Divide Apt. 095\nRandalbury, OH 92310', 'Freda Krajcik', 'Ms. Tianna Watsica', 'Robert Strosin', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(416, 'Bennie Russel', 'hartmann.cletus@yahoo.com', '(713) 937-5691', '5936 Pat Tunnel\nNew Peterhaven, NV 78329', 'Alexzander Renner', 'Rogers Greenholt', 'Ezra Barrows', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(417, 'Dr. Jettie Bailey', 'shyanne.runte@hotmail.com', '401.221.0138', '9558 Hansen Squares Suite 382\nWest Jimmie, NJ 93230', 'Caleb Feeney', 'Dr. Kirstin Greenfelder V', 'Caterina Ferry', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(418, 'Mr. Americo Sipes V', 'alexandre47@kuhic.com', '+1-712-393-3623', '174 Swift Lodge Apt. 206\nHackettside, VT 36950', 'Prof. Miller Bartell', 'Hermann Fritsch', 'Alexane Hermann', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(419, 'Dr. Kameron Heller III', 'ilene27@schowalter.biz', '+1.248.917.8567', '51902 Rempel Pine\nNorth Letitiamouth, MA 02038-3573', 'Josie Marquardt', 'Jevon Hauck', 'Prof. Thomas Stehr II', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50');
INSERT INTO `suppliers` (`id`, `name`, `email`, `phone`, `address`, `option1`, `option2`, `option3`, `status`, `created_at`, `updated_at`) VALUES
(420, 'Dr. Fletcher Zemlak', 'zulauf.amparo@halvorson.com', '+1.913.668.4659', '173 Roberts Row Suite 247\nMaynardland, NV 50498', 'Mollie Kassulke MD', 'Percy Weissnat', 'Sofia Marvin', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(421, 'Kristin Gutkowski', 'raleigh20@gmail.com', '(860) 781-7638', '4415 Schuster Fort\nChelsieburgh, NY 50178-5788', 'Janiya Buckridge', 'Willard Champlin', 'Oswald Balistreri', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(422, 'Bailey Howe', 'grace75@gmail.com', '+1-434-490-9900', '813 Mike Lodge\nLake Gwendolyn, MO 98390-2025', 'Prof. Shanelle Adams II', 'Sincere Connelly', 'Zachery Sanford', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(423, 'Judy Jakubowski', 'ellie.thompson@hotmail.com', '1-458-764-3521', '99221 Wunsch Plains\nNew Queenie, MD 21166', 'Genoveva Hagenes MD', 'Federico Harris', 'Emelie Daugherty', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(424, 'Mr. Lester Bergnaum Jr.', 'tsporer@kihn.com', '(954) 691-0694', '4546 Jaylon Loop Suite 477\nEast Melbatown, CA 49982', 'Dr. Liliana Windler DVM', 'Doug Lesch DVM', 'Julian Medhurst', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(425, 'Kiley Swaniawski', 'nelson08@huels.com', '814-865-6714', '646 Cruickshank Landing Apt. 299\nNew Uniqueville, NJ 80173-8629', 'Dr. Jed Stanton', 'Dr. Cecilia Hudson', 'Anabel Bartell', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(426, 'Clarabelle Abernathy', 'bailee.stiedemann@gmail.com', '1-682-855-3395', '281 Bashirian Alley Suite 915\nNorth Cordiaville, MT 99021-0198', 'Neha Oberbrunner', 'Miss Justina Collins', 'Armand Kuhic', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(427, 'Ewald Boehm', 'vida23@fahey.com', '+14692875801', '507 Larson Cliff\nNyahport, NY 74272', 'Nellie Metz', 'Sidney Morar', 'Ernesto Franecki V', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(428, 'Josephine Denesik', 'jessy.ankunding@yahoo.com', '925-737-9312', '117 Stokes Walks Apt. 990\nNew Kennytown, ND 10224-7460', 'Angus Nolan MD', 'Quincy Mann', 'Mr. Willis Cartwright IV', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(429, 'Marjolaine Abbott', 'purdy.chad@labadie.com', '+1-262-267-8369', '38048 Sandra Plain\nThompsonton, IA 39031-9683', 'Pattie Johnston', 'Therese Baumbach DVM', 'Joana Beier', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(430, 'Dr. Cedrick Emard III', 'nitzsche.lauren@hotmail.com', '+19525866130', '25202 Larkin Skyway Apt. 113\nEast Henrishire, MO 69792', 'Stewart Armstrong', 'Lindsey Conroy', 'Marilou Quitzon II', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(431, 'Mrs. Madisyn Hagenes Sr.', 'glittle@casper.com', '1-201-851-9885', '51381 Owen Views Suite 045\nHagenesview, TN 38171', 'Sophia Schaefer', 'Filiberto Kemmer', 'Loraine Eichmann Jr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(432, 'Kallie Treutel', 'rice.chauncey@gmail.com', '(424) 761-8346', '4168 Waters Station Suite 868\nNew Carolanne, PA 07959', 'Dr. Dawn Renner', 'Nola Bayer III', 'Daphne Haley', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(433, 'Ila Rosenbaum', 'crowe@yahoo.com', '+1-606-309-7167', '446 Joanne Alley\nSouth Erlingport, DE 37582-0254', 'Myrl Mills', 'Gaston Langworth', 'Christa Gutmann', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(434, 'Delphia McLaughlin II', 'trinity.hills@yahoo.com', '231-524-0448', '68177 Ullrich Brooks Apt. 650\nRosenbaumborough, NY 29089-5588', 'Keven Kunde PhD', 'Maryjane White', 'Bo Ratke', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(435, 'Oral Schmitt', 'gorczany.lilian@gmail.com', '1-332-399-8351', '274 Nicholaus Meadows Apt. 454\nWest Roel, WI 10352-7988', 'Boris Kirlin', 'Dr. Augusta Legros', 'Golden Von', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(436, 'Rocky Schinner', 'jerald.abbott@gmail.com', '+1-605-490-2545', '513 Dicki Creek\nNew Timmy, MT 78421-3330', 'Tatyana Bradtke', 'Prof. Lorenzo Renner', 'Prof. Margarete O\'Hara', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(437, 'Brandyn Gusikowski', 'dkutch@yahoo.com', '442.828.6895', '802 Yesenia Junctions Suite 168\nFayberg, NE 30997-0354', 'Anahi Keebler I', 'Prof. Jesus Christiansen MD', 'Deborah Harris', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(438, 'Marguerite Lubowitz', 'franecki.jayce@hotmail.com', '539-926-5059', '314 Rogelio Fords Suite 621\nTaliamouth, VA 35454', 'Stefanie Windler', 'Mr. Savion Metz', 'Curtis Moen DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(439, 'Ms. Dortha Bartoletti', 'ekuhn@gmail.com', '814-675-0593', '4425 Abe Mission Suite 085\nPort Eda, VA 79966', 'Brennon Herman', 'Jakob Buckridge PhD', 'Juliana Carter', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(440, 'Prof. Tremayne Bednar I', 'mayert.maxwell@gmail.com', '+18328768167', '262 Magnus Plains\nWest Jodyport, OH 36464', 'Genesis Blick', 'Gina Mann', 'Weston Lueilwitz Jr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(441, 'Eleanore Little', 'pdibbert@yahoo.com', '+1-470-998-6141', '5769 Pauline Dam Suite 679\nLangworthville, NJ 82565', 'Pietro Koelpin', 'Ubaldo Bruen', 'Miss Ernestine Ruecker MD', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(442, 'Brionna Grant', 'lindsay92@damore.com', '551-281-1893', '8287 Madyson Grove\nLake Alexandreaton, WV 04426-9237', 'Delaney Klein', 'Michele Beer', 'Mr. Houston Franecki IV', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(443, 'Nyasia Kessler', 'ktoy@dooley.com', '646.777.4334', '3444 Lucie Island\nLillyshire, WY 96423-9669', 'Bridgette Kilback', 'Dr. Torrey Wiza II', 'Jasmin Boyer', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(444, 'Lafayette Swaniawski', 'shayne.torp@abbott.com', '+1-458-820-5764', '324 Alessandra Drive Apt. 994\nSouth Elwynville, AK 57425', 'Modesto Stiedemann', 'Zachery Torphy', 'Kurtis Corwin', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(445, 'Vida Osinski', 'selina.witting@armstrong.org', '325-967-1709', '75152 Theresia Mountain Apt. 270\nEast Lontown, AZ 54788', 'Prof. Collin Grady', 'Miss Adrianna Bartell', 'Bailee Corkery', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(446, 'Rose Cormier', 'marilyne37@zemlak.org', '+1.726.542.6771', '897 Olson Place Apt. 084\nLake Rogeliohaven, WY 30433', 'Cruz Thiel', 'Madyson Lynch', 'Tremaine Abshire', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(447, 'Dr. Napoleon Schumm', 'irenner@gmail.com', '+1 (440) 439-8604', '24803 Cheyenne Prairie\nWest Rasheedfort, NY 00209', 'Jacklyn Parisian', 'Miss Karine Olson Sr.', 'Dannie Gerhold', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(448, 'Raven Fritsch', 'gabriella.jacobson@gleason.net', '917.633.2738', '46451 Thiel Green\nEast Ryder, AZ 79370-9283', 'Shanel Funk I', 'Prof. Eleonore Schneider', 'Mireille Cole', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(449, 'Sharon Feil', 'npouros@yahoo.com', '620.968.9296', '28291 Hessel Rapids Apt. 138\nPort Kurtland, IA 39239', 'Dr. Briana Koch', 'Kristian Kling', 'Domenico Stoltenberg', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(450, 'Ms. Alberta Tremblay', 'kreiger.loraine@dare.com', '1-747-557-7454', '954 Smith Trail Suite 048\nBrandynton, ND 67685', 'Dr. Shayna Harvey', 'Prudence Walsh', 'Dr. Antonio Crist', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(451, 'Miss Destinee Klein DDS', 'bquigley@spencer.info', '(478) 307-6294', '1717 Jenkins Wells\nWeberborough, NM 39102-9495', 'Fernando Eichmann', 'Georgette Heaney', 'Dr. Ava Rempel PhD', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(452, 'Heath Trantow DDS', 'joaquin.legros@gmail.com', '910.343.9407', '235 Durgan Squares Apt. 058\nSchummchester, CO 85007', 'Aylin Berge', 'Landen Huels', 'Gussie Gaylord', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(453, 'Dr. Jeramie Barrows', 'dulce.grimes@hotmail.com', '864.335.2044', '353 Shayne Mount\nCelestinehaven, MT 90798-0171', 'Junior Bruen', 'Prof. Judson Bergstrom', 'Pietro Haag Sr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(454, 'Dr. Don Bins DVM', 'elmo.conroy@yahoo.com', '660-672-7183', '243 Kian Estate Suite 939\nAufderhartown, ND 44730-6856', 'Miss Loren Mraz III', 'Dr. Warren Gerlach Jr.', 'Mathew Kautzer', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(455, 'Fredrick Terry', 'lehner.halie@kilback.com', '1-317-677-7658', '3818 Ashley Forges\nNicolastown, PA 32930-4935', 'Mrs. Dessie VonRueden III', 'Weston Fadel', 'Raul Ebert', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(456, 'Jazmyn Swift MD', 'stuart.greenfelder@crooks.biz', '+1-620-428-1880', '88934 Hansen Rue Apt. 483\nNorth Albertochester, WA 67857', 'Tess Gorczany', 'Mr. Lazaro Kerluke', 'Rachel Larkin', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(457, 'Deshawn Leuschke', 'wilbert45@yahoo.com', '1-240-230-0100', '5975 Davis Mountains\nLake Wilhelm, CO 83128-6048', 'Ross Green', 'Colt Wehner PhD', 'Mr. Gilberto Stamm DVM', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(458, 'Frances Blick', 'williamson.ian@gmail.com', '631-817-6699', '156 Suzanne Knolls Apt. 826\nMcDermotthaven, KY 10557', 'Jean Frami', 'Angeline Quitzon', 'Gisselle Will II', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(459, 'Niko Greenholt', 'waldo.nicolas@swift.com', '283.245.1447', '166 Juston Neck Suite 499\nSouth Daijabury, AL 32468', 'Claudia Walsh', 'Dr. Anabel Huel', 'Roselyn Gorczany', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(460, 'Brooke Marquardt', 'znader@gmail.com', '870.540.6731', '864 Nils Highway\nBoganview, WI 84153-3116', 'Eleonore DuBuque', 'Kiera Lebsack', 'Khalid Jacobs', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(461, 'Olen Tromp', 'mcdermott.owen@pollich.info', '+1-517-667-3508', '575 Greg Canyon\nEast Laurenceburgh, NE 52488', 'Prof. Muriel Leffler PhD', 'Albin Hermann', 'Gillian Cartwright', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(462, 'Cassandra Lubowitz III', 'estreich@schneider.com', '+1.225.999.1538', '4792 Domenic Stream\nSouth Alfredstad, MD 17691', 'Orrin Blick', 'Mrs. Guadalupe Moore PhD', 'Zoey Sawayn DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(463, 'Winfield Buckridge', 'bernier.ora@gmail.com', '626.773.6550', '79569 Britney Springs\nWest Eldonport, MS 34535-8434', 'Douglas Heidenreich', 'Dr. Harrison McGlynn', 'Mrs. Samantha Hirthe DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(464, 'Marcella Murazik', 'karianne.paucek@yahoo.com', '+1 (878) 909-4542', '7824 Jovani Parkway\nHettingerburgh, MT 28773-3983', 'Myrtle Wilderman', 'Mr. Mark Schinner', 'Crystal Jaskolski I', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(465, 'Susana Kulas', 'mallory19@yahoo.com', '+13859959460', '596 Ethelyn Dale\nLailabury, OK 55251', 'Lukas Stanton', 'Prof. Scot Murazik', 'Damien Orn', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(466, 'Abagail Durgan', 'joyce.schuster@schaefer.com', '(803) 547-6154', '125 Ezequiel Courts Apt. 183\nRoobmouth, MD 26304-7474', 'Jaqueline Ferry', 'Alayna McCullough', 'Dr. Davon Larkin', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(467, 'Gwen Kub', 'nikki.kling@yahoo.com', '+1 (828) 848-1932', '48696 Osinski Mews Suite 004\nNorth Delphashire, AR 90652', 'Dr. Oleta Kuhlman IV', 'Dr. Luther Denesik III', 'Prof. Gustave Schmidt DVM', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(468, 'Verda Wisoky II', 'keeley68@towne.biz', '+14307843244', '70799 O\'Kon Manor\nCorneliuschester, WV 84414-1909', 'Sophia Robel Sr.', 'Dr. Garrison Anderson Sr.', 'Margret Sipes DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(469, 'Karson Willms', 'chuel@gmail.com', '1-631-323-9425', '742 O\'Connell Skyway Suite 210\nNew Maya, NV 05561-3555', 'Mrs. Valentine Mann III', 'Delbert Collier', 'Lilyan Mertz', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(470, 'Hadley Moen', 'omiller@yost.org', '+1 (442) 268-4353', '12443 Maggio Passage\nBenedictstad, CA 44770-7704', 'Andre Reichert', 'Clair Lind DDS', 'Dr. Kory Torp III', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(471, 'Ms. Claudine Romaguera', 'ustokes@walsh.com', '1-515-997-1352', '1122 Rosendo Port Apt. 909\nEmersonfort, VA 87066-2781', 'Gayle Greenholt', 'Derek O\'Connell', 'Rubie Kassulke', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(472, 'Dr. Ericka Stamm', 'quigley.dario@gmail.com', '+1.726.445.8806', '92395 Claire Landing Suite 856\nBaumbachtown, NJ 55124-5584', 'Beryl Heaney MD', 'Clarabelle Koss III', 'Bailee Moore', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(473, 'Madie Schmeler', 'lauren.corkery@price.com', '640-769-7606', '801 Tyrel Station\nEast Brettview, NE 34548', 'Kassandra Kulas', 'Charlene Leffler', 'Jeramy Okuneva', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(474, 'Dr. Carlos Keeling I', 'dora41@yahoo.com', '+1.930.698.1202', '89186 Schoen Springs Apt. 985\nPort Armani, HI 41717-8996', 'Lucious Dach', 'David Hermann', 'Eleonore Wisoky', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(475, 'Fred Wolf', 'vhuels@hotmail.com', '(385) 973-8051', '264 Kennedi Pike Apt. 216\nWilliamsontown, NC 33981', 'Miss Eldora Rosenbaum II', 'Nelle Gulgowski', 'Prof. Nick Swift I', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(476, 'Everette Ondricka', 'freida23@stehr.com', '559.910.7380', '819 Hailee Isle Suite 669\nSouth Kaci, AR 90562', 'Ms. Josefa Kohler DVM', 'Cheyanne Kertzmann', 'Horace Smitham', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(477, 'Jocelyn Ziemann', 'hcremin@gmail.com', '1-352-348-3033', '300 Rogahn Mount Apt. 796\nTurnershire, OR 50331', 'Dr. Vern Hahn Sr.', 'Guy Eichmann', 'Prof. Hettie Becker', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(478, 'Prof. Aron Leannon', 'keagan.wintheiser@gmail.com', '(352) 334-1535', '275 Melany Camp\nPort Mariannestad, MN 89795', 'Aletha Bauch Jr.', 'Reyes Luettgen', 'Iliana Larson Sr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(479, 'Giovani Abernathy', 'damaris.bradtke@hill.org', '+1.817.567.9028', '484 Wisozk Path Apt. 004\nSouth Mae, GA 99504', 'Dr. Elinor Haag', 'Adam Wolff', 'Lilly Howe', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(480, 'Lilian Mante', 'deckow.karen@yahoo.com', '610-976-0908', '657 Hegmann Ways\nCruickshankburgh, HI 62194-2841', 'Ms. Talia Tromp III', 'Ms. Cecilia Hodkiewicz IV', 'Zula Hermiston PhD', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(481, 'Karli Rempel', 'ora16@kovacek.net', '206.518.4103', '8966 Ed Orchard\nNew Rainahaven, NJ 71483', 'Juanita Gleason', 'Ebony Stamm DDS', 'Frederik Harris', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(482, 'Prof. Kamille O\'Hara Jr.', 'mueller.emie@greenholt.com', '+1-775-729-1731', '7835 Hill Harbors\nCatharineshire, NY 53303', 'Destinee Jakubowski', 'Shaniya Senger', 'Catalina Leffler', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(483, 'Prof. Gaylord O\'Conner MD', 'irma.dibbert@yahoo.com', '(928) 980-6868', '559 Champlin River Suite 987\nWizaburgh, WI 41584-0455', 'Thad Koepp', 'Mireya Kunde DDS', 'Monty Mann Sr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(484, 'Dana Upton', 'ebechtelar@turcotte.com', '309.590.0003', '73003 Lynch Mill Apt. 744\nMonahanport, NY 61719-0310', 'Lacy Wisozk III', 'Max Kuhic', 'Eloisa Roob', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(485, 'Prof. Chloe Oberbrunner PhD', 'harmony08@wiegand.com', '1-484-233-7005', '49083 Homenick Springs Suite 534\nStanville, GA 19133', 'Chaim Schneider V', 'Francisca Stamm PhD', 'Ms. Priscilla Bernier Sr.', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(486, 'Prof. Christa Stiedemann', 'plabadie@hotmail.com', '1-469-744-9523', '63969 Altenwerth Circles Apt. 210\nEast Lempi, NM 10081-7504', 'Rodolfo Cremin MD', 'Carolyn Hammes Sr.', 'Bryon Metz', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(487, 'Bryana Jenkins IV', 'stevie71@welch.com', '+13805101628', '441 Reuben Fields Suite 578\nNew Alizeport, NJ 99685', 'Miss Bert Doyle MD', 'Prof. Cornelius Maggio DDS', 'Mr. Theron Lemke II', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(488, 'Ms. Rosalyn Dietrich', 'aschmitt@hotmail.com', '+1-804-599-7034', '160 Hills Shore Apt. 061\nSouth Kirk, DC 75290', 'Miss Gretchen Klocko', 'Dr. Dario Stamm', 'Mrs. Sadye Sipes I', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(489, 'Rubie Hand', 'ole81@dubuque.net', '+12208561221', '40168 Melvina Corners\nHectormouth, OH 54153-9872', 'Ressie Tillman', 'Miss Kailyn Barrows V', 'Reanna Flatley', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(490, 'Caitlyn Breitenberg', 'violette.reynolds@funk.com', '+1-304-433-9136', '611 Reuben Lodge\nWinifredstad, AL 21381', 'Lowell Rice Sr.', 'Mr. Ephraim Gleason', 'Dr. Jaycee Simonis DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(491, 'Elian Zieme', 'kristina66@koelpin.com', '1-347-643-8107', '76446 Schowalter Hill\nLake Alvertaton, WY 86796', 'Willie Bauch', 'Foster Will', 'Josiah O\'Reilly', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(492, 'Prof. Thurman Schaden', 'elliott18@gulgowski.net', '458-863-8456', '961 Paucek Harbors\nWest Cassandreview, KY 41217-7888', 'Mr. Reed Koelpin IV', 'Pauline Wintheiser', 'Betsy Harvey', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(493, 'Nicolette Witting', 'gustave39@carroll.com', '+14178561328', '494 Bogan Mill Suite 824\nSouth Drewmouth, ND 07722', 'Mr. Jimmie Blick', 'Clement Lebsack', 'Raven Okuneva', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(494, 'Prof. Leta Abbott', 'conn.ozella@gmail.com', '440.513.9421', '3891 Judy Meadows\nDurganbury, RI 99107', 'Onie Gleason III', 'Mrs. Sandra Franecki DDS', 'Prof. Cornell Littel', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(495, 'Otilia Smitham DDS', 'labadie.norval@schneider.com', '+1-201-557-2830', '4723 Breitenberg Drives\nKatrineshire, KY 39383', 'Cristopher Tremblay', 'Cheyenne Romaguera IV', 'Jeanette Turner', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(496, 'Prof. Annabel Johns', 'yesenia.koepp@beatty.com', '+1-682-940-6269', '828 Beer Dam Apt. 746\nLake Kip, IL 95925-1333', 'Mckayla Collins', 'Madilyn Lynch', 'Burnice Moore', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(497, 'Chandler Kunde', 'bgoyette@considine.biz', '+1-430-808-9355', '622 Harvey Dam Apt. 508\nPort Glennie, MD 91586-7168', 'Prof. Edyth Bartell III', 'Nakia Olson', 'Stefan Jenkins V', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(498, 'Juliana Heaney DDS', 'dbailey@medhurst.com', '+1-415-670-1020', '79105 Adela Mills\nBeckerburgh, KS 20099-6463', 'Kimberly Jacobi', 'Casandra Stehr Sr.', 'Flossie Cormier', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(499, 'Prof. Romaine DuBuque IV', 'xlangworth@king.com', '838.380.1519', '54448 Florida Village Suite 668\nWest Marge, KY 20770-9583', 'Alivia Denesik', 'Maria Predovic', 'Mervin Langosh', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(500, 'Kavon Haley IV', 'rudy27@marquardt.com', '(304) 262-6885', '7370 Haley Valleys\nSouth Aniya, NH 64574-3202', 'Prof. Javier Fritsch', 'Bart Carter', 'Alycia Dooley', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(501, 'Stephanie Grimes', 'idella99@kuhic.com', '1-559-549-0426', '693 Joanny Track\nPort Clay, NV 71852', 'Constantin Legros', 'Viva Leffler', 'Mike Gusikowski', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(502, 'Anabelle Cassin', 'kennedy47@erdman.biz', '1-479-408-7148', '41992 Friesen Meadows Suite 393\nBeerside, MD 07432', 'Jeanne Hammes', 'Patsy Ritchie V', 'Nora Dooley DDS', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(503, 'Prof. Abdiel Wintheiser V', 'hyatt.sasha@schultz.com', '+1 (501) 851-0129', '29041 Gertrude Center\nLake Kristofferchester, OH 94047-5667', 'Millie Stoltenberg', 'Jessy Balistreri PhD', 'Lenna Haley', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(504, 'Emely Jacobi', 'annamarie44@halvorson.com', '1-820-818-9089', '45132 Claud Walks Suite 923\nLangoshstad, WA 10629-9495', 'Mr. Laron Gerhold', 'Dr. Nora Armstrong II', 'Logan Wisoky', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(505, 'Orrin West', 'xboehm@gmail.com', '757-305-2223', '151 Rolfson Drives Apt. 894\nArturomouth, AK 12558-4561', 'Mr. Reese Schimmel', 'Cora Boyle', 'Raymundo Krajcik', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(506, 'Vicente Mohr', 'patricia65@howe.com', '+1 (458) 994-6032', '978 Heaney Bypass\nLake Katelyn, RI 75294', 'Robin Brakus', 'Milton Farrell', 'Mr. Brody Ledner DVM', '1', '2022-12-03 04:37:50', '2022-12-03 04:37:50'),
(507, 'ismail', 'ismail@gmail.com', '65745876365722', 'Dhaka', 'Hi', 'Hello', 'bye', '0', '2022-12-04 12:11:25', '2022-12-04 12:11:25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` set('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Morad', 'morad@gmail.com', NULL, '$2y$10$mXsCcqK/g7r7.k1sMU11r.wsPpMP8qx1q4YNXfz5Vss87viXpQzjq', '3', NULL, '2022-12-02 06:13:49', '2022-12-02 06:13:49'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$izxhgzdkJCq3CjvOUTPthONGTLE3lcu0bP17PHm5gfvi1CZmXAbLy', '3', NULL, '2022-12-12 13:26:23', '2022-12-12 13:26:23'),
(3, 'Mosharof', 'mosharof1@gmail.com', NULL, '$2y$10$VcSgpqilAiv69Agb58oVmuzDxij/5i8Q6B1EwTPtl/dp6amov14PS', '3', NULL, '2022-12-12 14:17:27', '2022-12-12 14:17:27'),
(4, 'Afsana', 'afsana@gmail.com', NULL, '$2y$10$eqAFs0KG/qRQAXQqMjgxeeJJj59aDKitAJvWzrKF0Hbr5vzc3kEsq', '1', NULL, '2022-12-12 14:36:10', '2022-12-12 14:36:10'),
(5, 'Yeamin Hossen', 'yeamin@gmail.com', NULL, '$2y$10$B8sI8/V1SQWqBzS42kjQlu7DuL7LydMz0CMMlbFhJbUBGo0RRnQFO', '1', NULL, '2022-12-12 14:36:37', '2022-12-12 14:36:37'),
(6, 'Saimun Islam', 'saimunislam0221@gmail.com', NULL, '$2y$10$82qNDrmLyObfBnBcP9zcduv0KqcHukHNgSCpZAuANKFdLKZBZsPWe', '1', 'AANZKZUvEU62pGiLbMkhBsb5AGteEHxRkZ2tpTdSwoSrDMnts6VCI4k7Z8Qp', '2022-12-12 14:37:13', '2022-12-12 14:37:13'),
(7, 'abdur rahman', 'abdurrahman@gmail.com', NULL, '$2y$10$OgsKIsTTiQZNAvcqEg6iUOeAnOVwSFAEj0p3WyFyD9uA7k/IqPTKu', '1', NULL, '2022-12-12 14:37:50', '2022-12-12 14:37:50'),
(8, 'Mosharof', 'mosharof111@gmail.com', NULL, '$2y$10$rdHO3eeZi9dXnkt2pNz1PujrkgtnbNDxZUDZD3V5TOlYzy968Vlme', '1', NULL, '2022-12-14 10:48:54', '2022-12-14 10:48:54'),
(9, 'mosharof', 'mosharof12@gmail.com', NULL, '$2y$10$GL176gb0CnnBU/7Qw4bOqO7pMkrOtwqZmkI7hHC90UU.JdijhiJPC', '1', NULL, '2022-12-14 12:15:23', '2022-12-14 12:15:23'),
(10, 'Ashikul Hasan', 'ashik@gmail.com', NULL, '$2y$10$32m9q3rtmTA/F2my/tbJI.MSFhoT.Fl4sNQVV4pN/RgaqXs77N/J6', '1', NULL, '2022-12-19 13:31:41', '2022-12-19 13:31:41'),
(11, 'Hridoy', 'hridoy@gmail.com', NULL, '$2y$10$OoEbGw5dvaan.Qzo.8SLLO.BG6WQpCTyLh9lNY3SuQm22tl/hQiCC', '1', NULL, '2022-12-19 14:09:56', '2022-12-19 14:09:56'),
(12, 'Arifrafsana', 'arifnur775@gmail.com', NULL, '$2y$10$1j5z4R9FiDC/ai9Lq4Vpn.NWQhewZx1XLGOzZDJAqbrPJdeCOWP3S', '1', NULL, '2022-12-21 14:31:50', '2022-12-21 14:31:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catagories_name_unique` (`name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `logpaths`
--
ALTER TABLE `logpaths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_catagory_id_foreign` (`catagory_id`),
  ADD KEY `products_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchasedetails_purchase_id_foreign` (`purchase_id`),
  ADD KEY `purchasedetails_product_id_foreign` (`product_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_user_id_foreign` (`user_id`),
  ADD KEY `purchases_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `saledetails`
--
ALTER TABLE `saledetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `saledetails_sale_id_foreign` (`sale_id`),
  ADD KEY `saledetails_product_id_foreign` (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_user_id_foreign` (`user_id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logpaths`
--
ALTER TABLE `logpaths`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saledetails`
--
ALTER TABLE `saledetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_catagory_id_foreign` FOREIGN KEY (`catagory_id`) REFERENCES `catagories` (`id`),
  ADD CONSTRAINT `products_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchasedetails`
--
ALTER TABLE `purchasedetails`
  ADD CONSTRAINT `purchasedetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `purchasedetails_purchase_id_foreign` FOREIGN KEY (`purchase_id`) REFERENCES `purchases` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `purchases_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `saledetails`
--
ALTER TABLE `saledetails`
  ADD CONSTRAINT `saledetails_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `saledetails_sale_id_foreign` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
