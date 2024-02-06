-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2023 at 11:26 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `data_visualization22`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uname` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uname`, `pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` varchar(500) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `uname` varchar(500) NOT NULL,
  `ptype` varchar(500) NOT NULL,
  `pid` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `quantity1` varchar(599) NOT NULL,
  `tamount` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `uid`, `uname`, `ptype`, `pid`, `quantity`, `price`, `quantity1`, `tamount`, `status`) VALUES
('1', '1', 'siddiq', 'mobile', '1', '3', '8000', '3', '24000', '1'),
('2', '1', 'siddiq', 'mobile', '1', '3', '8000', '3', '24000', '1'),
('3', '1', 'siddiq', 'mobile', '1', '2', '8000', '2', '16000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

CREATE TABLE `membership` (
  `id` varchar(100) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `mcode` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`id`, `uid`, `name`, `contact`, `email`, `gender`, `address`, `mcode`, `pass`, `status`) VALUES
('1', '1', 'siddiq', '7395889223', 'javaprojectfantasy@gmail.com', 'male', 'trichy', '0425', '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` varchar(500) NOT NULL,
  `uid` varchar(500) NOT NULL,
  `uname` varchar(599) NOT NULL,
  `count` varchar(500) NOT NULL,
  `amount` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `damount` varchar(500) NOT NULL,
  `cardno` varchar(500) NOT NULL,
  `ccv` varchar(500) NOT NULL,
  `bnakname` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `uid`, `uname`, `count`, `amount`, `contact`, `email`, `damount`, `cardno`, `ccv`, `bnakname`, `status`) VALUES
('3', '1', 'siddiq', '3', '24000', '7395889223', 'javaprojectfantasy@gmail.com', '12000', '1234567890', '123', 'SBI', '0'),
('4', '3', 'ganesh', '3', '24000', '6381609857', 'ganeshraja298@gmail.com', '12000', '12345677878', '123', 'SBI', '0'),
('5', '1', 'siddiq', '4', '32000', '7395889223', 'javaprojectfantasy@gmail.com', '16000', '123445677788', '123', 'SBI', '0'),
('6', '1', 'siddiq', '3', '24000', '7395889223', 'javaprojectfantasy@gmail.com', '12000', '123456', '123', 'SBI', '0'),
('7', '1', 'siddiq', '3', '24000', '7395889223', 'javaprojectfantasy@gmail.com', '12000', '1345678990', '123', 'SBI', '0'),
('8', '1', 'siddiq', '2', '16000', '7395889223', 'javaprojectfantasy@gmail.com', '8000', '123424734746', '123', 'SBI', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` varchar(500) NOT NULL,
  `ptype` varchar(500) NOT NULL,
  `model` varchar(500) NOT NULL,
  `price` varchar(500) NOT NULL,
  `quantity` varchar(500) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `ptype`, `model`, `price`, `quantity`, `img`) VALUES
('1', 'mobile', 'moto e6', '8000', '100', 'moto.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `contact` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `gender` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `pass` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `contact`, `email`, `gender`, `address`, `pass`, `status`) VALUES
('1', 'siddiq', '7395889223', 'javaprojectfantasy@gmail.com', 'male', 'trichy', '123', '0'),
('2', 'gowtham', '7826078191', 'gowthammurugan002@gmail.com', 'male', 'trichy', '123', '0'),
('3', 'ganesh', '6381609857', 'ganeshraja298@gmail.com', 'male', 'trichy', '123', '0'),
('4', 'alazeem', '7395889223', 'javaprojectfantasy@gmail.com', 'male', 'trichy', '123', '0');
