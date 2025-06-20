-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: demo1
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text,
  `type` varchar(45) DEFAULT NULL,
  `icon` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'永夜狂暴','一旦开启狂暴，将会永远持续下去。','barbarian','fa-solid fa-hippo'),(2,'武器大师','获得所有武器精通，并且获得5个自选武器。','barbarian','fa-solid fa-khanda'),(3,'鲁莽风格','你的所有攻击，都为鲁莽攻击。','barbarian','fa-solid fa-person-circle-exclamation'),(4,'多重攻击','在自己回合时，攻击动作时的攻击额外+1。','barbarian','fa-solid fa-hand-fist'),(5,'真·凶蛮打击','每回合一次，当用力量攻击检定的武器攻击时，你可以在【巨力猛击Forceful Blow】【断筋猛击Hamstring Blow】【震撼猛击Staggering Blow】【破势猛击Sundering Blow】中选择一项使用。','barbarian','fa-solid fa-hammer'),(6,'真·兽性狂暴','你获得兽性狂暴（rage of the wilds）特性，如果没有狂暴能力，则获得每次战斗可以进入1次狂暴状态的能力。 如果已经有狂暴能力，则进入兽性狂暴时，同时进入熊，鹰，狼，猫头鹰，黑豹，鲑鱼状态。如果拥有【永夜狂暴】，则还可以同时进入猎鹰，雄狮，角羊形态。','barbarian','fa-brands fa-brave'),(7,'神之勇者 Warrior of the Gods','某个神圣实体对你施以援手以确保你总能继续战斗。你获得一个有着4枚d12的治疗池，你可以用其中的骰子治愈自身。以一个附赠动作，你可以消耗治疗池中任意枚骰子来恢复你的生命值。投掷所有你消耗的骰子，将它们相加，即是你以此恢复的生命值。当你完成一次长休时，你的治疗池重获所有已消耗的骰子。','barbarian','fa-brands fa-yelp'),(8,'根击千钧 Battering Roots','世界树的卷须将你的武器延长。你的回合内，你持用的任何具有重型或多用词条的近战武器的触及增加10尺。当你在你的回合内以该武器命中时，除了这把武器本身的精通词条外，你还可以为其应用推离或失衡精通词条。','barbarian','fa-solid fa-route'),(9,'诗人激励','吟游诗人激励 Bardic Inspiration：每次战斗开始，都会获得3颗d6。（诗人职业，改为获得3颗d8骰）','bard','fa-solid fa-guitar'),(10,'反迷惑 Countercharm','你可以用带有力量的音符或话语来干扰影响心灵的效应。若你或位于你30尺内的一名生物在对抗施加魅惑或恐慌 状态的效应的豁免检定中失败，你能够以反应令其重骰这次豁免，这次重骰具有优势。','bard','fa-solid fa-music'),(11,'战斗魔法 Battle Magic','在你施展一道施法时间为一动作的法术后，你能够以一个附赠动作，使用一把武器发动一次攻击。','bard','fa-solid fa-hand-sparkles'),(12,'灵感织衣 Mantle of Insipration','获得1颗d6激励骰。（诗人职业，改为获得1颗d8激励骰）你可以将妖精魔法织入歌曲亦或是舞蹈，为他人献上满满的活力。以一个附赠动作，你可以消耗一次诗人激励使用次数，并掷诗人激励骰，从位于你60尺内的其他生物中选择任意生物，数量至多等于你魅力调整值（至少选择一名），每个被选中的生物获得等于两倍该诗人骰骰值的临时生命值，然后每名生物均可以使用自己的反应立即移动至多等于自己速度的距离，这次移动不会引发借机攻击。','bard','fa-solid fa-tower-broadcast'),(13,'不谐低语Dissonant Whispers','获得1颗d6激励骰（诗人职业，改为获得1颗d8激励骰）学会该法术，每次战斗第一次释放，不消耗法术环卫，不消耗动作和施法时间。在释放的当前回合，可以连续释放三次。可以通过消耗1颗激励骰进行一次法术释放。','bard','fa-solid fa-face-laugh-squint'),(14,'魔盗奥秘','学会任意职业的三环法术法术，每次长休后，可以不消耗任何环位释放一次，施法属性为魅力','bard','fa-brands fa-joget'),(15,'战斗激励Combat Inspiration','获得战斗激励特性（详见勇气学院 College of Valor），并且获得2颗d6激励骰（诗人职业，改为获得2颗d8激励骰）','bard','fa-brands fa-brave-reverse'),(16,'诗人魔法','获得3颗d6激励骰（诗人职业，改为获得3颗d8激励骰）1环法术可以消耗1个激励骰释放。2环法术可以消耗2个激励骰释放。3环法术可以消耗3个激励骰释放。','bard','fa-solid fa-icons'),(17,'引导神力 Channel Divinity','你额外获得2次神力引导次数。可以使用神力引导使用以下特性：神圣火花Divine Spark。驱散亡灵Turn Undead。(详细见牧师 Cleric职业页面)','cleric','fa-solid fa-book-bible'),(18,'神权祝福','你额外获得1次神力引导次数。你可以消耗1次神力引导次数，获得【神圣打击】【Divine strike】特性。','cleric','fa-solid fa-star-half-stroke'),(19,'生命赋权','你额外获得1次神力引导次数。（如果你已经是牧师，则额外获得神力引导次数加倍的特性）。你可以消耗1次神力引导次数，同时释放 Aid，Bless，Cure wounds。','cleric','fa-solid fa-heart'),(20,'光明赋权','你额外获得1次神力引导次数。（如果你已经是牧师，则额外获得神力引导次数加倍的特性）。你可以消耗1次神力引导次数，同时释放燃烧之手Burning Hands， 妖火Faerie Fire，灼热射线Scorching Ray， 识破隐形See Invisibility','cleric','fa-solid fa-sun'),(21,'诡术赋权','你额外获得1次神力引导次数。（如果你已经是牧师，则额外获得神力引导次数加倍的特性）。你可以消耗1次神力引导次数，同时释放魅惑类人Charm Person， 易容术Disguise Self，隐形术Invisibility，行动无踪Pass without Trace。','cleric','fa-solid fa-masks-theater'),(22,'战争赋权 ','你额外获得1次神力引导次数。（如果你已经是牧师，则额外获得神力引导次数加倍的特性）。你可以消耗1次神力引导次数，同时释放光导箭Guiding Bolt，虔诚护盾Shield of Faith，魔化武器Magic Weapon，灵体武器Spiritual Weapon。','cleric','fa-solid fa-jedi'),(23,'神罚赋权','你额外获得1次神力引导次数。（如果你已经是牧师，则额外获得神力引导次数加倍的特性）。你可以消耗1次神力引导次数，同时释放致伤术Inflict Wounds，目盲术/耳聋术Blindness/Deafness，降咒Bestow Curse。','cleric','fa-solid fa-cross'),(24,'防死祝福','战斗开始时，自动释放1次防死结界。可以自由选择目标。防死结界持续时间为永久。','cleric','fa-solid fa-user-shield'),(25,'荒野祝福','你获得德鲁伊2级特性：荒野变形Wild Shape，且cr为2。如果你已经是德鲁伊，则荒野变形次数翻倍。cr+2，且持续时间为永久。','druid','fa-solid fa-paw'),(26,'荒野群伴','你可以消耗任意法术位，释放寻获魔宠Find Familiar法术。你的Find Familar取消个数上限，持续时间为永久。','druid','fa-brands fa-phoenix-framework'),(27,'大地祝福','你免疫中毒状态，且根据地形（荒漠，极地，热带，温带）获得（火焰，寒冷，闪电，毒素）抗性。如果你是德鲁伊职业，则获得职业特性：自然庇护。','druid','fa-solid fa-land-mine-on'),(28,'月亮祝福','你学会【月光飞步】【Moonlight Step】：你能以魔法传送自身，在一道月光中重新出现。以一个附赠动作，你传送最多30尺到一处你能看见的未被占据的空间，并且你在这个回合结束前进行的下一次攻击具有优势。你可以使用该特性的次数等于你的感知调整值（至少1次），并且你在结束一次长休后重获全部已消耗的使用次数。你也能消耗一个二环或更高的法术位来恢复一次使用次数（无需任何动作）。如果你是德鲁伊职业，则获得职业特性：月晖形态（Lnua Form）','druid','fa-solid fa-moon'),(29,'星辰祝福','你创造了一个星图，可以视为你的法术法器，并且可以不占用你的手。每次战斗开始，都可以不消耗动作和施法材料，释放一次神导术Guidance和光导箭Guiding bolt。你选择以下三种形态，持续效果为永久。射手座Archer，圣杯座Chalice。巨龙座Dragon。（详细见德鲁伊子职业：星辰结社Circle of the Stars）如果你是德鲁伊职业，则永久获得三种形态于一体。','druid','fa-solid fa-star-of-david'),(30,'德鲁伊伎俩','你习得所有的德鲁伊戏法。如果你是德鲁伊职业，则所有的戏法都可以升1阶段释放。戏法中所有专注法术都可以不用专注释放，持续时间为永久。','druid','fa-solid fa-seedling'),(31,'自然熟练','同时获得：奥秘、驯兽、洞悉、医疗、自然、察觉、宗教、求生熟练。如果你是德鲁伊职业，则以上所有的熟练值加倍。','druid','fa-brands fa-pagelines'),(32,'德鲁伊语Druidic','你学会了德鲁伊语，一门德鲁伊之间的秘密语言。在学会这门古老语言的同时，你也解锁了和动物交谈的魔法：你始终准备了法术动物交谈Speak With Animals。你可以使用德鲁伊语来传递隐藏的信息。你和其他知晓这门语言的对象能够自动辨认出信息。其他人需要通过DC15的智力（调查）检定才能意识到信息的存在，但不借助魔法则无法解读。如果你是德鲁伊职业，则你已知所有的语言。','druid','fa-solid fa-comment-nodes'),(33,'百变风格','你可以选择2个战斗风格。如果你是战士，则获得所有的战斗风格。','druid','fa-solid fa-person-rays'),(34,'疯狂回气','你获得战士的特性：回气（Second Wind）。如果你的职业是战士，发动回气的目标为所有队友。回气可使用次数翻倍。','fighter','fa-solid fa-user-plus'),(35,'真·动作如潮','你获得战士的特性：动作如潮（Action Surge）。如果你的职业是战士，动作如潮的次数+1，且你可以在一回合不使用主要动作攻击时，增加1次你的动作如潮次数。 ','fighter','fa-solid fa-people-group'),(36,'额外打击','你可以在自己的回合内执行攻击动作时，多攻击一次。','fighter','fa-solid fa-hand-back-fist'),(37,'战斗大师','你获得特性：卓越战技Combat Superiority。如果你的职业是战士，你习得所有卓越战技。卓越骰向上scale一级，数量+2。','fighter','fa-solid fa-book-journal-whills'),(38,'精通重击','你获得特性：精通重击Improved Critical。你使用武器或徒手打击进行的攻击检定在d20中掷出19或20时都算作掷出了重击。如果你的职业是战士，你可以将额外将任意2个攻击检定结果设置为重击。（一旦确定就不能改变）。','fighter','fa-solid fa-angles-up'),(39,'奥法战斗','你获得特性：战争魔法 War Magic：当你在自己回合执行攻击动作时，你可以将该动作攻击中的一次攻击替换为施展一道施法时间为动作的你的法师戏法。你在法师的戏法列表中选择3个习得。如果你的职业是奥法骑士，则在法师的1环法术中，选择任意一个法术，将释放条件变为at will。','fighter','fa-solid fa-hat-wizard'),(40,'灵能战斗','你获得战士特性：灵能力量Psionic Power，（默认等级为3级）。如果你的职业是灵能武士，则默认等级为11级。','fighter','fa-solid fa-atom'),(41,'武术技艺','你获得武僧职业特性：武艺Martial Arts。如果你的职业是武僧，则武僧武器为任意武器。','monk','fa-solid fa-hand-point-right'),(42,'武僧武功','你获得武僧职业特性：武僧武功Monk\'s Focus，且获得3个气。如果你的职业是武僧，同时获得气数量翻倍的特性。','monk','fa-solid fa-hands-praying'),(43,'拨挡攻击','你获得2个气。如果你的职业是武僧，同时获得气数量翻倍的特性。你获得武僧职业特性：拨挡攻击Deflect Attacks。如果你的职业是武僧，则减值骰为1d20。','monk','fa-solid fa-right-left'),(44,'暗影藏型','你获得2个气。如果你的职业是武僧，同时获得气数量翻倍的特性。你获得武僧暗影武者三级职业特性：暗影技艺Shadow Arts：如果你的职业是暗影武者，则获得职业特性：幽影斗篷。','monk','fa-solid fa-circle-half-stroke'),(45,'降世神通','你获得2个气。如果你的职业是武僧，同时获得气数量翻倍的特性。你可以消耗1个气，释放如下法术：冰刃｜Ice Knife， 燃烧之手｜Burning Hands，纠缠术｜Entangle，雷鸣波｜Thunderwave。如果你的职业是四象武僧，则可以消耗1个气，释放以下法术：龙息术｜Dragon\'s Breath（寒冰），炽焰法球｜Flaming Sphere，荆棘丛生｜Spike Growth','monk','fa-solid fa-wind'),(46,'飞檐走壁Acrobatic Movement','若你未着装任何护甲也没持用盾牌，你便可以在你的回合中在垂直表面和液体表面上移动而不会坠落。如果你的职业是武僧，你可以带着一个队友移动并且获得此特性。','monk','fa-solid fa-person-arrow-up-from-line'),(47,'圆融自在Disciplined Survivor','你的身心修行已然有所成就，你获得所有豁免的熟练。此外，当你豁免失败时，你可以消耗1点功力重掷豁免，但必须使用重掷的结果。如果你的职业是武僧，你可以以一个反应动作和1点功力，让队友重新投掷。','monk','fa-solid fa-yin-yang'),(48,'返本还元Self-Restoration','你获得特性：凭借纯粹的意志，你能够在每次自己的回合结束时移除你身上的下列状态之一：魅惑，恐慌或中毒。此外，不吃不喝不再会使你提升力竭等级。如果你的职业是武僧，在一场战斗过程中，你可以花费1个动作和1点气，使一个队友获得此特性。','monk','fa-solid fa-shield-virus'),(49,'圣疗 Lay on Hands','你的触碰溢满祝福，可以医治伤口。你获得一个治疗能量池，其内的治疗能量在每次完成长休后自动补满。治疗能量池储备的可恢复生命值总值等于25。你能够以一个附赠动作触碰一个生物（可以是你自己），并抽取治疗能量池中的能量恢复该生物的生命值，其恢复量最多等于你治疗能量池中剩余的治疗量。此外，你也可以使用5点治疗量来移除目标身上的中毒状态，而非恢复生命值。如果你的职业是圣武士，治疗能量池为圣武士等级X25','paladin','fa-solid fa-hand-holding-medical'),(50,'圣武斩 Paladin\'s Smite','你始终准备了法术至圣斩Divine Smite 。此外，你可以不消耗法术位地施展该法术一次，而后你必须完成一次长休才能再次这么做。如果你的职业是圣武士，则可以不消耗法术位，释放该法术2次。短休后恢复。','paladin','fa-solid fa-bolt-lightning'),(51,'守护灵光 Aura of Protection','你散发出无形的保护性的灵光 ，覆盖源自你的10尺光环区域。在你陷入失能状态期间，此灵光失效。你与灵光内盟友的豁免结果获得相当于你魅力调整值的加值（最少为+1）。如果同时存在有其他圣武士，一个生物同时也只能从一个守护灵光中获得增益。这个生物自己选择享受谁的灵光。如果你的职业是圣武士，你与灵光内盟友的豁免结果获得相当于你魅力调整值的加值的2倍（最少为+2）','paladin','fa-solid fa-hamsa'),(52,'光耀打击 Radiant Strikes','神圣之力充盈你身，连带你的武器也承载着超自然力量。当你使用近战武器或徒手打击进行攻击检定并命中目标时，目标额外受到1d8点光耀伤害。','paladin','fa-solid fa-burst'),(53,'信实坐骑 Faithful Steed','你能唤来异界坐骑的协助。你始终准备了法术寻获坐骑Find Steed。此外，你可以不消耗法术位地施展该法术一次，而后你必须完成一次长休才能再次这么做。如果你的职业是圣武士，则获得feat：Mounted Combatant','paladin','fa-solid fa-horse'),(54,'四誓骑士','每场战斗你可以选择一下四种誓言之一作为信条。1）奉献之誓Oath of Devotion：战斗开始自动释放：防护善恶Protection from Evil and Good。2）荣耀之誓Oath of Glory：战斗开始自动释放：英雄气概Heroism。3）古贤之誓Oath of the Ancients：战斗开始自动释放：Protection form Energy。4）复仇之誓Oath of Vengeance：战斗开始自动释放：猎人印记Hunter\'s Mark。如果你的职业是圣骑士，则选择2个誓言进行战斗释放，法术共用一个专注。','paladin','fa-solid fa-chess-knight'),(55,'四誓终章','战斗开始时，你可以在圣骑士20级泛型中，任选一个发动。  一旦发动，四誓终章将会永久失效。1）至圣光轮 Holy Nimbus，2）现世传说 Living Legend 3）上古斗士 Elder Champion 4）复仇天使 Avenging Angel。如果你的职业是圣骑士，则可以任选一个发动，一旦发动，该选项永久失效。','paladin','fa-solid fa-crown'),(56,'神圣光环','战斗回合开始，你选择一个法术自动释放，不消耗动作和环位。Aura of Life， Aura of Purity','paladin','fa-solid fa-street-view'),(57,'宿敌Favored Enemy','你始终准备了法术猎人印记Hunter\'s Mark。你可以无需法术位地施展此法术共计两次，并在完成一次长休后恢复此能力的所有使用次数。    如果你的职业是游侠，则释放次数为无限，且战斗开始自动选择目标释放，不消耗动作。','ranger','fa-solid fa-skull-crossbones'),(58,'远程精通','你精通所有的远程武器，并且获得箭术 Archery战斗风格。','ranger','fa-solid fa-crosshairs'),(59,'原初行侣 Primal Companion','你获得驯兽师（beast master）3级特性： Primal Companion和7级特性：Exceptional Training。游侠等级视为（如果你是游侠，则在计算特性之时，游侠等级+5）','ranger','fa-solid fa-dog'),(60,'精宸所与 Fey Reinforcements','你可以无需材料成分地施展妖精召唤术Summon Fey 。同时，你可以免费施展这个法术一次而不需要消耗法术位，在你完成一次长休后，你重获免费施展该法术的能力。每当你施展此法术时，你都可以微调这一法术使其无需专注。以无需专注的方式施法时，该法术的持续时间将变为一分钟。','ranger','fa-solid fa-feather-pointed'),(61,'恐惧伏击 Dread Ambusher','你精通于伏击的恐怖技艺，并获得了以下增益。伏击者之跃Ambusher\'s Leap。在每一场战斗的你的第一个回合的开始，你的移动速度增加10尺，直到那个回合结束。恐惧打击 Dreadful Strike。当你用武器对生物攻击并命中时，你可以额外对目标造成2d6点心灵伤害。你在每回合中只能使用一次这个增益，你可以使用这一增益的次数等同于你的感知调整值（最低一次），并在完成一次长休后重获全部已消耗的使用次数。 先攻加值Initiative Bonus。当你投掷先攻时，你可以在那次掷骰中加入你的感知调整值。','ranger','fa-solid fa-face-surprise'),(62,'猎人学识 Hunter\'s Lore','战斗开始时，你可以不消耗任何法术环数和动作，释放一次猎人印记。你可以呼唤自然的力量以揭晓猎物的强弱。在一个生物被你的猎人印记标记的期间，你知道那个生物是否拥有任何免疫、抗性或易伤，并且能够得知其具体的项目是什么。如果你的职业是游侠，则可以获得他们的剩余血量，法术还可以释放的次数（如果它释放过任何的法术）','ranger','fa-solid fa-hurricane'),(63,'野外生存大师','你获得技能熟练：驯兽、运动、洞悉、调查、自然、察觉、隐匿、求生。如果你的职业是游侠，则所有的熟练值加倍。','ranger','fa-solid fa-tree'),(64,'德鲁伊教战士 Druidic Warrior','你习得所有的德鲁伊戏法且这些法术的施法属性是感知。如果你的职业是游侠，则额外升1级德鲁伊职业。','ranger','fa-solid fa-leaf'),(65,'游荡天赋','你获得技能熟练：特技、运动、欺瞒、洞悉、威吓、调查、察觉、游说、巧手、隐匿。如果你的职业是游荡者，则所有的技能熟练值加倍。选择两项技能熟练值变为3倍。','roger','fa-solid fa-person-through-window'),(66,'偷袭Sneak Attack','你知道如何利用敌人的分心并发动致命的精巧打击。每个回合一次，当你的攻击检定命中了一个生物时，你可以造成1d6的额外伤害。这次攻击必须使用一把灵巧或远程武器并具有优势。额外伤害的伤害类型与该武器的伤害类型一致。除此之外，若你的目标周围5尺内有你的盟友，并且该盟友没有陷入失能状态，你的攻击检定也没有劣势的话，则你不需要优势也造成额外伤害。你的额外伤害会随着你的游荡者等级提高而增长。默认为（游荡者等级+2）','roger','fa-solid fa-person-falling-burst'),(67,'灵巧动作','你精妙的思维与身手使你的行动无比迅速。在你的回合内，你能够以附赠动作执行疾走，撤离或躲藏动作之一。如果你的职业是游荡者，则可以执行其中两项。','roger','fa-solid fa-person-running'),(68,'诡诈打击Cunning Strike','你默认偷袭伤害为游荡伤害列表（游荡者等级+2）当你造成偷袭伤害时，你可以选择下列一种诡诈打击的效果加入到本次偷袭中。如果一种诡诈打击的效果要求目标进行豁免，其DC为8+你的熟练加值+你的敏捷调整值。淬毒Poison（花费：1d6）。摔绊Trip（花费：1d6）。撤步Withdraw (花费：1d6)。','roger','fa-solid fa-person-falling'),(69,'可靠才能Reliable Talent','每当你进行属性检定，并且可以运用你的某项技能熟练或工具熟练时，你可以将D20投出的9及以下的结果视为10。如果你是游荡者。你的攻击骰在D20投出结果的9以及以下时，也视为10。','roger','fa-solid fa-user-gear'),(70,'反射闪避Evasion','你可以灵敏地躲避特定的危险。当你受到一个允许你进行敏捷豁免来只承受一半伤害的效应影响时，你在豁免成功时不受伤害，豁免失败时只承受一半伤害。你无法在失能状态下使用此特性。','roger','fa-solid fa-person-walking-arrow-loop-left'),(71,'幸运加身','你留了一手非凡技巧，让你可以随时把握自己的成功之际。当你在一次D20检定中失败时，你可以将结果改为20。此特性一经使用，直至完成短休或长休你都无法再次使用。','roger','fa-solid fa-clover'),(72,'法术窃贼Spell Thief','你获得了如何以魔法从其他施法者那里偷取有关如何施展某一法术的知识的能力。当一个生物施展了一个目标是你或是其效应范围会影响你的法术后，你可以立刻使用你的反应来迫使该生物进行一次智力豁免。其豁免DC等同于你的施法DC。若豁免失败，你消除这个法术对你的影响，并且你将偷走使用这个法术的知识，但这个法术最低必须是一环并且你可以施展的更高等级的法术（不需要是法师法术）。接下来的八小时内，你准备了这个法术。同时该生物在此期间无法施展这个法术，直到八小时结束以后。此特性一经使用，直至完成长休你都无法再次使用。','roger','fa-solid fa-sack-xmark'),(73,'暗杀Assassinate','你精通于对目标发起奇袭，你获得以下增益：先攻Initiative。你的先攻掷骰具有优势。惊扰突袭Surprising Strikes。每次战斗的第一轮中，你对任何还没有经历过自己回合的生物发动的攻击检定都具有优势。如果你在那一轮里命中并偷袭了任意目标，该目标将承受等同于你的游荡者等级（+5）的额外伤害，该伤害的类型与你的武器伤害类型一致。如果你的职业是刺客，则那一轮的攻击检定都是重击。','roger','fa-solid fa-user-ninja'),(74,'先天术法Innate Sorcery','你选择3个术士戏法习得。你过去经历的某件事在你身上留下了不可磨灭的印记，为你注入了难以控制的涌动魔力。以一个附赠动作，你可以将魔力释放而出，持续1分钟。在这1分钟期间，你获得以下增益：1）你的术士法术豁免DC+1。2）你施展的术士法术的攻击检定具有优势。','sorcerer','fa-solid fa-brain'),(75,'魔力泉涌Font of Magic','你获得术士的2级职业特性：魔力泉涌，默认等级为（术士等级+2）。并且可以选择2个超魔法选项。如果你的职业是术士，则获得所有的超魔法选项。','sorcerer','fa-solid fa-volcano'),(76,'狂野魔法浪涌Wild Magic Surge','你获得2个一环法术环位和术士的法术表。你施法时会释放出未经塑造的魔法浪涌。一回合一次，你每次施展一个不低于一环的术士法术后，可以立刻骰一次d20。如果你骰出20，则在狂野魔法浪涌表上掷骰以确定随机魔法效应。若该效果是一道法术，则其因过于狂野而无法受你的超魔法影响。如果你的职业是术士，则要投掷3次。','sorcerer','fa-solid fa-poo-storm'),(77,'水电工','任意敌人受到寒冷伤害之后，你再施加雷鸣伤害或者闪电伤害，伤害翻倍。你可以在术士的戏法和一环法术内各任选1个元素伤害类法术，加入施法列表。如果你是术士，则再任选一个一环元素伤害类法术，释放不消耗法术位。','sorcerer','fa-solid fa-bolt-lightning'),(78,'龙族体魄Draconic Resilience','魔法在你的体内流动，外化为龙族赠礼体现出的生理特质。你的生命值上限提升3，此后每提升一个等级，都将再次提升1。每提升一个术士等级，再次提升5。你部分皮肤覆盖着龙鳞样式的柔鳞。未着装护甲时，你的基础AC等于10+你的敏捷调整值＋你的魅力调整值。','sorcerer','fa-solid fa-fire-flame-simple'),(79,'血肉启示Revelation in Flesh','你获得2个术法点 （如果你的职业是术士，则额外获得特性：术法点翻倍）你能够释放出潜藏在你内部扭曲的真实形态。以一个附赠动作，你使用1点或更多的术法点以魔法性地转变形态，持续10分钟。你每消耗1术法点，你便可以从下述内容中选择一项，在转变形态期间你同时获得你选择的每项效应的增益：1）水生适应Aquatic Adaptation。2）闪耀飞翔Glistening Flight。3）识破隐形See the Invisible。4）蠕行移动Wormlike Movement。（详细名词解释见sorcerer子职畸变术法Aberrant Sorcery）','sorcerer','fa-solid fa-face-meh-blank'),(80,'我见过龙!','你可以无需材料成分施放龙类召唤术Summon Dragon。你可以无需法术位施放它一次，随后你在完成一次长休后重获以此法施放它的能力。每当你开始施展此法术时，都可以修改此法术使其无需专注。以此法施展时，此法术的持续时间将变为1分钟。','sorcerer','fa-solid fa-dragon'),(81,'时间停止｜Time Stop','你获得能力：使用一次时间停止。  长休后恢复。如果你是时械术法Clockwork Sorcery术士，则短休后恢复。','sorcerer','fa-solid fa-hourglass-start'),(82,'魔能祈唤之王','你可以在Eldritch Invocations里面选2项。（等级为warlock等级+1）。如果你本身是warlock，则你可以获得满足条件的所有魔能祈唤','warlock','fa-solid fa-book-skull'),(83,'联络宗主Contact Patron','在过去，你通常需要通过各种渠道才能联络宗主。但现在，你可以直接联络宗主本身。你始终准备了法术异界探知Contact Other Plane 。你可以无需消耗法术位地以此特性来联络宗主，并自动通过该法术的豁免。一旦你以此法施展了该法术，直至完成长休你都无法再次以此法施展该法术。如果你没有宗主，则可以询问你信仰的神灵。','warlock','fa-brands fa-gitkraken'),(84,'秘法回流Magical Cunning','你可以举行一道耗时1分钟的秘传仪式，并在仪式结束后重获一半已消耗的法术位（向上取整）。此特性一经使用，直至完成长休你都无法再次使用。如果你本身是warlock，则仪式结束后，获得所有的warlock法术位。','warlock','fa-solid fa-fill-drip'),(85,'骇异恶咒Eldritch Hex','如果你不是warlock，则选择一名异界宗主。你的异界宗主给予你强大的诅咒之力。你始终准备了脆弱诅咒Hex法术，并且在每次战斗开始时，不消耗动作和环位释放。当你施展脆弱诅咒并选择了一项属性时，目标在法术持续时间内还会在以这项属性进行的豁免上具有劣势。如果你的职业范型是warlock旧日支配者宗主，还可以同时释放塔莎狂笑术。','warlock','fa-solid fa-disease'),(86,'创造奴仆Create Thrall','当你施展异怪召唤术Summon Aberration时，你可以修改此法术使其无需专注。以此法施展时，此法术的持续时间将变为1分钟，且召唤来的异怪拥有等于你魔契师等级+10+你的魅力调整值的临时生命值。此外，该异怪在每个回合中第一次命中一个被你的脆弱诅咒Hex影响的生物时，该异怪会对目标额外造成等于此法术附加伤害的心灵伤害。','warlock','fa-solid fa-spaghetti-monster-flying'),(87,'邪魔军团','每次长休，你可以不消耗环位和材料，使用一次Summon Fiend。如果你的宗主是邪魔宗主，则可以召唤2只Fiendish spririt','warlock','fa-solid fa-om'),(88,'灼光复仇 Searing Vengeance','当你或位于你60尺内的一名盟友将要进行一次死亡豁免时，你可以释放出一道光能来拯救那名生物。那名生物恢复等于其生命值上限一半的生命值，且可以选择结束自身的倒地状态。之后，每个由你选择的位于那名生物30尺内的生物都将受到2d8+你的魅力调整值的光耀伤害，并陷入目盲状态直至当前回合结束。此特性一经使用，直至完成长休 你都无法再次使用。','warlock','fa-solid fa-heart-pulse'),(89,'魔能爆套装','你学会魔能爆戏法，并且可以选择一个魔能爆相关的魔能祈唤。 施法属性位你的主属性。如果你是warlock，则可以选择两个魔能爆相关的魔能祈唤。 且魔能爆升1环。','warlock','fa-solid fa-lines-leaning'),(90,'学者','你对奥秘、历史、洞悉、调查、医疗、自然、宗教技能熟练。如果你是法师，则以上所有技能熟练值加倍。','wizard','fa-solid fa-book-atlas'),(91,'法师仪式','你拥有一本法师魔法书，里面记载1-3级各1个法师仪式法术。并且获得仪式学家特性。如果你是法师，则可以额外再选择1-5级各1个法师仪式法术加入书本。','wizard','fa-solid fa-scroll-torah'),(92,'法术抗性 Spell Resistance','你抵抗法术时进行的豁免检定具有优势，且你对法术造成的伤害具有抗性。','wizard','fa-solid fa-shield-heart'),(93,'预兆 Portent','预知未来的片段开始在你意识中闪过。每当你完成一次长休时，掷2次D20并记录其结果。你能用其中一个预言骰替换任何你或一个你能看见的生物进行的D20检定。你必须在检定进行前选择这样做，且你每回合只能以这种方式替换一次检定。每个预言骰只能被使用一次。当你完成一次长休时，你失去所有未消耗的预言骰。如果你是预言法师，则你的预兆特性掷3次d20，而不是2次。','wizard','fa-solid fa-dice'),(94,'超限导能 Overchannel','你能增强你法术的力量。当你用一个一至五环的法术位施展一个会造成伤害的法师法术时，你能在施展它的回合中令其造成的伤害取最大值。你首次这么做时不会承受任何负面效应。但如果你在完成一次长休前再次使用该特性，则你会在施展法术后立即受到每环阶2d12暗蚀伤害。该伤害无视任何抗性或免疫。你在完成一次长休前每多使用此特性一次，每环阶造成的伤害就提升1d12。','wizard','fa-solid fa-meteor'),(95,'亦真亦幻 Illusory Reality','你习得借由将暗影魔法编入你的幻术，从而使其获得半真实效果的秘密。当你用法术位施展一道幻术学派法术时，你能选择一个属于幻象一部分的非活化非魔法物件，并让该物件化作真实。你可以在法术持续过程中在自己的回合以一个附赠动作这样做。该物件将在接下来1分钟内保持真实，它在此期间无法造成伤害或赋予任何状态。例如，你可以创造一座横跨峡谷的桥梁幻象，而后将之化作真实，使你的队友能从桥上跨越峡谷。','wizard','fa-solid fa-mountain'),(96,'天眼通 The Third Eye','你可以增强你的察觉能力。以一个附赠动作，从以下增益中选择其一，其会持续至你开始一次短休或长休。此特性一经使用，直至完成短休或长休你都无法再次使用。黑暗视觉Darkvision。你具有120尺黑暗视觉。高等通晓Greater Comprehension。你可以读懂任何语言。识破隐形See Invisibility。你能不消耗法术位地施展法术识破隐形See Invisibility 。','wizard','fa-solid fa-eye'),(97,'大法术书（1环）','你获得一本记载了所有法师1环法术的法术书。如果你不是法师，可以用主属性，选择准备主属性调整值个1环法术，并且每一个不消耗法术环位释放一次。如果你是法师，则可以准备所有法术，且每一个法术都可以不消耗法术环位释放一次。','wizard','fa-solid fa-wand-magic'),(98,'大法术书（2环）','你获得一本记载了所有法师2环法术的法术书。如果你不是法师，可以用主属性，选择准备主属性调整值个2环法术，并且每一个准备的法术不消耗法术环位释放一次。如果你是法师，则可以准备所有法术，且每一个法术都可以不消耗法术环位释放一次。','wizard','fa-solid fa-wand-magic-sparkles'),(99,'大法术书（3环）','你获得一本记载了所有法师3环法术的法术书。如果你不是法师，可以用主属性，选择准备主属性调整值个3环法术，并且每一个准备的法术不消耗法术环位释放一次。如果你是法师，则可以准备所有法术，且每一个法术都可以不消耗法术环位释放一次。','wizard','fa-solid fa-wand-sparkles');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `global_pool`
--

DROP TABLE IF EXISTS `global_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `global_pool` (
  `card_id` int NOT NULL,
  `is_drawn` tinyint(1) DEFAULT '0',
  `drawn_by` int DEFAULT NULL,
  `drawn_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`card_id`),
  KEY `drawn_by` (`drawn_by`),
  CONSTRAINT `global_pool_ibfk_1` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`),
  CONSTRAINT `global_pool_ibfk_2` FOREIGN KEY (`drawn_by`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `global_pool`
--

LOCK TABLES `global_pool` WRITE;
/*!40000 ALTER TABLE `global_pool` DISABLE KEYS */;
INSERT INTO `global_pool` VALUES (1,0,NULL,NULL),(2,0,NULL,NULL),(3,0,NULL,NULL),(4,0,NULL,NULL),(5,1,NULL,NULL),(6,0,NULL,NULL),(7,0,NULL,NULL),(8,1,NULL,NULL),(9,0,NULL,NULL),(10,0,NULL,NULL),(11,0,NULL,NULL),(12,0,NULL,NULL),(13,1,NULL,NULL),(14,0,NULL,NULL),(15,0,NULL,NULL),(16,1,NULL,NULL),(17,0,NULL,NULL),(18,0,NULL,NULL),(19,0,NULL,NULL),(20,0,NULL,NULL),(21,0,NULL,NULL),(22,1,NULL,NULL),(23,0,NULL,NULL),(24,0,NULL,NULL),(25,0,NULL,NULL),(26,0,NULL,NULL),(27,0,NULL,NULL),(28,0,NULL,NULL),(29,0,NULL,NULL),(30,1,NULL,NULL),(31,0,NULL,NULL),(32,0,NULL,NULL),(33,0,NULL,NULL),(34,0,NULL,NULL),(35,0,NULL,NULL),(36,0,NULL,NULL),(37,0,NULL,NULL),(38,0,NULL,NULL),(39,0,NULL,NULL),(40,0,NULL,NULL),(41,0,NULL,NULL),(42,0,NULL,NULL),(43,0,NULL,NULL),(44,0,NULL,NULL),(45,0,NULL,NULL),(46,0,NULL,NULL),(47,0,NULL,NULL),(48,0,NULL,NULL),(49,0,NULL,NULL),(50,0,NULL,NULL),(51,0,NULL,NULL),(52,0,NULL,NULL),(53,1,NULL,NULL),(54,0,NULL,NULL),(55,0,NULL,NULL),(56,0,NULL,NULL),(57,0,NULL,NULL),(58,0,NULL,NULL),(59,1,NULL,NULL),(60,0,NULL,NULL),(61,0,NULL,NULL),(62,0,NULL,NULL),(63,0,NULL,NULL),(64,0,NULL,NULL),(65,0,NULL,NULL),(66,0,NULL,NULL),(67,0,NULL,NULL),(68,0,NULL,NULL),(69,0,NULL,NULL),(70,0,NULL,NULL),(71,0,NULL,NULL),(72,0,NULL,NULL),(73,0,NULL,NULL),(74,0,NULL,NULL),(75,0,NULL,NULL),(76,0,NULL,NULL),(77,0,NULL,NULL),(78,0,NULL,NULL),(79,0,NULL,NULL),(80,0,NULL,NULL),(81,0,NULL,NULL),(82,0,NULL,NULL),(83,0,NULL,NULL),(84,0,NULL,NULL),(85,0,NULL,NULL),(86,0,NULL,NULL),(87,1,NULL,NULL),(88,0,NULL,NULL),(89,0,NULL,NULL),(90,0,NULL,NULL),(91,1,NULL,NULL),(92,0,NULL,NULL),(93,0,NULL,NULL),(94,0,NULL,NULL),(95,0,NULL,NULL),(96,0,NULL,NULL),(97,0,NULL,NULL),(98,0,NULL,NULL),(99,0,NULL,NULL);
/*!40000 ALTER TABLE `global_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `userPwd` varchar(45) DEFAULT NULL,
  `userRes` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userName_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_cards`
--

DROP TABLE IF EXISTS `user_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_cards` (
  `user_id` int NOT NULL,
  `card_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`card_id`),
  KEY `card_id` (`card_id`),
  CONSTRAINT `user_cards_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_cards_ibfk_2` FOREIGN KEY (`card_id`) REFERENCES `cards` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_cards`
--

LOCK TABLES `user_cards` WRITE;
/*!40000 ALTER TABLE `user_cards` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_cards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-20 16:20:15
