-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 07:13 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fbillingsintgrtd`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `commentid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `companyid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `salestaxno` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `currencysign` int(11) DEFAULT NULL,
  `currsignplace` varchar(255) DEFAULT NULL,
  `decimalseperator` varchar(255) DEFAULT NULL,
  `excurrency` varchar(255) DEFAULT NULL,
  `dateformat` varchar(255) DEFAULT NULL,
  `exdate` varchar(255) DEFAULT NULL,
  `taxtype` varchar(255) DEFAULT NULL,
  `printtaxornot` varchar(255) DEFAULT NULL,
  `taxname` varchar(255) DEFAULT NULL,
  `taxrate` float DEFAULT NULL,
  `image` blob DEFAULT NULL,
  `printimageornot` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`companyid`, `name`, `address`, `email`, `salestaxno`, `currency`, `currencysign`, `currsignplace`, `decimalseperator`, `excurrency`, `dateformat`, `exdate`, `taxtype`, `printtaxornot`, `taxname`, `taxrate`, `image`, `printimageornot`) VALUES
(1, 'INFOX', 'abcdef', 'abc@gmail.com', '1212', '12', 0, 'sdf', 'dfb', 'adf', 'df', 'df', 'df', 'df', 'df', 4, NULL, 'df'),
(2, 'infox', 'qwertyuuiiop', 'infox@gmail.com', '14', '23', NULL, 'af', 'dfb', 'xfb', 'fdb', 'af', 'afs', 'afs', 'asf', 6, NULL, 'sd');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `contactperson` varchar(255) DEFAULT NULL,
  `cpemail` varchar(255) DEFAULT NULL,
  `cptelno` varchar(255) DEFAULT NULL,
  `cpfax` varchar(255) DEFAULT NULL,
  `cpmobileforsms` varchar(255) DEFAULT NULL,
  `shipcontactperson` varchar(255) DEFAULT NULL,
  `shipcpemail` varchar(255) DEFAULT NULL,
  `shipcptelno` varchar(255) DEFAULT NULL,
  `shipcpfax` varchar(255) DEFAULT NULL,
  `taxexempt` varchar(255) DEFAULT NULL,
  `specifictax1` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `customertype` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerid`, `companyid`, `category`, `status`, `businessname`, `businessaddress`, `shipname`, `shipaddress`, `contactperson`, `cpemail`, `cptelno`, `cpfax`, `cpmobileforsms`, `shipcontactperson`, `shipcpemail`, `shipcptelno`, `shipcpfax`, `taxexempt`, `specifictax1`, `discount`, `country`, `city`, `customertype`, `notes`) VALUES
(1, 1, 'abcde', 'acacac', 'Customer1', 'abc,cba', 'asasas', 'asqasqasq', 'oqoqoq', 'oqoq@gmail', '12345', '1221', '1234321', 'aqua', 'aqua@gmail', '1234567890', '987654321', '1231231', 123123, 111, 'India', 'Kochi', 'qqq', 'qweqwe'),
(2, 2, 'zd', 'ZDV', 'agn', 'sdfnn', 'adzb', 'gdn', 'zdf', 'xfb', '235', '654', '34687', 'xfab', 'fb', '6874', '6984', 'sfb', 684, 134, 'fbfbadfb', 'dzfb', 'vendor', 'azxfb'),
(3, 2, '', '0', 'erere', 'seds,seds', 'acacacac', 'acx,acs', 'Me', 'se@gmail', '112121212', '121212123', '9876', 'You', 'we@gmail', '13131', '3133', '0', NULL, NULL, 'India', 'Kochi', NULL, 'hello'),
(4, 1, '', '0', 'Queen', 'Queen,een', 'King', 'King,ing', 'You', 'you@gmail', '98765', '876432', '123456', 'Me', 'me@gmail', '67890', '234678', '0', NULL, NULL, 'India', 'Bnglr', NULL, 'Hai'),
(5, NULL, '', '0', 'Marvel', 'marvel', 'adadad', 'adadad,adadad', 'qd', 'asc@ad', '2323', '23', '234', 'fdv', 'adf@ad', '235553', '32', '0', NULL, NULL, 'India', 'Kochi', NULL, 'sqcscs');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `documentid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `documents` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `estimate`
--

CREATE TABLE `estimate` (
  `estimateid` int(11) NOT NULL,
  `estimate_number` varchar(255) DEFAULT NULL,
  `estdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `emailon` varchar(255) DEFAULT NULL,
  `printon` varchar(255) DEFAULT NULL,
  `smson` varchar(255) DEFAULT NULL,
  `esttot` int(11) DEFAULT NULL,
  `totpaid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `extracostname` varchar(255) DEFAULT NULL,
  `extracost` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `salesper` varchar(255) DEFAULT NULL,
  `discourate` int(11) DEFAULT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `cpemail` varchar(255) DEFAULT NULL,
  `cpmobileforsms` varchar(255) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `Productserviceid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estimate`
--

INSERT INTO `estimate` (`estimateid`, `estimate_number`, `estdate`, `duedate`, `status`, `emailon`, `printon`, `smson`, `esttot`, `totpaid`, `balance`, `extracostname`, `extracost`, `template`, `salesper`, `discourate`, `tax1`, `category`, `businessname`, `businessaddress`, `shipname`, `shipaddress`, `cpemail`, `cpmobileforsms`, `companyid`, `customerid`, `Productserviceid`) VALUES
(7, NULL, '2022-03-17', '2022-03-17', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '7777', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(8, NULL, '2022-03-18', '2022-03-18', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(9, NULL, '2022-03-17', '2022-03-17', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '999999', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(11, NULL, '2022-03-08', '2022-03-15', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(74, NULL, '2022-03-09', '2022-03-15', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 4, 0, '4', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(84, NULL, '2022-03-19', '2022-03-19', 'Invoiced', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL),
(90, NULL, '2022-03-18', '2022-03-18', 'Draft', NULL, NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', 'bbbb', 'ccccc', 'abc', 'abc', 'kkkkk', 'mmmmm', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `expensesid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `expense_amount` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `staff_members` varchar(255) DEFAULT NULL,
  `taxable` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `rebillable` varchar(255) DEFAULT NULL,
  `invoiced` varchar(255) DEFAULT NULL,
  `id_sku` int(11) DEFAULT NULL,
  `rebill_amount` int(11) DEFAULT NULL,
  `assign_customer` varchar(255) DEFAULT NULL,
  `receipt` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`expensesid`, `customerid`, `companyid`, `expense_amount`, `date`, `vendor`, `catagory`, `description`, `staff_members`, `taxable`, `customer`, `image`, `notes`, `rebillable`, `invoiced`, `id_sku`, `rebill_amount`, `assign_customer`, `receipt`) VALUES
(30, NULL, NULL, 120, '2022-03-25', 'agn', 'Def', 'assd', 'Administrator', '0', 'Customer1', 'as.png', 'ad', '1', NULL, 12, 31, '1', '1'),
(32, NULL, NULL, 0, '2022-03-29', 'agnsd', 'Default', 'as', 'Administrator', '1', 'Queen', 'Screenshot (1106).png', 'acfssc csa', '1', NULL, 12, 432, '1', '1'),
(34, NULL, NULL, 12, '2022-03-29', 'agn', 'dfasadf', 'sadsadsas', 'Administrator', '1', 'Queen', 'Screenshot (1698).png', 'adfsdas', '0', NULL, 0, 0, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceid` int(11) NOT NULL,
  `invoice_number` varchar(255) DEFAULT NULL,
  `invodate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `emailon` varchar(255) DEFAULT NULL,
  `printon` varchar(255) DEFAULT NULL,
  `smson` varchar(255) DEFAULT NULL,
  `invoicetot` int(11) DEFAULT NULL,
  `totpaid` int(11) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `extracostname` varchar(255) DEFAULT NULL,
  `extracost` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `salesper` varchar(255) DEFAULT NULL,
  `discourate` int(11) DEFAULT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `cpemail` varchar(255) DEFAULT NULL,
  `cpmobileforsms` varchar(255) DEFAULT NULL,
  `recurring_period` int(11) DEFAULT NULL,
  `recurring_period_month` varchar(255) DEFAULT NULL,
  `next_invoice` date DEFAULT NULL,
  `stop_recurring` date DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `Productserviceid` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `orderid` int(11) DEFAULT NULL,
  `estimateid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceid`, `invoice_number`, `invodate`, `duedate`, `status`, `emailon`, `printon`, `smson`, `invoicetot`, `totpaid`, `balance`, `extracostname`, `extracost`, `template`, `salesper`, `discourate`, `tax1`, `category`, `businessname`, `businessaddress`, `shipname`, `shipaddress`, `cpemail`, `cpmobileforsms`, `recurring_period`, `recurring_period_month`, `next_invoice`, `stop_recurring`, `companyid`, `customerid`, `Productserviceid`, `discount`, `orderid`, `estimateid`) VALUES
(2, NULL, '2022-03-09', '2022-03-17', 'Draft', 'ash@gmail.com', NULL, '234567', 100, NULL, NULL, 'Delivery cost', 50, '', 'hr', 4, 30, 'mobile', 'info', 'Carnivaly', 'a2y', 'carnival2', 'ash@gmail.com', '234567', 3, 'Day(s)', '2022-03-12', '2022-03-17', NULL, 1, 1, 4, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'agn', 'sdfnn', 'adzb', 'gdn', 'xfb', '235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Sebin', 'seds,seds', 'acacacac', 'acx,acs', 'se@gmail', '112121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'erere', 'seds,seds', 'acacacac', 'acx,acs', 'se@gmail', '112121212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Queenking', 'Queen,een', 'King', 'King,ing', 'you@gmail', '98765', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `invoice_private_notes`
--

CREATE TABLE `invoice_private_notes` (
  `invoicepvtnoteid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `private_notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `markinvoice`
--

CREATE TABLE `markinvoice` (
  `paymentid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `invoice_balance` varchar(255) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `paid_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `full_paid` varchar(255) DEFAULT NULL,
  `payment_receipt` varchar(255) DEFAULT NULL,
  `attach_invoice` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `order_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `emailed_on` varchar(255) DEFAULT NULL,
  `printed_on` varchar(255) DEFAULT NULL,
  `sms_on` varchar(255) DEFAULT NULL,
  `Order_total` int(11) DEFAULT NULL,
  `extra_cost_name` varchar(300) DEFAULT NULL,
  `extra_cost` int(11) DEFAULT NULL,
  `template` varchar(500) DEFAULT NULL,
  `sales_person` varchar(300) DEFAULT NULL,
  `discount_rate` int(11) DEFAULT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category` varchar(300) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `cpemail` varchar(255) DEFAULT NULL,
  `cpmobileforsms` varchar(255) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `Productserviceid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `order_date`, `due_date`, `businessname`, `status`, `emailed_on`, `printed_on`, `sms_on`, `Order_total`, `extra_cost_name`, `extra_cost`, `template`, `sales_person`, `discount_rate`, `tax1`, `category`, `businessaddress`, `shipname`, `shipaddress`, `cpemail`, `cpmobileforsms`, `companyid`, `Productserviceid`, `customerid`) VALUES
(1, '2022-03-20', '2022-03-20', 'agn', 'Draft', NULL, NULL, NULL, NULL, 'Delivey', 244, 'Logo', 'ssdsd', 8, 3, 'Product', 'sdfnn', 'adzb', 'gdn', 'xfb', '235', NULL, NULL, NULL),
(2, '2022-08-03', '2022-03-17', 'erere', 'Invoiced', NULL, NULL, NULL, NULL, 'Delivey', 900, 'Logo', 'ghj', 6, 5, 'Product', 'seds,seds', 'acacacac', 'acx,acs', 'se@gmail', '112121212', NULL, NULL, NULL),
(3, '2022-03-20', '2022-03-20', 'Customer100', 'Draft', NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, 'Material', 'abc,cba', 'asasas', 'asqasqasq', 'oqoq@gmail', '12345', NULL, NULL, NULL),
(4, '2022-03-21', '2022-03-21', 'agn', 'Draft', NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, 'Material', 'sdfnn', 'adzb', 'gdn', 'xfb', '235', NULL, NULL, NULL),
(5, '2022-03-21', '2022-03-21', 'dhedt', 'Draft', NULL, NULL, NULL, NULL, 'Delivey', 25, 'Logo', 'def', 5, 22, 'Product', 'Queen,een', 'King', 'King,ing', 'you@gmail', '98765', NULL, NULL, NULL),
(6, '2022-02-03', '2022-03-21', 'Sebin', 'Draft', NULL, NULL, NULL, NULL, 'Delivey', 200, 'Logo', 'This', 6, 2, 'Product', 'seds,seds', 'acacacac', 'acx,acs', 'se@gmail', '112121212', NULL, NULL, NULL),
(7, '2022-03-21', '2022-03-21', 'agn0000000000', 'Draft', NULL, NULL, NULL, NULL, 'Delivey', 222, 'Logo', 'asdas', 4, 2, 'Woodworks', 'sdfnn', 'adzb', 'gdn', 'xfb', '235', NULL, NULL, NULL),
(8, '2022-03-22', '2022-03-22', 'Queenking', 'Invoiced', NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', 'Queen,een', 'King', 'King,ing', 'you@gmail', '98765', NULL, NULL, NULL),
(9, '2022-03-22', '2022-03-22', 'Robert', 'Draft', NULL, NULL, NULL, NULL, 'Delivey', 899, 'Logo', 'king', 6, 3, 'Product', 'seds,seds', 'acacacac', 'acx,acs', 'se@gmail', '112121212', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `porder`
--

CREATE TABLE `porder` (
  `porderid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `porderdate` varchar(255) DEFAULT NULL,
  `duedate` varchar(255) DEFAULT NULL,
  `customname` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `emailon` varchar(255) DEFAULT NULL,
  `printon` varchar(255) DEFAULT NULL,
  `smson` varchar(255) DEFAULT NULL,
  `ordertot` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `extracostname` varchar(255) DEFAULT NULL,
  `extracost` int(11) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `salesper` varchar(255) DEFAULT NULL,
  `discourate` int(11) DEFAULT NULL,
  `tax1` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `Productserviceid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `businessaddress` varchar(255) DEFAULT NULL,
  `shipname` varchar(255) DEFAULT NULL,
  `shipaddress` varchar(255) DEFAULT NULL,
  `cpemail` varchar(255) DEFAULT NULL,
  `cpmobileforsms` varchar(255) DEFAULT NULL,
  `businessname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `porder`
--

INSERT INTO `porder` (`porderid`, `companyid`, `porderdate`, `duedate`, `customname`, `status`, `emailon`, `printon`, `smson`, `ordertot`, `total`, `extracostname`, `extracost`, `template`, `salesper`, `discourate`, `tax1`, `category`, `Productserviceid`, `customerid`, `businessaddress`, `shipname`, `shipaddress`, `cpemail`, `cpmobileforsms`, `businessname`) VALUES
(1, NULL, '2022-03-01', '2022-03-16', 'kichu', 'Draft', 'kichu@gmail.com', 'sdfghjm', '234567', 4000, 5000, 'iiiiiiiiiiii', 60, 'asdfgnm', 'nhfd', 5, 2, '', NULL, NULL, 'kkkkkkkkkkkkkkkkkkk', 'kichu', 'kkkkkkkkkkkkkkkkkkk', 'krishna@gmail.com', '45678', NULL),
(2, NULL, '2022-03-09', '2022-03-03', 'kichu', 'Draft', NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', NULL, NULL, 'rrrrrrrrrrrrrrr', 'kichu', 'rrrrrrrrrrrrrrrr', 'kichu@gmail.com', '2345678', NULL),
(3, NULL, '2022-03-14', '2022-03-30', 'me', 'Draft', NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', NULL, NULL, 'hiiiiiiiiiiiiiiiiiiii', 'me', 'hiiiiiiiiiiiiiiiii', 'me@gmail.com', '34567654', NULL),
(4, NULL, '2022-03-08', '2022-03-14', 'me', 'Draft', NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', NULL, NULL, 'hiiiiiiiiiiiiiiiiiiii', 'me', 'hiiiiiiiiiiiiiiiii', 'me@gmail.com', '34567654', NULL),
(5, NULL, '2022-03-29', '2022-03-07', 'we', 'Draft', NULL, NULL, NULL, NULL, NULL, '', 0, '', '', 0, 0, '', NULL, NULL, 'hloooooooooooooo', 'we', 'hlooooooooooooo', 'we@gmail.com', '87634567', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `productservice`
--

CREATE TABLE `productservice` (
  `Productserviceid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `sku` int(11) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `peices` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `taxable` varchar(255) DEFAULT NULL,
  `priceminuscost` int(11) DEFAULT NULL,
  `serviceornot` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stocklimit` int(11) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `privatenote` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productservice`
--

INSERT INTO `productservice` (`Productserviceid`, `companyid`, `sku`, `category`, `name`, `description`, `status`, `unitprice`, `peices`, `cost`, `taxable`, `priceminuscost`, `serviceornot`, `stock`, `stocklimit`, `warehouse`, `privatenote`, `image`, `quantity`) VALUES
(16, NULL, 1, 'Default', 'Shoes', 'warra', '1', 100, 2, 200, '0', 300, '0', 100, 20, 'section1', 'acad ad\n', 'as.png', NULL),
(17, NULL, 2, 'product', 'shirt', 'awfs', '0', 0, 0, 0, '0', 0, '0', 0, 0, '', '\n', NULL, NULL),
(18, NULL, 3, 'Default', 't shirt', 'adaffsaf', '1', 211, 29, 21, '0', 12, '0', 213, 21, 'section 4', 'adwdw awd', NULL, NULL),
(19, NULL, 4, 'Default', 'atdftad', 'ads', '0', 49, 2, 10, '0', 39, '0', 32, 12, 'section 1', 'sf sf', 'as.png', NULL),
(20, NULL, 5, 'Default', 'asasad', 'sad', '1', 60, 2, 30, '0', 30, '0', 0, 0, '', 'sads', NULL, NULL),
(21, NULL, 6, 'Default', 'adafd', 'afwe', '1', 0, 0, 0, '1', 0, '1', 0, 0, '', '', NULL, NULL),
(22, NULL, 7, 'Default', 'sddf', 'dsbf', '1', 0, 0, 0, '1', 0, '1', 0, 0, '', '', NULL, NULL),
(23, NULL, 8, 'Default', 'sad', 'sa', '0', 0, 0, 0, '1', 0, '1', 0, 0, '', '', 'Screenshot (1100).png', NULL),
(24, NULL, 9, 'Default', 'arwera', 'asdaf', '1', 60, 0, 30, '1', 30, '1', 0, 0, '', 'weraree', 'as.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recurring`
--

CREATE TABLE `recurring` (
  `recurringid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `recurring_period` int(11) DEFAULT NULL,
  `next_invoice` date DEFAULT NULL,
  `stop_recurring` date DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `smsid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `sms_type` varchar(255) DEFAULT NULL,
  `sms_text` varchar(255) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sms_account`
--

CREATE TABLE `sms_account` (
  `smsaccountid` int(11) NOT NULL,
  `companyid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `api_secret` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `api_key` varchar(255) DEFAULT NULL,
  `smsid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `storingproduct`
--

CREATE TABLE `storingproduct` (
  `orderid` int(11) DEFAULT NULL,
  `estimateid` int(11) DEFAULT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `companyid` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unitprice` int(11) DEFAULT NULL,
  `peices` int(255) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `taxable` varchar(255) DEFAULT NULL,
  `priceminuscost` int(11) DEFAULT NULL,
  `serviceornot` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stocklimit` int(11) DEFAULT NULL,
  `warehouse` varchar(255) DEFAULT NULL,
  `privatenote` varchar(255) DEFAULT NULL,
  `image` longblob DEFAULT NULL,
  `storingproductid` int(11) NOT NULL,
  `Productserviceid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `porderid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storingproduct`
--

INSERT INTO `storingproduct` (`orderid`, `estimateid`, `invoiceid`, `companyid`, `sku`, `category`, `name`, `description`, `status`, `unitprice`, `peices`, `cost`, `taxable`, `priceminuscost`, `serviceornot`, `stock`, `stocklimit`, `warehouse`, `privatenote`, `image`, `storingproductid`, `Productserviceid`, `quantity`, `porderid`) VALUES
(1, NULL, NULL, NULL, '3', 'Material', 'Bag', 'Office bag', '1', 15, 5, 10, 'Yes', 5, 'Sevice', 12, 4, 'Section Z', 'Good Aesthetics', NULL, 235, 3, 10, NULL),
(1, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 100, 3, 'Sect Z', 'AbcAbc\n', NULL, 236, 6, 10, NULL),
(2, NULL, NULL, NULL, '1', 'Abcd', 'Pencil', 'Black', 'good', 12, 2, 10, 'yes', 2, 'service', 13, 11, 'SECTION A', 'kutfmhgf', NULL, 238, 1, 10, NULL),
(2, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 239, 2, 10, NULL),
(2, NULL, NULL, NULL, '3', 'Material', 'Bag', 'Office bag', '1', 15, 5, 10, 'Yes', 5, 'Sevice', 12, 4, 'Section Z', 'Good Aesthetics', NULL, 240, 3, 10, NULL),
(3, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 242, 2, 10, NULL),
(3, NULL, NULL, NULL, '5', 'Material', 'Ball', 'Football', '0', 20, 10, 2, 'yes', 18, 'Not Service', 100, 10, 'Section B', 'Good stuff', NULL, 243, 5, 10, NULL),
(4, NULL, NULL, NULL, '5', 'Material', 'Ball', 'Football', '0', 20, 10, 2, 'yes', 18, 'Not Service', 100, 10, 'Section B', 'Good stuff', NULL, 257, 5, 10, NULL),
(4, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 2, 1, 'Section C', 'Good Aesthetics', NULL, 258, 4, 5, NULL),
(4, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 1, 3, 'Sect Z', 'AbcAbc\n', NULL, 259, 6, 10, NULL),
(5, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 10, 1, 'Section C', 'Good Aesthetics', NULL, 274, 4, 5, NULL),
(5, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 10, 3, 'Sect Z', 'AbcAbc\n', NULL, 275, 6, 10, NULL),
(5, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 10, 1, 'SECTION B', 'AEF', NULL, 276, 2, 10, NULL),
(5, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 10, 1, 'Section C', 'Good Aesthetics', NULL, 277, 4, 5, NULL),
(5, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 280, 2, 10, NULL),
(5, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 2, 1, 'Section C', 'Good Aesthetics', NULL, 281, 4, 5, NULL),
(5, NULL, NULL, NULL, '3', 'Material', 'Bag', 'Office bag', '1', 15, 5, 10, 'Yes', 5, 'Sevice', 12, 4, 'Section Z', 'Good Aesthetics', NULL, 282, 3, 1, NULL),
(5, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 10, 3, 'Sect Z', 'AbcAbc\n', NULL, 283, 6, 10, NULL),
(5, NULL, NULL, NULL, '5', 'Material', 'Ball', 'Football', '0', 20, 10, 2, 'yes', 18, 'Not Service', 100, 10, 'Section B', 'Good stuff', NULL, 284, 5, 10, NULL),
(5, NULL, NULL, NULL, '5', 'Material', 'Ball', 'Football', '0', 20, 10, 2, 'yes', 18, 'Not Service', 100, 10, 'Section B', 'Good stuff', NULL, 285, 5, 10, NULL),
(5, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 286, 2, 10, NULL),
(5, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 10, 3, 'Sect Z', 'AbcAbc\n', NULL, 287, 6, 10, NULL),
(6, NULL, NULL, NULL, '3', 'Material', 'Bag', 'Office bag', '1', 15, 5, 10, 'Yes', 5, 'Sevice', 12, 4, 'Section Z', 'Good Aesthetics', NULL, 288, 3, 10, NULL),
(6, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 2, 1, 'Section C', 'Good Aesthetics', NULL, 289, 4, 5, NULL),
(6, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 290, 2, 10, NULL),
(6, NULL, NULL, NULL, '6', 'Storing', 'Belt', 'Leather', '0', 11, 3, 5, '0', 6, '1', 10, 3, 'Sect Z', 'AbcAbc\n', NULL, 291, 6, 10, NULL),
(5, NULL, NULL, NULL, '1', 'Abcd', 'Pencil', 'Black', 'good', 12, 2, 10, 'yes', 2, 'service', 13, 11, 'SECTION A', 'kutfmhgf', NULL, 296, 1, 10, NULL),
(7, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 10, 1, 'SECTION B', 'AEF', NULL, 298, 2, 10, NULL),
(7, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 30, 0, '0', 0, 'Service', 10, 1, 'Section C', 'Good Aesthetics', NULL, 299, 4, 5, NULL),
(7, NULL, NULL, NULL, '5', 'Material', 'Ball', 'Football', '0', 20, 10, 2, 'yes', 18, 'Not Service', 10, 10, 'Section B', 'Good stuff', NULL, 300, 5, 10, NULL),
(7, NULL, NULL, NULL, '1', 'Abcd', 'Pencil', 'Black', 'good', 12, 2, 10, 'yes', 2, 'service', 5, 11, 'SECTION A', 'kutfmhgf', NULL, 301, 1, 10, NULL),
(8, NULL, NULL, NULL, '4', ' Malaysia', 'Chair', 'Grey', '0', 4, 3, 0, '0', 0, 'Service', 5, 1, 'Section C', 'Good Aesthetics', NULL, 308, 4, 5, NULL),
(8, NULL, NULL, NULL, '1', 'Abcd', 'Pencil', 'Black', 'good', 12, 2, 10, 'yes', 2, 'service', 10, 11, 'SECTION A', 'kutfmhgf', NULL, 309, 1, 10, NULL),
(7, NULL, NULL, NULL, '7', 'Product', 'Laptop', 'HP', '0', 12, 10, 0, '0', 0, '0', 10, 50, 'Sec AB', 'Good Quality', NULL, 310, 7, 1, NULL),
(9, NULL, NULL, NULL, '7', 'Product', 'Laptop', 'HP', '0', 50, 10, 0, '0', 0, '0', 1, 50, 'Sec AB', 'Good Quality', NULL, 311, 7, 1, NULL),
(9, NULL, NULL, NULL, '2', 'jgv', 'Desk', 'ear', 'er', 10, 6, 2, 'no', 2, 'service', 2, 1, 'SECTION B', 'AEF', NULL, 312, 2, 10, NULL),
(9, NULL, NULL, NULL, '1', 'Abcd', 'Pencil', 'Black', 'good', 12, 2, 10, 'yes', 2, 'service', 10, 11, 'SECTION A', 'kutfmhgf', NULL, 313, 1, 10, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`commentid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`companyid`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`documentid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `estimate`
--
ALTER TABLE `estimate`
  ADD PRIMARY KEY (`estimateid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `Productserviceid` (`Productserviceid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`expensesid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `Productserviceid` (`Productserviceid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `invoice_private_notes`
--
ALTER TABLE `invoice_private_notes`
  ADD PRIMARY KEY (`invoicepvtnoteid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `markinvoice`
--
ALTER TABLE `markinvoice`
  ADD PRIMARY KEY (`paymentid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `Productserviceid` (`Productserviceid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `porder`
--
ALTER TABLE `porder`
  ADD PRIMARY KEY (`porderid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `Productserviceid` (`Productserviceid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `productservice`
--
ALTER TABLE `productservice`
  ADD PRIMARY KEY (`Productserviceid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `recurring`
--
ALTER TABLE `recurring`
  ADD PRIMARY KEY (`recurringid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`smsid`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `sms_account`
--
ALTER TABLE `sms_account`
  ADD PRIMARY KEY (`smsaccountid`),
  ADD KEY `smsid` (`smsid`),
  ADD KEY `companyid` (`companyid`);

--
-- Indexes for table `storingproduct`
--
ALTER TABLE `storingproduct`
  ADD PRIMARY KEY (`storingproductid`),
  ADD KEY `companyid` (`companyid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `companyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estimate`
--
ALTER TABLE `estimate`
  MODIFY `estimateid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `expensesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoiceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `invoice_private_notes`
--
ALTER TABLE `invoice_private_notes`
  MODIFY `invoicepvtnoteid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markinvoice`
--
ALTER TABLE `markinvoice`
  MODIFY `paymentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `porder`
--
ALTER TABLE `porder`
  MODIFY `porderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `productservice`
--
ALTER TABLE `productservice`
  MODIFY `Productserviceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `recurring`
--
ALTER TABLE `recurring`
  MODIFY `recurringid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `smsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sms_account`
--
ALTER TABLE `sms_account`
  MODIFY `smsaccountid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storingproduct`
--
ALTER TABLE `storingproduct`
  MODIFY `storingproductid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `estimate`
--
ALTER TABLE `estimate`
  ADD CONSTRAINT `estimate_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_ibfk_2` FOREIGN KEY (`Productserviceid`) REFERENCES `productservice` (`Productserviceid`) ON DELETE CASCADE,
  ADD CONSTRAINT `estimate_ibfk_3` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_private_notes`
--
ALTER TABLE `invoice_private_notes`
  ADD CONSTRAINT `invoice_private_notes_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `markinvoice`
--
ALTER TABLE `markinvoice`
  ADD CONSTRAINT `markinvoice_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `porder`
--
ALTER TABLE `porder`
  ADD CONSTRAINT `porder_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `porder_ibfk_2` FOREIGN KEY (`Productserviceid`) REFERENCES `productservice` (`Productserviceid`) ON DELETE CASCADE,
  ADD CONSTRAINT `porder_ibfk_3` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `productservice`
--
ALTER TABLE `productservice`
  ADD CONSTRAINT `productservice_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `recurring`
--
ALTER TABLE `recurring`
  ADD CONSTRAINT `recurring_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `recurring_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `sms`
--
ALTER TABLE `sms`
  ADD CONSTRAINT `sms_ibfk_1` FOREIGN KEY (`customerid`) REFERENCES `customer` (`customerid`) ON DELETE CASCADE,
  ADD CONSTRAINT `sms_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `sms_account`
--
ALTER TABLE `sms_account`
  ADD CONSTRAINT `sms_account_ibfk_1` FOREIGN KEY (`smsid`) REFERENCES `sms` (`smsid`) ON DELETE CASCADE,
  ADD CONSTRAINT `sms_account_ibfk_2` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;

--
-- Constraints for table `storingproduct`
--
ALTER TABLE `storingproduct`
  ADD CONSTRAINT `storingproduct_ibfk_1` FOREIGN KEY (`companyid`) REFERENCES `company` (`companyid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
