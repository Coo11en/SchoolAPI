-- MySQL dump 10.13  Distrib 8.0.34, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: SAPI
-- ------------------------------------------------------
-- Server version	8.0.34-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `achievements`
--

DROP TABLE IF EXISTS `achievements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `achievements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `achievements`
--

LOCK TABLES `achievements` WRITE;
/*!40000 ALTER TABLE `achievements` DISABLE KEYS */;
/*!40000 ALTER TABLE `achievements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `album_photo`
--

DROP TABLE IF EXISTS `album_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `album_photo` (
  `photo_id` bigint unsigned NOT NULL,
  `main_img` tinyint(1) NOT NULL DEFAULT '0',
  `album_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `album_photo_photo_id_foreign` (`photo_id`),
  KEY `album_photo_album_id_foreign` (`album_id`),
  CONSTRAINT `album_photo_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE,
  CONSTRAINT `album_photo_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `album_photo`
--

LOCK TABLES `album_photo` WRITE;
/*!40000 ALTER TABLE `album_photo` DISABLE KEYS */;
INSERT INTO `album_photo` VALUES (1,0,1,NULL,NULL),(2,0,1,NULL,NULL),(3,0,1,NULL,NULL),(4,0,1,NULL,NULL),(5,0,1,NULL,NULL),(6,0,1,NULL,NULL),(7,0,1,NULL,NULL),(8,0,1,NULL,NULL),(9,0,2,NULL,NULL),(10,0,2,NULL,NULL),(11,0,2,NULL,NULL),(12,0,2,NULL,NULL),(13,0,2,NULL,NULL),(14,0,3,NULL,NULL),(15,0,3,NULL,NULL),(16,0,3,NULL,NULL),(17,0,3,NULL,NULL),(18,0,3,NULL,NULL),(19,0,3,NULL,NULL),(20,0,3,NULL,NULL),(21,0,3,NULL,NULL),(22,0,4,NULL,NULL),(23,0,4,NULL,NULL),(24,0,4,NULL,NULL),(25,0,4,NULL,NULL),(26,0,4,NULL,NULL),(27,0,4,NULL,NULL),(28,0,4,NULL,NULL),(29,0,4,NULL,NULL),(30,0,4,NULL,NULL),(31,0,4,NULL,NULL),(32,0,5,NULL,NULL),(33,0,5,NULL,NULL),(34,0,5,NULL,NULL),(35,0,5,NULL,NULL),(36,0,5,NULL,NULL),(37,0,5,NULL,NULL),(38,0,5,NULL,NULL),(39,0,5,NULL,NULL),(40,0,5,NULL,NULL),(41,0,6,NULL,NULL),(42,0,6,NULL,NULL),(45,0,6,NULL,NULL),(46,0,6,NULL,NULL),(47,0,6,NULL,NULL),(48,0,6,NULL,NULL),(49,0,6,NULL,NULL),(50,0,6,NULL,NULL),(51,0,6,NULL,NULL),(52,0,6,NULL,NULL),(52,1,6,NULL,NULL),(40,1,5,NULL,NULL),(31,1,4,NULL,NULL),(21,1,3,NULL,NULL),(13,1,2,NULL,NULL),(8,1,1,NULL,NULL),(53,1,7,NULL,NULL),(53,1,7,NULL,NULL),(54,1,8,NULL,NULL),(55,1,9,NULL,NULL),(56,0,9,NULL,NULL),(57,0,9,NULL,NULL),(58,1,10,NULL,NULL),(58,1,10,NULL,NULL),(58,1,10,NULL,NULL),(59,0,10,NULL,NULL);
/*!40000 ALTER TABLE `album_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `nameEng` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `relationship` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Президентские состязания',NULL,'prezidentskie_sostyazaniz',1,NULL,'2023-10-16 20:36:09','2023-10-16 20:36:09'),(2,'Интеллектуальный квиз «Где логика?»','Проводили сотрудники МКУ Зареченский ДК по Пушкинской карте','gde_logika',1,NULL,'2023-10-16 20:37:33','2023-10-16 20:37:33'),(3,'Разговоры о важном тема: «О взаимоотношениях в коллективе»','У младшего школьника добрые отношения и соперничество переплетены друг с другом: с одной стороны, ребёнок хочет «быть как все», с другой — «быть лучше всех».','razgovori_o_vazhnom_vzaimootnosheniya',1,NULL,'2023-10-16 20:39:32','2023-10-16 20:40:02'),(4,'Разговоры о важном \"По ту сторону экрана. 115 лет кино в России\"','Кино, наряду с литературой и театром, позволяет человеку увидеть себя, как в «зеркале», соотнести свои поступки с поступками героев, учит анализировать и рефлексировать/','razgovori_o_vazhnom_kino',1,NULL,'2023-10-16 20:42:08','2023-10-16 20:42:08'),(5,'День самоуправления','5 октября 2023 года в школе традиционно прошел день самоуправления, где ребята смогли попробовать себя в роли учителя.','den_samoupravleniya',1,NULL,'2023-10-16 20:43:24','2023-10-16 20:43:24'),(6,'День учителя','День учителя - замечательный праздник, когда можно выразить свою благодарность педагогам за их непростой и благородный труд, за внимание и терпение, за желание видеть своих учеников успешными и счастливыми.','den_uchitelya',1,NULL,'2023-10-16 20:44:20','2023-10-16 20:44:20'),(7,'NEWS флешмоб «Поздравь учителя!»',NULL,'pozdrov_uchitelya',0,0,'2023-10-16 23:10:42','2023-10-17 20:55:02'),(8,'NEWS Онлайн конкурс \"Родные места\"',NULL,'rodnie_mesta',0,0,'2023-10-16 23:30:03','2023-10-17 20:54:34'),(9,'NEWS III Форум классных руководителей',NULL,'3_forum_klassnih_rukovoditelei',0,0,'2023-10-16 23:33:07','2023-10-17 20:54:12'),(10,'Заглушка',NULL,'no_photo',0,0,'2023-10-17 00:02:52','2023-10-17 20:53:38');
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals`
--

DROP TABLE IF EXISTS `appeals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `question` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `response` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `category_id` bigint unsigned NOT NULL,
  `top_questions` tinyint(1) NOT NULL DEFAULT '0',
  `date_completion` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `appeals_category_id_foreign` (`category_id`),
  CONSTRAINT `appeals_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `appeals_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals`
--

LOCK TABLES `appeals` WRITE;
/*!40000 ALTER TABLE `appeals` DISABLE KEYS */;
INSERT INTO `appeals` VALUES (1,'Vel quia iste placeat quas. Aut natus ea provident veniam. Laboriosam tenetur ut eos quisquam.','qkulakov@example.com','Est error nemo repellat tempore eos autem excepturi. Cumque quibusdam dolorem et eos iste rerum. Possimus non molestiae sit repudiandae magnam tempore in dolores. Perspiciatis et possimus sapiente quia nobis est enim. Non aut iure dignissimos aspernatur et nobis.',0,'Sunt consequuntur magni dolorem ut itaque. Autem quia molestiae minima dicta blanditiis nostrum possimus. Quas beatae laborum tenetur perspiciatis enim ea dolore atque. Pariatur quas ut cupiditate porro laboriosam. Deleniti eum laborum eos nostrum est. Quae sit qui hic aperiam quis id voluptates porro. Blanditiis ut placeat provident alias et ipsam eum. Magnam ea quia quisquam perspiciatis sit excepturi modi praesentium. Fuga repellendus autem officiis est. Eos ut et quos nesciunt. Eveniet eaque beatae aut. Voluptas sapiente earum reprehenderit maxime perspiciatis qui qui. Voluptatem quas facilis repellendus et totam tempora id sed. Molestiae totam autem explicabo nam iusto. Voluptatum consequuntur et recusandae. Quis nam velit quos accusamus rerum ratione harum. Tempora nesciunt harum ipsum id rerum iure neque vero. Hic numquam soluta debitis quam. Sed est reiciendis qui consequuntur voluptas. Impedit expedita enim sed rem. Dolorem voluptatem expedita nisi modi. Minima magni ea molestiae accusamus consequatur dolorem. Molestiae quidem inventore consequuntur laudantium. Et aperiam amet consequuntur quos ut et. Recusandae ut porro harum est deleniti nihil. Eos et mollitia qui dolore. Vitae non est ut deleniti iste sunt. Repudiandae ipsum autem eveniet sequi est non eos. Quisquam aut dolor numquam quisquam in. Ipsum non corporis deserunt repellendus commodi reprehenderit. Ducimus illo rerum atque sit laboriosam accusantium. Blanditiis ut voluptatem dolorem vero neque optio. Qui eligendi ad quo quisquam vitae. Temporibus voluptas accusantium dignissimos quibusdam ea. A voluptas omnis earum officia. Et natus in non debitis harum. Non qui tenetur odit soluta placeat modi. Minima veniam quibusdam voluptas blanditiis placeat magni praesentium. Est error aperiam omnis debitis incidunt. Assumenda reprehenderit non aut quia. Nobis ipsum qui rerum itaque placeat repellat eos. Corrupti veniam laudantium ducimus non odit. Tempore animi non aliquam. Id doloremque qui amet totam doloribus. Omnis temporibus tenetur aperiam placeat quis eos fugit. Voluptates et in expedita molestiae. Cupiditate et ut numquam assumenda iure recusandae. Voluptatum maiores assumenda distinctio dolorem nostrum perferendis dolores. Autem consequatur eos dolore aspernatur distinctio consequatur accusantium. Officiis sapiente et sed fugit. Ad numquam aliquid qui id ducimus quae. Minus blanditiis esse alias ad. Est possimus asperiores illum rerum. Cum quibusdam ipsam beatae iste et dolores in. Voluptatum voluptatum consequatur quo culpa quisquam corporis excepturi. Eius dolores dolorem corrupti corporis. Enim exercitationem consequatur debitis eaque et. Sed et ratione sapiente tenetur incidunt reprehenderit minus. Qui numquam voluptatem laudantium qui aliquid nihil ipsum. Voluptas quasi omnis pariatur. In quaerat dolor quia quibusdam sunt repudiandae expedita.',2,1,NULL,'2022-02-16 09:48:29','2022-09-11 12:57:34'),(2,'Quis dolor natus animi quibusdam. Ex consequatur sit quasi praesentium pariatur provident. Aspernatur doloremque voluptas esse quisquam explicabo dignissimos sed. Corporis eum cum quasi quam non qui.','egor15@example.net','Voluptate tempora tempora natus pariatur et sequi. Qui voluptas voluptatibus qui qui et. Odit et quam velit. Magni culpa dignissimos amet libero molestias quis. Non laudantium perspiciatis enim sunt. Quae sit cum possimus voluptate facilis. Qui cupiditate omnis dignissimos vero ut quidem ut sint.',0,'Ut et officia dolorem sunt. Impedit explicabo aut amet ex. Provident ut corporis eos aspernatur ipsam est non. Accusantium accusantium quia dolorem quam et odio aut neque. Quisquam eum consequatur blanditiis. Suscipit hic nisi voluptatem adipisci excepturi odio quo voluptatum. Quo pariatur laudantium ad itaque quia distinctio quo. Necessitatibus quo eveniet eum et nostrum in. Eveniet nulla laborum dolores repellat labore quis explicabo. Qui fugit perferendis amet cupiditate illum magnam. Est cupiditate id iusto quam. Nemo error nihil quaerat ad eaque aut et dicta. Est omnis blanditiis molestiae. Aut placeat asperiores tenetur rerum. Dolorum minima ratione quidem. A rerum autem et reiciendis voluptatem nostrum. Tenetur nam blanditiis eos neque sunt. Nemo alias accusantium saepe quaerat expedita veritatis qui. Quasi fugiat odio qui rerum cumque dolor eos est. Officiis vel voluptatem eos provident accusantium et ex ea. Deserunt neque in quam id aperiam velit fugiat. Et est ut ipsam reiciendis sunt dolorum voluptas. Pariatur sed ut veritatis voluptatibus sit. Ipsum minima quo ut saepe debitis officia. Dolor eum veniam voluptatum. Veniam consectetur explicabo ut illum quisquam enim. Quia aperiam qui autem deleniti modi. Est et vero natus et. Eveniet veniam sequi cupiditate vel voluptas. Modi rem voluptatem a sed itaque hic pariatur. Officiis deleniti quisquam dolor ad. Voluptatem accusantium tempore amet sed nulla. Doloribus quos corporis dolores molestias eligendi dolorem cum. Repudiandae reiciendis eos error quasi sed. Velit cumque voluptas est consequuntur unde aut architecto. Quasi quas sequi non voluptas ut vel nam. Totam nulla modi qui unde nulla rerum. Vitae dolor dolorem beatae voluptas deserunt esse vero corrupti. Nesciunt inventore laborum aut. Natus ipsum nesciunt corrupti deserunt et. Qui provident non corporis quis. Et est repellendus cupiditate placeat eius. Qui ratione blanditiis debitis alias a fugit consequatur voluptatibus. Id optio commodi quam voluptates voluptatem consectetur. Occaecati iusto autem error. Aut fuga quia magnam quia porro. Velit quae omnis velit vero in nesciunt ea. Voluptas et aliquid aut pariatur inventore quis enim eum. Sint quia voluptatem accusamus voluptate et. Quod est aperiam doloremque earum voluptatibus. Ullam odit minima blanditiis non nam illo. Et voluptatum blanditiis qui tenetur dolorem. Eum accusantium architecto deserunt et eius tenetur. Quas temporibus ut animi. Error perferendis exercitationem nostrum ipsum magni eum. Cupiditate fuga asperiores laborum at in sunt. Non aut illum tenetur sint nobis. Numquam quae est non et omnis. Et earum aut ut. Natus praesentium minus et ratione. Aut nostrum voluptatem est aut. Voluptas voluptatibus incidunt ut aut. Commodi sit labore eum unde dolore dignissimos. Voluptatem id harum ex deserunt tenetur.',2,0,'2023-10-17 01:43:52','2019-11-21 16:59:30','2020-08-24 02:50:19'),(3,'Quia ad est rem at. Et eius consequatur dolor eaque sed fugit porro. Omnis et et velit.','kudryvteva.zinaida@example.com','Quasi perferendis qui nobis corporis nihil provident. Amet provident numquam odit quibusdam ratione qui id. Ipsa placeat perspiciatis alias ad debitis aut sint. Et et rerum vitae cum.',0,'Est sed aut eum rerum fuga in ipsum. Quisquam totam et eligendi quis quidem maxime doloribus. Aliquam esse autem recusandae voluptatem veritatis consequatur repudiandae. Unde cum labore itaque blanditiis pariatur. Qui neque harum adipisci est. Eligendi dicta sed commodi ad nesciunt ut eum. Reprehenderit rerum ut sed modi reprehenderit odit doloremque. Fugiat deserunt saepe maxime qui. Accusantium vel atque labore sequi dolorum quod. Est beatae ullam qui natus tempora nihil voluptatem. Dicta et sapiente et quos totam harum. Est illo cumque quod magnam quis inventore sed accusamus. Mollitia blanditiis quam rerum nesciunt aut non. Nesciunt pariatur quo est hic. Quia quos ut vitae dolorem. Et expedita et quas aut tempora vitae ut cum. Commodi quia sint sequi rerum sint qui consequuntur. Perspiciatis asperiores nihil eligendi corrupti dolores. Corrupti nemo veniam repellendus ex. Sapiente cupiditate consequuntur excepturi est explicabo sed doloribus. Est facilis iure ratione praesentium sint sapiente. Repellat sunt et iure ipsam. Qui suscipit molestias aut sed. Dolorem quo fugit aut quibusdam sunt ad ipsa. Iure odio et molestiae assumenda. Repellendus quo perspiciatis harum quia soluta expedita. Autem veniam quos voluptates id in corrupti neque minus. Explicabo ut cum corporis. Odit voluptatem ex nulla quae placeat. Exercitationem quis corporis eum eaque esse eligendi ipsam. Dolores accusantium qui qui et. Deserunt et nam pariatur animi voluptatibus ut. Officia vel rerum eum aut ut sit quaerat. Ut enim quibusdam facere rerum qui voluptatem. Molestiae est mollitia sequi sit. Ab deserunt perferendis sapiente non quia similique nihil. Laborum voluptatibus voluptatem consequatur ab. Commodi nihil aut fugiat. Consequatur ea provident nihil voluptatem sapiente ex. Sequi facere repellat possimus sed id. Mollitia quis est at inventore omnis magni omnis ducimus. Magnam voluptatem voluptas similique a. Nisi exercitationem autem iusto rem. Sapiente consequatur tempore expedita et soluta. Minima eveniet reprehenderit eos reprehenderit nulla et. Dolor dolorum consequatur mollitia rerum iusto. Veritatis totam sit tempora dolorem veritatis aut incidunt. Molestiae ipsa eius fuga illo omnis earum a. Est aperiam accusamus provident non nulla accusantium. Iste beatae totam dolorem ea autem. Pariatur nisi iure aliquam animi. Non eveniet non est magnam ea eius. Accusamus accusantium libero consectetur ducimus itaque ut molestias rerum. Architecto nisi possimus qui earum sit et. Est voluptates nostrum vel at rerum nisi ut. Repudiandae nulla earum eius eveniet vitae error omnis. Expedita enim et accusantium aut harum. Explicabo veritatis rem tenetur sit. Officia est ratione possimus aut ratione. Tenetur dolores nisi nulla excepturi corporis reprehenderit cum. Aut earum dignissimos officiis iusto modi ipsam. Qui sequi fugiat asperiores incidunt. Qui delectus et et debitis. Nulla ex amet aliquam enim doloremque velit nemo.',1,0,'2023-10-17 01:43:52','2023-02-03 03:53:53','2023-07-16 14:48:38'),(4,'Vitae quidem tempore modi. Minus sint voluptatem illum possimus aut nobis. Id enim ut ducimus ut. Ea eum quia et sunt est accusamus quisquam. Quia autem quidem nihil tenetur rerum.','viktoriy03@example.org','Et deleniti itaque vitae iure. Natus consequatur veniam a facilis distinctio. Laudantium eos eaque voluptatem est esse.',0,'Vero nemo sit repudiandae voluptatibus cupiditate quam exercitationem. Officia modi et accusantium in labore enim. Qui excepturi praesentium accusantium est accusamus sequi et fugiat. Ea ad impedit id sit qui error. Nulla quasi quo totam cum. Molestiae suscipit voluptas accusamus corporis molestiae error et. Error culpa similique est ut quos ut et. Sequi voluptas ea nulla consectetur eaque occaecati non. Quaerat exercitationem quia architecto optio quo voluptatibus. Quibusdam eum incidunt esse rerum qui. Perspiciatis praesentium deserunt est qui ipsum nihil aut eligendi. Quia voluptatem sit asperiores. Facere cum est ut atque eos facere. Voluptatem doloremque et error voluptatibus. Quo unde ad vero deleniti esse. Eveniet ad molestiae sunt quisquam aut a. Distinctio a provident laboriosam ut amet. Soluta doloribus vero praesentium consequatur totam. Tenetur facilis et eveniet dolores voluptatum ea. Illum enim officiis nemo error est omnis. Architecto modi delectus doloribus. Ipsam sit eos et et. Voluptatem doloribus ad eligendi rem blanditiis vel natus. Ut delectus porro aut quae sed non a. Velit qui et enim deserunt repellendus laudantium in. Praesentium et voluptatum delectus numquam. Explicabo molestiae sed sit. Asperiores fugit et asperiores dolores consectetur et temporibus. Debitis voluptate sequi totam. Voluptatem ea molestiae aliquid voluptatem et sed possimus. Sapiente et et veniam ullam in optio. Dolorem et sit ab dicta qui. Nihil consequatur est aut molestiae mollitia quia. Dolores vel rerum molestias sint sunt pariatur nulla. Quisquam harum et ab dolorem occaecati. Dolor consequatur cumque numquam eum. Esse et aut nulla culpa reiciendis ab quas. Eveniet ea est libero laudantium. Aut expedita et a et impedit officia et distinctio. Dolorum odio nisi ea sunt incidunt. Et animi consectetur repellat consequatur. Nisi ut qui rem aut excepturi maxime blanditiis vitae. Nam non magnam unde distinctio laborum iusto velit. Reprehenderit consequatur aut placeat ipsa dolores fugit. Rerum reiciendis nobis voluptatem dolores rerum. Repudiandae autem id ab eos at rem iure. Dicta molestiae omnis ut perferendis quod. Veniam dicta recusandae asperiores est est veniam. Voluptatem voluptatem vel quis quia. Quam sed sit omnis ipsa minima. Laudantium illum occaecati deleniti temporibus. Cumque et esse atque architecto qui. Facilis vitae qui debitis vero. Nulla quia voluptatibus repellendus. Quaerat nihil voluptatem illum dolor quae non. Dolorum itaque labore quis facere dignissimos velit facere sit. Cumque itaque similique ea odit. Aut omnis beatae natus blanditiis cum ipsam sed. Deserunt dolorem nesciunt quo tempora rerum accusamus. Consectetur ipsa eveniet ea hic. Nisi nam nostrum tenetur eveniet. Est omnis esse et quia. Vel accusamus qui et facilis voluptas. Et eius nisi aut odit praesentium at. Quasi dolores inventore et repudiandae perspiciatis.',2,0,'2023-10-17 01:43:52','2019-05-16 16:16:16','2023-09-07 21:52:21'),(5,'Quam ut nemo totam. Soluta voluptate vel fugiat sed et molestiae animi perferendis. Magni error tempora non sit aspernatur. Necessitatibus omnis rem qui quia cupiditate harum.','rodion.nikiforova@example.net','Placeat fuga at distinctio eos est ducimus. Nihil similique rerum exercitationem a rem atque. Cumque architecto ut repudiandae aut et qui. Id eos aut dignissimos quod. Et necessitatibus libero in molestiae veniam ad.',0,'Ut tenetur sapiente qui alias aut. Sunt possimus ex totam. Sapiente ut eos nulla nulla. Dolor pariatur quia velit nam accusantium cum dolorum. Iure officiis est eaque. Sapiente cum omnis illum aut neque voluptatibus ut. Ratione consequuntur et rerum. Quo quibusdam quis laboriosam quibusdam ea. Itaque voluptas unde et dolores quas distinctio. Illum in aspernatur cumque iure ullam sequi. Sit ab ut iure et rerum sed. Voluptas voluptatibus nulla similique mollitia tenetur quasi est. Atque eum distinctio est quod non et. Dicta quis modi ipsam ullam. Eius doloribus molestiae quis voluptatem qui illum. Maiores ex est dolorem sunt ullam nihil. Est doloremque expedita et maiores est cumque. Totam molestias ducimus enim cumque numquam cumque distinctio. Quia iure non praesentium doloremque. Magni qui dicta est sunt. Dolorem molestias nobis aut velit. Quos deserunt aut excepturi velit quo eius aut iure. Dolore et dolorem voluptas voluptas ipsum. Voluptate suscipit ut eum quam unde autem. Corporis nisi animi aliquid veritatis sint minima. Exercitationem mollitia est nostrum. Et qui voluptas deleniti explicabo dolores quidem quia. Eum maxime magni vero et. Consequatur est aut nostrum quaerat optio tempora dignissimos sunt. Consequuntur unde laboriosam aliquid nesciunt est. Veritatis repellendus neque pariatur atque in minima. Consequatur occaecati ut corporis quos saepe est. Consequuntur qui ipsum voluptatem non quam iste. Non ut voluptate vitae velit. Eaque iste deleniti est necessitatibus. Rerum ut omnis earum corporis facilis. Voluptas rerum non est aut dolorem. Eos in eum harum totam quas sunt. Esse excepturi magnam tenetur fugit. Est aut corrupti deleniti dolores et et amet et. Ab iste deleniti minima facere ut. Omnis ut voluptatem odit dolorum. Voluptatem sint repellat quod qui tenetur culpa. Impedit distinctio quae eveniet necessitatibus dolores omnis. Perspiciatis hic architecto doloribus labore debitis modi. Dolores et totam et aut recusandae illum. Ut ratione sint voluptates fuga aliquid in explicabo. Et rem rerum nulla. Voluptas similique consequatur placeat molestiae maiores ab quasi cupiditate. Aut perferendis quia velit optio veritatis necessitatibus. Qui consequatur tempora cumque quo eum. Id deserunt eveniet minus ab non quas est blanditiis. Hic dolore ad cum. Enim quo voluptate voluptas rem aspernatur distinctio sit. Libero occaecati impedit quisquam et sint et. Aperiam a saepe quam eum consequatur. Explicabo iusto reprehenderit consequatur tenetur possimus libero aut. Repellendus a voluptatem laborum est amet qui nihil. Consequatur quis quos ratione. Hic asperiores quo quo hic expedita a et. Nemo commodi neque quo illum quia. Consequatur est vitae reprehenderit quas voluptates voluptatibus. Laboriosam soluta consequatur dolor eius. Ut ducimus omnis illo qui culpa quidem. Enim repellendus iste optio qui quibusdam omnis. Dignissimos sunt aut voluptatum tempora beatae sunt exercitationem. Aut vel voluptas eveniet perferendis alias.',1,0,'2023-10-17 01:43:52','2023-06-15 04:52:57','2023-07-21 00:33:44'),(6,'Ab est ipsum excepturi illum. Est harum voluptatum quod mollitia. Molestiae velit nihil praesentium beatae.','vladlena73@example.net','Accusantium voluptatem facilis sequi ea earum accusamus. Sapiente officiis laudantium et vel necessitatibus. Reprehenderit ea hic optio distinctio quis possimus. Et quas ut porro error eum.',0,'Perspiciatis repellendus non omnis voluptatum. Quibusdam sint sapiente et nobis. Voluptate assumenda qui delectus. Consequatur cum beatae aut vel illo quia quasi. Deleniti officia neque rem possimus ea dolores voluptatem. Et laborum quae omnis veritatis. Non ad expedita nobis sunt. Aut corrupti unde consequatur. Rerum quas officiis et eveniet mollitia repellendus ut voluptate. Aut officia eaque quia quam sed. Fugiat ipsum velit laboriosam. Et autem ipsam amet totam sint praesentium in. Est iusto dolorem pariatur nihil enim dignissimos sunt. Cupiditate voluptates aut eos sunt. Dolore qui unde magni repellat nulla non quo reprehenderit. Aliquam qui modi et doloremque sequi eum. Eveniet temporibus aliquid reprehenderit qui aliquam quod. Iusto dolor nisi laboriosam saepe dolor est iure. Eos voluptas sit cumque quas voluptas et quia atque. Quas laborum architecto molestiae modi est corrupti at vitae. Nobis voluptatibus laudantium sed commodi a corrupti aut debitis. Aspernatur velit debitis non eaque non molestiae et unde. Et minima quia et dicta aut nihil. Error harum quidem soluta odio nisi. Perferendis facere optio ipsum culpa ut nostrum ea illo. Eius sunt qui numquam dolores. Reiciendis sed facere ab sed ab temporibus. In eos magni consequatur veritatis occaecati. Atque suscipit quos dolorem. Cum magni non ut quia minus quisquam. Dolores non sit quia labore voluptates qui delectus. Dolores consequatur temporibus repellat deleniti deserunt commodi similique. Atque aut ut qui ea asperiores molestiae culpa. Nulla debitis fugiat non ad quo. Esse ut blanditiis voluptatem. Velit ratione ut ut enim maxime cumque. Autem provident nemo est vel sunt id sed sed. Distinctio porro hic sit nihil eum sit. Sequi quos libero veniam ipsum. Ratione perferendis odit consequuntur aspernatur corporis. Eaque consectetur cumque est a quis. Quo officiis nihil officia excepturi et iusto ullam. Soluta ad ullam nemo modi quidem nesciunt autem. Qui aliquam earum facere facilis officia. Unde quis id harum. Aut dolores ipsam quis corporis laborum cum iusto. Dolor blanditiis quia animi laudantium. Vel iusto ab rem cumque et repellendus quo consectetur. Neque quia qui quo dolorem magnam non. Necessitatibus veniam cum sunt minima est rerum. Alias dolore est eligendi consectetur quaerat. Nostrum dolores non culpa minima nemo non. Qui eligendi quasi assumenda dolorem. Eum dignissimos aut explicabo fugiat. Adipisci error non esse vitae. Laboriosam consequatur aut dolores ex alias tempora. Enim in ut tenetur aliquid. Voluptatibus velit commodi hic hic. Facilis provident eaque necessitatibus veniam a enim et sit. Doloribus tenetur aut autem consectetur odio. Excepturi totam sunt voluptas voluptas. Sint fuga sapiente officia eum sint harum. Corporis sed animi non omnis amet quaerat perspiciatis. Dolor odio soluta dolor. Voluptatem deleniti iusto eum accusamus rerum ratione.',2,1,'2023-10-17 01:43:52','2019-01-23 14:55:22','2022-11-03 00:42:32'),(7,'Velit aut ipsam vel modi voluptas illum. In beatae sequi nulla officia quis hic. Ducimus architecto facilis porro nihil quo repellendus repudiandae.','tmamontova@example.org','Ratione aut reiciendis accusamus dolorem molestiae tempore. Maiores vel commodi voluptate qui. Id minus eaque amet dolor neque ut nisi.',0,'Autem cupiditate autem vel sed et voluptas dolor. Aut quam laboriosam vitae sapiente sunt totam aliquam. Fuga est omnis beatae dolores accusantium perspiciatis. Explicabo sed debitis et est. Et quam adipisci aut neque ea cumque dolorem. Voluptatem sint quia et. Consequatur vel totam quo saepe quo. Aliquid ad consequuntur nihil cumque non sapiente. Aliquam pariatur et et illo. Animi vel iste inventore consequatur ipsam ut est. Voluptatibus id voluptatem est doloribus velit ea et. Accusamus corrupti quos occaecati necessitatibus dolores qui repudiandae nesciunt. Nesciunt vitae et culpa ducimus nisi. Est voluptatum aut accusamus ea. Rerum veritatis laborum atque perspiciatis nostrum esse temporibus et. Qui aut dolorem suscipit rerum veritatis. Officiis ea nulla expedita numquam sapiente non. Accusantium atque odio quia aut dicta aliquam qui. Quidem est quia enim sed libero iure. Debitis id repudiandae odit aut consequatur sed voluptates. Accusantium ducimus magni nostrum suscipit. Doloribus perspiciatis expedita provident in incidunt voluptatibus repellat. Ipsa facilis inventore nesciunt dicta quidem. Rerum quod porro enim quasi. A illum laborum laudantium. Quas voluptates vel expedita at dolores dolorem aliquid. Quis quo ipsa odio ut inventore consectetur. Quas velit molestiae earum ab sapiente assumenda est. Consequatur sint recusandae odio blanditiis qui. Non quae illum necessitatibus provident qui molestiae. Atque consectetur facilis est soluta omnis voluptas dolorem. Quod architecto rerum magni consequatur voluptatem amet occaecati ut. Suscipit cupiditate quis temporibus et. Mollitia eos est omnis saepe quas. Saepe similique et esse. Quia voluptatem atque sit laudantium impedit aut id ut. Hic a et facere rerum id modi odit. Facilis voluptatem necessitatibus et voluptas fugiat rem officia sed. Nobis aut nihil labore cupiditate et perferendis. Voluptatem debitis dolores tenetur laudantium dolorum voluptas. Reiciendis quidem repellat expedita quia et. Facere et est temporibus culpa. Iste amet aut aut accusamus veniam nihil similique. Culpa repellat impedit soluta. Temporibus et hic quia accusantium eveniet qui aut ut. Ex similique non odit vitae sit tempore maiores. Dolor distinctio nihil esse et autem omnis. Aut architecto enim necessitatibus consequuntur aut aliquam sint. Aut unde consectetur ut commodi commodi alias. Corporis quam dolores sint recusandae. Tenetur nam perferendis blanditiis illum nam quidem. Praesentium error hic blanditiis velit. Assumenda autem doloremque velit maiores a optio. Error harum atque qui accusamus. Quo autem corrupti omnis consequatur iste. Et velit sit temporibus qui distinctio pariatur dignissimos. Et assumenda corrupti debitis architecto vel ut. Fugit distinctio velit labore quasi. Molestias expedita quam itaque repellendus magni odio est. Eum aut occaecati quidem ut tempora explicabo.',2,1,NULL,'2020-05-29 14:33:38','2021-10-31 00:26:29'),(8,'Sequi animi tenetur accusamus sequi numquam. Quis vel delectus nesciunt beatae nisi. Repudiandae enim fuga sit ut perspiciatis eaque. Ut maxime cumque debitis ab eveniet omnis voluptatem.','sdyckova@example.org','Possimus eum velit dolorem eum. Repellat consequatur iure asperiores et. Aliquid officia nihil sunt harum numquam id et. Explicabo quas excepturi itaque totam autem eius minima. Qui eum voluptas hic saepe ullam suscipit quia et.',0,'Unde consequatur magni deleniti sunt libero debitis in voluptatem. Id tempora dolorum commodi sed quo. Velit aut maxime repellat aut. Et et vel tempora nobis et nobis est. Quia eveniet sequi ut. Ipsa porro id ea sit. Iusto nulla possimus est eius iure. Tenetur quia commodi ipsum. Ab aliquam vero ipsum voluptatem in praesentium id fuga. Magni ea vero exercitationem explicabo aut voluptas exercitationem. Possimus molestiae veniam quasi mollitia asperiores. Fugiat qui placeat et ut veniam rerum. Et rerum ut iste vel. Ipsam iure enim quibusdam enim omnis ut. Ea autem laudantium ut rem magnam possimus iusto sunt. Ut ab rem minima voluptatem est. Adipisci debitis dolor est cum ut. Inventore pariatur maxime voluptas maxime veniam est corrupti. Dicta est ducimus nihil magni est. Est minima magni nostrum est voluptas natus est saepe. Ipsa officia et blanditiis nesciunt. Ducimus aperiam debitis nostrum quisquam. Aperiam ullam pariatur rem aliquid inventore libero enim. Dolorem qui sit deserunt porro. Quam laborum iure alias laboriosam explicabo. Exercitationem autem temporibus doloribus non nihil voluptas labore. Voluptatibus ut molestiae ut voluptas consequatur. Occaecati voluptatem soluta provident consectetur fugiat aut eos. Dicta qui molestiae doloremque dolorem repellat voluptatem. Qui fuga qui voluptatem voluptatem mollitia est veritatis. Velit repudiandae aut dolore iste. Non voluptate vero aspernatur magnam. Voluptates eligendi aut excepturi praesentium exercitationem ducimus molestiae. Ad dolores id eius nemo. Ipsum et quas minima aliquid aut odit. Neque est voluptates alias repellendus omnis. Ex blanditiis facere atque voluptatum. Enim laborum impedit culpa eos error corporis adipisci sed. Quia aliquid voluptatem quasi corporis. Assumenda molestias praesentium aliquam inventore est minus. Velit ipsam facere sint molestiae qui. Impedit similique rerum rerum qui in fugit. Illum deleniti pariatur et soluta molestias. In quibusdam incidunt repellat et aut optio ipsum. Eum eum nisi eos ea. Repellat similique nulla harum sint. Et dolor in sed fuga libero. Est esse amet voluptates nulla ut cupiditate nihil. Asperiores unde qui amet tempore sint perspiciatis adipisci aut. Alias atque magni illum pariatur est labore rerum sunt. Totam eos ducimus eveniet culpa et. Temporibus sit tenetur quidem accusantium nisi facilis. Deleniti quos inventore error iure nostrum accusantium voluptate ullam. Ut debitis consequatur et sequi. Quae voluptas non odio. Officia aut explicabo aliquid suscipit possimus ut minus voluptates. Consequuntur ut iste excepturi commodi optio ad adipisci. Aut id omnis voluptas dolor iure. Accusantium voluptas consequuntur modi excepturi exercitationem. Dolorem et quas reprehenderit expedita repudiandae quam eum. Deserunt et sunt vero. Veritatis voluptatem est voluptatibus. Sequi harum ut repellendus ut omnis ut. Temporibus ullam cum nisi sit delectus id.',1,1,NULL,'2020-07-27 04:33:30','2021-01-09 20:22:54'),(9,'Ipsa tenetur dolorem et enim ut error. Nemo ea nihil consequuntur provident. Quo exercitationem hic quidem a placeat culpa. Occaecati unde est autem soluta aut et.','gulyev.afanasii@example.net','Ut voluptatem omnis inventore quisquam voluptatem. Soluta sit id qui ut occaecati. Porro quas asperiores voluptatibus adipisci ex. Sequi fugiat quas pariatur qui et velit repellat.',0,'Eveniet voluptatum fugit voluptate non itaque ipsum. Consequuntur iusto fugiat commodi commodi possimus et animi. Autem perferendis accusantium magni voluptates. Et velit repudiandae voluptates sint sit saepe et. Id accusamus ex voluptatem animi quia ea quo. Odit eum excepturi eos ab. Autem dolores consequatur labore cum sint et architecto officia. Nostrum quis eius tenetur exercitationem tempore voluptatem. Et assumenda et quo itaque sed earum. A non rerum magni iste. Cumque debitis aliquid qui inventore quas earum officia. Nemo nam nulla aut aliquam magni in. Explicabo delectus autem vel natus exercitationem. Esse nam dignissimos porro quia doloribus quisquam. Consequuntur inventore debitis ipsa reprehenderit ducimus. Aliquam dolorum quod ea. Exercitationem nemo consequatur iure non maxime molestias assumenda. Illum nam quia ut perferendis consequatur cum. Veniam eos magnam dolores itaque non. Sapiente nihil porro nesciunt sed. Quis iusto ea sit iure id dolorem aut. Autem modi et excepturi aliquam ipsam necessitatibus ut. Quos autem aut qui maiores expedita. At quidem consequatur voluptate ducimus. Possimus aspernatur quis earum qui. Cumque reprehenderit ex facere adipisci. Quo sed et laboriosam iste odit qui voluptates. Id dolorum beatae est quia ab accusamus. Et suscipit velit nihil. Cumque et id molestiae impedit ex. Est dolorem est dicta repellendus sed. Quia hic ipsam voluptatem corrupti distinctio. Et ipsam consequatur aliquid reiciendis nisi numquam. Qui odit eligendi temporibus molestiae voluptatem repellat. Laboriosam rerum aut tenetur voluptatum dicta qui similique sit. Veritatis sed ratione voluptas adipisci voluptas id ullam. Molestiae rerum sed distinctio rerum vero. Possimus voluptas inventore et. Sit quod voluptate ut et ratione et quis. Dicta quia optio ea veritatis eum et aut. Provident eveniet quae autem recusandae incidunt. Illo quibusdam voluptate rerum fuga assumenda. Perferendis molestiae perferendis omnis deleniti excepturi qui iusto modi. Nisi vel iusto asperiores et voluptatem ut soluta. Eos rerum quis excepturi autem minima. Voluptatem ullam odio sunt at rerum. Quis nemo nisi modi aut. Molestias labore repudiandae dolorum ratione. Tenetur facere saepe cum voluptatem laboriosam distinctio aut. Ut voluptatibus sint incidunt. Atque dolore similique facere alias quas. Qui nobis tempora aut ut qui non. Et enim quam illum delectus eveniet enim totam. Velit saepe architecto libero voluptatem eum. Omnis illo explicabo id. Saepe fugit nesciunt ipsam ratione eos. Pariatur autem sit eos accusamus ipsam qui qui. Explicabo quo dolor deleniti blanditiis voluptatem impedit dicta nobis. Dolores enim laboriosam enim vel reiciendis recusandae non. Id sed ut non doloremque mollitia in. Hic neque qui beatae. Sed laborum eos voluptatum neque similique. Eligendi iure repellendus nesciunt nesciunt pariatur aut neque. Est nostrum maiores aspernatur.',1,1,NULL,'2019-12-16 05:50:46','2022-01-20 23:51:09'),(10,'Qui autem dolorem provident rerum qui quibusdam. Beatae aperiam repudiandae eos modi sint officiis magnam. Nemo aliquam similique perferendis.','bronislav.bykov@example.net','Fuga est necessitatibus molestiae. Quam debitis consequatur delectus cumque. Iste ut reiciendis et. Reiciendis facere harum sapiente fuga eligendi.',0,'Unde mollitia voluptas voluptas ex amet provident debitis. Sunt eius qui hic vel magni molestias. Velit itaque inventore expedita quia quia. Reiciendis porro odio et ratione corporis architecto. Quis et et qui eveniet architecto unde pariatur. Soluta labore voluptatem quasi qui veniam aperiam ullam. Odit sint ut officiis velit expedita. Aut enim modi facere est tempore nostrum. Earum accusamus quia molestias omnis et. Impedit nostrum velit dolor. Eius eveniet autem cumque dicta magnam sed et. Eaque sed modi nam minus est. Voluptatem ea asperiores cum iure. Quos voluptatem eius sint qui. Blanditiis repudiandae voluptatem quia nulla maxime occaecati. Sunt dolores nisi tempore fugiat quo culpa. Qui ea soluta consectetur dolores praesentium. Ut nulla commodi a accusantium dignissimos ut sequi. Autem in incidunt et aut quos. Qui aut dolores dignissimos nemo ea magnam facilis. Fuga et ratione veritatis dicta facilis. Magni fugiat qui ut odit quia possimus exercitationem. Corporis dolorem itaque voluptatem quo dolores dicta architecto magnam. Voluptas maiores et ullam facere ut rem similique. Nam iusto laboriosam ipsum fugiat aliquam aspernatur et vero. Ipsa iusto animi beatae. Repellat ea facere quibusdam eum sequi iure rem aliquam. Aut magni voluptatem alias fugiat. Quidem voluptatem animi animi perspiciatis rem voluptatem. In mollitia voluptatem dolores est id et voluptate. Impedit voluptatem nihil facilis autem ut dolorem. Dignissimos hic sapiente cum assumenda et dolores. Perferendis corrupti veniam magnam temporibus assumenda et. Voluptates nesciunt totam quidem. Quos doloribus sapiente ea ut. Et ea quisquam repellat qui excepturi aliquid aut debitis. Incidunt minus possimus dolor nisi ducimus nostrum et. Nesciunt accusamus voluptates et assumenda. Veniam laborum minima impedit aliquam fugit. Sit a necessitatibus distinctio et qui ea. Incidunt ex vel fugit quis. Odit incidunt dicta aut dolor dolore rerum. Beatae consequatur dolore eos sint et culpa repudiandae. Nisi neque voluptas molestiae consequatur aut velit. Harum quia tempora fugiat voluptas porro. Eum quasi cum iusto doloremque odio perferendis. Provident ullam ullam perspiciatis pariatur non ipsam qui. Ab cum illum temporibus dolorem dolor laudantium. Ducimus accusantium consequuntur illum esse minus incidunt asperiores voluptas. Vero odit hic dolores aut omnis. Est et recusandae voluptatem id iure aut. Hic dolore necessitatibus minus quia voluptate quo accusamus. Atque velit veniam aliquam assumenda sequi. Architecto laudantium omnis quibusdam sint. Voluptates molestias rem sunt quos. Iusto soluta ipsa ut est dolorum eum libero et. Officiis impedit sed aliquam. Cum enim autem similique eligendi. Aut aspernatur qui eum nihil magnam. Quis consequatur maiores est delectus fugiat. Eligendi placeat error dolorum quam adipisci et libero. Provident eum esse a est dolores distinctio non. Praesentium est excepturi qui alias quaerat velit.',1,1,NULL,'2023-03-19 11:24:31','2023-04-19 20:42:39');
/*!40000 ALTER TABLE `appeals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeals_categories`
--

DROP TABLE IF EXISTS `appeals_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appeals_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeals_categories`
--

LOCK TABLES `appeals_categories` WRITE;
/*!40000 ALTER TABLE `appeals_categories` DISABLE KEYS */;
INSERT INTO `appeals_categories` VALUES (1,'Вопросы о питании','Nobis dolorem doloribus corporis aliquid fugiat fugit repellendus pariatur. Animi voluptatum ullam provident quae aut. Debitis sit possimus esse voluptatem voluptatem et voluptas. Vel autem dolor dignissimos esse in nam molestiae.','2019-09-12 10:46:13','2022-11-01 16:48:17'),(2,'Вопросы директору','In dolore est ut et et id dolores dolor. Accusamus est optio corrupti dolorem ut. Odio quae suscipit ab eveniet accusamus quae natus exercitationem. Unde recusandae aut quis ea.','2020-01-16 18:20:11','2023-06-12 13:28:11');
/*!40000 ALTER TABLE `appeals_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `bannerTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `ref` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (1,'first_class','Запишите детей в первый класс','http://localhost:7777/storage/data/documents/67ed7b290a016d33a9d3af8862c8eecd.png',NULL,'2023-10-14 11:10:20','2023-10-15 08:54:33'),(2,'point','Точка роста','http://localhost:7777/storage/data/documents/7442b8d4e053d7bdfc37e2a06d336538.jpg',NULL,'2023-10-14 11:10:21','2023-10-15 08:54:11'),(3,NULL,'Департамент образования Владимирской области','http://localhost:7777/storage/data/documents/06d205bb4bb8ada4a01e4551b801fb86.jpg','https://департамент.образование33.рф/','2023-10-14 11:10:22','2023-10-15 08:53:58'),(4,NULL,'Персональные данные ДЕТИ','http://localhost:7777/storage/data/documents/5b6f91f4f95f03b96553f648f5b1e2c3.png','http://персональныеданные.дети/','2023-10-14 11:10:22','2023-10-15 08:53:38');
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cabinets`
--

DROP TABLE IF EXISTS `cabinets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cabinets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `images` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cabinets`
--

LOCK TABLES `cabinets` WRITE;
/*!40000 ALTER TABLE `cabinets` DISABLE KEYS */;
INSERT INTO `cabinets` VALUES (1,'Кабинет информатики','101','Omnis vero ut quo recusandae eum est. Voluptas quibusdam consequuntur enim. Possimus qui neque sint fuga dolorum distinctio.','\"[\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh2.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\"]\"','2023-10-16 22:43:36','2023-10-16 22:43:36'),(2,'Кабинет химии','202a','Ullam odio totam explicabo adipisci ducimus officiis. Deleniti sit error unde atque sit. Sapiente tempore labore natus et accusamus ad sit.','\"[\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/bibl1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/ikt.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/ikt.jpg\\\"]\"','2023-10-16 22:43:36','2023-10-16 22:43:36'),(3,'Кабинет физики','303','Voluptatibus totam perferendis sed nihil tempore exercitationem iste. Provident repudiandae autem earum similique laborum ad.','\"[\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/ikt.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/sport1.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/teh2.jpg\\\",\\\"http:\\\\/\\\\/\\\\u0444\\\\u0438\\\\u043b\\\\u0438\\\\u043f\\\\u043f\\\\u043e\\\\u0432\\\\u0441\\\\u043a\\\\u0430\\\\u044f-\\\\u0448\\\\u043a\\\\u043e\\\\u043b\\\\u0430.\\\\u0440\\\\u0444\\\\/wp-content\\\\/uploads\\\\/2020\\\\/09\\\\/sport1.jpg\\\"]\"','2023-10-16 22:43:36','2023-10-16 22:43:36');
/*!40000 ALTER TABLE `cabinets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `call_schedules`
--

DROP TABLE IF EXISTS `call_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `call_schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `call_number` int NOT NULL,
  `start_time` time NOT NULL,
  `lesson_time` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `call_schedules`
--

LOCK TABLES `call_schedules` WRITE;
/*!40000 ALTER TABLE `call_schedules` DISABLE KEYS */;
INSERT INTO `call_schedules` VALUES (1,1,'08:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,2,'09:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,3,'10:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,4,'11:30:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(5,5,'13:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(6,6,'14:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(7,7,'15:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(8,8,'16:00:00',45,'2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `call_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapters`
--

DROP TABLE IF EXISTS `chapters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `chapterTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `chapters_slug_unique` (`slug`) USING BTREE,
  UNIQUE KEY `chapters_chaptertitle_unique` (`chapterTitle`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapters`
--

LOCK TABLES `chapters` WRITE;
/*!40000 ALTER TABLE `chapters` DISABLE KEYS */;
INSERT INTO `chapters` VALUES (1,'common','Основные сведения','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,'struct','Структура и органы управления образовательной организацией','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,'document','Документы','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,'education','Образование','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,'eduStandarts','Образовательные стандарты и требования','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,'objects','Материально-техническое обеспечение и оснащенность образовательного процесса','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,'budget','Финансово-хозяйственная деятельность','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,'vacant','Вакантные места для приема (перевода) обучающихся','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,'dsreda','Доступная среда','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,'ezhednevnoe-menyu','Организация питания в образовательной организации','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,'first_class','Электронная запись в первый класс','active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,'point','Точка роста','active','2023-10-14 11:10:19','2023-10-14 11:10:19');
/*!40000 ALTER TABLE `chapters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classrooms`
--

DROP TABLE IF EXISTS `classrooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classrooms` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `cabinet_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `classrooms_teacher_id_foreign` (`teacher_id`),
  KEY `classrooms_cabinet_id_foreign` (`cabinet_id`),
  CONSTRAINT `classrooms_cabinet_id_foreign` FOREIGN KEY (`cabinet_id`) REFERENCES `cabinets` (`id`),
  CONSTRAINT `classrooms_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classrooms`
--

LOCK TABLES `classrooms` WRITE;
/*!40000 ALTER TABLE `classrooms` DISABLE KEYS */;
INSERT INTO `classrooms` VALUES (1,'1a',1,1,'2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'2a',1,2,'2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `classrooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `days`
--

DROP TABLE IF EXISTS `days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `days`
--

LOCK TABLES `days` WRITE;
/*!40000 ALTER TABLE `days` DISABLE KEYS */;
INSERT INTO `days` VALUES (1,'Понедельник','2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'Вторник','2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,'Среда','2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,'Четверг','2023-10-16 22:43:37','2023-10-16 22:43:37'),(5,'Пятница','2023-10-16 22:43:37','2023-10-16 22:43:37'),(6,'Суббота','2023-10-16 22:43:37','2023-10-16 22:43:37');
/*!40000 ALTER TABLE `days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimage_section`
--

DROP TABLE IF EXISTS `docimage_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimage_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docimage_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docimage_section_docimage_id_foreign` (`docimage_id`) USING BTREE,
  KEY `docimage_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docimage_section_docimage_id_foreign` FOREIGN KEY (`docimage_id`) REFERENCES `docimages` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docimage_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimage_section`
--

LOCK TABLES `docimage_section` WRITE;
/*!40000 ALTER TABLE `docimage_section` DISABLE KEYS */;
INSERT INTO `docimage_section` VALUES (1,1,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,4,'2023-10-14 11:10:20','2023-10-14 11:10:20');
/*!40000 ALTER TABLE `docimage_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docimages`
--

DROP TABLE IF EXISTS `docimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docimages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docimages_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docimages_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docimages`
--

LOCK TABLES `docimages` WRITE;
/*!40000 ALTER TABLE `docimages` DISABLE KEYS */;
INSERT INTO `docimages` VALUES (1,'Приложение №1','storage/data/documents/aa795f24e32677f7e1623e31f9d5b9d7.jpg','JPG','2023-10-14 11:10:20','2023-10-15 17:43:56'),(2,'Свидетельство','storage/data/documents/d80530a9670ddcba5062806adcb306d5.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:21:01');
/*!40000 ALTER TABLE `docimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsource_section`
--

DROP TABLE IF EXISTS `docsource_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsource_section` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `docsource_id` bigint unsigned DEFAULT NULL,
  `section_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `docsource_section_docsource_id_foreign` (`docsource_id`) USING BTREE,
  KEY `docsource_section_section_id_foreign` (`section_id`) USING BTREE,
  CONSTRAINT `docsource_section_docsource_id_foreign` FOREIGN KEY (`docsource_id`) REFERENCES `docsources` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `docsource_section_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsource_section`
--

LOCK TABLES `docsource_section` WRITE;
/*!40000 ALTER TABLE `docsource_section` DISABLE KEYS */;
INSERT INTO `docsource_section` VALUES (1,1,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(2,2,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(3,3,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(4,4,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(5,5,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(6,6,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(7,7,3,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(8,42,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(9,43,5,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(10,44,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(11,45,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(12,46,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(13,47,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(14,48,6,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(15,49,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(16,50,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(17,51,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(18,52,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(19,53,7,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(20,54,8,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(21,8,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(22,9,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(23,10,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(24,11,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(25,12,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(26,13,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(27,14,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(28,15,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(29,16,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(30,17,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(31,18,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(32,19,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(33,20,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(34,21,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(35,22,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(36,23,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(37,24,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(38,25,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(39,26,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(40,27,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(41,28,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(42,29,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(43,30,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(44,31,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(45,32,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(46,33,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(47,34,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(48,35,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(49,36,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(50,37,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(51,38,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(52,39,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(53,40,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(54,41,4,'2023-10-14 11:10:20','2023-10-14 11:10:20'),(55,55,9,NULL,NULL),(56,56,9,NULL,NULL),(57,57,9,NULL,NULL),(58,58,9,NULL,NULL),(59,59,9,NULL,NULL),(60,60,9,NULL,NULL),(61,61,9,NULL,NULL),(62,62,16,NULL,NULL),(63,63,16,NULL,NULL),(64,64,16,NULL,NULL),(65,65,24,NULL,NULL),(66,66,24,NULL,NULL),(67,67,24,NULL,NULL),(68,68,24,NULL,NULL),(69,69,24,NULL,NULL),(70,70,24,NULL,NULL),(71,71,24,NULL,NULL),(72,72,24,NULL,NULL),(73,73,24,NULL,NULL),(74,74,24,NULL,NULL),(75,75,26,NULL,NULL),(76,76,29,NULL,NULL),(77,77,29,NULL,NULL),(78,78,29,NULL,NULL);
/*!40000 ALTER TABLE `docsource_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `docsources`
--

DROP TABLE IF EXISTS `docsources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docsources` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `documentName` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentSource` varchar(510) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `documentType` enum('JPG','PDF','IMG','DOC','DOCX','XLS','XLSX','PPT') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `docsources_documentname_unique` (`documentName`) USING BTREE,
  UNIQUE KEY `docsources_documentsource_unique` (`documentSource`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docsources`
--

LOCK TABLES `docsources` WRITE;
/*!40000 ALTER TABLE `docsources` DISABLE KEYS */;
INSERT INTO `docsources` VALUES (1,'Структура и органы управления образовательной организацией','storage/data/documents/e835fb2036ff4e395f2544d2bcc0465c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:52'),(2,'Положение о Совете школы','storage/data/documents/386c525692f50527220ed46a3b8f08c1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:40'),(3,'Положение о Совете родителей','storage/data/documents/72d9471def91a3d59b79af76918223ba.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:26'),(4,'Положение о педагогическом совете','storage/data/documents/c79d19116190d91b7b3989597338cb12.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:26:11'),(5,'Положение о методическом объединении','storage/data/documents/b13a6366f718fdd3aef7ca8aa786d987.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:57'),(6,'Положение о классном родительском собрании и родительском комитете класса','storage/data/documents/c181804d509b4ffb6829a4b58eb53a8e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:28'),(7,'Положение о совете профилактики и правонарушений','storage/data/documents/b63d88e8d853f4cf1c84874aabdc49bd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:25:05'),(8,'Устав','storage/data/documents/ff569eecc4a505d1db4c36ffd9a086a7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:17:14'),(9,'Постановление о мерах по противодействию распространение коронавирусной инфекции','storage/data/documents/624ded4dee2918cfe3ff78e884213775.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:55'),(10,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год','storage/data/documents/c9cf871149e7edcf75efefff98a6bb76.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:28'),(11,'Единый график оценочных процедур в МКОУ Филипповской СОШ на 2022-2023 учебный год в 10-11 классах','storage/data/documents/9c74aa17a1a2f06523137c2640b92884.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:16:00'),(12,'Положение о внутришкольном контроле','storage/data/documents/578cbb74e582d7b69854bc43063413b7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:34'),(13,'Положение  о  Педагогическом  совете','storage/data/documents/f518105c95c6462fce5ab0c5ee03e6af.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:15:08'),(14,'Положение о системе внутреннего мониторинга оценки качества образования','storage/data/documents/3f185ee831a99481670731be76891954.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:14:40'),(15,'Положение о поощрении обучающихся за успехи в учебной, физкультурной, спортивной, общественной,научной, научно-технической, творческой, экспериментальной и инновационной деятельности','storage/data/documents/56fe524169156855427e38451d41ef7c.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:53'),(16,'Положение о правилах поведения обучающихся в школе','storage/data/documents/22a04eae04a5ef4c7f1fa2f19999bb29.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:13:18'),(17,'Положение о правилах приема, перевода, выбытия и отчисления обучающихся','storage/data/documents/9201c5be6ea75a34026527a9de1ca39d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:12:31'),(18,'Положение об основных образовательных программах общего образования, реализуемых в организации, осуществляющей образовательную деятельность','storage/data/documents/427872a6508493ad65a700c34c5c6de1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:37'),(19,'Положение о классах профильного обучения','storage/data/documents/e59771eb1c404457fd40680f85610084.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:11:11'),(20,'Постановление администрации Киржачского района о переименовании МКОУ Филипповской СОШ','storage/data/documents/9bc1ee3c5de62ad577031a8a40763782.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:44'),(21,'Положение о формах, периодичности и порядке текущего контроля успеваемости, промежуточной и итоговой аттестации обучающихся','storage/data/documents/06b7d0204cc0c0affe829b2adfaef1fd.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:10:10'),(22,'Положение о проведение промежуточной аттестации учащихся и осуществлении текущего контроля их успеваемости в МКОУ Филипповская СОШ','storage/data/documents/0bd9bd25c4a53a107cd593545582a873.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:37'),(23,'Положение о порядке отчисления, исключения обучающихся из МКОУ Филипповская СОШ','storage/data/documents/134e330969689172a2a803fa292bb5e7.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:09:07'),(24,'Приказ о переименовании школы','storage/data/documents/673d6694552abef68dc3c6ddab9c16fa.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:03:34'),(25,'Самообследовании МКОУ Филипповской СОШ за 2022 год','storage/data/documents/04d1699c4512c011d6c42e1f34d2136b.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:02:36'),(26,'Анализ по воспитательной работе МКОУ Филипповской СОШ за 2020 — 2021 учебный год','storage/data/documents/99de3d7e5e83f74baadeea24f725a3b1.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:45'),(27,'Приказ об исполнении приказа управления администрации Киржачского района №31','storage/data/documents/76aa434d35b1feefde4c1c2c9855203d.pdf','PDF','2023-10-14 11:10:19','2023-10-15 18:01:18'),(28,'Программа развития','storage/data/documents/57d79cce9b5dbc350ad6142ca18bec95.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:54:04'),(29,'Правил внутреннего трудового распорядка','storage/data/documents/28253e356f2626c721c15791dc2ec673.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:48:29'),(30,'Приказ об административном регламенте предоставления муниципальной услуги Зачисление в образовательные организации','storage/data/documents/50a94b32758e5730612239a928aa191e.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:39'),(31,'Приказ об исполнении приказа управления администрации Киржачского района от 17.02.2021','storage/data/documents/d57479db1fa5f979bb621a6ae6737f44.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:47:14'),(32,'Приказ о создании наркологического поста в МКОУ Филипповская СОШ','storage/data/documents/4cdaced48a1c97a417d6513415fabb02.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:46:08'),(33,'Информация о закрепленной за школой территории','storage/data/documents/2f18a368e913025fde7ef32e6d144111.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:45:10'),(34,'Правила приема на обучение в МКОУ Филипповской СОШ','storage/data/documents/02eae4474f4e4eaa556a755fce5a0701.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:46'),(35,'Коллективный договор на 2021-2023 г.г.','storage/data/documents/941627a0941312c1598cfbee39cad205.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:44:20'),(36,'Приказ о создании наркологического поста в МКОУ Филипповской СОШ от 01.09.2021 г.','storage/data/documents/d1ea2286d57e9819519aa125717d9490.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:39:18'),(37,'Положение о языке обучения','storage/data/documents/05ed08e29759c02aaaf375e9de8d87d9.pdf','PDF','2023-10-14 11:10:19','2023-10-15 11:38:55'),(38,'Положение о рабочей программе','storage/data/documents/60b94eb2301e59ea0ff3d481587b3afd.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:32'),(39,'План производственной учебы учителей «Учись учить»','storage/data/documents/ccd3a8cd2a6d053498221432a7bf0d27.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:38:04'),(40,'Постановление администрации Киржачского района Владимирской области от 16.03.2023 №264 О закреплении за муниципальными общеобразовательными организациями Киржачского района территорий муниципального образования Киржачский район','storage/data/documents/84432ffab3206d74d8ce04fe590d592c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:20'),(41,'Приказ по школе о закрепленных территориях МКОУ Филипповской СОШ','storage/data/documents/c8f9783d522bc275674ce54b5472f2a3.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:37:00'),(42,'Предписание от 17.05.2017г. № 2-2-2017','storage/data/documents/7fded533ba8bc2fce5d26e82baeb5280.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:36:28'),(43,'Ответ на предписание от 17.05.2017г. № 2-2-2017','storage/data/documents/fb5f08647458a5bf9f412805d203707f.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:35:53'),(44,'О реализуемых уровнях образования (см. приложении к лицензии — перечень общеобразовательных программ)','storage/data/documents/f0b6571814043e3912bf78de17b581c0.jpg','JPG','2023-10-14 11:10:20','2023-10-15 11:35:26'),(45,'О формах обучения (см. пункт 3.5 устава школы)','storage/data/documents/94666f48585b52fe80b4057e05adcd4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:34:56'),(46,'О лицензии на осуществление образовательной деятельности (см. лицензия)','storage/data/documents/e04da0c324499a12bd095ac3ca37eca5.png','JPG','2023-10-14 11:10:20','2023-10-15 11:34:23'),(47,'Приложение №1 к лицензии на осуществление образовательной деятельности (см. приложение №1)','storage/data/documents/33328bddbaa98913218201386152bf66.png','JPG','2023-10-14 11:10:20','2023-10-15 11:33:47'),(48,'О сроке действия государственной аккредитации образовательной программы (см. свидетельство о гос.  аккредитации)','storage/data/documents/7ea116a23140a23a5cbac8bce987896c.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:54'),(49,'Аналитическая справка о результатах Всероссийских проверочных работ в 5, 6, 7, 8, 9 классах','storage/data/documents/1a2296dbfa5bcf2b3563b2956f6c11a4.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:32:26'),(50,'План  мероприятий («дорожная карта») результатов ВПР, сентябрь-октябрь 2020 года','storage/data/documents/69b3a4dc1124ee1e468c4cf0f792fcc5.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:53'),(51,'Отчет о проводимых мероприятиях по итогам ВПР 2020 года','storage/data/documents/db4389e5d124dfe9bd3fd14dab042f89.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:27'),(52,'Приказ о проведении  Всероссийской проверочной работы осенью 2022 года','storage/data/documents/16372f023ba8ba3005feb2f8ddac7f4a.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:31:05'),(53,'График выхода общественных наблюдателей на наблюдение за проведением ВПР в 2023 году','storage/data/documents/2248fd05f0b22be2f7a3d0d5c54ac9fb.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:30:34'),(54,'«Дорожная карта» организации и проведения государственной итоговой аттестации по образовательным программам основного общего и среднего общего образования в МКОУ Филипповской СОШ в 2023 году','storage/data/documents/e114e229add2ec45d0170ccf6cbca5e8.pdf','PDF','2023-10-14 11:10:20','2023-10-15 11:29:55'),(55,'Дистанционное обучение','storage/data/documents/5e3a64f33347171115905edc4890120b.pdf','PDF','2023-10-15 18:31:35','2023-10-15 18:31:35'),(56,'Заявление на дистанционное обучение','storage/data/documents/591729ce04c61aee47728fda0fe57d5c.pdf','PDF','2023-10-15 18:32:41','2023-10-15 18:44:23'),(57,'Горячая линия для обучающихся и родителей по дистанционному обучению','storage/data/documents/8dbad5b3be1681044b7fb30339e9ce1a.pdf','PDF','2023-10-15 18:39:48','2023-10-15 18:39:48'),(58,'Расписание занятий','storage/data/documents/3f2ad5f2a176258fd261c248338d5332.pdf','PDF','2023-10-15 18:41:14','2023-10-15 18:41:14'),(59,'Приказ Об исполнении Указа Президента РФ от 02.04.2020г. № 239','storage/data/documents/034dadb9a7086c7128edd4631265ac3f.pdf','PDF','2023-10-15 18:41:49','2023-10-15 18:41:49'),(60,'Выписка из Утверждения решения педагогического совета № 5','storage/data/documents/aefed875c7f6c714f1f1ca246ec7dbd3.pdf','PDF','2023-10-15 18:42:40','2023-10-15 18:42:40'),(61,'Положение об организации образовательного процесса','storage/data/documents/49d39044b6c4e1cf7687907178032292.pdf','PDF','2023-10-15 18:43:29','2023-10-15 18:43:29'),(62,'Основная образовательная программа основного общего образования (ПО ФГОС ООО)','storage/data/documents/1a2e80dfab95105c16b0191880551733.pdf','PDF','2023-10-15 18:51:38','2023-10-15 18:51:38'),(63,'Учебный план начального общего образования на 2022-2023 учебный год','storage/data/documents/8e7508c66c0259c5ed6bfd762c173a99.pdf','PDF','2023-10-15 18:52:19','2023-10-15 18:52:19'),(64,'Учебный план для 5-9 классов на 2022-2023 учебный год','storage/data/documents/70576406201baa696de8bc7be175ba95.pdf','PDF','2023-10-15 18:53:14','2023-10-15 18:53:14'),(65,'Сравнение стандартов 2004 и 2010 гг.','storage/data/documents/966af0980bfaaff45bf5924fb0778183.pdf','PDF','2023-10-15 19:34:21','2023-10-15 19:34:21'),(66,'Приказ Минобрнауки России от 17.12.2010 №1897','storage/data/documents/153a5f1b3fdbf8fc854046e7b86bf525.pdf','PDF','2023-10-15 19:34:52','2023-10-15 19:34:52'),(67,'Приказ Департамента Образования Владимирской области №874','storage/data/documents/fb7ec537e604dcc65edbfb1310063c55.pdf','PDF','2023-10-15 19:35:25','2023-10-15 19:35:25'),(68,'Приложение 1 к приказу №874','storage/data/documents/872f6c626b28182e2b3ce8c4578fdda8.pdf','PDF','2023-10-15 19:36:29','2023-10-15 19:36:29'),(69,'Приложение 2 к приказу №874','storage/data/documents/1158a4483927757c07e608966718c3a8.pdf','PDF','2023-10-15 19:36:55','2023-10-15 19:36:55'),(70,'Приложение 3 к приказу №874','storage/data/documents/dd0f4d7088be780f0387ab5f1a3b2cbe.pdf','PDF','2023-10-15 19:37:20','2023-10-15 19:37:20'),(71,'Приложение 4 к приказу №874','storage/data/documents/0b9f509bbf350567fcf119b0993808a2.pdf','PDF','2023-10-15 19:37:45','2023-10-15 19:37:45'),(72,'Федеральный государственный образовательный стандарт начального общего образования 2021 год','storage/data/documents/a4c24f34938a7b005bf75d0cf6fee1f9.pdf','PDF','2023-10-15 19:41:03','2023-10-15 19:41:03'),(73,'Федеральный государственный образовательный стандарт основного общего образования 2021 год','storage/data/documents/45b72ed29c9f84107a147421b74ecd59.pdf','PDF','2023-10-15 19:43:17','2023-10-15 19:43:17'),(74,'Приказ Министерства просвещения РФ от 12 августа 2022 г № 732 «О внесении изменений в Федеральный государственный образовательный стандарт среднего общего образования, утвержденный приказом Министерства образования и науки от 17 мая 2012 № 413»','storage/data/documents/f36c9178a6e9427e51410e288018a89c.pdf','PDF','2023-10-15 19:44:51','2023-10-15 19:44:51'),(75,'Об особенностях введения Федеральных основных общеобразовательных программ в 2023 году','storage/data/documents/340cd0086819bede760f3353a2019313.pdf','PDF','2023-10-15 19:47:20','2023-10-15 19:47:20'),(76,'Бюджетная смена на 2019 финансовый год','storage/data/documents/2a8db121d2fbefbe279a77ec38f1a0a6.pdf','PDF','2023-10-15 19:55:22','2023-10-15 19:55:22'),(77,'Бюджетная смета на 2020 финансовый год','storage/data/documents/8984c69fe0fe4bfea6218e6e92b33253.pdf','PDF','2023-10-15 19:56:29','2023-10-15 19:56:29'),(78,'Бюджетная смета на 2021 финансовый год','storage/data/documents/e9d390eabe1c8f95d43a12b32d534cc7.pdf','PDF','2023-10-15 19:57:13','2023-10-15 19:57:13');
/*!40000 ALTER TABLE `docsources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `likes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `news_id` bigint unsigned NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  `liked` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `likes_news_id_foreign` (`news_id`),
  KEY `likes_user_id_foreign` (`user_id`),
  CONSTRAINT `likes_news_id_foreign` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`),
  CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_basics`
--

DROP TABLE IF EXISTS `menu_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_basics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `date` timestamp NOT NULL,
  `name_menu` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_basics`
--

LOCK TABLES `menu_basics` WRITE;
/*!40000 ALTER TABLE `menu_basics` DISABLE KEYS */;
INSERT INTO `menu_basics` VALUES (1,'Меню ежедневного горячего питания','2023-08-31 22:43:43','Завтрак','124','2022-07-17 06:32:53','2023-06-20 03:36:56'),(2,'Меню ежедневного горячего питания','2023-09-30 22:43:43','Обед','168','2022-10-18 02:07:03','2023-01-08 06:08:27'),(3,'Меню ежедневного горячего питания','2023-09-01 22:43:43','Завтрак','186','2022-03-15 13:33:06','2023-07-20 09:45:14'),(4,'Меню ежедневного горячего питания','2023-10-01 22:43:43','Обед','19','2019-09-15 13:24:46','2022-04-10 20:54:13'),(5,'Меню ежедневного горячего питания','2023-09-02 22:43:43','Завтрак','98','2020-11-10 00:53:19','2021-03-08 13:22:06'),(6,'Меню ежедневного горячего питания','2023-10-02 22:43:43','Обед','99','2023-01-10 06:53:38','2023-03-22 16:53:26'),(7,'Меню ежедневного горячего питания','2023-09-03 22:43:43','Завтрак','35','2021-06-29 07:50:09','2022-07-09 10:01:05'),(8,'Меню ежедневного горячего питания','2023-10-03 22:43:43','Обед','125','2018-11-18 16:08:28','2022-08-24 20:23:45'),(9,'Меню ежедневного горячего питания','2023-09-04 22:43:43','Завтрак','69','2019-03-10 13:41:24','2021-07-19 15:35:28'),(10,'Меню ежедневного горячего питания','2023-10-04 22:43:43','Обед','89','2021-10-07 11:18:14','2022-07-09 14:17:07'),(11,'Меню ежедневного горячего питания','2023-09-05 22:43:43','Завтрак','198','2020-07-06 23:12:35','2022-05-22 11:27:36'),(12,'Меню ежедневного горячего питания','2023-10-05 22:43:43','Обед','18','2020-10-19 00:26:11','2020-11-18 08:54:48'),(13,'Меню ежедневного горячего питания','2023-09-06 22:43:43','Завтрак','176','2020-04-11 18:48:44','2020-04-22 22:11:34'),(14,'Меню ежедневного горячего питания','2023-10-06 22:43:43','Обед','51','2019-03-20 21:03:54','2020-01-18 09:34:03'),(15,'Меню ежедневного горячего питания','2023-09-07 22:43:43','Завтрак','148','2021-05-26 13:51:43','2022-11-05 15:50:57'),(16,'Меню ежедневного горячего питания','2023-10-07 22:43:43','Обед','73','2020-07-10 21:12:30','2023-01-15 19:01:52'),(17,'Меню ежедневного горячего питания','2023-09-08 22:43:43','Завтрак','140','2022-02-27 00:11:39','2023-01-06 19:08:41'),(18,'Меню ежедневного горячего питания','2023-10-08 22:43:43','Обед','43','2022-09-02 09:35:06','2023-03-10 09:40:53'),(19,'Меню ежедневного горячего питания','2023-09-09 22:43:43','Завтрак','178','2019-08-31 10:10:10','2022-08-24 08:44:55'),(20,'Меню ежедневного горячего питания','2023-10-09 22:43:43','Обед','12','2019-04-07 03:24:38','2022-09-12 18:06:43'),(21,'Меню ежедневного горячего питания','2023-09-10 22:43:43','Завтрак','191','2021-09-15 06:22:51','2023-01-22 15:27:22'),(22,'Меню ежедневного горячего питания','2023-10-10 22:43:43','Обед','177','2021-08-12 03:40:06','2022-05-21 06:43:19'),(23,'Меню ежедневного горячего питания','2023-09-11 22:43:43','Завтрак','20','2018-10-19 13:03:01','2023-07-14 02:36:49'),(24,'Меню ежедневного горячего питания','2023-10-11 22:43:43','Обед','197','2022-06-30 18:48:04','2022-07-21 08:54:05'),(25,'Меню ежедневного горячего питания','2023-09-12 22:43:43','Завтрак','112','2022-09-29 16:39:27','2023-06-26 05:38:31'),(26,'Меню ежедневного горячего питания','2023-10-12 22:43:44','Обед','110','2019-12-10 14:10:55','2020-08-07 17:36:07'),(27,'Меню ежедневного горячего питания','2023-09-13 22:43:44','Завтрак','114','2020-12-10 19:47:10','2021-03-22 15:21:11'),(28,'Меню ежедневного горячего питания','2023-10-13 22:43:44','Обед','16','2022-06-03 19:22:54','2023-02-10 11:35:13'),(29,'Меню ежедневного горячего питания','2023-09-14 22:43:44','Завтрак','29','2023-08-06 00:58:37','2023-10-08 22:41:10'),(30,'Меню ежедневного горячего питания','2023-10-14 22:43:44','Обед','109','2021-10-06 12:48:56','2022-02-13 10:25:12'),(31,'Меню ежедневного горячего питания','2023-09-15 22:43:44','Завтрак','66','2023-08-07 13:10:20','2023-10-08 16:39:13'),(32,'Меню ежедневного горячего питания','2023-10-15 22:43:44','Обед','128','2019-12-17 11:16:08','2020-09-07 02:21:32'),(33,'Меню ежедневного горячего питания','2023-09-16 22:43:44','Завтрак','126','2022-12-21 01:28:48','2023-02-13 13:00:56'),(34,'Меню ежедневного горячего питания','2023-10-16 22:43:44','Обед','58','2020-05-05 13:00:47','2023-02-01 12:42:07'),(35,'Меню ежедневного горячего питания','2023-09-17 22:43:44','Завтрак','98','2018-10-17 13:30:01','2022-10-11 22:46:40'),(36,'Меню ежедневного горячего питания','2023-10-17 22:43:44','Обед','151','2019-06-11 08:43:24','2021-04-11 15:48:31'),(37,'Меню ежедневного горячего питания','2023-09-18 22:43:44','Завтрак','175','2021-09-24 07:41:43','2022-06-23 18:45:18'),(38,'Меню ежедневного горячего питания','2023-10-18 22:43:44','Обед','104','2021-04-12 07:44:54','2022-11-17 06:49:24'),(39,'Меню ежедневного горячего питания','2023-09-19 22:43:44','Завтрак','101','2021-01-21 12:40:36','2023-04-17 00:47:31'),(40,'Меню ежедневного горячего питания','2023-10-19 22:43:44','Обед','91','2023-07-29 10:11:29','2023-08-23 20:42:16'),(41,'Меню ежедневного горячего питания','2023-09-20 22:43:44','Завтрак','71','2021-01-17 20:06:56','2023-09-02 21:39:00'),(42,'Меню ежедневного горячего питания','2023-10-20 22:43:44','Обед','192','2022-01-24 00:03:22','2022-05-03 13:09:27'),(43,'Меню ежедневного горячего питания','2023-09-21 22:43:44','Завтрак','165','2020-10-18 08:42:53','2021-09-26 08:40:54'),(44,'Меню ежедневного горячего питания','2023-10-21 22:43:44','Обед','154','2023-03-11 21:58:04','2023-08-08 23:22:43'),(45,'Меню ежедневного горячего питания','2023-09-22 22:43:44','Завтрак','90','2021-01-22 17:46:55','2022-10-05 09:58:58'),(46,'Меню ежедневного горячего питания','2023-10-22 22:43:44','Обед','162','2018-11-19 13:47:55','2020-01-11 21:53:40'),(47,'Меню ежедневного горячего питания','2023-09-23 22:43:44','Завтрак','24','2018-12-13 14:46:47','2021-04-16 07:26:38'),(48,'Меню ежедневного горячего питания','2023-10-23 22:43:44','Обед','29','2023-03-20 10:41:50','2023-04-16 15:12:18'),(49,'Меню ежедневного горячего питания','2023-09-24 22:43:44','Завтрак','83','2023-03-01 02:59:45','2023-08-07 08:37:06'),(50,'Меню ежедневного горячего питания','2023-10-24 22:43:44','Обед','40','2022-03-30 17:24:35','2023-06-20 04:28:15'),(51,'Меню ежедневного горячего питания','2023-09-25 22:43:44','Завтрак','189','2023-10-02 09:06:20','2023-10-02 09:50:39'),(52,'Меню ежедневного горячего питания','2023-10-25 22:43:44','Обед','155','2019-12-21 17:39:36','2022-12-05 17:24:20'),(53,'Меню ежедневного горячего питания','2023-09-26 22:43:44','Завтрак','101','2019-09-15 12:52:22','2023-02-14 20:48:56'),(54,'Меню ежедневного горячего питания','2023-10-26 22:43:44','Обед','152','2021-03-18 23:02:58','2022-07-06 05:30:10'),(55,'Меню ежедневного горячего питания','2023-09-27 22:43:44','Завтрак','66','2019-03-27 09:41:41','2021-08-06 00:31:54'),(56,'Меню ежедневного горячего питания','2023-10-27 22:43:44','Обед','108','2020-04-28 02:07:18','2021-02-16 03:42:22'),(57,'Меню ежедневного горячего питания','2023-09-28 22:43:44','Завтрак','139','2023-05-25 22:53:33','2023-07-12 18:09:59'),(58,'Меню ежедневного горячего питания','2023-10-28 22:43:44','Обед','184','2020-02-05 07:45:29','2021-08-12 18:10:47'),(59,'Меню ежедневного горячего питания','2023-09-29 22:43:44','Завтрак','104','2023-01-27 08:41:27','2023-02-07 14:57:19'),(60,'Меню ежедневного горячего питания','2023-10-29 22:43:44','Обед','37','2020-07-19 18:08:11','2021-11-21 03:57:40');
/*!40000 ALTER TABLE `menu_basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_dish` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dish_output` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_items_name_dish_unique` (`name_dish`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,'Nisi quas magnam qui.','146 гр.','2020-10-08 19:37:31','2023-03-03 17:02:07'),(2,'Ad hic culpa et non aut.','286 гр.','2020-12-06 03:46:27','2020-12-18 09:13:23'),(3,'Ea non eos eaque quidem.','143 гр.','2021-12-25 03:51:02','2023-04-07 17:01:23'),(4,'Animi illo ut ad sequi.','31 гр.','2020-01-28 14:11:11','2021-05-30 15:02:17'),(5,'Odio sequi qui eos.','52 гр.','2019-05-14 15:51:56','2022-05-15 01:29:06'),(6,'Ut omnis qui numquam ut.','244 гр.','2019-02-09 16:16:12','2022-01-27 14:45:32'),(7,'Et ipsam ut et.','188 гр.','2019-10-04 14:56:22','2021-02-01 12:07:21'),(8,'Sunt blanditiis aut et.','226 гр.','2019-11-10 13:31:46','2021-06-09 14:47:26'),(9,'Vel rem ut ab voluptas.','160 гр.','2022-07-06 06:56:48','2023-03-05 08:41:46'),(10,'A et ipsa ducimus qui.','175 гр.','2019-02-21 22:13:35','2020-11-14 04:43:06'),(11,'Sit a ad ex qui.','53 гр.','2019-10-29 14:31:29','2023-01-11 18:39:38'),(12,'Rem culpa enim et omnis.','160 гр.','2023-01-27 19:44:05','2023-02-16 08:45:49'),(13,'Est qui ut aut ullam et.','31 гр.','2019-11-27 13:19:16','2020-05-31 02:52:55'),(14,'Quaerat ullam ea aut.','154 гр.','2020-02-23 19:49:43','2020-10-20 20:32:05'),(15,'Maxime est amet dicta.','161 гр.','2022-09-17 15:53:29','2023-01-07 04:12:13'),(16,'Iusto ut unde suscipit.','105 гр.','2020-04-29 02:37:22','2022-01-04 13:40:11'),(17,'Odio aut voluptas ut ea.','274 гр.','2022-01-06 06:23:36','2022-02-22 14:24:15'),(18,'Earum earum quo et est.','181 гр.','2023-01-29 16:32:18','2023-07-08 21:29:55'),(19,'Aut rem ut earum nulla.','103 гр.','2022-04-11 04:49:39','2023-09-01 17:55:30'),(20,'Ad ea quaerat alias.','69 гр.','2022-05-27 15:53:57','2022-12-22 23:31:47'),(21,'Aut quis occaecati sunt.','196 гр.','2022-07-08 21:09:18','2023-03-14 03:32:40'),(22,'Quidem quae fuga amet.','142 гр.','2021-03-01 12:29:08','2021-05-07 08:23:42'),(23,'Provident et sit est.','86 гр.','2021-04-07 20:04:32','2022-05-23 07:11:06'),(24,'Culpa odit nihil ab eum.','263 гр.','2022-11-12 15:08:31','2023-01-16 12:36:48'),(25,'Aliquid quo qui ex.','151 гр.','2019-04-15 08:56:02','2022-05-08 06:27:32'),(26,'Nihil qui quae quia.','225 гр.','2019-12-01 12:18:14','2019-12-23 08:57:28'),(27,'Quaerat eius rerum ea.','260 гр.','2021-10-16 08:02:25','2023-03-22 01:52:11'),(28,'Earum a dolor ab eum.','86 гр.','2020-09-20 14:04:40','2021-02-12 15:37:45'),(29,'Magnam rem et a in.','201 гр.','2023-01-19 00:50:11','2023-01-21 07:46:51'),(30,'Nulla odit quos eos.','252 гр.','2023-01-29 17:11:03','2023-07-23 22:14:19'),(31,'Enim et qui nam quis.','121 гр.','2022-12-14 12:14:13','2023-05-13 07:20:30'),(32,'Enim sit est et iusto.','262 гр.','2019-05-21 20:02:35','2020-10-31 19:53:34'),(33,'Sed corporis quo qui.','136 гр.','2020-10-26 19:01:24','2023-05-02 10:39:35'),(34,'Velit et et sint ea.','199 гр.','2021-07-09 12:45:27','2022-07-03 20:45:47'),(35,'Harum quod et rerum et.','45 гр.','2021-02-13 06:48:48','2021-09-28 03:28:12'),(36,'Et et in omnis.','103 гр.','2018-11-23 20:49:41','2021-07-09 00:34:51'),(37,'Ut maxime et a quia.','299 гр.','2021-04-15 04:31:01','2022-11-13 20:06:02'),(38,'Id in aut et sit qui.','123 гр.','2023-03-24 13:40:19','2023-03-29 16:16:20'),(39,'Voluptatibus ut ab nemo.','155 гр.','2019-02-20 09:34:03','2021-12-22 02:30:11'),(40,'Est error repellat odio.','179 гр.','2023-08-07 11:36:36','2023-08-07 11:47:07'),(41,'Eius et quia in quo.','241 гр.','2022-12-01 14:17:36','2023-06-17 08:18:26'),(42,'Qui qui dolor ut est et.','104 гр.','2019-05-12 11:19:06','2021-06-07 12:58:46'),(43,'Hic qui quod fuga aut.','65 гр.','2021-03-27 04:19:57','2021-09-08 23:33:23'),(44,'Incidunt ex eum dolores.','66 гр.','2019-09-14 19:09:46','2022-12-04 23:12:39'),(45,'Quos rerum qui et omnis.','216 гр.','2021-12-11 10:43:26','2023-07-20 01:46:52'),(46,'Eos pariatur eos ipsum.','86 гр.','2023-03-08 18:53:35','2023-08-05 04:21:16'),(47,'Officia a non eius et.','133 гр.','2022-09-18 18:18:06','2023-07-05 04:45:45'),(48,'Facere cum at sed sed.','299 гр.','2021-07-11 14:40:20','2022-06-03 10:18:38'),(49,'Vel aut vitae omnis.','98 гр.','2020-07-30 20:13:36','2022-03-20 22:10:47'),(50,'Et quia aliquam est vel.','112 гр.','2019-08-23 00:12:51','2020-09-07 03:32:23');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menus` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `menu_basic_id` bigint unsigned NOT NULL,
  `menu_item_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menus_menu_basic_id_foreign` (`menu_basic_id`),
  KEY `menus_menu_item_id_foreign` (`menu_item_id`),
  CONSTRAINT `menus_menu_basic_id_foreign` FOREIGN KEY (`menu_basic_id`) REFERENCES `menu_basics` (`id`),
  CONSTRAINT `menus_menu_item_id_foreign` FOREIGN KEY (`menu_item_id`) REFERENCES `menu_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,1,24,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(2,1,25,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(3,1,12,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(4,1,18,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(5,2,15,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(6,2,46,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(7,2,17,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(8,2,39,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(9,3,45,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(10,3,45,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(11,3,20,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(12,3,30,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(13,4,20,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(14,4,35,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(15,4,12,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(16,4,16,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(17,5,17,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(18,5,32,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(19,5,49,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(20,5,29,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(21,6,18,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(22,6,32,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(23,6,15,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(24,6,48,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(25,7,27,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(26,7,35,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(27,7,40,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(28,7,10,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(29,8,47,'2023-10-16 22:43:46','2023-10-16 22:43:46'),(30,8,35,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(31,8,24,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(32,8,46,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(33,9,46,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(34,9,25,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(35,9,5,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(36,9,18,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(37,10,14,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(38,10,14,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(39,10,42,'2023-10-16 22:43:47','2023-10-16 22:43:47'),(40,10,30,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(41,11,12,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(42,11,11,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(43,11,28,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(44,11,26,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(45,12,35,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(46,12,19,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(47,12,38,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(48,12,48,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(49,13,24,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(50,13,16,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(51,13,25,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(52,13,3,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(53,14,44,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(54,14,14,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(55,14,25,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(56,14,48,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(57,15,33,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(58,15,20,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(59,15,46,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(60,15,11,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(61,16,11,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(62,16,37,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(63,16,23,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(64,16,31,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(65,17,48,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(66,17,17,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(67,17,28,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(68,17,31,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(69,18,13,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(70,18,24,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(71,18,40,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(72,18,38,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(73,19,18,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(74,19,26,'2023-10-16 22:43:48','2023-10-16 22:43:48'),(75,19,19,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(76,19,19,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(77,20,31,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(78,20,21,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(79,20,10,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(80,20,15,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(81,21,1,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(82,21,40,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(83,21,13,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(84,21,10,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(85,22,37,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(86,22,42,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(87,22,22,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(88,22,31,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(89,23,1,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(90,23,22,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(91,23,17,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(92,23,7,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(93,24,29,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(94,24,40,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(95,24,50,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(96,24,47,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(97,25,33,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(98,25,29,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(99,25,34,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(100,25,5,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(101,26,11,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(102,26,2,'2023-10-16 22:43:49','2023-10-16 22:43:49'),(103,26,47,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(104,26,22,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(105,27,38,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(106,27,42,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(107,27,24,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(108,27,23,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(109,28,40,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(110,28,16,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(111,28,10,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(112,28,43,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(113,29,25,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(114,29,41,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(115,29,36,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(116,29,5,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(117,30,47,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(118,30,34,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(119,30,15,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(120,30,47,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(121,31,43,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(122,31,18,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(123,31,23,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(124,31,29,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(125,32,26,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(126,32,9,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(127,32,34,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(128,32,38,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(129,33,7,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(130,33,25,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(131,33,2,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(132,33,46,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(133,34,12,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(134,34,10,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(135,34,21,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(136,34,50,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(137,35,6,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(138,35,7,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(139,35,11,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(140,35,25,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(141,36,41,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(142,36,37,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(143,36,12,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(144,36,25,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(145,37,46,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(146,37,1,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(147,37,9,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(148,37,42,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(149,38,10,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(150,38,16,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(151,38,36,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(152,38,13,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(153,39,40,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(154,39,9,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(155,39,17,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(156,39,14,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(157,40,25,'2023-10-16 22:43:50','2023-10-16 22:43:50'),(158,40,49,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(159,40,37,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(160,40,22,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(161,41,27,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(162,41,39,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(163,41,34,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(164,41,30,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(165,42,48,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(166,42,19,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(167,42,16,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(168,42,48,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(169,43,43,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(170,43,39,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(171,43,33,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(172,43,14,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(173,44,30,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(174,44,15,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(175,44,20,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(176,44,25,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(177,45,36,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(178,45,34,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(179,45,14,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(180,45,11,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(181,46,41,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(182,46,9,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(183,46,27,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(184,46,5,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(185,47,11,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(186,47,46,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(187,47,5,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(188,47,16,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(189,48,19,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(190,48,24,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(191,48,36,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(192,48,35,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(193,49,13,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(194,49,29,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(195,49,24,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(196,49,30,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(197,50,9,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(198,50,46,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(199,50,49,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(200,50,2,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(201,51,25,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(202,51,2,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(203,51,27,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(204,51,38,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(205,52,23,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(206,52,18,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(207,52,42,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(208,52,30,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(209,53,26,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(210,53,14,'2023-10-16 22:43:51','2023-10-16 22:43:51'),(211,53,35,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(212,53,36,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(213,54,46,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(214,54,11,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(215,54,24,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(216,54,16,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(217,55,37,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(218,55,21,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(219,55,44,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(220,55,36,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(221,56,50,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(222,56,6,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(223,56,21,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(224,56,45,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(225,57,27,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(226,57,8,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(227,57,30,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(228,57,21,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(229,58,34,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(230,58,6,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(231,58,16,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(232,58,47,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(233,59,47,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(234,59,42,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(235,59,46,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(236,59,41,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(237,60,1,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(238,60,16,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(239,60,31,'2023-10-16 22:43:52','2023-10-16 22:43:52'),(240,60,50,'2023-10-16 22:43:52','2023-10-16 22:43:52');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2020_03_31_114745_remove_backpackuser_model',1),(6,'2020_MM_DD_133858_create_permission_tables',1),(7,'2021_11_11_100000_users_add_is_blocked',1),(8,'2023_05_18_142040_users_add_profile_data',1),(9,'2023_09_07_104804_create_students_table',1),(10,'2023_09_07_110607_create_parents_table',1),(11,'2023_09_07_110844_create_parent_student_table',1),(12,'2023_09_09_181908_create_news_categories_table',1),(13,'2023_09_09_202707_create_subjects_table',1),(14,'2023_09_09_203905_create_call_schedules_table',1),(15,'2023_09_10_105606_create_photos_table',1),(16,'2023_09_10_105829_create_albums_table',1),(17,'2023_09_10_110028_create_album_photo_table',1),(18,'2023_09_10_123417_create_appeals_categories_table',1),(19,'2023_09_10_124322_create_achievements_table',1),(20,'2023_09_11_143950_create_appeals_table',1),(21,'2023_09_11_144254_create_teachers_table',1),(22,'2023_09_11_144545_create_news_table',1),(23,'2023_09_11_144600_create_likes_table',1),(24,'2023_09_11_145023_create_classrooms_table',1),(25,'2023_09_11_145129_create_days_table',1),(26,'2023_09_11_145236_create_schedules_table',1),(27,'2023_09_19_081214_delete_classroom_id_column_from_days_table',1),(28,'2023_09_19_145504_add_column_text_from_news_table',1),(29,'2023_09_19_145519_rename_column_resource_to_source_from_table_news',1),(30,'2023_09_21_090614_change_type_on_json_of_source_column_in_news_table',1),(31,'2023_09_25_172443_create_cabinets_table',1),(32,'2023_09_28_083748_permissions_1',1),(33,'2023_09_28_085029_permissions_2',1),(34,'2023_09_28_221702_create_menu_items_table',1),(35,'2023_09_28_221755_create_menu_basics_table',1),(36,'2023_09_28_222221_create_menus_table',1),(37,'2023_09_30_103540_update_teachers_table',1),(38,'2023_09_30_164756_update_appeals',1),(39,'2023_10_02_190052_create_chapters_table',1),(40,'2023_10_02_190126_create_sections_table',1),(41,'2023_10_02_190153_create_docimages_table',1),(42,'2023_10_02_190219_create_docsources_table',1),(43,'2023_10_02_190250_create_docimage_section_table',1),(44,'2023_10_02_190321_create_docsource_section_table',1),(45,'2023_10_07_225547_update_students_table',1),(46,'2023_10_07_225606_update_parents_table',1),(47,'2023_10_09_233819_add_classroom_id_column_to_students_table',1),(48,'2023_10_09_234605_add_number_column_to_cabinets_table',1),(49,'2023_10_09_235517_add_cabinet_id_column_to_classrooms_table',1),(50,'2023_10_15_230330_create_banners_table',1),(51,'2023_10_15_230330_create_banners_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App/Model/User',1),(4,'App/Model/User',1),(1,'App\\Models\\User',1),(2,'App/Model/User',2),(2,'App/Model/User',3),(2,'App/Model/User',4),(2,'App/Model/User',5),(2,'App/Model/User',6),(2,'App/Model/User',7),(2,'App/Model/User',8),(3,'App/Model/User',9),(3,'App/Model/User',10),(3,'App/Model/User',11),(4,'App/Model/User',12),(4,'App/Model/User',13),(4,'App/Model/User',14),(4,'App/Model/User',15),(4,'App/Model/User',16),(4,'App/Model/User',17),(3,'App/Model/User',18),(3,'App/Model/User',19),(4,'App/Model/User',20),(1,'App/Model/User',21);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `text` varchar(10000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'Admin',
  `news_category_id` bigint unsigned NOT NULL,
  `album_id` bigint unsigned DEFAULT NULL,
  `source` json DEFAULT NULL,
  `status` varchar(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `pub_approve` datetime DEFAULT NULL,
  `video` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `news_news_category_id_foreign` (`news_category_id`),
  KEY `news_album_id_foreign` (`album_id`),
  CONSTRAINT `news_album_id_foreign` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`),
  CONSTRAINT `news_news_category_id_foreign` FOREIGN KEY (`news_category_id`) REFERENCES `news_categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'Флешмоб «Поздравь учителя!»',NULL,'<h2>В Киржачском районе проходит флешмоб &laquo;Поздравь учителя!&raquo;</h2>\r\n\r\n<p>Флешмоб на День учителя давно уже стал одним из неординарных видов поздравления любимых педагогов с их профессиональным праздником. С одной стороны спонтанная и неожиданная, а с другой &ndash; хорошо подготовленная акция, в которой задействованы ученики одного или нескольких классов, отлично поднимает настроение всем и является прекрасным подарком для учителей.<br />\r\n&laquo;5 октября &mdash; самое время поздравить своих педагогов, выразить им слова благодарности за их благородный труд.</p>\r\n\r\n<p>Предлагаем принять участие во Флешмобе &laquo;Поздравь учителя!&raquo;</p>\r\n\r\n<p>Варианты Флешмоба:</p>\r\n\r\n<p>Флешмоб &laquo;Видео с поздравлением&raquo;</p>\r\n\r\n<ol>\r\n	<li>Сними короткий видеоролик со своим поздравлением: представься, поздравь любимого учителя с праздником, запусти эстафетный самолетик своим друзьям.</li>\r\n	<li>Выложи свое видео в любую социальную сеть с хэштегами акции: #поздравьучителя #деньучителя #киржачскийрайон</li>\r\n	<li>Под видео напиши поздравление любимому учителю. Укажи ссылки на друзей, которым ты передаешь эстафетный самолетик.</li>\r\n</ol>\r\n\r\n<p>Подробнее об акции можно узнать в официальной группе управления образования</p>\r\n\r\n<p><a href=\"https://clck.ru/35szM9\">Официальная группа образования</a></p>','Директор',1,7,'{}','active','2023-10-01 00:00:00',NULL,'2023-10-16 23:08:48','2023-10-16 23:45:38'),(2,'Посадка Сада памяти',NULL,'<p>В селе Филипповское высадили Сад памяти в честь героев СВО</p>','Директор',1,10,'{}','active','2023-10-02 00:00:00','https://youtu.be/vHVCWP7-TQ4','2023-10-16 23:16:20','2023-10-16 23:16:45'),(3,'Онлайн конкурс \"Родные места\"',NULL,'<p>Юных художников зовут поучаствовать в онлайн-конкурсе</p>\r\n\r\n<p>Ребятам предлагают нарисовать любимые и дорогие сердцу места родного края в любой живописной технике.</p>\r\n\r\n<p>Конкурсную работу необходимо прислать на электронную почту: <a href=\"http://ddn.33@yandex.ru\">ddn.33@yandex.ru</a> (с пометкой &laquo;Родные места&raquo;).</p>\r\n\r\n<p>Победителей и призеров наградят памятными призами и дипломами. А лучшие работы войдут в коллекцию &laquo;Дома дружбы народов&raquo;.</p>\r\n\r\n<p><strong>Конкурс продлится до 10 ноября</strong>. Узнать подробности можно в группе &laquo;Дома дружбы народов&raquo; или по телефону - <strong>8 (4922) 45-17-40</strong>.</p>','Директор',2,8,'{}','active','2023-10-03 00:00:00',NULL,'2023-10-16 23:19:18','2023-10-16 23:44:22'),(4,'Проверьте свою дорожную грамотность!',NULL,'<p>В рамках нацпроекта &laquo;Безопасные качественные дороги&raquo; стартовала Всероссийская олимпиада &laquo;Безопасные дороги&raquo;. Участвовать в ней могут ученики 1&ndash;9 классов.</p>\r\n\r\n<p>Онлайн-соревнование поможет школьникам оценить, насколько хорошо они знают ПДД, разобраться, как правильно вести себя пешеходу, пассажиру, как безопасно управлять самокатом и велосипедом.</p>\r\n\r\n<p>Олимпиада проходит на онлайн-платформе <a href=\"https://vk.cc/cqZYPe\">учи.ру</a>.<br />\r\nВсех участников ждут награды. Соревнование продлится до 15 октября</p>\r\n\r\n<p><br />\r\n<a href=\"https://vk.com/video-185852839_456239795\">ссылка на ВК</a></p>','Директор',1,10,'{}','active','2023-10-10 00:00:00',NULL,'2023-10-16 23:23:32','2023-10-16 23:23:32'),(5,'III Форум классных руководителей',NULL,'<p>23 педагога Владимирской области в нынешнем году прошли серьезный экспертный отбор и отправились на III Форум классных руководителей. Всего на это знаковое событие Года педагога и наставника было подано более 60 000 заявок со всей страны!</p>\r\n\r\n<p>Форум проводится Министерством Просвещения России по поручению Президента России. Стратегический партнер - АНО &laquo;Диалог Регионы&raquo;, головная организация Центров управления регионами.</p>\r\n\r\n<p>Площадки форума объединят более 3 000 учителей и кураторов СПО. Вместе с известными спикерами они обсудят важные для современного образования темы.</p>\r\n\r\n<p>Следить за трансляциями можно и в онлайн-режиме - в официальном сообществе ФКР и на сайте:<br />\r\n<a href=\"https://vfkr.ru/\">https://vfkr.ru/</a></p>','Директор',1,9,'{}','active','2023-10-12 00:00:00',NULL,'2023-10-16 23:24:50','2023-10-16 23:45:17'),(6,'Поддержим Марину Владимировну Булгакову',NULL,'<p>Поддержим Марину Владимировну Булгакову, учителя английского языка школы №9 из Вязников, в конкурсе &laquo;Учитель года России &ndash; 2023&raquo;!</p>\r\n\r\n<p>Минпросвещения открывает специальный чат-бот, в котором можно будет поддержать педагогов-участников. Отдать свой голос можно только за одного претендента. 33 регион представляет Марина Булгакова.</p>\r\n\r\n<h2>Сделать это можно здесь <a href=\"https://vk.com/write-30558759\">https://vk.com/write-30558759</a></h2>\r\n\r\n<p>Онлайн-голосование завершится 3 октября в 12:00 по московскому времени. Организаторами проекта выступают Минпросвещения России и Центр компетенций в сфере интернет-коммуникаций &laquo;Диалог&raquo; при поддержке коммуникационного сервиса &laquo;Сферум&raquo;.</p>\r\n\r\n<p>Итоги голосования будут подведены на торжественной церемонии закрытия второго тура заключительного этапа Всероссийского конкурса &laquo;Учитель года России &ndash; 2023&raquo; в Московской области.</p>\r\n\r\n<p>&nbsp;</p>','Директор',1,10,'{}','active','2023-09-27 00:00:00','https://vk.com/video-179950459_456239726','2023-10-16 23:28:01','2023-10-17 20:56:05');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` varchar(3000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news_categories`
--

LOCK TABLES `news_categories` WRITE;
/*!40000 ALTER TABLE `news_categories` DISABLE KEYS */;
INSERT INTO `news_categories` VALUES (1,'Жизнь школы',NULL,NULL,'2023-10-16 23:04:34','2023-10-16 23:04:34'),(2,'Конкурсы',NULL,NULL,'2023-10-16 23:04:53','2023-10-16 23:04:53');
/*!40000 ALTER TABLE `news_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parent_student`
--

DROP TABLE IF EXISTS `parent_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parent_student` (
  `parent_id` bigint unsigned NOT NULL,
  `student_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `parent_student_parent_id_foreign` (`parent_id`),
  KEY `parent_student_student_id_foreign` (`student_id`),
  CONSTRAINT `parent_student_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `parents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `parent_student_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parent_student`
--

LOCK TABLES `parent_student` WRITE;
/*!40000 ALTER TABLE `parent_student` DISABLE KEYS */;
INSERT INTO `parent_student` VALUES (1,1,NULL,NULL),(2,1,NULL,NULL),(3,2,NULL,NULL),(4,2,NULL,NULL),(5,3,NULL,NULL),(6,3,NULL,NULL),(7,4,NULL,NULL),(7,5,NULL,NULL);
/*!40000 ALTER TABLE `parent_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parents_user_id_foreign` (`user_id`),
  CONSTRAINT `parents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parents`
--

LOCK TABLES `parents` WRITE;
/*!40000 ALTER TABLE `parents` DISABLE KEYS */;
INSERT INTO `parents` VALUES (1,12,'Ананий','Горбачёв','Officiis sint ipsum.','2023-10-16 22:43:41','2023-10-16 22:43:41'),(2,13,'Варвара','Крюкова','Quis expedita et.','2023-10-16 22:43:41','2023-10-16 22:43:41'),(3,14,'Игнатий','Крюков','Occaecati veniam.','2023-10-16 22:43:41','2023-10-16 22:43:41'),(4,15,'Анна','Панова','Consequatur maiores.','2023-10-16 22:43:42','2023-10-16 22:43:42'),(5,16,'Валерия','Степанова','Dignissimos dolores.','2023-10-16 22:43:42','2023-10-16 22:43:42'),(6,17,'Инна','Кудрявцев','Repellat odio.','2023-10-16 22:43:42','2023-10-16 22:43:42'),(7,1,'Фамилия','Имя','Labore eos officia.','2023-10-16 22:43:43','2023-10-16 22:43:43');
/*!40000 ALTER TABLE `parents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'news.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(2,'news.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(3,'news.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(4,'news.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(5,'albums.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(6,'albums.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(7,'albums.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(8,'albums.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(9,'acl.list','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(10,'acl.create','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(11,'acl.update','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(12,'acl.delete','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `photos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,'http://localhost:7777/storage/data/photo/album/e118d90620789909046e671f3674636b.jpg','2023-10-16 21:04:29','2023-10-16 21:04:29'),(2,'http://localhost:7777/storage/data/photo/album/955761c0dc20b20865861044b451c4e0.jpg','2023-10-16 21:06:21','2023-10-16 21:06:21'),(3,'http://localhost:7777/storage/data/photo/album/6df8b47341af22f3d4d0828823a6f217.jpg','2023-10-16 21:06:56','2023-10-16 21:06:56'),(4,'http://localhost:7777/storage/data/photo/album/1332daa577afc7196addc5120eff7deb.jpeg','2023-10-16 21:07:30','2023-10-16 21:07:30'),(5,'http://localhost:7777/storage/data/photo/album/86152dbd661011fff49ba05390deeffb.jpg','2023-10-16 21:07:45','2023-10-16 21:07:45'),(6,'http://localhost:7777/storage/data/photo/album/a8c23e2d7cb61e9bca5e79033df78e2c.jpeg','2023-10-16 21:07:55','2023-10-16 21:07:55'),(7,'http://localhost:7777/storage/data/photo/album/62e534cc86352677e02bc86b552afaaa.jpg','2023-10-16 21:08:07','2023-10-16 21:08:07'),(8,'http://localhost:7777/storage/data/photo/album/6ae71b0d94de804a6494dbdb60a82942.jpeg','2023-10-16 21:08:19','2023-10-16 21:08:19'),(9,'http://localhost:7777/storage/data/photo/album/51bf780ffc504db75afd0e42e1da64c6.jpg','2023-10-16 21:08:40','2023-10-16 21:08:40'),(10,'http://localhost:7777/storage/data/photo/album/a090901d038908f8f1f8ee700edfeb1e.jpg','2023-10-16 21:08:53','2023-10-16 21:08:53'),(11,'http://localhost:7777/storage/data/photo/album/6e3003c79d5abbe109315b03ff667bc1.jpg','2023-10-16 21:09:22','2023-10-16 21:09:22'),(12,'http://localhost:7777/storage/data/photo/album/c497bd0aacedb09d45d10711bf5319da.jpg','2023-10-16 21:09:36','2023-10-16 21:09:36'),(13,'http://localhost:7777/storage/data/photo/album/e29dc0307c5e60181d5227bcf5bb870a.jpg','2023-10-16 21:09:49','2023-10-16 21:09:49'),(14,'http://localhost:7777/storage/data/photo/album/aaf07b52f838409427afc68b859df7d8.jpg','2023-10-16 21:10:21','2023-10-16 21:10:21'),(15,'http://localhost:7777/storage/data/photo/album/d0195b2f79a69c2d25706a921276efa3.jpg','2023-10-16 21:10:32','2023-10-16 21:10:32'),(16,'http://localhost:7777/storage/data/photo/album/a7657d9029ddcfe6a3d3eef2e4460d0a.jpg','2023-10-16 21:10:44','2023-10-16 21:10:44'),(17,'http://localhost:7777/storage/data/photo/album/5885dae4055d4e97771c362b6d661887.jpg','2023-10-16 21:10:56','2023-10-16 21:10:56'),(18,'http://localhost:7777/storage/data/photo/album/6cff57e8d19d91510f13d7d8f25db5ea.jpg','2023-10-16 21:11:09','2023-10-16 21:11:09'),(19,'http://localhost:7777/storage/data/photo/album/affc2b869755b0c0cc1606afcab41be1.jpg','2023-10-16 21:11:23','2023-10-16 21:11:23'),(20,'http://localhost:7777/storage/data/photo/album/e5e56c7c19a9cd0aaa6dad86a0d47ed8.jpg','2023-10-16 21:11:33','2023-10-16 21:11:33'),(21,'http://localhost:7777/storage/data/photo/album/88dfeeb3e2824a0d5f60282af1ea1f43.jpg','2023-10-16 21:11:42','2023-10-16 21:11:42'),(22,'http://localhost:7777/storage/data/photo/album/c3e9dc597a156ce91558e80ad7a3428e.jpg','2023-10-16 21:12:02','2023-10-16 21:12:02'),(23,'http://localhost:7777/storage/data/photo/album/04723e1e567166e353be39874515251d.jpg','2023-10-16 21:12:14','2023-10-16 21:12:14'),(24,'http://localhost:7777/storage/data/photo/album/0f0ed7f2726559d1a0c017eb95598535.jpg','2023-10-16 21:12:24','2023-10-16 21:12:24'),(25,'http://localhost:7777/storage/data/photo/album/6b8b314745b498bbe29f37fff5bf58d7.jpg','2023-10-16 21:12:49','2023-10-16 21:12:49'),(26,'http://localhost:7777/storage/data/photo/album/82b4db6e025f6a28ec77215e23504983.jpg','2023-10-16 21:13:02','2023-10-16 21:13:02'),(27,'http://localhost:7777/storage/data/photo/album/08fe6d6d03367a159b42d16cce260997.jpg','2023-10-16 21:13:14','2023-10-16 21:13:14'),(28,'http://localhost:7777/storage/data/photo/album/bd605630709f7a768f8ec42663557624.jpg','2023-10-16 21:13:25','2023-10-16 21:13:25'),(29,'http://localhost:7777/storage/data/photo/album/508b47821eda3440845107004848dc1d.jpg','2023-10-16 21:13:38','2023-10-16 21:13:38'),(30,'http://localhost:7777/storage/data/photo/album/5760b8f5318a2c9923e568aed56e9b0e.jpg','2023-10-16 21:13:50','2023-10-16 21:13:50'),(31,'http://localhost:7777/storage/data/photo/album/beb4caaa719742612e7a628e582022d8.jpg','2023-10-16 21:14:01','2023-10-16 21:14:01'),(32,'http://localhost:7777/storage/data/photo/album/8a853b7ec764ad5e8eb55b8832c2d359.jpg','2023-10-16 21:14:17','2023-10-16 21:14:17'),(33,'http://localhost:7777/storage/data/photo/album/10e03aa66859abd7147f1ee43418c588.jpg','2023-10-16 21:14:28','2023-10-16 21:14:28'),(34,'http://localhost:7777/storage/data/photo/album/1ccb9cce6bcb01a17ac502a500b8aeb4.jpg','2023-10-16 21:14:39','2023-10-16 21:14:39'),(35,'http://localhost:7777/storage/data/photo/album/fe8c291b2482b2266035abdeff929496.jpg','2023-10-16 21:14:52','2023-10-16 21:14:52'),(36,'http://localhost:7777/storage/data/photo/album/3c5e7d07a002f7dba32dc0d9ff30e815.jpg','2023-10-16 21:15:05','2023-10-16 21:15:05'),(37,'http://localhost:7777/storage/data/photo/album/5fdefe445485a29af3d4c6fea2d588ab.jpg','2023-10-16 21:15:16','2023-10-16 21:15:16'),(38,'http://localhost:7777/storage/data/photo/album/3a7e45bdbcf02732469aa069253bb25c.jpg','2023-10-16 21:15:28','2023-10-16 21:15:28'),(39,'http://localhost:7777/storage/data/photo/album/6fc86df2d06fcd53a5ecdbd241018bb5.jpg','2023-10-16 21:15:40','2023-10-16 21:15:40'),(40,'http://localhost:7777/storage/data/photo/album/0b8b9ff346ff9339990bc0787731cbf4.jpg','2023-10-16 21:15:54','2023-10-16 21:15:54'),(41,'http://localhost:7777/storage/data/photo/album/0fade2794e766491207ab1f54b676598.jpg','2023-10-16 21:16:15','2023-10-16 21:16:15'),(42,'http://localhost:7777/storage/data/photo/album/4146f90f7daa8d2335df78768b1e2238.jpg','2023-10-16 21:16:28','2023-10-16 21:16:28'),(45,'http://localhost:7777/storage/data/photo/album/126b76e569c35cace3be1397a7087f03.jpg','2023-10-16 21:17:43','2023-10-16 21:17:43'),(46,'http://localhost:7777/storage/data/photo/album/727439ce47d173c768ac1689cf4286a3.jpg','2023-10-16 21:17:54','2023-10-16 21:17:54'),(47,'http://localhost:7777/storage/data/photo/album/9795b6ef6b1aac5e073e3096799d3080.jpg','2023-10-16 21:18:08','2023-10-16 21:18:08'),(48,'http://localhost:7777/storage/data/photo/album/c2b7d4d81a5ae2bf865d4b1af13c71bb.jpg','2023-10-16 21:18:19','2023-10-16 21:18:19'),(49,'http://localhost:7777/storage/data/photo/album/bc121a6dba23d1994100053016dab7de.jpg','2023-10-16 21:18:34','2023-10-16 21:18:34'),(50,'http://localhost:7777/storage/data/photo/album/5be2ae4fc9956e19a7f5ec914e7cc999.jpg','2023-10-16 21:18:48','2023-10-16 21:18:48'),(51,'http://localhost:7777/storage/data/photo/album/3672b9472a31657d5b5e9813dbafb84a.jpg','2023-10-16 21:19:00','2023-10-16 21:19:00'),(52,'http://localhost:7777/storage/data/photo/album/240a0b52e5d2b74459ca6ddb0c6583c8.jpg','2023-10-16 21:19:11','2023-10-16 21:19:11'),(53,'http://localhost:7777/storage/data/photo/album/45e71987a31a9f18e1fd637235780e7a.jpg','2023-10-16 23:11:16','2023-10-16 23:13:32'),(54,'http://localhost:7777/storage/data/photo/album/adeeff52ca96c8badfc7c2d1419ce29c.jpg','2023-10-16 23:14:46','2023-10-16 23:14:46'),(55,'http://localhost:7777/storage/data/photo/album/73d303bcb132715300bcf895480a497c.jpg','2023-10-16 23:31:00','2023-10-16 23:31:00'),(56,'http://localhost:7777/storage/data/photo/album/eee73b781ce329e3b582987b4101a6a1.jpg','2023-10-16 23:31:19','2023-10-16 23:31:19'),(57,'http://localhost:7777/storage/data/photo/album/68d34f0b298eb46d873c69323da1c217.jpg','2023-10-16 23:31:39','2023-10-16 23:31:39'),(58,'http://localhost:7777/storage/data/photo/album/83662e837b1a25f69572c3abcb66337e.jpg','2023-10-17 00:01:47','2023-10-17 00:01:47'),(59,'http://localhost:7777/storage/data/photo/album/6ebcbed694d03f9b324160151c27d31d.png','2023-10-17 00:07:35','2023-10-17 00:07:35');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','backpack','2023-10-16 22:43:23','2023-10-16 22:43:23'),(2,'Учитель','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36'),(3,'Студент','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36'),(4,'Родитель','backpack','2023-10-16 22:43:36','2023-10-16 22:43:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `subject_id` bigint unsigned NOT NULL,
  `teacher_id` bigint unsigned NOT NULL,
  `week_day_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `call_schedule_id` bigint unsigned NOT NULL,
  `day_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schedules_subject_id_foreign` (`subject_id`),
  KEY `schedules_teacher_id_foreign` (`teacher_id`),
  KEY `schedules_classroom_id_foreign` (`classroom_id`),
  KEY `schedules_call_schedule_id_foreign` (`call_schedule_id`),
  KEY `schedules_day_id_foreign` (`day_id`),
  CONSTRAINT `schedules_call_schedule_id_foreign` FOREIGN KEY (`call_schedule_id`) REFERENCES `call_schedules` (`id`),
  CONSTRAINT `schedules_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `schedules_day_id_foreign` FOREIGN KEY (`day_id`) REFERENCES `days` (`id`),
  CONSTRAINT `schedules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  CONSTRAINT `schedules_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,10,1,'Понедельник',1,1,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(2,1,1,'Понедельник',1,2,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(3,9,1,'Понедельник',1,3,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(4,6,1,'Понедельник',1,4,1,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(5,18,1,'Вторник',1,1,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(6,6,1,'Вторник',1,2,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(7,10,1,'Вторник',1,3,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(8,19,1,'Вторник',1,4,2,'2023-10-16 22:43:38','2023-10-16 22:43:38'),(9,19,1,'Среда',1,1,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(10,2,1,'Среда',1,2,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(11,16,1,'Среда',1,3,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(12,17,1,'Среда',1,4,3,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(13,10,1,'Четверг',1,1,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(14,12,1,'Четверг',1,2,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(15,11,1,'Четверг',1,3,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(16,20,1,'Четверг',1,4,4,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(17,11,1,'Пятница',1,1,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(18,6,1,'Пятница',1,2,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(19,16,1,'Пятница',1,3,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(20,7,1,'Пятница',1,4,5,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(21,4,1,'Суббота',1,1,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(22,5,1,'Суббота',1,2,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(23,14,1,'Суббота',1,3,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(24,1,1,'Суббота',1,4,6,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(25,5,2,'Понедельник',2,1,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(26,10,2,'Понедельник',2,2,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(27,4,2,'Понедельник',2,3,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(28,11,2,'Понедельник',2,4,1,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(29,8,2,'Вторник',2,1,2,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(30,1,2,'Вторник',2,2,2,'2023-10-16 22:43:39','2023-10-16 22:43:39'),(31,19,2,'Вторник',2,3,2,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(32,17,2,'Вторник',2,4,2,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(33,13,2,'Среда',2,1,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(34,17,2,'Среда',2,2,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(35,10,2,'Среда',2,3,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(36,8,2,'Среда',2,4,3,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(37,7,2,'Четверг',2,1,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(38,15,2,'Четверг',2,2,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(39,11,2,'Четверг',2,3,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(40,5,2,'Четверг',2,4,4,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(41,20,2,'Пятница',2,1,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(42,17,2,'Пятница',2,2,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(43,15,2,'Пятница',2,3,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(44,2,2,'Пятница',2,4,5,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(45,5,2,'Суббота',2,1,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(46,15,2,'Суббота',2,2,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(47,9,2,'Суббота',2,3,6,'2023-10-16 22:43:40','2023-10-16 22:43:40'),(48,9,2,'Суббота',2,4,6,'2023-10-16 22:43:40','2023-10-16 22:43:40');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sections` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `chapter_id` bigint unsigned DEFAULT NULL,
  `sectionTitle` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `sectionText` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `sequence` int DEFAULT NULL,
  `status` enum('active','draft') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `sections_sectiontitle_unique` (`sectionTitle`) USING BTREE,
  KEY `sections_chapter_id_foreign` (`chapter_id`) USING BTREE,
  CONSTRAINT `sections_chapter_id_foreign` FOREIGN KEY (`chapter_id`) REFERENCES `chapters` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sections`
--

LOCK TABLES `sections` WRITE;
/*!40000 ALTER TABLE `sections` DISABLE KEYS */;
INSERT INTO `sections` VALUES (1,1,'Информация об организации','<p><strong>&nbsp;Наименование ОО</strong>:&nbsp;Муниципальное казенное общеобразовательное учреждение «Филипповская средняя общеобразовательная школа» Киржачского района Владимирской области<br><strong>Сокращенно:</strong>МКОУ Филипповская СОШ</p><p><strong>Дата создания образовательной организации:</strong>Декабрь 1975 года</p><p><strong>Место нахождения образовательной организации:</strong>РФ, Владимирская область, Киржачский район, село Филипповское, ул.Советская, дом26</p><p><strong>Режим и график работы:</strong><br>Понедельник-Пятница 8:00-17:00<br>Суббота 8:00-14:00</p><p><strong>Телефон Директора школы:</strong>8 (49237) 7-11-73</p><p><strong>Телефон Заместителя директорапо АХЧ:</strong>8(49237)7-12-74</p><p><strong>Адрес электронной почты:</strong>Filippovskay-sl@yandex.ru</p><p><strong>Адрес официального сайта:</strong>http://филипповская-школа.рф/</p><p><strong>Официальная страница ВКонтакте:</strong>https://vk.com/filippovskayasosh</p><p><strong>Формы обучения:</strong>При реализации образовательных программ используются различные образовательные технологии, в том числе дистанционные образовательные технологии, электронное обучение.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(2,1,'Информация об учредителе','<p><strong>Учредитель:</strong>Администрация Киржачского района Владимирской области</p><p><strong>Начальник управления:</strong>Кузицына Ольга Владимировна</p><p><strong>Место нахождения:</strong>601010, Владимирская область, г.Киржач, ул.Серегина, д.7</p><p><strong>График работы:</strong><br>Понедельник—пятницас8.00до17.00</p><p><strong>Телефон:</strong>8(49237)2-04-00</p><p><strong>Факс:</strong>8(49237)2-03-84</p><p><strong>Адрес электронной почты:</strong>info@kirzhach.su</p><p><strong>Сайт:</strong>http://www.kirzhach.su</p><p><strong>Места осуществления образовательной деятельности:&nbsp;</strong></p><p>601024, Российская Федерация, Центральный федеральный округ,Владимирская обл., Киржачский район., Филипповское с., Советскаяул., д.26.</p><p><strong>Места осуществления образовательной деятельности по дополнительным профессиональным программам:&nbsp;</strong></p><p>нет</p><p><strong>Места осуществленияо бразовательной деятельности по основным программам профессионального обучения:</strong></p><p>нет</p><p><strong>Места осуществления образовательной деятельности при использовании сетевой формы реализации образовательных программ:</strong>нет</p><p><strong>Места проведения практики:</strong></p><p>нет</p><p><strong>Места проведения практической подготовки обучающихся:</strong></p><p>нет</p><p><strong>Места проведения государственной итоговой аттестации:</strong>ОГЭ: МБОУ СОШ №2 (Киржач., Гагарина ул., д.25), МБОУ СОШ №3 (г.Киржач, ул.Чехова, д.10а)&nbsp;ЕГЭ: МБОУ СОШ №5(г.Киржач, ул.40 лет Октября, д.17),МБОУ СОШ №6 им. С.Б.Белкина (г.Киржач, ул.Пушкина, д.27)</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(3,2,'Структура и органы управления образовательной организацией','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(4,3,'Документы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(5,3,'Предписания органов, осуществляющих государственный контроль (надзор) в сфере образования, отчеты об исполнении таких предписаний','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(6,4,'Образование ведется на Русском языке','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(7,4,'Всероссийские проверочные работы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(8,4,'Государственная итоговая аттестация','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(9,4,'Дистанционное обучение','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(10,4,'График дистанционных занятий','<table><thead><tr><td><strong>1 урок</strong></td><td>9:00 — 9:30</td></tr></thead><tbody><tr><td><strong>2 урок</strong></td><td>9:40 — 10:10</td></tr><tr><td><strong>3 урок</strong></td><td>10:20 — 10:50</td></tr><tr><td><strong>4 урок</strong></td><td>11:00 — 11:30</td></tr><tr><td><strong>5 урок</strong></td><td>11:45 — 12:15</td></tr><tr><td><strong>6 урок</strong></td><td>12:25 — 12:55</td></tr><tr><td><strong>7 урок</strong></td><td>13:00 — 13:30</td></tr></tbody></table>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(11,4,'Реализуемые уровни образования','<p>МКОУ Филипповская СОШ осуществляет образовательный процесс в соответствии с общеобразовательными программами трех уровней общего образования:</p><ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul><p><strong>Численность обучающихся по реализуемым образовательным программам:</strong></p><ul><li>Начальное общее образование -106 обучающихся;</li><li>Основное общее образование — 106 обучающихся;</li><li>Среднее общее образование — 20 обучающихся.</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(12,4,'Языки, на которых осуществляется образование','<p>Обучение и воспитание в МКОУ «Филипповская средняя общеобразовательная школа» ведётся на русском языке.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(13,4,'Нормативные сроки обучения','<ul><li>I уровень – начальное общее образование (нормативный срок освоения 4 года);</li><li>II уровень – основное общее образование (нормативный срок освоения 5 лет);</li><li>III уровень – среднее общее образование (нормативный срок освоения 2 года).</li></ul>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(14,4,'Срок действия государственной аккредитации образовательной программы','<p>Смотреть в разделе&nbsp;<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/sveden/document/\">Документы</a></p>',500,'active','2023-10-14 11:10:19','2023-10-15 18:48:32'),(15,4,'Образовательные программы','<p>Содержание общего образования определяется образовательными программами, разрабатываемыми и реализуемыми МКОУ Филипповской СОШ самостоятельно на основе федеральных государственных образовательных стандартов и примерных образовательных учебных программ, курсов, дисциплин.</p><p>Освоение образовательных программ основного общего и среднего общего образования завершается обязательной итоговой аттестацией обучающихся. Государственная итоговая аттестация выпускников МКОУ Филипповской СОШ осуществляется в соответствии с положением о Государственной итоговой аттестации выпускников общеобразовательных учреждений, утверждаемым Министерством образования и науки Российской Федерации.</p><p><strong>Виды реализуемых программ:</strong></p><p>а) Основные общеобразовательные программы начального общего образования;</p><p>б) Основные общеобразовательные программы основного общего образования;</p><p>в) Основные общеобразовательные программы среднего общего образования;</p><p>г) Адаптированная образовательная программа НОО и ООО.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(16,4,'Учебный план на 2022-2023 учебный год','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(17,4,'Рабочие программы','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(18,4,'Адаптированные образовательные программы учебных курсов, предметов','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(19,4,'Аннотации к рабочим программам','',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(20,11,'Электронная запись в первый класс','<p><strong>УВАЖАЕМЫЕ РОДИТЕЛИ!</strong></p>\r\n<p>Вы можете подать заявление о зачислении в <strong>школу</strong> в электронном виде. <em>Всего лишь одно нажатие и вы попадаете</em> на <a href=\"https://www.gosuslugi.ru/600426/1/form\">&laquo;Единый портал государственных и муниципальных услуг (функций)&raquo;</a><br /><a href=\"https://www.gosuslugi.ru/600426/1/form\"><img class=\"wp-image-2201 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png\" sizes=\"(max-width: 556px) 100vw, 556px\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie.png 1153w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-300x148.png 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-1024x506.png 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2023/03/prilozhenie-768x380.png 768w\" alt=\"\" width=\"556\" height=\"275\" /></a></p>\r\n<p>Все очень просто.</p>',500,'active','2023-10-14 11:10:19','2023-10-14 13:06:36'),(21,12,'Центр естественно-научного профиля «Точка роста»','<div class=\"post post-one\"><div class=\"post_title_page\"><h2>Центр естественно-научного профиля «Точка роста»</h2></div><p>&nbsp;</p><p><img class=\"wp-image-1180 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg\" alt=\"\" width=\"635\" height=\"347\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1.jpg 918w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-300x164.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/tochka_rosta-1-768x419.jpg 768w\" sizes=\"(max-width: 635px) 100vw, 635px\"></p><p><a href=\"http://филипповская-школа.рф/?page_id=1240&amp;preview=true\"><img class=\"wp-image-1237 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/111.jpg\" alt=\"\" width=\"181\" height=\"66\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1244&amp;preview=true\"><img class=\"wp-image-1238 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/222.jpg\" alt=\"\" width=\"252\" height=\"63\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1246&amp;preview=true\"><img class=\" wp-image-1239 aligncenter\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/333.jpg\" alt=\"\" width=\"178\" height=\"57\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1256&amp;preview=true\"><img class=\"aligncenter wp-image-1255\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/gwzlan9feiw.jpg\" alt=\"\" width=\"248\" height=\"76\"></a></p><p><a href=\"http://филипповская-школа.рф/?page_id=1264&amp;preview=true\"><img class=\"aligncenter size-full wp-image-1262\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/123.jpg\" alt=\"\" width=\"163\" height=\"85\"></a></p><p><img class=\"wp-image-1646 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg\" alt=\"\" width=\"258\" height=\"197\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-300x229.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1024x781.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-768x586.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-1536x1171.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-059-2048x1562.jpg 2048w\" sizes=\"(max-width: 258px) 100vw, 258px\">С днем рождения, Точка роста!!</p><p>9 сентября 2021 года в нашей школе состоялось торжественное открытие Центра естественно-научной и технологической направленностей.<br>Поздравить школу со столь знаменательным событием собралось много гостей. Глава Киржачского района, секретарь Местного Отделения Партии «Единая Россия» А.Н. Доброхотов, глава администрации Киржачского района И.Н. Букалов, заместите<img class=\"wp-image-1647 alignleft\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg\" alt=\"\" width=\"285\" height=\"190\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-300x200.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1024x683.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-768x512.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-1536x1024.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-014-2048x1365.jpg 2048w\" sizes=\"(max-width: 285px) 100vw, 285px\">ль главы администрации района по социальным вопросам Е.А. Жарова, глава администрации МО Филипповское Л.А. Рубцов вместе с преподавателями и учениками нашей школы заложили Аллею Мудрости, а затем поднялись в новое образовательное пространство. Современные кабинеты химии, физики и биологии, на базе которых с помощью цифровых лабораторий, интерактивного оборудования, тематических коллекций по предметам, комплектам по робототехнике, механике и мехатронике наши ученики смогут получать образование, соответствующее современным требованиям.<br>Наши малыши рассказали стихи о науке, а старшеклассники продемонстрировали возможности нового оборудования и даже пригласили принять участие в опытах И.П. Букалова.<img class=\"wp-image-1648 alignright\" src=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg\" alt=\"\" width=\"251\" height=\"170\" srcset=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-scaled.jpg 2560w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-300x204.jpg 300w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1024x696.jpg 1024w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-768x522.jpg 768w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-1536x1044.jpg 1536w, http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/09/izobrazhenie-107-2048x1392.jpg 2048w\" sizes=\"(max-width: 251px) 100vw, 251px\">Педагоги «Точки роста» Разбоева В.И., Прохорова Э.В., Беляков В.М. рассказали об особенностях преподавания своих дисциплин и перспективах использования возможностей Центра.<br>Ещё раз поздравляем нашу школу с открытием «Точки роста» и надеемся, что благодаря Центру наши дети достигну высоких результатов!</p><p style=\"font-weight: 400; text-align: left; padding-left: 40px;\">Центр образования естественно-научной и технологической направленностей «Точка роста» на базе на базе МКОУ «Филипповская СОШ» создан в 2021 в рамках федерального проекта «Современная школа» национального проекта «Образование». Он призван обеспечить повышение охвата обучающихся программами основного общего и дополнительного образования естественно-научной и технологической направленностей с использованием современного оборудования.</p><p style=\"font-weight: 400; padding-left: 40px;\">&nbsp; &nbsp; Центры «Точка роста» на базе общеобразовательных организаций сельской местности и малых городов создаются для формирования условий для повышения качества общего образования, в том числе за счет обновления учебных помещений, приобретения современного оборудования, повышения квалификации педагогических работников и расширения практического содержания реализуемых образовательных программ.</p><p style=\"font-weight: 400; padding-left: 40px;\">Центр «Точка роста» является частью образовательной среды общеобразовательной организации, на базе которой осуществляется:</p><p style=\"font-weight: 400; padding-left: 40px;\">—&nbsp;&nbsp;преподавание учебных предметов из предметных областей «Естественно-научные предметы», «Естественные науки», «Обществознание и естествознание», «Математика и информатика», «Технология»;<br>—&nbsp;&nbsp;внеурочная деятельность для поддержки изучения предметов естественно-научной и технологической направленностей;<br>—&nbsp;дополнительное образование детей по программам естественно-научной и технической направленностей;<br>—&nbsp;&nbsp;проведение внеклассных мероприятий для обучающихся;<br>—&nbsp;организация образовательных мероприятий, в том числе в дистанционном формате с участием обучающихся из других образовательных организаций.</p><p style=\"padding-left: 40px;\">Общая информация о национальном проекте «Образование» (в том числе знак национального проекта «Образование»), адрес официального сайта Министерства просвещения Российской Федерации в информационно-телекоммуникационной сети «Интернет» и официальная символика Министерства просвещения Российской Федерации приведены <a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/wp-content/uploads/2021/08/ffc7c5002b89968a067870f958e8e7c0.pdf\">в презентации.</a></p><h4 style=\"padding-left: 40px;\">Информация о национальном проекте «Образование» размещена на сайте Министерства просвещения Российской Федерации по ссылке:<br><span class=\"link-wrapper-container\"><a href=\"https://edu.gov.ru/national-project/\">https://edu.gov.ru/national-project/</a></span></h4><h4 style=\"padding-left: 40px;\">Официальный адрес Министерства просвещения Российской Федерации:<br><a href=\"https://edu.gov.ru/\">https://edu.gov.ru/</a></h4><p>&nbsp;</p><div class=\"linebottom\"></div></div>',500,'active','2023-10-14 11:10:19','2023-10-14 11:10:19'),(22,5,NULL,'<p>Российская школа переживает сегодня серьёзные преобразования. На смену парадигме знаний, умений и навыков приходит Федеральный государственный образовательный стандарт общего образования (ФГОС), в основе которого лежит формирование компетентностного подхода, развитие универсальных учебных действий. Приоритетной целью современного российского образования становится не репродуктивная передача знаний, умений и навыков от учителя к ученику, а полноценное формирование и развитие способностей ученика самостоятельно ставить учебную проблему, формулировать алгоритм её решения, контролировать процесс и оценивать полученный результат, т.е. научить учиться. Это станет залогом успешной адаптации в стремительно меняющимся обществе.</p>',500,'active','2023-10-15 19:29:32','2023-10-15 19:59:38'),(23,5,'Состояние разработки и утверждения стандартов','<h4><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-2021-goda/\">ФГОС 2021 года</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/fgos-vtorogo-pokoleniya/\">ФГОС второго поколения</a></h4>\r\n\r\n<ul>\r\n	<li><a href=\"http://base.garant.ru/57501916/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС начального общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/57503714/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">ФГОС основного общего образования</a></li>\r\n	<li><a href=\"http://base.garant.ru/70188902/8ef641d3b80ff01d34be16ce9bafc6e0/#block_108\">ФГОС среднего (полного) общего образования</a></li>\r\n</ul>\r\n\r\n<p>Официальные информационные сайты:&nbsp;<a href=\"http://www.mon.gov.ru/\">www.mon.gov.ru</a></p>\r\n\r\n<p>&nbsp;</p>',500,'active','2023-10-15 19:30:15','2023-10-15 19:31:58'),(24,5,'Федеральные Государственные стандарты основного общего образования','<p>С 2015-2016 учебного года в МКОУ Филипповской СОШ вводится федеральный государственный стандарт основного общего образования (ФГОС ООО).</p>\r\n\r\n<p>Главная цель введения ФГОС ООО второго поколения заключается в создании условий, позволяющих решить стратегическую задачу Российского образования &ndash; повышение качества образования, достижение новых образовательных результатов, соответствующих современным запросам личности, общества и государства.</p>\r\n\r\n<p>ФГОС ООО утверждён приказом министерства образования и науки РФ.</p>\r\n\r\n<p>Что представляет собой Федеральный государственный стандарт основного общего образования? Федеральные государственные стандарты устанавливаются в Российской Федерации в соответствии с требованием Статьи 7 &laquo;Закона об образовании&raquo;. Федеральный государственный стандарт основного общего образования(СТАНДАРТ) представляет собой &laquo;совокупность требований, обязательных при реализации основной образовательной программы основного общего образования (ООП ООО) образовательными учреждениями, имеющими государственную аккредитацию&raquo;.</p>\r\n\r\n<p>Чем отличается новый стандарт от предыдущих?</p>\r\n\r\n<p>Первое отличие ФГОС от его предшественников &ndash; опора на результаты выявления запросов личности, семьи, общества и государства к результатам общего образования.</p>\r\n\r\n<p>Вторым принципиальным отличием ФГОС является их ориентация на достижение не только предметных образовательных результатов, но, прежде всего, на формирование личности учащихся, овладение ими универсальными способами учебной деятельности.</p>\r\n\r\n<p>Третье принципиальное отличие новых стандартов от предшествующих версий &mdash; это отличие в структуре.</p>\r\n\r\n<p>ФГОС ориентирует образование на достижение нового качества, адекватного современным (и даже прогнозируемым) запросам личности, общества и государства.</p>\r\n\r\n<p>Введение стандарта второго поколения во многом изменит школьную жизнь ребенка. Речь идет о новых формах организации обучения, новых образовательных технологиях, новой открытой информационно-образовательной среде, далеко выходящей за границы школы. Именно поэтому в стандарт, например, введена Программа формирования универсальных учебных действий, а учебные программы ориентированы на развитие самостоятельной учебной деятельности школьника (на такие виды учебной и внеучебной (внеурочной) деятельности, как учебное проектирование, моделирование, исследовательская деятельность, ролевые игры и др.)</p>\r\n\r\n<p>Отличительной особенностью нового стандарта является его деятельностный характер, ставящий главной целью развитие личности школьника. На уроках сейчас основное внимание будет уделяться развитию видов деятельности ребенка, выполнению различных проектных, исследовательских работ. Важно не просто передать знания школьнику, а научить его овладевать новым знанием, новыми видами деятельности.</p>\r\n\r\n<p>На ступени основного общего образования (5-9) кл у обучающихся должно быть сформировано умение учиться и способность к организации своей деятельности &mdash; умение принимать, сохранять цели и следовать им в учебной деятельности, планировать свою деятельность, осуществлять ее контроль и оценку, взаимодействовать с педагогом и сверстниками в учебном процессе&raquo;.</p>\r\n\r\n<p><strong>Какие требования выдвигает новый стандарт?</strong></p>\r\n\r\n<p>Стандарт выдвигает три группы требований:</p>\r\n\r\n<p>1) Требования к структуре основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Каждое образовательное учреждение, исходя из своей уникальности, разрабатывает собственную образовательную программу, Учебный план, учитывая, в том числе запросы и пожелания родителей школьников. Родители должны познакомиться с программой, чтобы понимать, как будут учить ребенка, по каким технологиям, чему его научат, какими качествами и умениями он будет обладать по окончании основной школы. В учебный план внесены следующие предметы:</p>\r\n\r\n<p>2) Требования к результатам освоения основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Итогом обучения должна будет стать совокупность результатов:</p>\r\n\r\n<p>&mdash; личностных (способность к саморазвитию, желание учиться и др.);<br />\r\n&mdash; метапредметных (универсальные учебные действия);<br />\r\n&mdash; предметных (система основных знаний).</p>\r\n\r\n<p>Оцениваться будет не то, что запомнил ребенок, а то, как он понял изученный материал и может ли его применить в разных ситуациях. Наряду с традиционными устными и письменными работами у учеников появится возможность &laquo;накопительной оценки&raquo; за выполнение тестов, проектов, различных творческих работ. Это могут быть рисунки, сочинения, наблюдения, аудио-, видеоработы, газеты, презентации, создание личного портфолио с коллекцией достижений ученика.</p>\r\n\r\n<p>3) Требования к условиям: реализации основной образовательной программы основного общего образования.</p>\r\n\r\n<p>Раньше никто не вписывал в стандарты нормы, определяющие техническое оснащение учебного процесса, кадровые и финансовые ресурсы. В новом стандарте четко описываются требования к информационному пространству, материально-техническому обеспечению, учебному оборудованию, кадровым и финансовым условиям.</p>\r\n\r\n<p>С информацией о новых образовательных стандартах, образовательными программами по учебным предметам можно ознакомиться на сайте&nbsp;<a href=\"http://www.standart.edu.ru/\">www.standart.edu.ru</a>. Сайт Министерства образования и науки РФ:&nbsp;<a href=\"http://mon.gov.ru/dok/fgos/7195/\">http://mon.gov.ru/dok/fgos/7195/</a></p>\r\n\r\n<p>В настоящее время школа работает над созданием основной образовательной программой основного общего образования</p>',500,'active','2023-10-15 19:33:05','2023-10-15 19:33:05'),(25,5,'Внедрение ФГОС НОО и ФГОС ООО с 01.09.2022 г.','<p>&nbsp;Министерством просвещения утверждены новые федеральные государственные образовательные стандарты (далее &ndash; ФГОС) начального общего и основного общего образования (далее &ndash; НОО и ООО соответственно). Обновлённая редакция ФГОС сохраняет принципы вариативности в формировании школами основных образовательных программ начального общего и основного общего образования, а также учёта интересов и возможностей как образовательных организаций, так и их учеников. Именно с 1 сентября 2022 года начнут действовать ФГОС в каждой школе, а обучающиеся, которые будут приняты на обучение в первые и пятые классы в 2022 году, будут учиться уже по обновленным ФГОС. Для несовершеннолетних обучающихся, зачисленных на обучение до вступления в силу настоящих приказов, возможно обучение по новым ФГОС с согласия их родителей (законных представителей).</p>\r\n\r\n<p>&nbsp;В обновлённых ФГОС сформулированы максимально конкретные требования к предметам всей школьной программы соответствующего уровня, позволяющие ответить на вопросы: что конкретно школьник будет знать, чем овладеет и что освоит. Обновлённые ФГОС также обеспечивают личностное развитие учащихся, включая гражданское, патриотическое, духовно-нравственное, эстетическое, физическое, трудовое, экологическое воспитание.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp;Обновлённые ФГОС описывают систему требований к условиям реализации общеобразовательных программ, соблюдение которых обеспечивает равенство возможностей получения качественного образования для всех детей независимо&nbsp; от места жительства и дохода семьи. Благодаря обновлённым стандартам школьники получат больше возможностей для того, чтобы заниматься наукой, проводить исследования, используя передовое оборудование.</p>',500,'active','2023-10-15 19:45:22','2023-10-15 19:45:22'),(26,5,'Внедрение ФГОС СОО  с 01.09.2023 г.','<p><strong>&nbsp;С 1 сентября 2023 года обучающиеся 10 классов российских&nbsp; школ переходят на&nbsp; обновленный Федеральный государственный образовательный стандарт среднего общего образования (ФГОС СОО), утвержденный Приказом Минпросвещения от 12.08.2022 № 732.</strong></p>\r\n\r\n<p>Федеральные государственные образовательные стандарты (ФГОС) общего образования &ndash; это совокупность требований, обязательных при реализации основных образовательных программ начального общего, основного общего, среднего общего образования образовательными учреждениями, имеющими государственную аккредитацию.</p>\r\n\r\n<p>Они&nbsp;обеспечивают преемственность основных образовательных программ начального общего, основного общего, среднего общего образования и включают:</p>\r\n\r\n<p>&mdash; требования к структуре основных образовательных программ, в том числе требования к соотношению частей основной образовательной программы и их объёму, а также к соотношению обязательной части основной образовательной программы и части, формируемой участниками образовательного процесса;</p>\r\n\r\n<p>&mdash; требования к условиям реализации основных образовательных программ, в том числе кадровым, финансовым, материально-техническим и иным условиям;</p>\r\n\r\n<p>&mdash; требования к результатам освоения основных образовательных программ.</p>',500,'active','2023-10-15 19:46:19','2023-10-15 19:46:19'),(27,5,'Нормативные основания введения ФГОС ООО (федеральный уровень)','<ul>\r\n	<li>Федеральный закон РФ&nbsp; &laquo;<a href=\"http://www.consultant.ru/document/cons_doc_LAW_140174/\">Об образовании в Российской Федерации</a>&raquo;</li>\r\n	<li>Национальная образовательная инициатива &laquo;<a href=\"http://base.garant.ru/6744437/\">Наша новая школа</a>&raquo;;</li>\r\n	<li>Постановление Главного государственного санитарного врача РФ&nbsp; &laquo;Об утверждении СанПиН 2.4.22821-10 &laquo;<a href=\"http://base.garant.ru/12183577/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">Санитарно-эпидемиологические требования к условиям и организации обучения в общеобразовательных учреждениях</a>&raquo;;</li>\r\n	<li>Единый квалификационный справочник должностей руководителей, специалистов и служащих&nbsp;<a href=\"http://base.garant.ru/199499/53f89421bbdaf741eb2d1ecc4ddb4c33/#block_1000\">&laquo;Квалификационные характеристики должностей работников образования&raquo;;</a></li>\r\n	<li>Приказ Минобрнауки РФ &laquo;<a href=\"http://base.garant.ru/198112/\">О порядке аттестации педагогических работников государственных и муниципальных образовательных учреждений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"http://www.rg.ru/2011/02/16/obr-trebovaniya-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части минимальной оснащенности учебного процесса и оборудования учебных помещений</a>&raquo;;</li>\r\n	<li>Приказ Минобрнауки РФ&nbsp; &laquo;<a href=\"https://rg.ru/2011/02/16/obr-sdorovje-dok.html\">Об утверждении федеральных требований к образовательным учреждениям в части охраны здоровья обучающихся, воспитанников</a>&raquo;;</li>\r\n	<li><a href=\"https://fgosreestr.ru/wp-content/uploads/2017/03/primernaja-osnovnaja-obrazovatelnaja-programma-osnovogo-obshchego-obrazovanija.pdf\">Примерная основная образовательная программа</a></li>\r\n</ul>',500,'active','2023-10-15 19:48:14','2023-10-15 19:48:14'),(28,7,'Изменения показателей бюджетной сметы','<p><a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2018-god/\">Изменение показателей бюджетной сметы 2018 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2019-god/\">Изменение показателей бюджетной сметы 2019 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2020-god/\">Изменение показателей бюджетной сметы 2020 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2021-god/\">Изменение показателей бюджетной сметы 2021 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2022-god/\">Изменение показателей бюджетной сметы 2022 год</a><br />\r\n<a href=\"http://xn----7sbbf3aapcdg1afga6a3b5e8f.xn--p1ai/izmenenie-pokazatelej-byudzhetnoj-smety-2023-god/\">Изменение показателей бюджетной сметы 2023 год</a></p>',500,'active','2023-10-15 19:54:10','2023-10-15 19:54:10'),(29,7,'Бюджетная смета',NULL,500,'active','2023-10-15 19:54:37','2023-10-15 19:58:04');
/*!40000 ALTER TABLE `sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `classroom_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `students_user_id_foreign` (`user_id`),
  KEY `students_classroom_id_foreign` (`classroom_id`),
  CONSTRAINT `students_classroom_id_foreign` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`),
  CONSTRAINT `students_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,9,'Майя','Миронова','Repellat.',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(2,10,'Вячеслав','Мишина','Est quis occaecati.',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(3,11,'Алиса','Евсеева','Hic dicta minus.',2,'2023-10-16 22:43:41','2023-10-16 22:43:41'),(4,18,'Искра','Медведева','Molestiae rem.',2,'2023-10-16 22:43:43','2023-10-16 22:43:43'),(5,19,'Вероника','Сафонова','Suscipit.',1,'2023-10-16 22:43:43','2023-10-16 22:43:43');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_subject` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Русский язык','2023-10-16 22:43:37','2023-10-16 22:43:37'),(2,'Литературное чтение','2023-10-16 22:43:37','2023-10-16 22:43:37'),(3,'Физическая культура','2023-10-16 22:43:37','2023-10-16 22:43:37'),(4,'Лингвистический практикум по иностранному языку','2023-10-16 22:43:38','2023-10-16 22:43:38'),(5,'Осмысленное чтение','2023-10-16 22:43:38','2023-10-16 22:43:38'),(6,'Технология','2023-10-16 22:43:38','2023-10-16 22:43:38'),(7,'Физика','2023-10-16 22:43:38','2023-10-16 22:43:38'),(8,'Разговоры о важном','2023-10-16 22:43:38','2023-10-16 22:43:38'),(9,'Немецкий язык','2023-10-16 22:43:38','2023-10-16 22:43:38'),(10,'Основы безопасности жизнедеятельности','2023-10-16 22:43:38','2023-10-16 22:43:38'),(11,'История России. Всеобщая история','2023-10-16 22:43:38','2023-10-16 22:43:38'),(12,'Основы духуовно-нравственных культур народов России','2023-10-16 22:43:38','2023-10-16 22:43:38'),(13,'Изобразительное искусство','2023-10-16 22:43:38','2023-10-16 22:43:38'),(14,'Основы религиозных культур и светской этики','2023-10-16 22:43:38','2023-10-16 22:43:38'),(15,'Литература','2023-10-16 22:43:38','2023-10-16 22:43:38'),(16,'Английский язык','2023-10-16 22:43:38','2023-10-16 22:43:38'),(17,'Математика','2023-10-16 22:43:38','2023-10-16 22:43:38'),(18,'География','2023-10-16 22:43:38','2023-10-16 22:43:38'),(19,'Химия','2023-10-16 22:43:38','2023-10-16 22:43:38'),(20,'Обществознание','2023-10-16 22:43:38','2023-10-16 22:43:38');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `surname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `patronymic` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `job_title` json DEFAULT NULL,
  `role_id` bigint unsigned NOT NULL,
  `main_photo_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `speciality` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `education` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `totalExperience` int DEFAULT NULL,
  `generalTeachingExperience` int DEFAULT NULL,
  `qualification` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `isAdministration` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `teachers_role_id_foreign` (`role_id`),
  KEY `teachers_user_id_foreign` (`user_id`),
  KEY `teachers_main_photo_id_foreign` (`main_photo_id`),
  CONSTRAINT `teachers_main_photo_id_foreign` FOREIGN KEY (`main_photo_id`) REFERENCES `photos` (`id`),
  CONSTRAINT `teachers_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,1,'Никита','Давыдов','Commodi velit.','[\"Nobis eaque perspiciatis ut.\", \"Qui amet sed illum placeat.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Accusamus officia.','Soluta enim aut cumque.',22,50,'Animi quo sint est culpa qui est sed.',1),(2,2,'Владлена','Быков','Sunt facere.','[\"Veritatis et quas a aut.\", \"Autem aut maiores sed ut.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Pariatur et quam.','Impedit rem et totam iste qui adipisci.',11,23,'Et recusandae quos adipisci.',1),(3,3,'Ирина','Брагина','Qui ut rerum.','[\"Laborum quas odit sit nihil.\", \"Iusto voluptas quis non.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Quam odio est sit.','At aspernatur dolorum similique dolor.',20,17,'Dignissimos quaerat dolor nostrum.',1),(4,4,'Ника','Ларионов','Non qui repellat.','[\"Ipsum in ipsam minima soluta.\", \"Qui exercitationem ut ut.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Soluta beatae qui.','Nihil quaerat minima numquam earum.',5,41,'Est quis perferendis voluptas.',1),(5,5,'Леонид','Крылова','Vitae corrupti.','[\"Dolore quam fugiat iure eius.\", \"Dolore maiores sunt deleniti.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Rem et tempora aut.','Eaque aliquid eaque et deserunt velit.',36,32,'Recusandae autem vero in rerum.',0),(6,6,'Лариса','Фёдорова','Sequi autem qui aut.','[\"Dicta a sed tempora nesciunt.\", \"Et ut ipsum rerum est.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Laudantium cumque.','Odio enim alias est odio.',28,8,'Fuga facere voluptas aperiam.',0),(7,7,'Август','Туров','Et accusamus quasi.','[\"Esse ex in quis sed.\", \"Sed eligendi vitae sapiente.\"]',2,NULL,'2023-10-16 22:43:36','2023-10-16 22:43:36','Nesciunt qui nisi.','Labore est omnis vitae at recusandae.',19,45,'Quis rerum velit a est sint aliquam.',1),(8,8,'Майя','Куликов','Quia voluptatem.','[\"Et qui maiores vel.\", \"Ea totam dolorem et non id.\"]',2,NULL,'2023-10-16 22:43:37','2023-10-16 22:43:37','Porro quia ipsam.','Unde est necessitatibus eos.',11,26,'Facere ducimus aperiam rerum.',1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_blocked` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'no',
  `last_activity_at` datetime DEFAULT NULL,
  `avatar` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_login` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `telegram_id` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Федосья Максимовна Брагина','stanislav.martynov@example.org','2023-10-16 22:43:36','$2y$10$AdB0wyv13I7G11j37tiqhOC1ran/48/q4dCm0Gd9kz529ePz/AiV6','nUdyDqbvrk','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'(35222) 03-8436',NULL,NULL,NULL),(2,'Раиса Борисовна Владимироваа','baranova.faina@example.org','2023-10-16 22:43:36','$2y$10$2FMD1cmX8OtuHUiYZXaYXOWK0m5EDpTWDOyanHVFIEPh4Asy8A0SK','xgr9ruQ2EG','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'8-800-517-5572',NULL,NULL,NULL),(3,'Ростислав Романович Исаков','rodion42@example.org','2023-10-16 22:43:36','$2y$10$nO81e2W5pzt9M8Cl12Zd0e3IVv40OF5y4MCk8ftioLQ3ToseRkXlK','MoWH6eFH1N','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'(812) 199-18-21',NULL,NULL,NULL),(4,'Владимирова Артур Андреевич','wdmitriev@example.net','2023-10-16 22:43:36','$2y$10$KmXFhIa2ZtQ7pKmKGz6QoOcv55oLeC1K60wIy7wnqAVb9Tqo2samK','ZQ21MHvXyL','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'(35222) 28-3527',NULL,NULL,NULL),(5,'Жанна Евгеньевна Кондратьеваа','gdoronina@example.org','2023-10-16 22:43:36','$2y$10$PUbrDPW/YdWE5QibLscVROUKKfY0WIIgztlU3Qmw5RpxcONbop54y','GMlrMeHsyt','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'8-800-286-4164',NULL,NULL,NULL),(6,'Логинова Александра Александровна','pmartynova@example.org','2023-10-16 22:43:36','$2y$10$Iq3hPMwd4DPUFI5Sw5t.1.5ilY4sBnGaQV42qRV1I38ZOJEYDINSy','fPCw426IO5','2023-10-16 22:43:36','2023-10-16 22:43:36','no',NULL,NULL,NULL,'+7 (922) 982-9637',NULL,NULL,NULL),(7,'Селезнёва Тимур Борисович','zimina.inga@example.org','2023-10-16 22:43:36','$2y$10$iSoOlAGcRw4RRjToj3V8tu0uBj/DsM.xZE3MDPtWH8QSwBcavongi','lItRWMdf4O','2023-10-16 22:43:37','2023-10-16 22:43:37','no',NULL,NULL,NULL,'(495) 192-9579',NULL,NULL,NULL),(8,'Марина Владимировна Евдокимова','lytkina.sava@example.org','2023-10-16 22:43:37','$2y$10$vC7AMToDZpZPvmeiT2pw/egpz634nayD3qzswDg0QSeipfFXyYIfS','PHSh82RrOg','2023-10-16 22:43:37','2023-10-16 22:43:37','no',NULL,NULL,NULL,'(495) 954-7943',NULL,NULL,NULL),(9,'Веселова Иван Дмитриевич','petukova.vera@example.com','2023-10-16 22:43:41','$2y$10$pALfV/gFhzDsOaqhzWOkiOo62kdJV/V69iex9HebXRqTDhsf6dpkq','1W2G6rNufP','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'(35222) 97-3893',NULL,NULL,NULL),(10,'Петрова Артём Романович','alekseeva.tit@example.net','2023-10-16 22:43:41','$2y$10$BpuzKdQiTWk6wIbujfZGtuHo/0KVc1EA/ODflWZLpVJJlVmvVCNHm','mOVWAsNEDr','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'8-800-386-2406',NULL,NULL,NULL),(11,'Мария Евгеньевна Журавлёва','ekaterina90@example.com','2023-10-16 22:43:41','$2y$10$PcllrlHfJBwa4KvMfbXbHe1KAinWve2ZGBByxFd.zFVabmTL7dfEa','yLwokz7Q5P','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'+7 (922) 311-0654',NULL,NULL,NULL),(12,'Алёна Борисовна Сафоноваа','nelli45@example.net','2023-10-16 22:43:41','$2y$10$RawO1d2L8WOmFhMzppXMP.7dWdgy4p0Ia5Jm6MD5kmmxANi3CFska','DJEXtQKUTV','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'(812) 670-62-32',NULL,NULL,NULL),(13,'Станислав Дмитриевич Гордеева','bobyleva.erik@example.net','2023-10-16 22:43:41','$2y$10$1XJsni1jcqlkEaFvxBYh6.zctuNHCn51HXT4j2CuS8kJY/dwhyegC','hHA2POrYh9','2023-10-16 22:43:41','2023-10-16 22:43:41','no',NULL,NULL,NULL,'8-800-323-8392',NULL,NULL,NULL),(14,'Яковлева Анфиса Евгеньевна','sobolev.maksim@example.com','2023-10-16 22:43:41','$2y$10$mf3OPNsQ/wdEOXn93g.pEeT0IkJfn9bt9EtdXtP2aBae8Ivwes.9a','4VIrcSY4Mi','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'(812) 189-27-05',NULL,NULL,NULL),(15,'Василиса Сергеевна Виноградоваа','roman58@example.com','2023-10-16 22:43:42','$2y$10$NR32xSeFYjZ.t4VlOUUKl.qFCn37fv.d8p4/8VVVF46v20IwU5CYK','J940TqSO2b','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'(812) 683-84-53',NULL,NULL,NULL),(16,'Орлова Ольга Андреевна','olesy.ykuseva@example.com','2023-10-16 22:43:42','$2y$10$ANeCgBhDuZc/h7rYIJ3WA.wRRA.vzMp.1DFnVtsq1P6.dZnFdXfji','ZbgC9uiICy','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'8-800-447-6346',NULL,NULL,NULL),(17,'Моисеева Злата Львовна','nina84@example.org','2023-10-16 22:43:42','$2y$10$9pQOKWQymbQSiSLUPPpoxuQLmD97Lipty7SzSFEC92xRap2O419zC','buZQIk6nvH','2023-10-16 22:43:42','2023-10-16 22:43:42','no',NULL,NULL,NULL,'8-800-889-9095',NULL,NULL,NULL),(18,'Жуковаа Елена Львовна','koklov.svytoslav@example.com','2023-10-16 22:43:43','$2y$10$dN71MMOHGsaPoUpcq68dXuFoR7rSzB3lbQShkxIMhwVznExPzdTBS','1mhF9oUAhU','2023-10-16 22:43:43','2023-10-16 22:43:43','no',NULL,NULL,NULL,'(35222) 57-3512',NULL,NULL,NULL),(19,'Поляков Николай Евгеньевич','nkuznetov@example.org','2023-10-16 22:43:43','$2y$10$XJsd/8ghxySGj1ArsLEZ.eWnMf6o9IpNS4Zqg28kUueSOkLZOI5zS','mkeHqwZC09','2023-10-16 22:43:43','2023-10-16 22:43:43','no',NULL,NULL,NULL,'(495) 887-3016',NULL,NULL,NULL),(20,'Владимирова Болеслав Дмитриевич','user@mail.ru','2023-10-16 22:43:56','$2y$10$0VE5BzbPVm80h1AqCVhffubrSqnrCA8FopULE2CBWLZUsVc3OgD1K','70284aXV93','2023-10-16 22:43:56','2023-10-16 22:43:56','no',NULL,NULL,NULL,'(35222) 52-9312',NULL,NULL,NULL),(21,'Ирина Максимовна Крюковаа','admin@mail.ru','2023-10-16 22:43:56','$2y$10$IvAT9.P.q.HQbXsH9VZKTeqI23Cugw7CZFdUFV1Kor5ikXT3hyWcm','61URAP4ibc','2023-10-16 22:43:56','2023-10-16 22:51:28','no','2023-10-17 01:51:28',NULL,NULL,'(812) 780-28-05',NULL,NULL,NULL);
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

-- Dump completed on 2023-10-18  0:09:23
