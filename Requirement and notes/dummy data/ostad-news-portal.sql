-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 06:59 PM
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
-- Database: `ostad-news-portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Spotlight', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(2, 'Insights', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(3, 'History', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(4, 'Environment', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(6, 'Travel', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(7, 'Health', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(8, 'Economy', '2023-12-29 13:33:17', '2023-12-29 13:33:17'),
(9, 'Art', '2023-12-29 13:33:17', '2023-12-29 13:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `postID` int(11) NOT NULL,
  `descriptions` varchar(1000) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `userID`, `postID`, `descriptions`, `createdAt`, `updatedAt`) VALUES
(6, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2023-12-29 09:33:08', '2023-12-29 09:33:08'),
(29, 1, 1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2024-01-27 14:40:47', '2024-01-27 14:40:47'),
(35, 8, 1, 'hello', '2024-01-29 12:47:37', '2024-01-29 12:47:37'),
(36, 8, 2, 'hello', '2024-01-30 08:30:42', '2024-01-30 08:30:42'),
(37, 8, 2, 'I am the king\n', '2024-01-30 08:39:25', '2024-01-30 08:39:25'),
(38, 8, 2, 'how are you', '2024-01-30 08:39:43', '2024-01-30 08:39:43');

-- --------------------------------------------------------

--
-- Table structure for table `news_list`
--

CREATE TABLE `news_list` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `short_des` varchar(400) NOT NULL,
  `img1` varchar(300) NOT NULL,
  `img2` varchar(300) NOT NULL,
  `img3` varchar(300) NOT NULL,
  `img4` varchar(300) NOT NULL,
  `keywords` varchar(300) NOT NULL,
  `long_des` longtext NOT NULL,
  `type` varchar(200) NOT NULL,
  `catID` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_list`
--

INSERT INTO `news_list` (`id`, `title`, `short_des`, `img1`, `img2`, `img3`, `img4`, `keywords`, `long_des`, `type`, `catID`, `createdAt`, `updatedAt`) VALUES
(1, 'Sample News OSTAD Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<h3>Marayan Tong, Bandarban</h3>\n\n<p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>\n\n<h3>Char Kukri-Mukri, Bhola</h3>\n\n<p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>\n\n<h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>\n\n<p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>\n\n<h3>Rema-Kalenga, Habiganj</h3>\n\n<p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>\n\n<h3>Monpura, Bhola</h3>\n\n<p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>\n\n<h3>Nijhum Dwip, Noakhali</h3>\n\n<p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>\n\n<h3>Kaptai, Rangamati</h3>\n\n<p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>\n', 'Slider', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(2, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Featured', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(3, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(4, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(5, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(6, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(7, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Popular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(8, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Slider', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(9, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(10, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(11, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(12, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(13, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(14, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(15, 'Sample News Headline orders partial embassy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard ', 'https://photo.teamrabbil.com/images/2024/01/01/1.png', 'https://photo.teamrabbil.com/images/2024/01/01/2.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'https://photo.teamrabbil.com/images/2024/01/03/Mask-Group-4.png', 'news,news', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n', 'Regular', 1, '2023-12-29 13:36:22', '2023-12-29 13:36:22'),
(16, 'Displaced Palestinians flee ‘the horror of ongoing bombing', 'The intensity of the bombing campaign is just a terrible reminder for people who fled to the south during the initial weeks of the war in the northern part of Gaza.  ', 'https://www.aljazeera.com/wp-content/uploads/2023/12/Iraq-1703601672.jpg?w=770&resize=770%2C513&quality=80', 'https://www.aljazeera.com/wp-content/uploads/2024/01/KhanYounis3-1706524518.jpg?w=770&resize=770%2C509&quality=80', 'https://www.aljazeera.com/wp-content/uploads/2024/01/INTERACTIVE-Israels-Return-to-Gaza-Conference-map-1706522923.png?w=770&resize=770%2C770&quality=80', 'https://www.aljazeera.com/wp-content/uploads/2023/12/2023-12-12T141314Z_10807163_RC2NV4A29KQN_RTRMADP_3_ISRAEL-PALESTINIANS-JENIN-RAID-1702627188.jpg?w=770&resize=770%2C495&quality=80', 'war, news, palestine', 'The intensity of the bombing campaign is just a terrible reminder for people who fled to the south during the initial weeks of the war in the northern part of Gaza.  We’re looking at large-scale bombings in densely populated areas, more evacuation orders, and mass arrests that have taken place in Khan Younis city.  What is happening in Khan Younis is heart-wrenching right now as people have been under military siege for the past eight days, and the Israeli military is pushing deeper into the western and central parts of the city.  This leaves no other path for people to flee the horror of the ongoing bombing except through security checkpoints set up on the western side of the city. Hundreds of thousands of people have had to go through these, risking being arrested by the Israeli military or taken to unidentified locations.', 'Slider', 8, '2024-01-29 05:03:25', '2024-01-29 05:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` int(11) NOT NULL,
  `long_des` longtext NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `long_des`, `type`) VALUES
(1, '<h3>Marayan Tong, Bandarban</h3>  <p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>  <h3>Char Kukri-Mukri, Bhola</h3>  <p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>  <h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>  <p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>  <h3>Rema-Kalenga, Habiganj</h3>  <p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>  <h3>Monpura, Bhola</h3>  <p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>  <h3>Nijhum Dwip, Noakhali</h3>  <p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>  <h3>Kaptai, Rangamati</h3>  <p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>', 'terms'),
(2, '<h3>Marayan Tong, Bandarban</h3>  <p>Marayan Tong is the name of a hill belonging to the Marinja Range. This hilltop in Bandarban&rsquo;s Alikadam area is extremely popular for camping among the nature lovers. From the peak as far as the eyes can travel, there are only hills covered in lush green. And in the morning, there are faraway hills covered in sheer clouds to be amazed at. It&rsquo;s an extraordinary experience to enjoy sunrise from up there. As soon as the sun rises, the whole valley gets flooded with its golden rays. And as the hour passes away, the natural beauty of the hill keeps changing constantly throughout the day.</p>  <h3>Char Kukri-Mukri, Bhola</h3>  <p>Though its called a char (shoal), Kukri-Mukri is an island actually. This island from Bhola&rsquo;s Char Fashion is located at the confluence of Meghna and Tentulia rivers right on the edge of the Bay of Bengal.Seeing the dense forest and the crowd of mangrove trees in Char Kukri-Mukri, you would get the feeling of being deep inside the Sundarbans.The forest and the surrounding waters easily make you forget the complexity of the urban life. And you can spend hours looking at the star-studded sky in the silence of the night.</p>  <h3>Sonadia Island, Cox&rsquo;s Bazar &nbsp;</h3>  <p>Cox&rsquo;s Bazar sea beach is at the top of traveler&rsquo;s list of favourite destinations. But for people who don&rsquo;t like the crowd of tourists, there is Sonadia sea beach.There&rsquo;s nothing but the sound of the sea in Moheshkhali&rsquo;s Sonadia. The night stay in tent on this beach could be one of the best moments of your life. And, if it&rsquo;s a full moon night nothing can be better than that.Then you can take a walk barefoot on the beach basking in the golden ray of the rising sun. You can also enjoy a bit of hide and seek with the red crabs on the beach during this time. And, you can spend hours without a break swaying on a hammock tied inside the grove of tamarisk (Jhau) trees.</p>  <h3>Rema-Kalenga, Habiganj</h3>  <p>I had read somewhere that forests should be visited at night for its environment and the beauty keeps changing with the depth of night. But, I believe if you want to feel the forest in your heart, you can just arrive in the Rema-Kalenga reserved forest with a tent. A deep silence possesses the forest at night. The orchestra of crickets in the forest keeps chirping relentlessly with full enthusiasm. But that sound gets blended seamlessly with the environment of the forest. The Rema-Kalenga reserved forest is located in Chunarughat upazila of Habiganj.</p>  <h3>Monpura, Bhola</h3>  <p>Monpura is the perfect destination for cycling and camping. This island upazila of Bhola is surrounded by the river Meghna on three sides and by the Bay of Bengal on the other side. Also there&rsquo;s not much hassle to reach Monpura. If you board any Betua or Hatia bound launch from Sadarghat, it will drop you off at Monpura even before the sunrise. One of the significant attractions of this island is its mangrove forest stretched for miles after miles. And the forest is surrounded by rivers on all sides. You can easily spend an amusing night setting up the tent on the banks of the river. Besides, Sakuchia sea beach, Upazila parishad&rsquo;s Pach Dighi, Chowwdhury Fisheries Project and Monpura landing station are the popular tourist sites there.</p>  <h3>Nijhum Dwip, Noakhali</h3>  <p>Nijhum Dwip is located inside the Bay of Bengal on the estuary of Meghna River. This island detached from the mainland of Hatia is a government-announced national park.In the past, spotted deer had been released in this park and they now roam freely there in herds. And in winter, migratory birds arrive in flocks. You can set up the tent near the beach or the forest. Even the forest department can arrange for the tents. If you contact beforehand, you can comfortably spend two nights there in rented tents.</p>  <h3>Kaptai, Rangamati</h3>  <p>The banks of the Karnaphuli river, the banks of the lake or the base of the high hills, no matter wherever you set up the tent in Kaptai it turns into a great camping site in a jiffy. Seeing the beauty of the lake covered in the blanket of fog through the opening of the tent takes you to land of dreams. There isn&rsquo;t the solitude of the forest or the unnecessary hostility of noise there. And that&rsquo;s why many commercial camping sites have mushroomed in Kaptai. Alongside tenting, you can go for a swim or go kayaking in the crystal-clear lake. &nbsp;</p>', 'privacy');

-- --------------------------------------------------------

--
-- Table structure for table `socials`
--

CREATE TABLE `socials` (
  `id` int(11) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `socials`
--

INSERT INTO `socials` (`id`, `facebook`, `youtube`, `twitter`, `linkedin`, `about`, `address`, `createdAt`, `updatedAt`) VALUES
(1, 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', '2024-01-01 10:43:43', '2024-01-01 10:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `createdAt`, `updatedAt`) VALUES
(10, 'a@a.com', '2024-01-07 12:33:34', '2024-01-07 12:33:34'),
(11, 'asdasd!@ascac.o9', '2024-01-07 13:02:45', '2024-01-07 13:02:45'),
(12, 'ooo@sss.com', '2024-01-20 07:18:34', '2024-01-20 07:18:34'),
(13, 'info@rabbil.com', '2024-01-27 23:40:48', '2024-01-27 23:40:48'),
(14, 'engr.rabbil@yahoo.com', '2024-01-27 23:52:34', '2024-01-27 23:52:34'),
(15, 'rabbil@rabbil.com', '2024-01-27 23:55:45', '2024-01-27 23:55:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `otp`, `createdAt`, `updatedAt`) VALUES
(1, 'Rabbil', 'Rupom', 'Engr.Rabbil@yahoo.com', '01785388919', 'abc123', '0', '2023-12-29 07:46:27', '2024-01-27 23:54:52'),
(3, 'Hasan', 'Rabbil', 'Engr.Rabbil2@yahoo.com', '017853888919', '123', '0', '2024-01-03 07:02:16', '2024-01-03 07:02:16'),
(4, 'rrrrr', 'rrrr', 'e@w.com', '123123', '123', '0', '2024-01-03 11:04:42', '2024-01-03 11:04:42'),
(5, 'aaa', 'a', 'a@aa.com', '11111', '123456', '0', '2024-01-20 11:14:51', '2024-01-20 11:14:51'),
(6, 'a', 'a', 'aa', '1', '123', '0', '2024-01-20 11:15:45', '2024-01-20 11:15:45'),
(7, 'Rabbil', 'Hasan', 'mrrabbilhasan@gmail.com', '01701063280', '123456', '0', '2024-01-27 23:53:48', '2024-01-27 23:53:48'),
(8, 'masud', 'khan', 'mk6449248@gmail.com', '1234567890', '345678', '779945', '2024-01-29 06:13:26', '2024-01-29 10:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('4ad1bd75-a63b-4076-b431-9896769e9b3b', '3aa217888cd3825c4098844a369aea2c767864d2d83cd359035540e3fa367a07', '2023-12-29 13:31:16.836', '20231127200511_news_next_database', NULL, NULL, '2023-12-29 13:31:16.413', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_key` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_userID_fkey` (`userID`),
  ADD KEY `comments_postID_fkey` (`postID`);

--
-- Indexes for table `news_list`
--
ALTER TABLE `news_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_list_catID_fkey` (`catID`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscribers_email_key` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_key` (`email`);

--
-- Indexes for table `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `news_list`
--
ALTER TABLE `news_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_postID_fkey` FOREIGN KEY (`postID`) REFERENCES `news_list` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_userID_fkey` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `news_list`
--
ALTER TABLE `news_list`
  ADD CONSTRAINT `news_list_catID_fkey` FOREIGN KEY (`catID`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
