-- MySQL dump 10.11
--
-- Host: localhost    Database: bims_development
-- ------------------------------------------------------
-- Server version	5.0.67-0ubuntu6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `page_contents`
--

DROP TABLE IF EXISTS `page_contents`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `page_contents` (
  `id` int(11) NOT NULL auto_increment,
  `pg_title` varchar(255) default NULL,
  `pg_heading` varchar(255) default NULL,
  `pg_content` text,
  `sb_title` varchar(255) default NULL,
  `sb_content` text,
  `created_at` datetime default NULL,
  `updated_at` datetime default NULL,
  `pg_name` text,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `page_contents`
--

LOCK TABLES `page_contents` WRITE;
/*!40000 ALTER TABLE `page_contents` DISABLE KEYS */;
INSERT INTO `page_contents` VALUES (1,'Baobab Inventory Management System: Home Page','Welcome to Ruby on Rails','This is <strong>Ruby on Rails </strong>, a powerful frame-work for creating dynamic web content for web 2.0 applications.','Rails on Your Web','Rails accepts incoming requests from a browser, decodes the request to find a controller, and calls an action method in that controller.','2009-04-23 09:03:36','2009-04-23 09:03:36','home'),(2,'Baobab Inventory Management System: About Page','Who are we actually?','<p>\r\nWe are new programmers. We are trying Ruby on Rails. There are several things were trying to work around. \r\n</p>\r\n\r\n<p>\r\nWe know that we will achieve what we are longing for.\r\n</p>','Rails Rocks','If it doesn\'t then what will? Try it and you will see wonders!!','2009-04-23 09:12:58','2009-04-23 09:12:58','about'),(3,'Contact Us','How can you Contact me','You can easily contact me through the following details:\r\n<p>\r\n<br><b>Edmond Kachale </b></br>\r\n<br>Baobab Health Trust </br>\r\n<br>Box 31797, Lilongwe 3, Malawi</br>\r\n<br>Cell: 0 999 465 137 </br>\r\n<br>Email: edmond@baobabhealth.com</br>\r\n</p>','Did you try Rails?','If you haven\'t, then there is a lot of thing that you are missing. Why should you miss them?\r\n<br>\r\nJust give it a try and it will give a trail!!\r\n</br>','2009-04-23 11:03:32','2009-04-24 11:15:50','contact'),(4,'Adminstration','Adminstration Section','<h3>Please login to view Administrative options</h3>\r\n<br></br>\r\n<div class=\"openmrs-form\" >\r\n  <fieldset>\r\n    <legend>Please Log In</legend>\r\n        <% form_tag do %>\r\n      <table>\r\n       <p>\r\n         <tr>\r\n            <td> <label for=\"name\" >Name:</label> </td>\r\n            <td> <%= text_field_tag :username, params[:username] %></td>\r\n         </tr>\r\n         <tr>\r\n            <td> <label for=\"password\" >Password:</label> </td>\r\n            <td> <%= password_field_tag :password, params[:password] %></td>\r\n         </tr>\r\n         <tr>\r\n            <td></td><td><%= submit_tag \"Login\" %></td>\r\n         </tr>\r\n       </p>\r\n       </table>\r\n    <% end %>\r\n\r\n  </fieldset>\r\n</div>\r\n','Have you Login','If you haven\'t, then there is a lot of thing that you are missing. Why should you miss them?\r\n<br>\r\nJust give it a try and it will give a trail!!\r\n</br>','2009-04-23 11:04:43','2009-04-27 14:32:53','login'),(5,'Baobab Inventory Management System: Add User Page',' Adding Users Form ','<div class=\"openmrs-form\" >\r\n  <%= error_messages_for \'users\' %>\r\n  <fieldset>\r\n    <legend>Enter User Details</legend>\r\n    <% form_for :users do |form| %>\r\n    <table>\r\n       <p>\r\n         <td><label for=\"user_name\" >Name:</label> </td>\r\n         <td><%= form.text_field :username, :size => 40 %> </td>\r\n         </tr> <tr>\r\n         <td> <label for=\"user_password\" >Password:</label> </td>\r\n         <td> <%= form.password_field :password, :size => 40 %></td>\r\n         </tr> <tr>\r\n         <td> <label for=\"user_password_confirmation\" >Confirm:</label> </td>\r\n         <td> <%= form.password_field :password_confirmation, :size => 40 %></td>\r\n         </tr><tr>\r\n         <td></td><td><%= submit_tag \"Add User\" , :class => \"submit\" %></td>\r\n         </tr>\r\n       </p>\r\n       \r\n      </table>\r\n    <% end %>\r\n  </fieldset>\r\n</div>\r\n','Who wants to join?','You can add your friends here\r\n<br>\r\nLet them also have a test of Ruby on Rails.\r\n</br>','2009-04-23 13:45:51','2009-04-23 13:45:51','add_user');
/*!40000 ALTER TABLE `page_contents` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2009-04-30 11:10:48
