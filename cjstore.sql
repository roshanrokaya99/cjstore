-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 10:53 AM
-- Server version: 10.4.11-MariaDB
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
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(15, 9, 3, 1),
(28, 18, 2, 1),
(29, 18, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Fruits', 'Fruits'),
(2, 'Vegetables', 'Vegetables'),
(3, 'Stationary', 'Stationary'),
(4, 'Drinks', 'Drinks'),
(5, 'Meat', 'meats'),
(6, 'Dairy', 'Dairy'),
(7, 'Confectionery', 'Chocolates'),
(12, 'Bread', 'Bread');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(1, 5, 'Australian Fresh Beef', '<p> Fresh Beef from ABC company. Beef is vary popular in Australia. Very Nice. </p>\r\n', 'Beef-Aussie', 9.99, 'product-1.jpg', '2020-03-09', 2),
(2, 1, 'Banana - Fresh World', '<p>A banana is an elongated, edible fruit – botanically a berry – produced by several kinds of large herbaceous flowering plants in the genus Musa. In some countries, bananas used for cooking may be called \"plantains\", distinguishing them from dessert bananas.</p>\r\n', 'Banana', 4.99, 'banana.jpg', '2020-06-03', 1),
(3, 1, 'Watermelon -  Fresh World', '<p>Watermelon is a plant species in the family Cucurbitaceae, a vine-like flowering plant originally domesticated in West Africa. It is a highly cultivated fruit worldwide, having more than 1000 varieties. Watermelon is a scrambling and trailing vine in the flowering plant family Cucurbitaceae.</p>', 'Watermelon', 20.99, 'watermelon.jpg', '2020-05-31', 1),
(4, 4, 'Mother - Energy Drink - 100ml', '<p>Mother is an energy drink marketed to Australians and New Zealanders by Monster Beverage Corporation. Introduced in late 2006 after Coca-Cola\'s failed attempt to purchase Red Bull, it competes with the two leading energy drinks on the market, V and Red Bull, in the $151 million industry.</p>', 'Mother-sugar ', 4.99, 'mother.jpg', '2020-03-10', 3),
(5, 3, 'Scissor - Stationary Inc.', '<p>Scissors are hand-operated shearing tools. A pair of scissors consists of a pair of metal blades pivoted so that the sharpened edges slide against each other when the handles opposite to the pivot are closed.</p>', 'Scissor-from-Officeworks', 5.99, 'scissor.jpg', '2020-04-09', 3),
(6, 4, 'Schweppes Lemonade(10) - 50 ml', '<p>Schweppes is a Swiss beverage brand that is sold around the world. It includes a variety of lemonade, carbonated waters and ginger ales. Schweppes is a Swiss beverage brand that is sold around the world. It includes a variety of lemonade, carbonated waters and ginger ales. Schweppes is a Swiss beverage brand that is sold around the world. It includes a variety of lemonade, carbonated waters and ginger ales. </p>', 'schweppes-10pack', 10.99, 'schweppes.jpg', '2020-03-20', 5),
(7, 4, 'Monster (100ml) - Energy Drink', '<p>Monster Energy is an energy drink that was introduced by Hansen Natural Company in April of 2002. There are 34 different drinks under the Monster brand in North America, including its core Monster Energy line, Java Monster, Extra Strength, Import, Rehab and Muscle Monster.Monster Energy is an energy drink that was introduced by Hansen Natural Company in April of 2002. There are 34 different drinks under the Monster brand in North America, including its core Monster Energy line, Java Monster, Extra Strength, Import, Rehab and Muscle Monster.Monster Energy is an energy drink that was introduced by Hansen Natural Company in April of 2002. There are 34 different drinks under the Monster brand in North America, including its core Monster Energy line, Java Monster, Extra Strength, Import, Rehab and Muscle Monster.</p>', 'monster-100ml', 619, 'monster.jpg', '2020-05-31', 2),
(8, 3, 'Calculator - Officework', '<p>An electronic calculator is typically a portable electronic device used to perform calculations, ranging from basic arithmetic to complex mathematics. The first solid-state electronic calculator was created in the early 1960s.An electronic calculator is typically a portable electronic device used to perform calculations, ranging from basic arithmetic to complex mathematics. The first solid-state electronic calculator was created in the early 1960s.An electronic calculator is typically a portable electronic device used to perform calculations, ranging from basic arithmetic to complex mathematics. The first solid-state electronic calculator was created in the early 1960s.</p>', 'calculator', 22.99, 'calculator.jpg', '2020-05-31', 1),
(9, 4, 'V - Energy Drink', '<p>Australia\'s favourite energy source since \'97! V combines guarana, caffeine and vitamins to help people get more out of life today.Australia\'s favourite energy source since \'97! V combines guarana, caffeine and vitamins to help people get more out of life today.Australia\'s favourite energy source since \'97! V combines guarana, caffeine and vitamins to help people get more out of life today.Australia\'s favourite energy source since \'97! V combines guarana, caffeine and vitamins to help people get more out of life today.</p>', 'v-energy-drink', 4.99, 'vdrink.jpg', '2020-03-20', 10),
(10, 5, 'Burger - CJ\'s Special Burger', '<p>Now burgers are everywhere. They\'re on cafe menus, at the bar in fine diners, and in just about every second food truck that\'s ever rolled onto a Sydney street.Now burgers are everywhere. They\'re on cafe menus, at the bar in fine diners, and in just about every second food truck that\'s ever rolled onto a Sydney street.Now burgers are everywhere. They\'re on cafe menus, at the bar in fine diners, and in just about every second food truck that\'s ever rolled onto a Sydney street.</p>', 'cj\'s-burger', 4.99, 'burger.jpg', '2020-04-10', 20),
(11, 1, 'Apple - Farmer\'s Fresh', '<p>Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services. </p>', 'apple-farmers-fresh', 7.99, 'apple.jpg', '2020-06-03', 1),
(12, 3, 'Papermate - Pen (3 Pcs)', '<p>Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.</p>', 'papermate-pen', 5.99, 'papermatepen.jpg', '2020-04-12', 3),
(13, 3, 'Black Marker Pen', '<p>Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.Pens. From ballpoint and executive pens to fountain and gel pens, you\'re sure to find a pen that suits your needs at Officeworks.</p>', 'black-marker-pen', 5.99, 'marker.jpg', '2020-05-25', 1),
(14, 5, 'CJ\'s Special Chicken', '<p>It\'s the little things that make us feel normal. Which is why KFC has been working so hard to keep our kitchens open, no matter what happens with COVID-19.It\'s the little things that make us feel normal. Which is why KFC has been working so hard to keep our kitchens open, no matter what happens with COVID-19.It\'s the little things that make us feel normal. Which is why KFC has been working so hard to keep our kitchens open, no matter what happens with COVID-19.</p>', 'special-chicken', 4.99, 'chicken.jpg', '2020-03-10', 13),
(15, 4, 'Tropicana Orange Juice (1L)', '<p>Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.</p>\r\n', 'tropicana-orange-juice', 22.99, 'orange-juice.jpg', '2020-04-09', 1),
(16, 2, 'Powder', '<p>Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.Orange juice is a liquid extract of the orange tree fruit, produced by squeezing or reaming oranges. It comes in several different varieties, including blood orange, navel oranges, valencia orange, clementine, and tangerine.</p>', 'powder-juice', 8.99, 'powder.jpg', '2020-05-31', 1),
(17, 2, 'Potato (5kg)', '<p>The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.<p>\r\n<p>The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.</p>', 'potato', 4.99, 'potato.jpg', '2020-05-31', 2),
(18, 2, 'Pumpkin - Farmer\'s Fresh', '<p>The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.</p>\r\n', 'pumpkin-farmer-fresh', 10.99, 'pumpkin.jpg', '2020-06-01', 1),
(19, 2, 'Beetroot - Select Fresh', '<p>The beetroot is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.</p>\r\n', 'beetroot-select-fresh', 9.99, 'beetroot.jpg', '2020-05-31', 1),
(20, 2, 'Cos Lettuce - Select Fresh', '<p>The potato is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.</p>', 'Cos-Lettuce', 3.99, 'lettuce.jpg', '2020-05-27', 1),
(27, 1, 'Mango - Select Fresh', '<p>The Mango is a root vegetable native to the Americas, a starchy tuber of the plant Solanum tuberosum, and the plant itself, a perennial in the family Solanaceae. Wild potato species, originating in modern day Peru, can be found throughout the Americas, from the United States to southern Chile.</p>\r\n\r\n\r\n\r\n', 'mango-select-fresh', 3.99, 'mango.jpg', '2020-02-09', 9),
(28, 4, 'Full Cream Milk - Coles', '<p>Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.</p>', 'full-cream-milk', 2.99, 'milk.jpg', '2020-05-28', 1),
(29, 4, 'Lite-Milk', '<p>Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.Shop online for Woolworths great range of Milk. Delivered straight to your door or Pick up from your local store.</p>', 'milk-lite', 2.99, 'milk.jpg', '2020-05-31', 2),
(30, 7, 'arnott', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'biscuit', 5.99, 'arnott.jpg', '2020-04-20', 3),
(31, 7, 'Cocunut', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'chocolate-cocunut', 4.99, 'cocunut.jpg', '2020-04-20', 3),
(32, 7, 'Dairy Milk', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'chocolate-dairy-milk', 3.99, 'dairymilk.jpg', '2020-04-20', 3),
(33, 7, 'Milky Bar Chocolate', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'chocolate-milky-bar', 3.99, 'milkybar.jpg', '2020-04-20', 3),
(34, 7, 'Snickers', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'chocolate-snickers', 5.99, 'snickers.jpg', '2020-04-20', 3),
(35, 6, 'Full Cream Dairy Farmers', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'milk-full-cream', 5.99, 'fullcream.jpg', '2020-04-20', 3),
(36, 6, 'Soy Milk Dairy Farmers', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'milk-soy-cream', 4.99, 'soy.jpg', '2020-04-20', 3),
(37, 6, 'Skim Milk Dairy Farmers', '<p>This is a very popular biscuit in Australia and is available in many flavours. \r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours\r\nThis is a very popular biscuit in Australia and is available in many flavours</p>', 'milk-skim', 3.99, 'skimmilk.jpg', '2020-04-20', 3),
(40, 8, 'White Bread', '<p>This is a very popular bread in Australia and is available in many flavours. \r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours</p>', 'bread-helgas', 4.99, 'bread1.jpg', '2020-04-21', 3),
(42, 12, 'White', '<p>This is a very popular bread in Australia and is available in many flavours. \r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours\r\nThis is a very popular Bread in Australia and is available in many flavours</p>', 'bread-helgas', 4.99, 'bread1.jpg', '2020-04-21', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$zfP.myjNK5JaeyYuwv7YUuj6om.Z8vjgbYrT4LVe/tihqSwhH/t6m', 1, 'Roshan', 'Rokaya', '', '', 'IMG_20171105_075514.jpg', 1, '', '', '2018-05-01'),
(13, 'jisan@user.com', '$2y$10$fP6jGNmWlvYUOmIjbpfRHu0KbkbQmy.OA4X6Th.zX4TKneF9ySGMu', 0, 'Jisan', 'Rahman', '', '', '', 1, '', '', '2020-05-26'),
(16, 'roshan@user.com', '$2y$10$xKVjr22lJklE8sOzWU.0cebPeOJLeoXs8TB7fkA7mdHAxw4GNnvW6', 0, 'Roshan', 'Rokaya', '', '', '', 1, '', '', '2020-05-26'),
(18, 'parth@user.com', '$2y$10$PoWKBKlWMGyzWe.Jd8np3O7.0gfqzLlD7j3tdZLRW265bUnLNfCQ6', 0, 'Parth', 'Mehta', '', '', '', 1, '', '', '2020-06-03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
