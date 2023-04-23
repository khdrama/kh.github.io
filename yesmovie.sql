

	SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



--
-- Estrutura da tabela `activity`
--

CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `user_data` text NOT NULL,
  `target_data` text NOT NULL,
  `target_type` tinyint(4) NOT NULL,
  `event_date` datetime NOT NULL,
  `event_type` tinyint(4) NOT NULL,
  `event_comment` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `activity`
--

INSERT INTO `activity` (`id`, `user_id`, `target_id`, `user_data`, `target_data`, `target_type`, `event_date`, `event_type`, `event_comment`) VALUES
(310, 1, 377, '{\"id\":\"1\",\"username\":\"Admin\"}', '{\"id\":\"377\",\"show-title\":\"Blue Planet II\",\"season\":\"1\",\"episode\":\"1\",\"perma\":\"blue-planet-ii\",\"desc\":\"\",\"thumb\":\"ethumb_3c664269eace8d9df2c15b630332fff5.jpg\"}', 3, '2019-10-21 19:24:00', 6, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogger_feeds`
--

CREATE TABLE `blogger_feeds` (
  `id` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `language` varchar(2) NOT NULL,
  `frequency` int(11) NOT NULL,
  `last_checked` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogger_posts`
--

CREATE TABLE `blogger_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `perma` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `thumbnail` varchar(100) NOT NULL,
  `created` datetime NOT NULL,
  `language` varchar(3) NOT NULL,
  `original_url` varchar(500) NOT NULL,
  `views` bigint(222) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `blogger_posts`
--

INSERT INTO `blogger_posts` (`id`, `title`, `perma`, `content`, `thumbnail`, `created`, `language`, `original_url`, `views`) VALUES
(2, 'News', 'news', '<p style=\"text-align: center;\"><iframe src=\"//www.youtube.com/embed/5tq2lxf47W0\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 'blogger_43b64614e75da159cbadda9b5013338e.jpg', '2017-05-31 18:28:46', '', '', 0),
(5, 'Ivan Torrent - Human Legacy (Beautiful Orchestral)', 'ivan-torrent-human-legacy-beautiful-orchestral', '<p style=\"text-align: center;\"><iframe src=\"//www.youtube.com/embed/qD8OnPC1fLI\" width=\"560\" height=\"314\" allowfullscreen=\"allowfullscreen\"></iframe></p>', 'blogger_84fad80346a982798766668c5a284e5d.jpg', '2017-06-30 21:13:35', '', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogger_post_tags`
--

CREATE TABLE `blogger_post_tags` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `blogger_tags`
--

CREATE TABLE `blogger_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `perma` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `blogger_tags`
--

INSERT INTO `blogger_tags` (`id`, `tag`, `perma`) VALUES
(9, 'tag1', 'tag1'),
(10, 'tag2', 'tag2'),
(11, 'tag3', 'tag3'),
(12, 'Array', 'array');

-- --------------------------------------------------------

--
-- Estrutura da tabela `brokenlinks_movie`
--

CREATE TABLE `brokenlinks_movie` (
  `link` text NOT NULL,
  `embed` text NOT NULL,
  `quality` char(3) NOT NULL COMMENT 'DVD',
  `lang` varchar(20) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `other_tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `brokenlinks_tv`
--

CREATE TABLE `brokenlinks_tv` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `embed` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `weight` int(11) NOT NULL,
  `fmovie` text NOT NULL,
  `download` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `broken_episodes`
--

CREATE TABLE `broken_episodes` (
  `id` int(11) NOT NULL,
  `episodeid` int(11) NOT NULL,
  `reportdate` datetime NOT NULL,
  `problem` varchar(255) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `broken_movies`
--

CREATE TABLE `broken_movies` (
  `id` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  `reportdate` datetime NOT NULL,
  `problem` varchar(255) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_agent` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `broken_movies`
--

INSERT INTO `broken_movies` (`id`, `movieid`, `reportdate`, `problem`, `ip`, `user_id`, `user_agent`) VALUES
(2, 2160, '2017-06-01 20:10:23', 'fghfghfgh', '::1', 0, 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/58.0.3029.110 Safari/537.36');

-- --------------------------------------------------------

--
-- Estrutura da tabela `comments`
--

CREATE TABLE `comments` (
  `id` int(150) NOT NULL,
  `user_id` varchar(350) NOT NULL,
  `target_id` varchar(350) NOT NULL,
  `date_added` varchar(350) DEFAULT NULL,
  `type` varchar(255) NOT NULL COMMENT 'NOT NULL,',
  `comment` varchar(255) NOT NULL,
  `approved` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='500';

-- --------------------------------------------------------

--
-- Estrutura da tabela `embeds`
--

CREATE TABLE `embeds` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `embed` text NOT NULL,
  `link` varchar(255) NOT NULL,
  `lang` varchar(20) NOT NULL,
  `weight` int(11) NOT NULL,
  `fmovie` text NOT NULL,
  `download` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estrutura da tabela `episodes`
--

CREATE TABLE `episodes` (
  `id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL,
  `season` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `embed` text NOT NULL,
  `date_added` datetime NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `views` bigint(20) NOT NULL,
  `checked` tinyint(4) NOT NULL,
  `meta` text NOT NULL,
  `download` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estrutura da tabela `friends`
--

CREATE TABLE `friends` (
  `id` int(11) NOT NULL,
  `user1` int(11) NOT NULL,
  `user2` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `host_blocker`
--

CREATE TABLE `host_blocker` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `links` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estrutura da tabela `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` tinyint(4) NOT NULL,
  `comment` varchar(500) NOT NULL,
  `vote` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estrutura da tabela `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `perma` varchar(30) NOT NULL,
  `title` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modules`
--

INSERT INTO `modules` (`id`, `perma`, `title`, `status`) VALUES
(1, 'tv_shows', 'TV shows', 1),
(2, 'movies', 'Movies', 1),
(7, 'submit_links', 'Submit links', 1),
(6, 'requests', 'Requests', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL,
  `thumb` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `title` varchar(200) NOT NULL,
  `perma` varchar(50) NOT NULL,
  `embed` text NOT NULL,
  `views` bigint(20) NOT NULL,
  `imdb_id` varchar(30) NOT NULL,
  `imdb_rating` float NOT NULL,
  `date_added` datetime NOT NULL,
  `year` smallint(4) NOT NULL,
  `meta` text NOT NULL,
  `moviequality` varchar(22) NOT NULL DEFAULT 'DVD',
  `autoembeds` int(1) NOT NULL,
  `fanart` varchar(255) NOT NULL,
  `hindifeatured` tinyint(4) NOT NULL,
  `other_tag` text NOT NULL,
  `quality` varchar(3) NOT NULL DEFAULT 'DVD',
  `brtitle` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movies`
--

INSERT INTO `movies` (`id`, `featured`, `thumb`, `description`, `title`, `perma`, `embed`, `views`, `imdb_id`, `imdb_rating`, `date_added`, `year`, `meta`, `moviequality`, `autoembeds`, `fanart`, `hindifeatured`, `other_tag`, `quality`, `brtitle`) VALUES
(3104, 0, 'http://image.tmdb.org/t/p/original//lHV8HHlhwNup2VbpiACtlKzaGIQ.jpg', '{\"en\":\"When Ellen, the matriarch of the Graham family, passes away, her daughter\\u2019s family begins to unravel cryptic and increasingly terrifying secrets about their ancestry.\"}', '{\"en\":\"Hereditary\"}', 'hereditary-2005', '', 18, '493922', 7, '2019-07-09 05:07:20', 0, '{\"year\":\"2005\",\"duration\":\"127\",\"content\":\"PG-13\",\"published\":\"2018-06-07\",\"stars\":[\"Victoria Cardi\\u00e9l\",\"Franco del Puerto\",\"Alessandro Gazul\",\"Ra\\u00fal Jackson\",\"Ella Mid\\u00f3n\",\"Emilia Nieve\",\"Joaqu\\u00edn Manzanera\",\"Carla Pizzorno\",\"Santiago Nogaredo\"],\"countries\":[\"United States of America\"],\"keywords\":[\"secret\",\"funeral\",\"daughter\",\"supernatural\",\"possession\",\"dysfunctional family\",\"decapitation\",\"ants\",\"demon\",\"attic\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3105, 0, 'http://image.tmdb.org/t/p/original//9zDwvsISU8bR15R2yN3kh1lfqve.jpg', '{\"en\":\"Against his father Odin\'s will, The Mighty Thor - a powerful but arrogant warrior god - recklessly reignites an ancient war. Thor is cast down to Earth and forced to live among humans as punishment. Once here, Thor learns what it takes to be a true hero when the most dangerous villain of his world sends the darkest forces of Asgard to invade Earth.\"}', '{\"en\":\"Thor\"}', 'thor-2004', '', 13, '10195', 6.7, '2019-07-09 05:07:59', 0, '{\"year\":\"2004\",\"director\":\"Shimit Amin\",\"duration\":\"115\",\"content\":\"PG-13\",\"published\":\"2011-04-21\",\"stars\":[\"Nana Patekar\",\"Yashpal Sharma\",\"Prasad Purandhare\",\"Nakul Vaid\",\"Kunal Vijaykar\",\"Jeeva\",\"Mohan Agashe\",\"Revathi\",\"Hrishitaa Bhatt\",\"Ravi Kale\"],\"countries\":[\"United States of America\"],\"keywords\":[\"new mexico\",\"banishment\",\"superhero\",\"based on comic\",\"redemption\",\"norse mythology\",\"aftercreditsstinger\",\"marvel cinematic universe\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3106, 0, 'http://image.tmdb.org/t/p/original//2EUAUIu5lHFlkj5FRryohlH6CRO.jpg', '{\"en\":\"A group of scientists in San Francisco struggle to stay alive in the aftermath of a plague that is wiping out humanity, while Caesar tries to maintain dominance over his community of intelligent apes.\"}', '{\"en\":\"Dawn of the Planet of the Apes\"}', 'dawn-of-the-planet-of-the-apes-1963', '', 22, '119450', 7.3, '2019-07-09 05:08:21', 0, '{\"year\":\"1963\",\"director\":\"Johan van der Keuken\",\"duration\":\"130\",\"content\":\"PG-13\",\"published\":\"2014-06-26\",\"stars\":[\"Nana Patekar\",\"Yashpal Sharma\",\"Prasad Purandhare\",\"Nakul Vaid\",\"Kunal Vijaykar\",\"Jeeva\",\"Mohan Agashe\",\"Revathi\",\"Hrishitaa Bhatt\",\"Ravi Kale\"],\"countries\":[\"United States of America\"],\"keywords\":[\"leader\",\"colony\",\"post-apocalyptic\",\"dystopia\",\"animal attack\",\"forest\",\"sequel\",\"woods\",\"ape\",\"scientist\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3107, 0, 'http://image.tmdb.org/t/p/original//4PiiNGXj1KENTmCBHeN6Mskj2Fq.jpg', '{\"en\":\"After his career is destroyed, a brilliant but arrogant surgeon gets a new lease on life when a sorcerer takes him under her wing and trains him to defend the world against evil.\"}', '{\"en\":\"Doctor Strange\"}', 'doctor-strange-1984', '', 40, '284052', 7.4, '2019-07-09 05:08:59', 0, '{\"year\":\"1984\",\"director\":\"Deni Cavalcanti\",\"duration\":\"115\",\"content\":\"PG-13\",\"published\":\"2016-10-25\",\"stars\":[\"S\\u00e9rgio Reis\",\"Norma Bengell\",\"T\\u00e1ssia Camargo\",\"Solange Theodoro\",\"Jofre Soares\",\"Walter Stuart\",\"Francisco Di Franco\",\"Z\\u00e9 Coqueiro\",\"Eduardo Abbas\",\"Jair Talarico\"],\"countries\":[\"United States of America\"],\"keywords\":[\"magic\",\"time\",\"training\",\"superhero\",\"based on comic\",\"sorcerer\",\"doctor\",\"neurosurgeon\",\"wizard\",\"aftercreditsstinger\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3108, 0, 'http://image.tmdb.org/t/p/original//fxHchovLxOnH65Eel3fAHr9i4Qi.jpg', '{\"en\":\"A passionate love story set against a backdrop of sexual freedom, loosely based on the relationship between 19th century authors Pierre Lo\\u00fcys and Marie de R\\u00e9gnier\"}', '{\"en\":\"Curiosa\"}', 'curiosa-1984', '', 11, '487616', 7.3, '2019-07-09 05:09:51', 0, '{\"year\":\"1984\",\"director\":\"Deni Cavalcanti\",\"duration\":\"115\",\"content\":\"PG-13\",\"published\":\"2019-04-03\",\"stars\":[\"S\\u00e9rgio Reis\",\"Norma Bengell\",\"T\\u00e1ssia Camargo\",\"Solange Theodoro\",\"Jofre Soares\",\"Walter Stuart\",\"Francisco Di Franco\",\"Z\\u00e9 Coqueiro\",\"Eduardo Abbas\",\"Jair Talarico\"],\"countries\":[\"France\"],\"keywords\":[\"magic\",\"time\",\"training\",\"superhero\",\"based on comic\",\"sorcerer\",\"doctor\",\"neurosurgeon\",\"wizard\",\"aftercreditsstinger\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3109, 0, 'http://image.tmdb.org/t/p/original//klazQbxk3yfuZ8JcfO9jdKOZQJ7.jpg', '{\"en\":\"Earl Stone, a man in his 80s, is broke, alone, and facing foreclosure of his business when he is offered a job that simply requires him to drive. Easy enough, but, unbeknownst to Earl, he\\u2019s just signed on as a drug courier for a Mexican cartel. He does so well that his cargo increases exponentially, and Earl hit the radar of hard-charging DEA agent Colin Bates.\"}', '{\"en\":\"The Mule\"}', 'the-mule-1984', '', 14, '504172', 6.5, '2019-07-09 05:10:17', 0, '{\"year\":\"1984\",\"director\":\"Deni Cavalcanti\",\"duration\":\"117\",\"content\":\"PG-13\",\"published\":\"2018-12-14\",\"stars\":[\"S\\u00e9rgio Reis\",\"Norma Bengell\",\"T\\u00e1ssia Camargo\",\"Solange Theodoro\",\"Jofre Soares\",\"Walter Stuart\",\"Francisco Di Franco\",\"Z\\u00e9 Coqueiro\",\"Eduardo Abbas\",\"Jair Talarico\"],\"countries\":[\"Canada\",\"United States of America\"],\"keywords\":[\"mexico\",\"drug crime\",\"drug mule\",\"based on a true story\",\"drug cartel\",\"dea agent\",\"korean war veteran\",\"based on magazine, newspaper or article\",\"2010s\",\"2000s\"]}', 'DVD', 0, '', 0, '', 'DVD', ''),
(3110, 0, 'http://image.tmdb.org/t/p/original//imekS7f1OuHyUP2LAiTEM0zBzUz.jpg', '{\"en\":\"An Amazon princess comes to the world of Man in the grips of the First World War to confront the forces of evil and bring an end to human conflict.\"}', '{\"en\":\"Wonder Woman\"}', 'wonder-woman-1984', '', 55, '297762', 7.3, '2019-07-09 05:10:50', 0, '{\"year\":\"1984\",\"director\":\"Michael Kampa\",\"duration\":\"141\",\"content\":\"PG-13\",\"published\":\"2017-05-30\",\"stars\":[\"S\\u00e9rgio Reis\",\"Norma Bengell\",\"T\\u00e1ssia Camargo\",\"Solange Theodoro\",\"Jofre Soares\",\"Walter Stuart\",\"Francisco Di Franco\",\"Z\\u00e9 Coqueiro\",\"Eduardo Abbas\",\"Jair Talarico\"],\"countries\":[\"United States of America\"],\"keywords\":[\"dc comics\",\"hero\",\"greek mythology\",\"island\",\"feminism\",\"empowerment\",\"world war i\",\"strong woman\",\"superhero\",\"based on comic\"]}', 'DVD', 0, '', 0, '', 'DVD', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movie_embeds`
--

CREATE TABLE `movie_embeds` (
  `link` text NOT NULL,
  `embed` text NOT NULL,
  `quality` char(3) NOT NULL COMMENT 'DVD',
  `lang` varchar(20) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `other_tag` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movie_embeds`
--

INSERT INTO `movie_embeds` (`link`, `embed`, `quality`, `lang`, `movie_id`, `id`, `weight`, `other_tag`) VALUES
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3084, 3568, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3083, 3567, 0, ''),
('https://www.youtube.com/watch?v=m1WLnGT_Hao', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/m1WLnGT_Hao\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3070, 3554, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3071, 3555, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3072, 3556, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3073, 3557, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3074, 3558, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3075, 3559, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3076, 3560, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3077, 3561, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3078, 3562, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3079, 3563, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3080, 3564, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3081, 3565, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3082, 3566, 0, ''),
('https://www.youtube.com/watch?v=ZSvVvtVhkTo', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/ZSvVvtVhkTo\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3085, 3569, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3104, 3588, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3105, 3589, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3106, 3590, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3107, 3591, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3108, 3592, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3109, 3593, 0, ''),
('https://www.youtube.com/watch?v=r6gzEhBgpdw', '<IFRAME style=\"z-index:9999; padding:0; margin:-3px;\" SRC=\"https://www.youtube.com/embed/r6gzEhBgpdw\"  WIDTH=900 HEIGHT=500   FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO  allowfullscreen webkitallowfullscreen=\"true\" mozallowfullscreen=\"true\"></IFRAME>', '', 'ENG', 3110, 3594, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movie_ratings`
--

CREATE TABLE `movie_ratings` (
  `id` int(11) NOT NULL,
  `movieid` int(11) NOT NULL,
  `rating` float NOT NULL,
  `ip` varchar(30) NOT NULL,
  `ratingdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `movie_tags`
--

CREATE TABLE `movie_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `perma` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movie_tags`
--

INSERT INTO `movie_tags` (`id`, `tag`, `perma`) VALUES
(36, '{\"en\":\"HD-Songs\"}', 'hd-songs'),
(35, '{\"en\":\"Other-Movies\"}', 'other-movies'),
(34, '{\"en\":\"Pakistani-Movies\"}', 'pakistani-movies'),
(33, '{\"en\":\"Hindi-Dubbed\"}', 'hindi-dubbed'),
(32, '{\"en\":\"Adult-Movies\"}', 'adult-movies'),
(31, '{\"en\":\"Hindi-Movies\"}', 'hindi-movies'),
(29, '{\"en\":\"Biography\"}', 'biography'),
(28, '{\"en\":\"Documentary\"}', 'documentary'),
(27, '{\"en\":\"Western\"}', 'western'),
(26, '{\"en\":\"Comedy\"}', 'comedy'),
(25, '{\"en\":\"Thriller\"}', 'thriller'),
(22, '{\"en\":\"Music\"}', 'music'),
(18, '{\"en\":\"History\"}', 'history'),
(15, '{\"en\":\"War\"}', 'war'),
(14, '{\"en\":\"Horror\"}', 'horror'),
(13, '{\"en\":\"Sport\"}', 'sport'),
(12, '{\"en\":\"Romance\"}', 'romance'),
(11, '{\"en\":\"Family\"}', 'family'),
(10, '{\"en\":\"Mystery\"}', 'mystery'),
(9, '{\"en\":\"Fantasy\"}', 'fantasy'),
(7, '{\"en\":\"Crime\"}', 'crime'),
(6, '{\"en\":\"Sci-Fi\"}', 'sci-fi'),
(4, '{\"en\":\"Drama\"}', 'drama'),
(3, '{\"en\":\"Animation\"}', 'animation'),
(2, '{\"en\":\"Adventure \"}', 'adventure-'),
(1, '{\"en\":\"Action\"}', 'action');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movie_tags_join`
--

CREATE TABLE `movie_tags_join` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estrutura da tabela `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `parent_id` int(11) NOT NULL,
  `visible` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pages`
--

INSERT INTO `pages` (`id`, `title`, `permalink`, `content`, `parent_id`, `visible`) VALUES
(8, '{\"en\":\"DMCA\"}', 'dmca', '{\"en\":\"<p class=\\\"f-desc\\\"><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">DMCA: <\\/span><\\/span><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">seriesflix.me&nbsp;<\\/span><\\/span><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">est&aacute; en&nbsp; <\\/span><\\/span><strong><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">cumplimiento con 17 USC &sect; 512 y la Digital Millennium Copyright Act ( &ldquo;DMCA&rdquo;). <\\/span><\\/span><\\/strong><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">&nbsp;Es nuestra pol&iacute;tica responder a los avisos de infracci&oacute;n y tomar las medidas apropiadas conforme a la Ley de Derechos de Autor del Milenio Digital (\\\"DMCA\\\") y otras leyes de propiedad intelectual aplicables.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Si su material con derechos de autor se ha publicado en Movisubmalay.com o si los enlaces a su material con derechos de autor se devuelven a trav&eacute;s de nuestro motor de b&uacute;squeda y desea que se elimine este material, debe proporcionar una comunicaci&oacute;n por escrito que detalla la informaci&oacute;n que se detalla en la siguiente secci&oacute;n. <\\/span><span style=\\\"vertical-align: inherit;\\\">Tenga en cuenta que ser&aacute; responsable de los da&ntilde;os (incluidos los costos y los honorarios de los abogados) si tergiversa la informaci&oacute;n que figura en nuestro sitio que infringe sus derechos de autor. <\\/span><span style=\\\"vertical-align: inherit;\\\">Le sugerimos que primero se comunique con un abogado para obtener asistencia legal sobre este asunto.<\\/span><\\/span><\\/p>\\r\\n<p><strong><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Los siguientes elementos deben incluirse en su reclamo de infracci&oacute;n de derechos de autor:<\\/span><\\/span><\\/strong><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Proporcionar evidencia de la persona autorizada para actuar en nombre del propietario de un derecho exclusivo que presuntamente se ha infringido.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Proporcionar suficiente informaci&oacute;n de contacto para que podamos contactarlo. <\\/span><span style=\\\"vertical-align: inherit;\\\">Tambi&eacute;n debes incluir una direcci&oacute;n de correo electr&oacute;nico v&aacute;lida.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Debe identificar con suficiente detalle el trabajo protegido por derechos de autor que se alega que se ha infringido e incluir al menos un t&eacute;rmino de b&uacute;squeda bajo el cual el material aparece en los resultados de b&uacute;squeda de Movisubmalay.com.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Una declaraci&oacute;n de que la parte reclamante cree de buena fe que el uso del material de la manera reclamada no est&aacute; autorizado por el propietario de los derechos de autor, su agente o la ley.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Una declaraci&oacute;n de que la informaci&oacute;n en la notificaci&oacute;n es precisa y, bajo pena de perjurio, que la parte reclamante est&aacute; autorizada para actuar en nombre del propietario de un derecho exclusivo que presuntamente se ha infringido.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Debe estar firmado por la persona autorizada para actuar en nombre del propietario de un derecho exclusivo que supuestamente se est&aacute; infringiendo.<\\/span><\\/span><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">- Env&iacute;e el aviso de infracci&oacute;n por escrito a la siguiente direcci&oacute;n y una notificaci&oacute;n por correo electr&oacute;nico a&nbsp; <\\/span><\\/span><strong><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">movisubmalay@gmail.com<\\/span><\\/span><\\/strong><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Por favor, espere 4-10 d&iacute;as h&aacute;biles para una respuesta por correo electr&oacute;nico. <\\/span><span style=\\\"vertical-align: inherit;\\\">Tenga en cuenta que enviar su queja por correo electr&oacute;nico a otras partes, como nuestro Proveedor de servicios de Internet, no acelerar&aacute; su solicitud y puede dar lugar a una respuesta demorada debido a que la queja no se ha presentado correctamente.<\\/span><\\/span><\\/p>\\r\\n<p><strong><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Renuncia<\\/span><\\/span><\\/strong><\\/p>\\r\\n<p><span style=\\\"vertical-align: inherit;\\\"><span style=\\\"vertical-align: inherit;\\\">Movisubmalay.com no aloja ning&uacute;n archivo en sus servidores. <\\/span><span style=\\\"vertical-align: inherit;\\\">Todos apuntan al contenido alojado en sitios web de terceros. <\\/span><span style=\\\"vertical-align: inherit;\\\">Movisubmalay.com no acepta responsabilidad por el contenido alojado en sitios web de terceros y no tiene ninguna participaci&oacute;n en la descarga \\/ carga de pel&iacute;culas. Solo publicamos enlaces disponibles en Internet.<\\/span><\\/span><\\/p>\"}', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `plugins`
--

CREATE TABLE `plugins` (
  `id` int(11) NOT NULL,
  `dirname` varchar(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `install_url` varchar(100) NOT NULL,
  `start_url` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `author_url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `plugins`
--

INSERT INTO `plugins` (`id`, `dirname`, `name`, `description`, `install_url`, `start_url`, `author`, `author_url`) VALUES
(43, 'moviefeed', 'MovieFeed plugin ', 'Plugin which automatically grabs movies  and puts them into the database', 'install.php', '', 'TV.MODS ', 'http://tvmods.net'),
(41, 'showfeed', 'ShowFeed plugin ', 'Plugin which automatically grabs shows  and puts them into the database', 'install.php', '', 'TV.MODS', 'http://tvmods.net'),
(42, 'host_blocker', 'Host Blocker', 'Plugin which allows you to block unwanted video hosts from being added by your grabbers.', 'install.php', '', 'TV.MODS', 'http://tvssmods.ga'),
(38, 'autoembeds', 'Tv Episodes', 'Plugin which automatically grabs episode descriptions and embed codes for the episodes missing from the database', 'install.php', '', 'TV.MODS', 'http://tvmods.net'),
(44, 'blogger', 'News plugin', '', 'install.php', '', 'Netflix', 'http://netfliz.online');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `episodeid` int(11) NOT NULL,
  `rating` float NOT NULL,
  `ip` varchar(30) NOT NULL,
  `ratingdate` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `requests`
--

CREATE TABLE `requests` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `request_date` datetime NOT NULL,
  `message` text NOT NULL,
  `response` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `votes` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `request_votes`
--

CREATE TABLE `request_votes` (
  `id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `vote_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `settings`
--

INSERT INTO `settings` (`id`, `title`, `value`) VALUES
(1, 'default_language', 'en'),
(2, 'maxtvperpage', '50'),
(3, 'maxmoviesperpage', '50'),
(4, 'countdown_free', '0'),
(5, 'countdown_user', '0'),
(6, 'seo_links', '0'),
(7, 'smart_bar', '0'),
(10, 'email_settings', '{\"sender_name\":\"\",\"sender_email\":\"\",\"smtp_host\":\"\",\"smtp_port\":\"\",\"smtp_user\":\"admin\",\"smtp_password\":\"password\",\"smtp_security\":\"normal\"}'),
(11, 'default_title', '{\"en\":\"Watch movies and TV shows for free\"}'),
(12, 'default_keywords', '{\"en\":\"\"}'),
(13, 'default_description', '{\"en\":\"\"}'),
(14, 'tvshows_title', '{\"en\":\"Watch TV shows for free  |\"}'),
(15, 'tvshows_keywords', '{\"en\":\"\"}'),
(16, 'tvshows_description', '{\"en\":\"\"}'),
(17, 'tvcategory_title', '{\"en\":\"Watch TV shows for free %CATEGORY% |\"}'),
(18, 'tvcategory_keywords', '{\"en\":\"%SITENAME%,%CATEGORY%\"}'),
(19, 'tvcategory_description', '{\"en\":\"%DESCRIPTION%\"}'),
(20, 'show_title', '{\"en\":\"%SITENAME%%TITLE%%DESCRIPTION%%SHOWTITLE%%SEASON%%EPISODE%%CATEGORY%%SEARCHTERM%\"}'),
(21, 'show_keywords', '{\"en\":\"%SHOWTITLE%\"}'),
(22, 'show_description', '{\"en\":\"%DESCRIPTION%\"}'),
(23, 'episode_title', '{\"en\":\"Watch TV shows for free %TITLE% |\"}'),
(24, 'episode_keywords', '{\"en\":\"\"}'),
(25, 'episode_description', '{\"en\":\"%DESCRIPTION%\"}'),
(26, 'movies_title', '{\"en\":\"Watch movies for free  \"}'),
(27, 'movies_keywords', '{\"en\":\"\"}'),
(28, 'movies_description', '{\"en\":\"\"}'),
(29, 'moviecategory_title', '{\"en\":\"Watch movies for free %CATEGORY% | \"}'),
(30, 'moviecategory_keywords', '{\"en\":\"\"}'),
(31, 'moviecategory_description', '{\"en\":\"%DESCRIPTION%\"}'),
(32, 'watchmovie_title', '{\"en\":\"%TITLE%\"}'),
(33, 'watchmovie_keywords', '{\"en\":\"\"}'),
(34, 'watchmovie_description', '{\"en\":\"%DESCRIPTION%\"}'),
(35, 'search_title', '{\"en\":\"%SEARCHTERM%\"}'),
(36, 'search_keywords', '{\"en\":\"\"}'),
(37, 'search_description', '{\"en\":\"\"}'),
(38, 'listing_style', 'both'),
(39, 'smartbar_size', 'medium'),
(40, 'smartbar_rows', '2'),
(41, 'tv_guide', '0'),
(42, 'captchas', '0'),
(43, 'theme', '{\"theme\":\"yesmovies\"}'),
(44, 'ftp', '{\"host\":\"\",\"user\":\"\",\"pass\":\"\",\"port\":\"21\"}'),
(50, 'adfly', '{\"id\":\"\",\"status\":\"off\"}'),
(58, 'latest', '1'),
(63, 'latest', '1'),
(64, 'latest', '1'),
(65, 'blogger_license_key', 'http://tvmods.net'),
(69, 'maxfeaturedmoviesperpage', '50'),
(73, 'admin_color', 'blue'),
(80, 'latest', '1'),
(81, 'latest', '1'),
(82, 'latest', '1'),
(83, 'latest', '1'),
(84, 'latest', '1'),
(85, 'latest', '1'),
(91, 'latest', '1'),
(94, 'latest', '1'),
(96, 'latest', '1'),
(97, 'auto_only_new', '0'),
(118, 'adfly_enabled', '0'),
(119, 'adfocus_enabled', '0'),
(120, 'adfocus_id', ''),
(121, 'latest', '1'),
(181, 'latest', '0'),
(182, 'latest', '0'),
(185, 'latest', '0'),
(186, 'latest', '0'),
(188, 'tracking', 'UA-12345-1'),
(187, 'default_language', 'en'),
(189, 'tooltips_style', '1'),
(190, 'slider_style', '1'),
(191, 'news_style', '1'),
(192, 'profile', '11111'),
(193, 'sidereel', '{\"username\":\"tvmods\",\"password\":\"tvmods25\"}'),
(194, 'tvlinks', '{\"username\":\"tvmods\",\"password\":\"tvmods25\"}'),
(195, 'decaptcher', '{\"username\":\"tvmods\",\"password\":\"tvmods25\",\"url\":\"api.de-captcher.com\",\"port\":\"3500\"}'),
(196, 'disqus', 'ssssssssssss'),
(197, 'widget_11111', '{\"content\":\"<iframe src=\\\"https:\\/\\/www.bannersnack.com\\/examples.html\\\" style=\\\"border:0px #ffffff none;\\\" name=\\\"ad_top\\\" scrolling=\\\"no\\\" frameborder=\\\"1\\\" marginheight=\\\"0px\\\" marginwidth=\\\"0px\\\" height=\\\"150px\\\" width=\\\"600px\\\" allowfullscreen><\\/iframe>\",\"logged\":0}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `shows`
--

CREATE TABLE `shows` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(120) NOT NULL,
  `permalink` varchar(255) NOT NULL,
  `sidereel_url` varchar(255) NOT NULL,
  `imdb_id` varchar(20) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `last_episode` datetime NOT NULL,
  `imdb_rating` float NOT NULL,
  `meta` text NOT NULL,
  `autoembeds` int(1) NOT NULL,
  `fanart` varchar(255) NOT NULL,
  `showquality` char(3) DEFAULT NULL,
  `views_show` bigint(20) NOT NULL,
  `other_tag` text NOT NULL,
  `brtitle` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `shows`
--


-- --------------------------------------------------------

--
-- Estrutura da tabela `similar_movies`
--

CREATE TABLE `similar_movies` (
  `id` int(11) NOT NULL,
  `movie1` int(11) NOT NULL,
  `movie2` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `similar_shows`
--

CREATE TABLE `similar_shows` (
  `id` int(11) NOT NULL,
  `show1` int(11) NOT NULL,
  `show2` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



-- --------------------------------------------------------

--
-- Estrutura da tabela `submitted_links`
--

CREATE TABLE `submitted_links` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `imdb_id` varchar(20) NOT NULL,
  `season` int(11) NOT NULL,
  `episode` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `language` varchar(10) NOT NULL,
  `date_submitted` datetime NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `thumbsup_items`
--

CREATE TABLE `thumbsup_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `closed` tinyint(1) UNSIGNED NOT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `votes_up` int(11) NOT NULL,
  `votes_down` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estrutura da tabela `thumbsup_votes`
--

CREATE TABLE `thumbsup_votes` (
  `id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL,
  `value` tinyint(1) UNSIGNED NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `date` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tv_submits`
--

CREATE TABLE `tv_submits` (
  `id` int(11) NOT NULL,
  `episode_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `link` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tv_tags`
--

CREATE TABLE `tv_tags` (
  `id` int(11) NOT NULL,
  `tag` varchar(150) NOT NULL,
  `perma` varchar(100) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tv_tags`
--

INSERT INTO `tv_tags` (`id`, `tag`, `perma`) VALUES
(1, '{\"en\":\"Action\"}', 'action'),
(2, '{\"en\":\"Drama\"}', 'drama'),
(3, '{\"en\":\"Adventure\"}', 'adventure'),
(4, '{\"en\":\"Animation\"}', 'animation'),
(7, '{\"en\":\"Crime\"}', 'crime'),
(9, '{\"en\":\"Fantasy\"}', 'fantasy'),
(34, '{\"en\":\"misterio\"}', 'misterio'),
(11, '{\"en\":\"Family\"}', 'family'),
(12, '{\"en\":\"Romance\"}', 'romance'),
(13, '{\"en\":\"Sport\"}', 'sport'),
(14, '{\"en\":\"Horror\"}', 'horror'),
(15, '{\"en\":\"War\"}', 'war'),
(18, '{\"en\":\"History\"}', 'history'),
(21, '{\"en\":\"Music\"}', 'music'),
(24, '{\"en\":\"Biography\"}', 'biography'),
(25, '{\"en\":\"Comedy\"}', 'comedy'),
(26, '{\"en\":\"Documentary\"}', 'documentary'),
(27, '{\"en\":\"Thriller\"}', 'thriller'),
(28, '{\"en\":\"Western\"}', 'western'),
(29, '{\"en\":\"Science-fiction\"}', 'science-fiction');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tv_tags_join`
--

CREATE TABLE `tv_tags_join` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `show_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) DEFAULT NULL,
  `reset_code` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(150) NOT NULL,
  `fb_id` bigint(20) DEFAULT NULL,
  `fb_session` varchar(200) DEFAULT NULL,
  `avatar` varchar(100) NOT NULL,
  `notify_favorite` tinyint(4) NOT NULL DEFAULT 1,
  `notify_new` tinyint(4) NOT NULL DEFAULT 1,
  `language` varchar(2) NOT NULL,
  `last_active` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `reset_code`, `password`, `email`, `fb_id`, `fb_session`, `avatar`, `notify_favorite`, `notify_new`, `language`, `last_active`) VALUES
(12, 'subcrew', '', '6bc38759a807d658766b4c4a07757eea', 'admin@admin.com', 0, '', '', 1, 1, 'en', 1545145576);

-- --------------------------------------------------------

--
-- Estrutura da tabela `watches`
--

CREATE TABLE `watches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  `target_type` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`);

--
-- Índices para tabela `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blogger_feeds`
--
ALTER TABLE `blogger_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blogger_posts`
--
ALTER TABLE `blogger_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `language` (`language`),
  ADD KEY `perma` (`perma`(255)),
  ADD KEY `original_url` (`original_url`(255));

--
-- Índices para tabela `blogger_post_tags`
--
ALTER TABLE `blogger_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Índices para tabela `blogger_tags`
--
ALTER TABLE `blogger_tags`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `brokenlinks_movie`
--
ALTER TABLE `brokenlinks_movie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `weight` (`weight`),
  ADD KEY `lang` (`lang`);

--
-- Índices para tabela `brokenlinks_tv`
--
ALTER TABLE `brokenlinks_tv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `lang` (`lang`),
  ADD KEY `weight` (`weight`);

--
-- Índices para tabela `broken_episodes`
--
ALTER TABLE `broken_episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `broken_movies`
--
ALTER TABLE `broken_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment` (`comment`);

--
-- Índices para tabela `embeds`
--
ALTER TABLE `embeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`),
  ADD KEY `lang` (`lang`),
  ADD KEY `weight` (`weight`);

--
-- Índices para tabela `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`show_id`),
  ADD KEY `season` (`season`),
  ADD KEY `episode` (`episode`);

--
-- Índices para tabela `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user1` (`user1`),
  ADD KEY `user2` (`user2`);

--
-- Índices para tabela `host_blocker`
--
ALTER TABLE `host_blocker`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`),
  ADD KEY `target_type` (`target_type`),
  ADD KEY `date_added` (`date_added`);

--
-- Índices para tabela `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `imdb_id` (`imdb_id`),
  ADD KEY `title` (`title`),
  ADD KEY `perma` (`perma`),
  ADD KEY `imdb_rating` (`imdb_rating`);

--
-- Índices para tabela `movie_embeds`
--
ALTER TABLE `movie_embeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `weight` (`weight`),
  ADD KEY `lang` (`lang`);

--
-- Índices para tabela `movie_ratings`
--
ALTER TABLE `movie_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movieid` (`movieid`),
  ADD KEY `rating` (`rating`),
  ADD KEY `ip` (`ip`);

--
-- Índices para tabela `movie_tags`
--
ALTER TABLE `movie_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perma` (`perma`);

--
-- Índices para tabela `movie_tags_join`
--
ALTER TABLE `movie_tags_join`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Índices para tabela `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `visible` (`visible`);

--
-- Índices para tabela `plugins`
--
ALTER TABLE `plugins`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episodeid` (`episodeid`),
  ADD KEY `rating` (`rating`),
  ADD KEY `ip` (`ip`);

--
-- Índices para tabela `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `request_votes`
--
ALTER TABLE `request_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `request_id` (`request_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Índices para tabela `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Índices para tabela `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permalink` (`permalink`),
  ADD KEY `title` (`title`),
  ADD KEY `featured` (`featured`),
  ADD KEY `last_episode` (`last_episode`),
  ADD KEY `imdb_id` (`imdb_id`),
  ADD KEY `imdb_rating` (`imdb_rating`);

--
-- Índices para tabela `similar_movies`
--
ALTER TABLE `similar_movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie1` (`movie1`),
  ADD KEY `movie2` (`movie2`);

--
-- Índices para tabela `similar_shows`
--
ALTER TABLE `similar_shows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `show1` (`show1`),
  ADD KEY `show2` (`show2`);

--
-- Índices para tabela `submitted_links`
--
ALTER TABLE `submitted_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `type` (`type`),
  ADD KEY `imdb_id` (`imdb_id`),
  ADD KEY `season` (`season`),
  ADD KEY `episode` (`episode`),
  ADD KEY `language` (`language`),
  ADD KEY `status` (`status`);

--
-- Índices para tabela `thumbsup_items`
--
ALTER TABLE `thumbsup_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE_NAME` (`name`);

--
-- Índices para tabela `thumbsup_votes`
--
ALTER TABLE `thumbsup_votes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tv_submits`
--
ALTER TABLE `tv_submits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `episode_id` (`episode_id`);

--
-- Índices para tabela `tv_tags`
--
ALTER TABLE `tv_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perma` (`perma`);

--
-- Índices para tabela `tv_tags_join`
--
ALTER TABLE `tv_tags_join`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notify_favorite` (`notify_favorite`),
  ADD KEY `notify_new` (`notify_new`),
  ADD KEY `username` (`username`),
  ADD KEY `password` (`password`),
  ADD KEY `fb_id` (`fb_id`),
  ADD KEY `language` (`language`);

--
-- Índices para tabela `watches`
--
ALTER TABLE `watches`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `target_id` (`target_id`),
  ADD KEY `target_type` (`target_type`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `activity`
--
ALTER TABLE `activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT de tabela `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `blogger_feeds`
--
ALTER TABLE `blogger_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `blogger_posts`
--
ALTER TABLE `blogger_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `blogger_post_tags`
--
ALTER TABLE `blogger_post_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `blogger_tags`
--
ALTER TABLE `blogger_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `brokenlinks_movie`
--
ALTER TABLE `brokenlinks_movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `brokenlinks_tv`
--
ALTER TABLE `brokenlinks_tv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `broken_episodes`
--
ALTER TABLE `broken_episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `broken_movies`
--
ALTER TABLE `broken_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(150) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `embeds`
--
ALTER TABLE `embeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10787;

--
-- AUTO_INCREMENT de tabela `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1088;

--
-- AUTO_INCREMENT de tabela `friends`
--
ALTER TABLE `friends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `host_blocker`
--
ALTER TABLE `host_blocker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT de tabela `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3111;

--
-- AUTO_INCREMENT de tabela `movie_embeds`
--
ALTER TABLE `movie_embeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3595;

--
-- AUTO_INCREMENT de tabela `movie_ratings`
--
ALTER TABLE `movie_ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `movie_tags`
--
ALTER TABLE `movie_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de tabela `movie_tags_join`
--
ALTER TABLE `movie_tags_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7514;

--
-- AUTO_INCREMENT de tabela `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `plugins`
--
ALTER TABLE `plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de tabela `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `request_votes`
--
ALTER TABLE `request_votes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT de tabela `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=402;

--
-- AUTO_INCREMENT de tabela `similar_movies`
--
ALTER TABLE `similar_movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1229;

--
-- AUTO_INCREMENT de tabela `similar_shows`
--
ALTER TABLE `similar_shows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT de tabela `submitted_links`
--
ALTER TABLE `submitted_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `thumbsup_items`
--
ALTER TABLE `thumbsup_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=479;

--
-- AUTO_INCREMENT de tabela `thumbsup_votes`
--
ALTER TABLE `thumbsup_votes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tv_submits`
--
ALTER TABLE `tv_submits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tv_tags`
--
ALTER TABLE `tv_tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `tv_tags_join`
--
ALTER TABLE `tv_tags_join`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9796;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `watches`
--
ALTER TABLE `watches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;


