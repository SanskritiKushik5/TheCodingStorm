-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2020 at 09:43 AM
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
-- Database: `techblogsk`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'first post', 'firstpost@gmail.com', '123456789', 'first post', '2020-08-09 15:27:35'),
(2, 'Sanskriti Kushik', 'sanskritikushik23@gmail.com', '3435465', 'i am great', '2020-08-09 20:20:24'),
(3, 'Vatsala Tripathi', '', '', '', '2020-08-09 20:24:39'),
(4, 'Vatsala Tripathi', 'yashi1808@gmail.com', '9004516689', 'Send me details please, ASAP.', '2020-08-09 20:25:32'),
(5, 'Sanskriti Kushik', 'yashi1808@gmail.com', '9004516689', 'i am great', '2020-08-09 23:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` varchar(120) NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'First post title', 'First post', 'first-post', 'This is my first post and I am very excited about python and flask.', 'post-bg.jpg', '2020-08-10 15:29:01'),
(2, 'Variables', 'Variables are fun!!!!\r\n', 'second-post', 'Template variables are defined by the context dictionary passed to the template.\r\n\r\nYou can mess around with the variables in templates provided they are passed in by the application. Variables may have attributes or elements on them you can access too. What attributes a variable has depends heavily on the application providing that variable.\r\n\r\nYou can use a dot (.) to access attributes of a variable in addition to the standard Python __getitem__ “subscript” syntax ([]).\r\n\r\nThe following lines do the same thing:\r\n\r\n{{ foo.bar }}\r\n{{ foo[\'bar\'] }}\r\nIt’s important to know that the outer double-curly braces are not part of the variable, but the print statement. If you access variables inside tags don’t put the braces around them.\r\n\r\nIf a variable or attribute does not exist, you will get back an undefined value. What you can do with that kind of value depends on the application configuration: the default behavior is to evaluate to an empty string if printed or iterated over, and to fail for every other operation.', '', '2020-08-10 20:08:29'),
(3, 'Filters', 'Filters are damn interactive.', 'third-post', 'Variables can be modified by filters. Filters are separated from the variable by a pipe symbol (|) and may have optional arguments in parentheses. Multiple filters can be chained. The output of one filter is applied to the next.\r\n\r\nFor example, {{ name|striptags|title }} will remove all HTML Tags from variable name and title-case the output (title(striptags(name))).\r\n\r\nFilters that accept arguments have parentheses around the arguments, just like a function call. For example: {{ listx|join(\', \') }} will join a list with commas (str.join(\', \', listx)).\r\n\r\nThe List of Builtin Filters below describes all the builtin filters.', '', '2020-08-10 20:08:29'),
(4, 'Tests', 'Tests are very essential.', 'fourth-post', 'Beside  sk sk filters, there are also so-called “tests” available. Tests can be used to test a variable against a common expression. To test a variable or expression, you add is plus the name of the test after the variable. For example, to find out if a variable is defined, you can do name is defined, which will then return true or false depending on whether name is defined in the current template context.\r\n\r\nTests can accept arguments, too. If the test only takes one argument, you can leave out the parentheses. For example, the following two expressions do the same thing:\r\n\r\n{% if loop.index is divisibleby 3 %}\r\n{% if loop.index is divisibleby(3) %}\r\nThe List of Builtin Tests below describes all the builtin tests.', '', '2020-08-13 00:25:28'),
(5, 'Comments', 'Comments makes everything understandable.', 'fifth-post', 'To comment-out part of a line in a template, use the comment syntax which is by default set to {# ... #}. This is useful to comment out parts of the template for debugging or to add information for other template designers or yourself:\r\n\r\n{# note: commented-out template because we no longer use this\r\n    {% for user in users %}\r\n        ...\r\n    {% endfor %}\r\n#}', '', '2020-08-10 20:10:44'),
(6, 'WhiteSpace Control', 'Pshhhhhhhhhhhhh???', 'sixth-post', 'In the default configuration:\r\n\r\na single trailing newline is stripped if present\r\n\r\nother whitespace (spaces, tabs, newlines etc.) is returned unchanged\r\n\r\nIf an application configures Jinja to trim_blocks, the first newline after a template tag is removed automatically (like in PHP). The lstrip_blocks option can also be set to strip tabs and spaces from the beginning of a line to the start of a block. (Nothing will be stripped if there are other characters before the start of the block.)\r\n\r\nWith both trim_blocks and lstrip_blocks enabled, you can put block tags on their own lines, and the entire block line will be removed when rendered, preserving the whitespace of the contents. For example, without the trim_blocks and lstrip_blocks options, this template:\r\n\r\n<div>\r\n    {% if True %}\r\n        yay\r\n    {% endif %}\r\n</div>\r\ngets rendered with blank lines inside the div:\r\n\r\n<div>\r\n\r\n        yay\r\n\r\n</div>\r\nBut with both trim_blocks and lstrip_blocks enabled, the template block lines are removed and other whitespace is preserved:\r\n\r\n<div>\r\n        yay\r\n</div>\r\nYou can manually disable the lstrip_blocks behavior by putting a plus sign (+) at the start of a block:\r\n\r\n<div>\r\n        {%+ if something %}yay{% endif %}\r\n</div>\r\nYou can also strip whitespace in templates by hand. If you add a minus sign (-) to the start or end of a block (e.g. a For tag), a comment, or a variable expression, the whitespaces before or after that block will be removed:\r\n\r\n{% for item in seq -%}\r\n    {{ item }}\r\n{%- endfor %}\r\nThis will yield all elements without whitespace between them. If seq was a list of numbers from 1 to 9, the output would be 123456789.\r\n\r\nIf Line Statements are enabled, they strip leading whitespace automatically up to the beginning of the line.\r\n\r\nBy default, Jinja also removes trailing newlines. To keep single trailing newlines, configure Jinja to keep_trailing_newline.', '', '2020-08-10 20:13:29'),
(7, 'Escaping', 'Escaping is good at times ;)', 'seventh-post', 'It is sometimes desirable – even necessary – to have Jinja ignore parts it would otherwise handle as variables or blocks. For example, if, with the default syntax, you want to use {{ as a raw string in a template and not start a variable, you have to use a trick.\r\n\r\nThe easiest way to output a literal variable delimiter ({{) is by using a variable expression:\r\n\r\n{{ \'{{\' }}\r\nFor bigger sections, it makes sense to mark a block raw. For example, to include example Jinja syntax in a template, you can use this snippet:\r\n\r\n{% raw %}\r\n    <ul>\r\n    {% for item in seq %}\r\n        <li>{{ item }}</li>\r\n    {% endfor %}\r\n    </ul>\r\n{% endraw %}\r\nNote\r\nMinus sign at the end of {% raw -%} tag cleans all the spaces and newlines preceding the first character of your raw data.', '', '2020-08-10 20:13:29');

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
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
