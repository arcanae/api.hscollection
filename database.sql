-- MySQL dump 10.15  Distrib 10.0.31-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: jcourdesse_hscollection
-- ------------------------------------------------------
-- Server version	10.0.31-MariaDB-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rarity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pvalue` int(11) NOT NULL,
  `svalue` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'Ancient of Lore','Druid','Epic',400,100,'ancient-of-lore.png'),(2,'Ancient of War','Druid','Epic',400,100,'ancient-of-war.png'),(3,'Bite','Druid','Rare',100,20,'bite.png'),(4,'Cenarius','Druid','Legendary',1600,400,'cenarius.png'),(5,'Druid of the Claw','Druid','Common',20,5,'druid-of-the-claw.png'),(6,'Force of Nature','Druid','Epic',400,100,'force-of-nature.png'),(7,'Keeper of the Grove','Druid','Rare',100,20,'keeper-of-the-grove.png'),(8,'Mark of Nature','Druid','Common',20,5,'mark-of-nature.png'),(9,'Naturalize','Druid','Common',20,5,'naturalize.png'),(10,'Nourish','Druid','Rare',100,20,'nourish.png'),(11,'Power of the Wild','Druid','Common',20,5,'power-of-the-wild.png'),(12,'Savagery','Druid','Rare',100,20,'savagery.png'),(13,'Soul of the Forest','Druid','Common',20,5,'soul-of-the-forest.png'),(14,'Starfall','Druid','Rare',100,20,'starfall.png'),(15,'Wrath','Druid','Common',20,5,'wrath.png'),(16,'Bestial Wrath','Hunter','Epic',400,100,'bestial-wrath.png'),(17,'Deadly Shot','Hunter','Common',20,5,'deadly-shot.png'),(18,'Eaglehorn Bow','Hunter','Rare',100,20,'eaglehorn-bow.png'),(19,'Explosive Shot','Hunter','Rare',100,20,'explosive-shot.png'),(20,'Explosive Trap','Hunter','Common',20,5,'explosive-trap.png'),(21,'Flare','Hunter','Rare',100,20,'flare.png'),(22,'Freezing Trap','Hunter','Common',20,5,'freezing-trap.png'),(23,'Gladiator\'s Longbow','Hunter','Epic',400,100,'gladiators-longbow.png'),(24,'King Krush','Hunter','Legendary',1600,400,'king-krush.png'),(25,'Misdirection','Hunter','Rare',100,20,'misdirection.png'),(26,'Savannah Highmane','Hunter','Rare',100,20,'savannah-highmane.png'),(27,'Scavenging Hyena','Hunter','Common',20,5,'scavenging-hyena.png'),(28,'Snake Trap','Hunter','Epic',400,100,'snake-trap.png'),(29,'Snipe','Hunter','Common',20,5,'snipe.png'),(30,'Unleash the Hounds','Hunter','Common',20,5,'unleash-the-hounds.png'),(31,'Archmage Antonidas','Mage','Legendary',1600,400,'archmage-antonidas.png'),(32,'Blizzard','Mage','Rare',100,20,'blizzard.png'),(33,'Cone of Cold','Mage','Common',20,5,'cone-of-cold.png'),(34,'Counterspell','Mage','Rare',100,20,'counterspell.png'),(35,'Ethereal Arcanist','Mage','Rare',100,20,'ethereal-arcanist.png'),(36,'Ice Barrier','Mage','Common',20,5,'ice-barrier.png'),(37,'Ice Block','Mage','Epic',400,100,'ice-block.png'),(38,'Kirin Tor Mage','Mage','Rare',100,20,'kirin-tor-mage.png'),(39,'Mana Wyrm','Mage','Common',20,5,'mana-wyrm.png'),(40,'Mirror Entity','Mage','Common',20,5,'mirror-entity.png'),(41,'Pyroblast','Mage','Epic',400,100,'pyroblast.png'),(42,'Sorcerer\'s Apprentice','Mage','Common',20,5,'sorcerers-apprentice.png'),(43,'Spellbender','Mage','Epic',400,100,'spellbender.png'),(44,'Vaporize','Mage','Rare',100,20,'vaporize.png'),(45,'Aldor Peacekeeper','Paladin','Rare',100,20,'aldor-peacekeeper.png'),(46,'Argent Protector','Paladin','Common',20,5,'argent-protector.png'),(47,'Avenging-wrath.png','Paladin','Epic',400,100,'avenging-wrath.png'),(48,'Blessed Champion','Paladin','Rare',100,20,'blessed-champion.png'),(49,'Blessing of Wisdom','Paladin','Common',20,5,'blessing-of-wisdom.png'),(50,'Divine Favor','Paladin','Rare',100,20,'divine-favor.png'),(51,'Equality','Paladin','Rare',100,20,'equality.png'),(52,'Eye for an Eye','Paladin','Common',20,5,'eye-for-an-eye.png'),(53,'Holy Wrath','Paladin','Rare',100,20,'holy-wrath.png'),(54,'Lay on Hands','Paladin','Epic',400,100,'lay-on-hands.png'),(55,'Noble Sacrifice','Paladin','Common',20,5,'noble-sacrifice.png'),(56,'Redemption','Paladin','Common',20,5,'redemption.png'),(57,'Repentance','Paladin','Common',20,5,'repentance.png'),(58,'Sword of Justice','Paladin','Epic',400,100,'sword-of-justice.png'),(59,'Tition Fordring','Paladin','Legendary',1600,400,'tirion-fordring.png'),(60,'Auchenai Soulpriest','Priest','Rare',100,20,'auchenai-soulpriest.png'),(61,'Cabal Shadow Priest','Priest','Epic',400,100,'cabal-shadow-priest.png'),(62,'Circle of Healing','Priest','Common',20,5,'circle-of-healing.png'),(63,'Holy Fire','Priest','Rare',100,20,'holy-fire.png'),(64,'Inner Fire','Priest','Common',20,5,'inner-fire.png'),(65,'Lightspawn','Priest','Common',20,5,'lightspawn.png'),(66,'Lightwell','Priest','Rare',100,20,'lightwell.png'),(67,'Mass Dispel','Priest','Rare',100,20,'mass-dispel.png'),(68,'Mindgames','Priest','Epic',400,100,'mindgames.png'),(69,'Prophet Velen','Priest','Legendary',1600,400,'prophet-velen.png'),(70,'Shadowform','Priest','Epic',400,100,'shadowform.png'),(71,'Shadow Madness','Priest','Rare',100,20,'shadow-madness.png'),(72,'Silence','Priest','Common',20,5,'silence.png'),(73,'Temple Enforcer','Priest','Common',20,5,'temple-enforcer.png'),(74,'Thoughtsteal','Priest','Common',20,5,'thoughtsteal.png'),(75,'Betrayal','Rogue','Common',20,5,'betrayal.png'),(76,'Blade Flurry','Rogue','Rare',100,20,'blade-flurry.png'),(77,'Cold Blood','Rogue','Common',20,5,'cold-blood.png'),(78,'Defias Ringleader','Rogue','Common',20,5,'defias-ringleader.png'),(79,'Edwin VanCleef','Rogue','Legendary',1600,400,'edwin-vancleef.png'),(80,'Eviscerate','Rogue','Common',20,5,'eviscerate.png'),(81,'Headcrack','Rogue','Rare',100,20,'headcrack.png'),(82,'Kidnapper','Rogue','Epic',400,100,'kidnapper.png'),(83,'Master of Disguise','Rogue','Rare',100,20,'master-of-disguise.png'),(84,'Patient Assassin','Rogue','Epic',400,100,'patient-assassin.png'),(85,'Perdition\'s Blade','Rogue','Rare',100,20,'perditions-blade.png'),(86,'Preparation','Rogue','Epic',400,100,'preparation.png'),(87,'Shadowstep','Rogue','Common',20,5,'shadowstep.png'),(88,'SI:7 Agent','Rogue','Rare',100,20,'si7-agent.png'),(89,'Al\'Akir the Windlord','Shaman','Legendary',1600,400,'alakir-the-windlord.png'),(90,'Ancestral Spirit','Shaman','Rare',100,20,'ancestral-spirit.png'),(91,'Doomhammer','Shaman','Epic',400,100,'doomhammer.png'),(92,'Dust Devil','Shaman','Common',20,5,'dust-devil.png'),(93,'Earth Elemental','Shaman','Epic',400,100,'earth-elemental.png'),(94,'Earth Shock','Shaman','Common',20,5,'earth-shock.png'),(95,'Far Sight','Shaman','Epic',400,100,'far-sight.png'),(96,'Feral Spirit','Shaman','Rare',100,20,'feral-spirit.png'),(97,'Forked Lightning','Shaman','Common',20,5,'forked-lightning.png'),(98,'Lava Burst','Shaman','Rare',100,20,'lava-burst.png'),(99,'Lightning Bolt','Shaman','Common',20,5,'lightning-bolt.png'),(100,'Lightning Storm','Shaman','Rare',100,20,'lightning-storm.png'),(101,'Mana Tide Totem','Shaman','Rare',100,20,'mana-tide-totem.png'),(102,'Stormforged Axe','Shaman','Common',20,5,'stormforged-axe.png'),(103,'Unbound Elemental','Shaman','Common',20,5,'unbound-elemental.png'),(104,'Bane of Doom','Warlock','Epic',400,100,'bane-of-doom.png'),(105,'Blood Imp','Warlock','Common',20,5,'blood-imp.png'),(106,'Demonfire','Warlock','Common',20,5,'demonfire.png'),(107,'Doomguard','Warlock','Rare',100,20,'doomguard.png'),(108,'Felguard','Warlock','Rare',100,20,'felguard.png'),(109,'Flame Imp','Warlock','Common',20,5,'flame-imp.png'),(110,'Lord Jaraxxus','Warlock','Legendary',1600,400,'lord-jaraxxus.png'),(111,'Pit Lord','Warlock','Epic',400,100,'pit-lord.png'),(112,'Sense Demons','Warlock','Common',20,5,'sense-demons.png'),(113,'Shadowflame','Warlock','Rare',100,20,'shadowflame.png'),(114,'Siphon Soul','Warlock','Rare',100,20,'siphon-soul.png'),(115,'Summoning Portal','Warlock','Common',20,5,'summoning-portal.png'),(116,'Twisting Nether','Warlock','Epic',400,100,'twisting-nether.png'),(117,'Void Terror','Warlock','Rare',100,20,'void-terror.png'),(118,'Arathi Weaponsmith','Warrior','Common',20,5,'arathi-weaponsmith.png'),(119,'Armorsmith','Warrior','Rare',100,20,'armorsmith.png'),(120,'Battle Rage','Warrior','Common',20,5,'battle-rage.png'),(121,'Brawl','Warrior','Epic',400,100,'brawl.png'),(122,'Commanding Shout','Warrior','Rare',100,20,'commanding-shout.png'),(123,'Cruel Taskmaster','Warrior','Common',20,5,'cruel-taskmaster.png'),(124,'Frothing Berserker','Warrior','Rare',100,20,'frothing-berserker.png'),(125,'Gorehowl','Warrior','Epic',400,100,'gorehowl.png'),(126,'Grommash Hellscream','Warrior','Legendary',1600,400,'grommash-hellscream.png'),(127,'Inner Rage','Warrior','Common',20,5,'inner-rage.png'),(128,'Mortal Strike','Warrior','Rare',100,20,'mortal-strike.png'),(129,'Rampage','Warrior','Common',20,5,'rampage.png'),(130,'Shield Slam','Warrior','Epic',400,100,'shield-slam.png'),(131,'Slam','Warrior','Common',20,5,'slam.png'),(132,'Upgrade!','Warrior','Rare',100,20,'upgrade.png');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `items` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_BA388B7A76ED395` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `inventory` longtext COLLATE utf8_unicode_ci COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D6495E237E06` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-12 14:22:08
