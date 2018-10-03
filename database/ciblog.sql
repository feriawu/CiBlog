-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2018 at 07:48 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `created_at`) VALUES
(1, 0, 'Vacation', '2018-10-02 06:22:52'),
(2, 0, 'Football', '2018-10-02 06:22:56'),
(3, 0, 'Bussiness', '2018-10-02 06:23:02'),
(4, 6, 'News', '2018-10-03 05:39:27');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `email`, `body`, `created_at`) VALUES
(1, 2, 'feri', 'feri@gmail.com', 'nice', '2018-10-02 10:09:53'),
(2, 2, 'Kronos Julius', 'kronos@gmail.com', 'Thanks for the post\r\n', '2018-10-02 10:24:58'),
(3, 1, 'sd', 'asdas@g', 'asd', '2018-10-02 10:37:30'),
(4, 3, 'feri', 'desistrom0@gmail.com', 'anjay', '2018-10-02 12:20:35'),
(5, 3, 'feri', 'kronos@gmail.com', 'test', '2018-10-03 03:13:39'),
(6, 3, 'feri', 'kronos@gmail.com', 'y', '2018-10-03 03:17:58'),
(7, 3, 'feri', 'desistrom0@gmail.com', 'sdfd', '2018-10-03 03:22:10'),
(8, 3, 'kronos', 'kronos@gmail.com', 'asdfsdfsdf', '2018-10-03 03:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`, `created_at`) VALUES
(1, 3, 0, 'Post 1', 'Post-1', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam maximus tempus erat non aliquam. Duis in lectus sollicitudin, suscipit odio non, mattis urna. Vestibulum vel lorem non arcu posuere pharetra. Quisque tempus porttitor est in tincidunt. Vestibulum nec magna elit. Cras vitae eleifend risus, at rutrum urna. Nullam vel vulputate ex. Aliquam interdum, dolor id blandit tincidunt, nibh urna cursus quam, id semper erat orci a eros. Duis pellentesque orci id sagittis molestie. Donec at euismod tortor. Mauris lacus mauris, tincidunt id dolor eget, euismod hendrerit leo. Morbi elementum id enim nec accumsan. Morbi placerat libero sit amet suscipit pharetra. Fusce lorem felis, tempor sed rutrum eget, pulvinar eget arcu. Aliquam erat volutpat.</p>\r\n\r\n<p>Curabitur neque neque, maximus sed leo in, porttitor congue urna. Aliquam sit amet diam sit amet ligula tempus pulvinar vitae in lacus. Pellentesque imperdiet efficitur sem, quis ultrices dolor sollicitudin sit amet. Sed sed justo dui. Cras posuere, ante at vulputate aliquam, tortor turpis vulputate felis, in aliquam magna purus nec leo. Proin a nunc ac tortor accumsan porttitor. Donec eget nibh velit.</p>\r\n', 'noimage.png', '2018-10-02 06:23:46'),
(2, 2, 0, 'Post 2', 'Post-2', '<p>Cras quis maximus nisi. Vestibulum consequat lorem ut gravida pharetra. Donec ut justo ut eros condimentum condimentum. Curabitur fringilla purus nisl, non dignissim tellus facilisis eu. Duis pulvinar ex sed purus bibendum scelerisque. Suspendisse volutpat varius libero, eget congue lorem porttitor in. Integer auctor enim ac consectetur ultrices. Duis eu leo in felis pretium tincidunt. Proin eu enim ac ante ornare venenatis congue eget dolor. Praesent sed sem eu nisl imperdiet lacinia ornare vel nulla. Praesent a elit iaculis, ornare mauris ac, sollicitudin diam. Sed vel tincidunt metus. Vivamus at purus luctus leo pharetra facilisis id rhoncus orci.</p>\r\n\r\n<p>Aenean euismod felis orci. Pellentesque est justo, placerat ac venenatis vitae, mattis ac ex. Phasellus condimentum sapien orci, sit amet porta elit fringilla nec. Nullam in porttitor odio. Donec et neque eget ex sagittis aliquam sed sit amet tellus. Nam sed eros at dui vestibulum fermentum. Phasellus feugiat leo lorem, nec feugiat ante posuere ac. Sed feugiat urna ut est ullamcorper venenatis. Mauris vitae sapien porta libero mattis pharetra. Curabitur elementum placerat auctor. Vestibulum enim libero, lobortis sed molestie quis, rutrum vel nulla. Quisque non pulvinar tellus, et accumsan orci. Mauris augue magna, sodales vel nunc a, lobortis congue lorem. Pellentesque sit amet tristique felis.</p>\r\n', 'noimage.png', '2018-10-02 06:24:33'),
(3, 3, 0, 'Ditemukan Sebuah bayi di dalam perut istri', 'Ditemukan-Sebuah-bayi-di-dalam-perut-istri', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum est eros, mattis non congue vel, congue eget dolor. Cras quis tincidunt nisl, vitae efficitur augue. Maecenas ut accumsan diam. Suspendisse et tortor sapien. Cras quis gravida arcu. Aliquam mattis venenatis est sed gravida. Donec egestas facilisis dolor, volutpat lacinia enim maximus in. Quisque porta eros ut purus tincidunt tincidunt. Sed ut libero vitae tortor sodales blandit. In diam lectus, condimentum nec quam scelerisque, finibus scelerisque arcu. Vestibulum eget leo sed lorem tristique commodo. Pellentesque euismod dui tincidunt cursus finibus. Nam vehicula odio eu accumsan pretium.</p>\r\n\r\n<p>Integer egestas elit at sapien dictum volutpat. Sed pretium mi ut sagittis feugiat. Cras enim lacus, pretium eget tempor eu, fermentum ac dolor. Quisque lacinia erat eget est posuere consequat. Ut et metus id nibh dictum luctus. Suspendisse elit libero, ultrices quis hendrerit in, congue sit amet nunc. Praesent a rutrum erat. In a ipsum et ante tincidunt rhoncus. Morbi mollis ultrices tortor, pharetra tempor justo euismod vel. Mauris eget mauris ac justo interdum rutrum. Phasellus sed ipsum sit amet metus ornare cursus. Phasellus porta dapibus ultricies.</p>\r\n\r\n<p>Cras sit amet gravida ligula. Proin quis sem nisi. Curabitur nulla tellus, vehicula a nulla vel, porta gravida purus. Aenean scelerisque nec dolor vitae feugiat. Ut quis pellentesque sem, id finibus enim. Donec egestas cursus volutpat. Sed diam ex, dictum vel velit in, porta luctus turpis. Cras eu nisl lorem. Nulla quis bibendum sem, quis lobortis lorem. Maecenas fringilla, orci vitae egestas gravida, odio turpis accumsan justo, quis ullamcorper sem metus at nisi. Fusce sapien tortor, fermentum et maximus a, tincidunt vitae nunc. Duis suscipit lorem arcu, et ultrices nunc efficitur ut. Quisque aliquet rutrum felis eget suscipit. Nunc id tempor dolor. Morbi at sodales metus.</p>\r\n\r\n<p>Ut viverra ante sed elementum varius. Sed nec nisl tristique, tincidunt tortor vitae, eleifend diam. Donec euismod consectetur ultricies. Curabitur ante lectus, semper sed risus eu, convallis varius mauris. In id accumsan mi, malesuada pellentesque dolor. Suspendisse non tortor nec libero ornare consectetur. Proin ut lacus sed massa mattis varius quis vitae velit.</p>\r\n\r\n<p>Etiam id malesuada turpis. Ut velit risus, dapibus a leo ut, imperdiet maximus ligula. Etiam id faucibus quam. Pellentesque fringilla non magna ut posuere. Nam at nulla efficitur, convallis leo in, mattis quam. Donec semper, ipsum id tincidunt eleifend, elit magna tincidunt leo, ac euismod ligula tellus eu augue. Duis velit mi, laoreet in neque in, mattis tempor magna. Nunc aliquet non est nec blandit. Suspendisse ut tempus ipsum. Suspendisse id purus ut nunc pellentesque rutrum luctus lobortis nulla. Suspendisse nec vulputate dui, a sodales velit. Vivamus tincidunt facilisis neque sit amet accumsan. Sed tristique auctor felis vel convallis. Integer non lacus ac elit venenatis tristique vitae id massa.</p>\r\n', 'web_globe_network-512.png', '2018-10-02 11:00:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `zipcode`, `email`, `username`, `password`, `register_date`) VALUES
(5, 'Kronos Julius', '696969', 'kronos@gmail.com', 'julius', '30e6d8432ce54710f9c09f305e7b9829', '2018-10-02 11:57:22'),
(6, 'feri', '66666', 'feri@gmail.com', 'feri', '4c850dbd4128e75d16f407a9188e2aab', '2018-10-03 05:39:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
