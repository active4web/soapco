-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2019 at 02:37 PM
-- Server version: 5.7.28
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soapcosa_soapco`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `last_login` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` set('0','1','2') NOT NULL,
  `view` enum('0','1') NOT NULL DEFAULT '1',
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `mail`, `username`, `password`, `last_login`, `type`, `view`, `fname`, `lname`, `img`, `phone`) VALUES
(11, 'ashraf.m@wisyst.com', 'soapco', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-15 12:45:17', '0', '1', 'اشرف', 'محمد', 'ggBN.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` enum('0','1') DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `title`, `view`, `creation_date`) VALUES
(10, 'المملكة العربية السعودية', '1', '2019-07-15 08:12:45'),
(11, 'مصر', '1', '2019-07-15 08:12:52'),
(12, 'الأمارات', '1', '2019-07-15 08:12:59');

-- --------------------------------------------------------

--
-- Table structure for table `home_page`
--

CREATE TABLE `home_page` (
  `id` int(11) NOT NULL,
  `breif_txt_eng` text,
  `breif_txt_ar` text,
  `breif_img` varchar(255) DEFAULT NULL,
  `img_step1` varchar(255) DEFAULT NULL,
  `img_step2` varchar(255) DEFAULT NULL,
  `img_step3` varchar(255) DEFAULT NULL,
  `content_first` varchar(255) DEFAULT NULL,
  `slider_background` varchar(255) DEFAULT NULL,
  `content_second` varchar(255) DEFAULT NULL,
  `content_third` varchar(255) DEFAULT NULL,
  `bmi_base` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_page`
--

INSERT INTO `home_page` (`id`, `breif_txt_eng`, `breif_txt_ar`, `breif_img`, `img_step1`, `img_step2`, `img_step3`, `content_first`, `slider_background`, `content_second`, `content_third`, `bmi_base`) VALUES
(1, NULL, '<p>قم بتحميل التطبيق الأن اكتشف اسرع واسهل من خلال التطبيق الان متوفر على Google play &nbsp;App Store شارك مع اصدقائك لتحصل على نقاط واستبدالها بخصومات</p>\r\n', '9Jpl.png', 'yUqm.jpg', '9wAp.jpg', 'Z6Mp.jpg', 'حان وقت التعلم', 'jkx1.png', 'احجز الدورة ثم قم بارسال بيانات التحويل للتاكيد', 'اكتشف الأن جميع الدورات والحقائب التدريبية داخل وخارج المملكة العربية السعودية', '25');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `view` enum('0','1') DEFAULT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `view`, `creation_date`) VALUES
(13, 'التصميمات والأنشاءات', '1', '2019-07-15 08:51:53'),
(14, 'التشيد والبناء', '1', '2019-07-15 08:53:07');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_from`
--

CREATE TABLE `jobs_from` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `view` set('0','1') NOT NULL,
  `lname` varchar(150) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `city` varchar(150) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `jobtype_id` int(11) DEFAULT NULL,
  `creation_date` date DEFAULT NULL,
  `cv` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `message` text,
  `view` set('0','1') NOT NULL DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `creation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id_message`, `name`, `phone`, `message`, `view`, `email`, `company_name`, `creation_date`) VALUES
(1, 'talklog', '+99985321788', 'Remote control of \r\nyour phone \r\n \r\nThis is a service for remote monitoring your cell phone, \r\nwhich allows controlling correspondence, \r\nphone calls and location of your phone in real time \r\nhttp://bit.ly/2lMmbys', '0', 'info@talklog.ug', 'talklog', '2019-09-12'),
(5, 'Push_money', '', 'With the help of our service it is possible to increase the income of the site soapco-sa.com by 50% - 100% in 2 months. \r\nOur advertisers pay you for each click from push-mailing on your base. \r\nWe send one newsletter to your users a day. \r\nYour income will grow every day with the increase of the number of subscribers in arithmetic progression. \r\nThe percentage of subscriptions from mobile devices is 2-5 times higher than from PC. \r\nAlso, you can fully use the push-mailing service and send any notifications to your users. \r\n \r\nYou can earn more than $1 from one subscription per life cycle! Let\'s calculate: your site traffic is 1000 people, 10 people subscribe each day, one subscription brings $1 for its life cycle, as a result you can get $10 from 1000 visitors additionally, without removing the existing advertising. \r\nOur service allows you to collect subscriptions both on https sites and working on http. \r\n \r\nFor more details click https://vk.cc/9IaIg9', '0', 'rencuwi@gmail.com', 'Push_money', '2019-10-30'),
(6, 'Eric Jones', '416-385-3200', 'Hey,\r\n\r\nYou have a website soapco-sa.com, right?\r\n\r\nOf course you do. I am looking at your website now.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into creating social media, videos, blog posts, emails, and so on.\r\n\r\nSo you’re investing seriously in getting people to that site.\r\n\r\nBut how’s it working?  Great? Okay?  Not so much?\r\n\r\nIf that answer could be better, then it’s likely you’re putting a lot of time, effort, and money into an approach that’s not paying off like it should.\r\n\r\nNow… imagine doubling your lead conversion in just minutes… In fact, I’ll go even better.\r\n \r\nYou could actually get up to 100X more conversions!\r\n\r\nI’m not making this up.  As Chris Smith, best-selling author of The Conversion Code says: Speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 14 minutes vs being contacted within 5 minutes.\r\n\r\nHe’s backed up by a study at MIT that found the odds of contacting a lead will increase by 100 times if attempted in 5 minutes or less.\r\n\r\nAgain, out of the 100s of visitors to your website, how many actually call to become clients?\r\n\r\nWell, you can significantly increase the number of calls you get – with ZERO extra effort.\r\n\r\nTalkWithCustomer makes it easy, simple, and fast – in fact, you can start getting more calls today… and at absolutely no charge to you.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com now to take a free, 14-day test drive to find out how.\r\n\r\nSincerely,\r\nEric\r\n\r\nPS: Don’t just take my word for it, TalkWithCustomer works:\r\nEMA has been looking for ways to reach out to an audience. TalkWithCustomer so far is the most direct call of action. It has produced above average closing ratios and we are thrilled. Thank you for providing a real and effective tool to generate REAL leads. - P MontesDeOca.\r\nBest of all, act now to get a no-cost 14-Day Test Drive – our gift to you just for giving TalkWithCustomer a try. \r\nCLICK HERE http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nIf you\'d like to unsubscribe click here http://liveserveronline.com/talkwithcustomer.aspx?d=soapco-sa.com\r\n\r\n', '0', 'eric@talkwithcustomer.com', 'TalkWithCustomer.com', '2019-11-07'),
(7, 'Gymnamate', '89037021229', 'Добрый день \r\nВыбирайте проверенный клуб для азартных игр! Бонусы до 100 тысяч рублей! https://cloud.mail.ru/public/2QSB/4abMpun4D', '0', 'antoshka-vasilev-90@inbox.ru', 'Gymnamate', '2019-11-21'),
(8, 'youtubemoneys', '', 'Your balance has accumulated the amount you earned for watching ads in the amount of $ 3157.54 \r\nWe also officially inform you about the following: you have not visited your office in our service for more than six months and have not ordered payment of the funds earned by you \r\nYour account on our service today can be deactivated as not active. In order to avoid deactivation, we ask you to complete the procedure of viewing advertising content on our service and withdraw your earned funds for the entire period. We remind you that you can withdraw earned funds to a Bank card or e-wallet instantly. \r\nFor more details click https://clickllinks.net/t1eb', '0', 'info@marineinfosys.com', 'youtubemoneys', '2019-11-24'),
(9, 'Eric Jones', '416-385-3200', 'Hi,\r\n\r\nMy name is Eric and I was looking at a few different sites online and came across your site soapco-sa.com.  I must say - your website is very impressive.  I am seeing your website on the first page of the Search Engine. \r\n\r\nHave you noticed that 70 percent of visitors who leave your website will never return?  In most cases, this means that 95 percent to 98 percent of your marketing efforts are going to waste, not to mention that you are losing more money in customer acquisition costs than you need to.\r\n \r\nAs a business person, the time and money you put into your marketing efforts is extremely valuable.  So why let it go to waste?  Our users have seen staggering improvements in conversions with insane growths of 150 percent going upwards of 785 percent. Are you ready to unlock the highest conversion revenue from each of your website visitors?  \r\n\r\nTalkWithCustomer is a widget which captures a website visitor’s Name, Email address and Phone Number and then calls you immediately, so that you can talk to the Lead exactly when they are live on your website — while they\'re hot! Best feature of all, International Long Distance Calling is included!\r\n  \r\nTry TalkWithCustomer Live Demo now to see exactly how it works.  Visit http://www.talkwithcustomer.com\r\n\r\nWhen targeting leads, speed is essential - there is a 100x decrease in Leads when a Lead is contacted within 30 minutes vs being contacted within 5 minutes.\r\n\r\nIf you would like to talk to me about this service, please give me a call.  We have a 14 days trial.  Visit http://www.talkwithcustomer.com to start converting up to 100X more leads today!\r\n\r\nThanks and Best Regards,\r\nEric\r\n\r\nIf you\'d like to unsubscribe go to http://liveserveronline.com/talkwithcustomer.aspx?d=soapco-sa.com\r\n', '0', 'eric@talkwithcustomer.com', 'TalkWithCustomer.com', '2019-11-25'),
(10, 'Gymnamate', '89033997173', 'DIE BESTEN ONLINE-CASINOS IN DEUTSCHLAND https://cloud.mail.ru/public/WbNU/2Dj6ZPpsW', '0', 'antoshka-vasilev-90@inbox.ru', 'Gymnamate', '2019-11-28'),
(11, 'ThomasSoumE', '86641478167', 'I\'m sorry for off-topic, I\'m thinking about making an informative internet site for young students. Will possibly begin with submitting interesting information like\"US Dollar bills are made out of cotton and linen.\"Please let me know if  you know where I can find some related information such as right here\r\n \r\nhttps://domyassignmentonline0.blogspot.com\r\nhttps://freeessayeditingservice.blogspot.com\r\nhttps://buyanessayus.blogspot.com/\r\nhttps://ordercustomtermpaper1.blogspot.com/\r\nhttps://anabstractforascientificpaper.blogspot.com/\r\nhttps://writingresearchpapersusefulphrases12.blogspot.com/\r\nhttps://payfor--essays.blogspot.com/\r\nhttps://assignmentwritingservice3.blogspot.com/\r\nhttps://informativespeech10.blogspot.com/\r\nhttps://bestcourseworkhelp1.blogspot.com/\r\nhttps://linedwritingpaper1.blogspot.com/\r\nhttps://writing-custom-essays.blogspot.com/\r\nhttps://writingapaperinfirstperson.blogspot.com/\r\nhttps://imradintroduction.blogspot.com\r\nhttps://howtobuyanessay0.blogspot.com\r\nhttps://collegeessayhelp10.blogspot.com\r\nhttps://lawschoolessay.blogspot.com/\r\nhttps://musicwritingpaper.blogspot.com/\r\nhttps://purchaseessay10.blogspot.com/\r\nhttps://exampleapapaper2.blogspot.com\r\nhttps://writingananalyticalresearchpaper.blogspot.com/\r\nhttps://helpwithannotatedbibliography.blogspot.com\r\nhttps://narrativeessay1234.blogspot.com/\r\nhttps://writingongraphpaper.blogspot.com/\r\nhttps://structuredabstractapa.blogspot.com\r\nhttps://bestsites-to-buy-researchpapers.blogspot.com/\r\nhttps://freeessayhelponline.blogspot.com\r\nhttps://good-topics-for-a-persuasiveessays.blogspot.com/\r\nhttps://writingacritiquepaper12.blogspot.com/\r\nhttps://findacustomessayserviceworthyt.blogspot.com/\r\nhttps://domypaper0.blogspot.com\r\nhttps://universityadmissionessayservice.blogspot.com\r\nhttps://buyassignmentonline1.blogspot.com/\r\nhttps://businessethicsessayquestions2.blogspot.com/\r\nhttps://collegeapplicationessaysforsale.blogspot.com/\r\nhttps://cheapessaywriting2.blogspot.com/\r\nhttps://howtowriteasurveypaper.blogspot.com/\r\nhttps://easyresearchpapertopics.blogspot.com/\r\nhttps://financeresearchpapertopics.blogspot.com\r\nhttps://customtermpaperonline1.blogspot.com/\r\nhttps://reflectiveessays12.blogspot.com/\r\nhttps://onlineassignmenthelp0.blogspot.com\r\nhttps://paperhelpcom1.blogspot.com/\r\nhttps://howtomakeanessay123456.blogspot.com/\r\nhttps://howtowritearesearchpaperinapa.blogspot.com/\r\nhttps://buythesisstatement.blogspot.com/\r\nhttps://formatforcollegeapplicationessay.blogspot.com\r\nhttps://reflectiveessay123.blogspot.com/\r\nhttps://powerpointpresentationexamples1.blogspot.com/\r\nhttps://cheapessaywritingserviceonline1.blogspot.com\r\nhttps://mastersthesis0.blogspot.com/\r\nhttps://expertwritingservices0.blogspot.com\r\nhttps://professionalwriterservices0.blogspot.com\r\nhttps://admissionessayexamples01.blogspot.com\r\nhttps://researchpaperssamples.blogspot.com\r\nhttps://bestwebsitetobuyanessay.blogspot.com/\r\nhttps://topicsininternationalrelations12.blogspot.com/\r\nhttps://laboratoryreportsample.blogspot.com\r\nhttps://exploratoryessaysample12.blogspot.com/\r\nhttps://persuasiveessay123456.blogspot.com/\r\nhttps://labreportmlaformat12.blogspot.com/\r\nhttps://mathproblemhelp12.blogspot.com/\r\nhttps://literaturereviewwritingservices12.blogspot.com/\r\nhttps://coloredwritingpaper.blogspot.com/\r\nhttps://essaywritingppt2.blogspot.com\r\nhttps://findessaysonline.blogspot.com\r\nhttps://comparativeessay123.blogspot.com/\r\nhttps://dissertationproofreadingservices0.blogspot.com\r\nhttps://financetopicsforresearchpaper.blogspot.com\r\nhttps://buyresearchpaperscheap10.blogspot.com\r\nhttps://essayintroduction-help.blogspot.com/\r\nhttps://paperwritingstyles1.blogspot.com/\r\nhttps://writeessayforme123456.blogspot.com/\r\nhttps://articlecritique01.blogspot.com/\r\nhttps://whatarekeytermsinwriting12.blogspot.com/\r\nhttps://articlecritiqueapa0.blogspot.com/\r\nhttps://paysomeonetowriteapaper1.blogspot.com/\r\nhttps://editingapaper12.blogspot.com/\r\nhttps://examplesofgoodessaywriting1.blogspot.com/\r\nhttps://howtowriteabibliographyforapaper.blogspot.com/\r\nhttps://helpmathproblems2.blogspot.com/\r\nhttps://poetrywritingpaper.blogspot.com/\r\nhttps://assignmentwritingstructure12.blogspot.com/\r\nhttps://topicalessayexamples12.blogspot.com/\r\nhttps://theactwritingsampleessays12.blogspot.com/\r\nhttps://methodssectionofaresearchpaper.blogspot.com/\r\nhttps://bestoriginalcustompaperwritingservice.blogspot.com/\r\nhttps://annotatedbibliographymla12.blogspot.com/\r\nhttps://essayhelpthehandicap.blogspot.com\r\nhttps://howtowritecasestudypaper.blogspot.com/\r\nhttps://writingscientificpaper.blogspot.com/\r\nhttps://graduateschooladmissionessay0.blogspot.com\r\nhttps://howtowritemythesis.blogspot.com\r\nhttps://howtowriteanalysispaper.blogspot.com/\r\nhttps://howtowriteessaywritingininterview0.blogspot.com\r\nhttps://5paragraphexample12.blogspot.com/\r\nhttps://economicsessay123.blogspot.com/\r\nhttps://philosophyessay123.blogspot.com/\r\nhttps://buyacollegepaperonline1.blogspot.com\r\nhttps://howtowriteabookreportcollege.blogspot.com\r\n', '0', 'inbox258@glmux.com', 'ThomasSoumE', '2019-12-02'),
(12, 'Gregoryfep', '89224232482', 'Hello. And Bye.', '0', 'yourmail@gmail.com', 'Gregoryfep', '2019-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext,
  `active` enum('0','1') NOT NULL DEFAULT '0',
  `flag` set('1','2','3','4') DEFAULT NULL,
  `key_txt` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `active`, `flag`, `key_txt`) VALUES
(2, 'الشروط والأحكام', '<p>ان دخولك على هذه القواعد يعني قبولك بجميع الشروط والأحكام الواردة هنا، وأي شروط أخرى يتم نشرها وتحديثها على صفحات القواعد أو موقع الشركة. إذا كنت غير موافق على هذه الشروط والأحكام يرجى عدم استخدام القواعد والموقع. تحتفظ شركة دار المنظومة لنفسها بحق تغيير أو تعديل أو إضافة أو إزالة أجزاء من هذه الشروط والأحكام وفقا لتقديرها في أي وقت وبدون إشعار مسبق. يرجى مراجعة هذه الصفحة بشكل دوري لأي تعديلات. علما أن استمرار استخدامك لهذا الموقع بعد نشر أي تغييرات سوف يعني أنك قد قبلت هذه التغييرات. حقوق التأليف والنشر والملكية الفكرية والقيود المفروضة على الاستخدام : جميع المحتويات في هذا الموقع ، بما في ذلك النصوص الكاملة للوثائق، والتصميم والصور والبرامج والنصوص وغيرها من المعلومات (إجمالا ، &quot;المحتوى&quot;) هي من ممتلكات شركة دار المنظومة أو الجهات المرخصة بموجب العقود الموقعة معها. وجميع هذه المحتويات محمية بموجب قوانين وأنظمة حقوق المؤلف وغيرها من قوانين الملكية الفكرية. لا يجوز لك نسخ أو عرض أو توزيع أو تعديل أو نشر أو إعادة إنتاج أو تخزين أو نقل أو إنشاء أعمال اشتقاقية ، أو بيع أو ترخيص جميع أو أي جزء من محتويات ، أو منتجات أو خدمات القواعد، والتي تم الحصول عليها من هذا الموقع في أي وسيلة ولأي احد، ما عدا ما ينص بشكل صريح على السماح به بموجب القانون المعمول به أو على النحو المبين في هذه الشروط والبنود ذات الصلة أو ترخيص أو اتفاق مشترك. يمكنك تنزيل أو طباعة المحتويات من الموقع لاستخدامك الشخصي فقط، وليس الاستخدام التجاري، شريطة عدم المساس بجميع حقوق التأليف والنشر واتفاقيات الملكية الفكرية الأخرى. لا يجوز لك تجاوز حدود الاستخدام العادل للمحتوى بما في ذلك القيام باسترجاع كميات كبيرة وبشكل منتظم لمحتويات القواعد من اجل إنشاء مجموعات من البحوث والدراسات أو بناء قواعد معلومات منها سواء بشكل مباشر أو غير مباشر أو لاي سبب آخر. وفي حال تجاوز المستخدم الفرد تنزيل ملفات المحتوى</p>\r\n', '1', '1', 'terms'),
(4, 'من نحن', 'ان دخولك على هذه القواعد يعني قبولك بجميع الشروط والأحكام الواردة هنا، وأي شروط أخرى يتم نشرها وتحديثها على صفحات القواعد أو موقع الشركة.\r\nإذا كنت غير موافق على هذه الشروط والأحكام يرجى عدم استخدام القواعد والموقع.\r\nتحتفظ شركة دار المنظومة لنفسها بحق تغيير أو تعديل أو إضافة أو إزالة أجزاء من هذه الشروط والأحكام وفقا لتقديرها في أي وقت وبدون إشعار مسبق.\r\nيرجى مراجعة هذه الصفحة بشكل دوري لأي تعديلات. علما أن استمرار استخدامك لهذا الموقع بعد نشر أي تغييرات سوف يعني أنك قد قبلت هذه التغييرات.\r\nحقوق التأليف والنشر والملكية الفكرية والقيود المفروضة على الاستخدام :\r\n\r\nجميع المحتويات في هذا الموقع ، بما في ذلك النصوص الكاملة للوثائق، والتصميم والصور والبرامج والنصوص وغيرها من المعلومات (إجمالا ، \"المحتوى\") هي من ممتلكات شركة دار المنظومة أو الجهات المرخصة بموجب العقود الموقعة معها. وجميع هذه المحتويات محمية بموجب قوانين وأنظمة حقوق المؤلف وغيرها من قوانين الملكية الفكرية.\r\nلا يجوز لك نسخ أو عرض أو توزيع أو تعديل أو نشر أو إعادة إنتاج أو تخزين أو نقل أو إنشاء أعمال اشتقاقية ، أو بيع أو ترخيص جميع أو أي جزء من محتويات ، أو منتجات أو خدمات القواعد، والتي تم الحصول عليها من هذا الموقع في أي وسيلة ولأي احد، ما عدا ما ينص بشكل صريح على السماح به بموجب القانون المعمول به أو على النحو المبين في هذه الشروط والبنود ذات الصلة أو ترخيص أو اتفاق مشترك.\r\nيمكنك تنزيل أو طباعة المحتويات من الموقع لاستخدامك الشخصي فقط، وليس الاستخدام التجاري، شريطة عدم المساس بجميع حقوق التأليف والنشر واتفاقيات الملكية الفكرية الأخرى.\r\nلا يجوز لك تجاوز حدود الاستخدام العادل للمحتوى بما في ذلك القيام باسترجاع كميات كبيرة وبشكل منتظم لمحتويات القواعد من اجل إنشاء مجموعات من البحوث والدراسات أو بناء قواعد معلومات منها سواء بشكل مباشر أو غير مباشر أو لاي سبب آخر. وفي حال تجاوز المستخدم الفرد تنزيل ملفات المحتوى ', '1', '2', 'about'),
(7, 'اهلا بكم', '<p>الاخبار الاخبار الاخبار الاخبار111111</p>\r\n', '0', '2', 'Pages'),
(8, 'شروط التسجيل', '<p>ان دخولك على هذه القواعد يعني قبولك بجميع الشروط والأحكام الواردة هنا، وأي شروط أخرى يتم نشرها وتحديثها على صفحات القواعد أو موقع الشركة. إذا كنت غير موافق على هذه الشروط والأحكام يرجى عدم استخدام القواعد والموقع. تحتفظ شركة دار المنظومة لنفسها بحق تغيير أو تعديل أو إضافة أو إزالة أجزاء من هذه الشروط والأحكام وفقا لتقديرها في أي وقت وبدون إشعار مسبق. يرجى مراجعة هذه الصفحة بشكل دوري لأي تعديلات. علما أن استمرار استخدامك لهذا الموقع بعد نشر أي تغييرات سوف يعني أنك قد قبلت هذه التغييرات. حقوق التأليف والنشر والملكية الفكرية والقيود المفروضة على الاستخدام : جميع المحتويات في هذا الموقع ، بما في ذلك النصوص الكاملة للوثائق، والتصميم والصور والبرامج والنصوص وغيرها من المعلومات (إجمالا ، &quot;المحتوى&quot;) هي من ممتلكات شركة دار المنظومة أو الجهات المرخصة بموجب العقود الموقعة معها. وجميع هذه المحتويات محمية بموجب قوانين وأنظمة حقوق المؤلف وغيرها من قوانين الملكية الفكرية. لا يجوز لك نسخ أو عرض أو توزيع أو تعديل أو نشر أو إعادة إنتاج أو تخزين أو نقل أو إنشاء أعمال اشتقاقية ، أو بيع أو ترخيص جميع أو أي جزء من محتويات ، أو منتجات أو خدمات القواعد، والتي تم الحصول عليها من هذا الموقع في أي وسيلة ولأي احد، ما عدا ما ينص بشكل صريح على السماح به بموجب القانون المعمول به أو على النحو المبين في هذه الشروط والبنود ذات الصلة أو ترخيص أو اتفاق مشترك. يمكنك تنزيل أو طباعة المحتويات من الموقع لاستخدامك الشخصي فقط، وليس الاستخدام التجاري، شريطة عدم المساس بجميع حقوق التأليف والنشر واتفاقيات الملكية الفكرية الأخرى. لا يجوز لك تجاوز حدود الاستخدام العادل للمحتوى بما في ذلك القيام باسترجاع كميات كبيرة وبشكل منتظم لمحتويات القواعد من اجل إنشاء مجموعات من البحوث والدراسات أو بناء قواعد معلومات منها سواء بشكل مباشر أو غير مباشر أو لاي سبب آخر. وفي حال تجاوز المستخدم الفرد تنزيل ملفات المحتوى</p>\r\n', '1', '3', 'terms'),
(9, 'شروط التسجيل', '', '1', '4', 'terms'),
(11, 'من نحن', 'ان دخولك على هذه القواعد يعني قبولك بجميع الشروط والأحكام الواردة هنا، وأي شروط أخرى يتم نشرها وتحديثها على صفحات القواعد أو موقع الشركة.\r\nإذا كنت غير موافق على هذه الشروط والأحكام يرجى عدم استخدام القواعد والموقع.\r\nتحتفظ شركة دار المنظومة لنفسها بحق تغيير أو تعديل أو إضافة أو إزالة أجزاء من هذه الشروط والأحكام وفقا لتقديرها في أي وقت وبدون إشعار مسبق.\r\nيرجى مراجعة هذه الصفحة بشكل دوري لأي تعديلات. علما أن استمرار استخدامك لهذا الموقع بعد نشر أي تغييرات سوف يعني أنك قد قبلت هذه التغييرات.\r\nحقوق التأليف والنشر والملكية الفكرية والقيود المفروضة على الاستخدام :\r\n\r\nجميع المحتويات في هذا الموقع ، بما في ذلك النصوص الكاملة للوثائق، والتصميم والصور والبرامج والنصوص وغيرها من المعلومات (إجمالا ، \"المحتوى\") هي من ممتلكات شركة دار المنظومة أو الجهات المرخصة بموجب العقود الموقعة معها. وجميع هذه المحتويات محمية بموجب قوانين وأنظمة حقوق المؤلف وغيرها من قوانين الملكية الفكرية.\r\nلا يجوز لك نسخ أو عرض أو توزيع أو تعديل أو نشر أو إعادة إنتاج أو تخزين أو نقل أو إنشاء أعمال اشتقاقية ، أو بيع أو ترخيص جميع أو أي جزء من محتويات ، أو منتجات أو خدمات القواعد، والتي تم الحصول عليها من هذا الموقع في أي وسيلة ولأي احد، ما عدا ما ينص بشكل صريح على السماح به بموجب القانون المعمول به أو على النحو المبين في هذه الشروط والبنود ذات الصلة أو ترخيص أو اتفاق مشترك.\r\nيمكنك تنزيل أو طباعة المحتويات من الموقع لاستخدامك الشخصي فقط، وليس الاستخدام التجاري، شريطة عدم المساس بجميع حقوق التأليف والنشر واتفاقيات الملكية الفكرية الأخرى.\r\nلا يجوز لك تجاوز حدود الاستخدام العادل للمحتوى بما في ذلك القيام باسترجاع كميات كبيرة وبشكل منتظم لمحتويات القواعد من اجل إنشاء مجموعات من البحوث والدراسات أو بناء قواعد معلومات منها سواء بشكل مباشر أو غير مباشر أو لاي سبب آخر. وفي حال تجاوز المستخدم الفرد تنزيل ملفات المحتوى ', '1', '1', 'about');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `details` text COMMENT 'Details',
  `view` enum('0','1') NOT NULL DEFAULT '1',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_100` varchar(150) DEFAULT NULL,
  `img_150` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `img`, `details`, `view`, `creation_date`, `img_100`, `img_150`) VALUES
(2, 'Training services', 'wysP.png', '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:black\">SOAPCO specialized training services include supervisory skills courses for:</span></span></span></span></p>\r\n\r\n<ul>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Building a shared vision.&nbsp; </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving time management.&nbsp;&nbsp;&nbsp; </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Providing effective direction</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving dialogue</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving work discussions.&nbsp;&nbsp;&nbsp; </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving active listening skills</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving ability to assign work.&nbsp; </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving delegation skills.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Practicing corrective feedback.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Encouraging initiative.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Building and maintaining employee motivation.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Improving employees&rsquo; performance. </span></span></span></li>\r\n</ul>\r\n', '1', '2019-07-14 00:00:00', NULL, NULL),
(3, 'Contracting & Procurement', '9TNa.png', '<p dir=\"ltr\"><span style=\"font-size:16px\">SOAPCO has been dedicated to do business with all sectors of Oil &amp; Gas, Petrochemical, Chemical, Fertilizer, Aluminum, Power, Water, Nuclear, Renewable Energy, Utilities, and Infrastructure Projects in Saudi Arabia and other GCC Countries.</span></p>\r\n\r\n<p dir=\"ltr\"><br />\r\n<span style=\"font-size:16px\">Division Services:</span></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li>EPC Project Procurement Management &amp; Support Services&nbsp;</li>\r\n	<li><span style=\"font-size:16px\">Agency Representation with International Manufacturers &amp; Technologies</span></li>\r\n	<li><span style=\"font-size:16px\">Contracting works as Main Contractor &amp; Sub Contractor for various disciplines of works.&nbsp;</span></li>\r\n	<li><span style=\"font-size:16px\">Specialized Services for the Industrial Projects, Civil &amp; Real-Estate Projects.</span></li>\r\n	<li><span style=\"font-size:16px\">Renting of Equipment &amp; Tools and Transportation Services for the EPC Contractors and Project Owners.</span></li>\r\n	<li><span style=\"font-size:16px\">Engineering Services offered to EPC Contractors &amp; Project Owners.</span></li>\r\n	<li><span style=\"font-size:16px\">Trading Activities and Sales stock.&nbsp;</span></li>\r\n</ul>\r\n', '1', '2019-07-14 00:00:00', NULL, NULL),
(6, 'Agency for international Companies', 'yRKh.png', '<p dir=\"ltr\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO have capabilities to represent international companies efficiently in Saudi market and provide services to clients based on the need and requirements of principle company. Services can range from product/equipment marketing, spare parts support, technical support services, etc.&nbsp;</span></span></span></p>\r\n', '1', '2019-07-14 00:00:00', NULL, NULL),
(7, 'Maintenance Services', 'sbkA.png', '<p dir=\"ltr\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SAOPCO provide small to medium maintenance activities to any kind of life plant and during the T&amp;I activities. SAOPCO provide qualified technicians such (welder, machinist, electrician, HVAC, plumper and coating application). </span></span></span></p>\r\n', '1', '2019-07-14 00:00:00', NULL, NULL),
(8, 'Inspection services', 'hj2K.png', '<ul>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Project Inspection: Provide coverage for all types of projects (Gas, Oil, Petrochemical, Water, structural, civil, On shore, Offshore) during the construction phase </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Manufacturing Inspection:&nbsp; Provide coverage for all kinds of shop fabrication (structural, pressure vessels, tank, OCGT (Oil Country Tubular Goods, valve&#39;s assembly)</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Vendor inspection: Provide Third party inspection of all kinds of imported materials in the Vendor Wearhouse </span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Shutdown Inspection:&nbsp; Provide API, CWI, NACE certified inspectors to cover the shutdown activities during plant shutdown</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Operation Inspection:&nbsp; Provide certified inspectors to cover inspection activities during life operation.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Lifting Inspection: Provide all types crane inspection, escalator, Pome truck forklift, manlift and its associate&#39;s equipment inspection.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Mobility Inspection: Provide inspection to hulling, sulfur, gasoline, diesel trucks.</span></span></span></li>\r\n	<li style=\"text-align:left\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Energy Inspection: Provide inspection of Renewable energy or alternate energy like solar energy.</span></span></span></li>\r\n</ul>\r\n', '1', '2019-07-14 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_info`
--

CREATE TABLE `site_info` (
  `id` int(11) NOT NULL,
  `logo` varchar(150) NOT NULL,
  `name` varchar(100) NOT NULL,
  `facebook` varchar(150) NOT NULL,
  `twitter` varchar(150) NOT NULL,
  `instagram` varchar(150) NOT NULL,
  `whatsapp` varchar(150) NOT NULL,
  `google_pluse` varchar(150) NOT NULL,
  `favicon` varchar(150) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `map` text,
  `api_key` varchar(150) DEFAULT NULL,
  `footer_about` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `message_email` varchar(255) DEFAULT NULL,
  `phone_second` varchar(255) DEFAULT NULL,
  `phone_third` varchar(255) DEFAULT NULL,
  `email_second` varchar(255) DEFAULT NULL,
  `email_third` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_info`
--

INSERT INTO `site_info` (`id`, `logo`, `name`, `facebook`, `twitter`, `instagram`, `whatsapp`, `google_pluse`, `favicon`, `keywords`, `description`, `phone`, `email`, `address`, `map`, `api_key`, `footer_about`, `linkedin`, `message_email`, `phone_second`, `phone_third`, `email_second`, `email_third`) VALUES
(1, 'kCai.png', 'سوابكو-SOAPCO', '#', '#', '#', '#', '#', 'E4OU.png', 'As an industrial services company, we provide solutions and expertise to improve customer services. Our foundation of success has been built upon the commitment to our valuable customers. We owe our success to the outstanding SOAPCO management and talente', 'SOAPCO is an industrial services company. We deliver services and expertise to improve our customer plants reliability and efficiency. Our \r\nfoundation for success has been the commitment of our employees towards customers satisfaction & management focus', '966555771065', 'gm@soapco-sa.com', 'Al-Najim Building, Prince Saad bin Abdulaziz St. Dammam 32253, Saudi Arabia', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3573.0804068477833!2d50.095675215034476!3d26.420881683341847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3e49fd309189d15d%3A0x17cd07d62cbac423!2sSOAPCO!5e0!3m2!1sen!2ssa!4v1566839896886!5m2!1sen!2ssa\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', '1234567890', 'SOAPCO is an industrial services company. We deliver services and expertise to improve our customer plants reliability and efficiency. Our \r\nfoundation for success has been the commitment of our employees towards customers satisfaction & management focus', '#', 'ashraf.m@wisyst.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` int(11) NOT NULL,
  `about` text,
  `about_img` varchar(150) DEFAULT NULL,
  `business_banner` varchar(150) DEFAULT NULL,
  `job_banner` varchar(150) DEFAULT NULL,
  `contact_banner` varchar(150) DEFAULT NULL,
  `sustainability_banner` varchar(150) DEFAULT NULL,
  `join_title` varchar(255) DEFAULT NULL,
  `join_img` varchar(255) DEFAULT NULL,
  `join_details` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `site_setting`
--

INSERT INTO `site_setting` (`id`, `about`, `about_img`, `business_banner`, `job_banner`, `contact_banner`, `sustainability_banner`, `join_title`, `join_img`, `join_details`) VALUES
(1, '<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:16.0pt\">SOAPCO Vision</span></strong></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:50pt\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed to surpass industry standards to enhance client&rsquo;s efficiency and performance with special focus on safety &amp; environment.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\">&nbsp;</p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:16.0pt\">SOAPCO Mission</span></strong></span></p>\r\n\r\n<ul dir=\"ltr\">\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">To provide </span><span style=\"font-size:14.0pt\">superior quality, cost effective and competitive services to clients.</span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Secure knowhow and latest technology solutions for our clients from our international partners and achieve win-win position to all parties involved </span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Expand and diversify our services in various related fields </span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Maintain qualified work force and continually enhance their competences </span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Comply with all applicable regulatory and statutory requirements </span></span></span></li>\r\n	<li><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Comply with our Management System Requirements based on ISO 9001 and continually improve its effectiveness&nbsp; </span></span></span></li>\r\n</ul>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><strong><span style=\"font-size:16.0pt\">SOAPCO in Brief </span></strong></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\">As an industrial services company, we provide solutions and expertise to improve customer services. Our foundation of success has been built upon the commitment to our valuable customers. We owe our success to the outstanding SOAPCO management and talented workforce team who are committed to provide highest quality services to our customers.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\">We are proud of our achievements since the inception of the company SOAPCO in September 2012 as a trading company, and are now offering industrial services in inspection and maintenance for oil, gas, petrochemical, electrical, desalination industries. SOAPCO services include turnaround maintenance, preventive maintenance, routine plant maintenance services and specialized training services. SOAPCO offer agile representation of internarial companies in Saudi Arabia. </span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\">SOAPCO services will help the customers to improve plant reliability, reduce operational and maintenance cost, and provide permanent records for traceability and follow up.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\">We are open to potential clients, team partners, and prospective extraordinarily talented and motivated people to join us. SOAPCO work equally well in prime or subcontractor roles, and we work with both large and small businesses alike. We have a proud reputation of honoring our commitments and 100% delivery.</span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-size:14.0pt\">We are eager to improve continuously with your valuable feedbacks. We look forward to hearing from you!</span></span></p>\r\n', '6RxX.jpg', 'REFJ.jpg', 'aXsg.jpg', 'Mx6l.jpg', 'KYCi.jpg', 'Join Us', '5AEz.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `img` varchar(150) DEFAULT NULL,
  `view` enum('0','1') DEFAULT NULL,
  `creation_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `img`, `view`, `creation_date`) VALUES
(1, 'MQMs.jpg', '1', '2019-07-14'),
(5, 'Z6cY.jpg', '1', '2019-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `sustainability`
--

CREATE TABLE `sustainability` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `details` text COMMENT 'Details',
  `view` enum('0','1') NOT NULL DEFAULT '1',
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `img_100` varchar(150) DEFAULT NULL,
  `img_150` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sustainability`
--

INSERT INTO `sustainability` (`id`, `name`, `img`, `details`, `view`, `creation_date`, `img_100`, `img_150`) VALUES
(2, 'Business Ethics', 'e1Cm.png', '<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO shareholders and management are committed to the following codes of conducts, Core Values and social responsibilities guidelines:</span></span></span></p>\r\n\r\n<ul>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Motivate employees to conduct our businesses with highest ethical standards.</span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Employees shall never offer or accept bribe while conducting our businesses internally or externally while dealing with customers or suppliers. </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Employees shall never participate in any work or activities involving corruption or fraud under any circumstances.&nbsp;&nbsp; </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Employees are encouraged to obey all laws and regulations of Saudi Arabia.&nbsp; </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed NOT to employee anyone under the age of 18 years in any sector of its businesses, and will retain a copy of employee&rsquo;s Saudi ID, passport or Iqama in our HR records as evidence of compliance.&nbsp; </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed to pay its employees salary above the minimum wages per Saudi law, and will retain a copy of employment contract in our HR records as evidence of compliance.&nbsp; </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed not to allow any activities that have anything to do with slavery or human trafficking in all its businesses including activities related to our supply chain. </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO Core Values are all about inspiring management and employees to create trust, respectful and welcoming work environment internally and externally with customers and suppliers targeting to deliver attractive product and services backed by highest commitment towards all stakeholders.&nbsp;&nbsp;&nbsp; </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Employees are encouraged to report any violation to this policy to the company management and call for corrective and disciplinary actions. </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">Disciplinary actions will be taken against any employee convicted with bribe, corruption or fraud activities according to the laws and regulations of Saudi Arabia. </span></span></span></li>\r\n	<li dir=\"ltr\" style=\"text-align: left;\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO will ensure its employees are aware of this policy and retain a copy of employee&rsquo;s signature in our HR records acknowledging his/her awareness.</span></span></span></li>\r\n</ul>\r\n', '1', '2019-07-31 00:00:00', NULL, NULL),
(3, 'Quality Management', '0YjG.png', '<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\"><span style=\"color:#333333\">Quality is the foundation for success of SOAPCO. To ensure quality services to our clients, SOAPCO has established a quality management system QMS covering all aspects per ISO 9001-2015. SOAPCO QMS was audited by a leading ISO certification company, and now awaiting ISO 9001 certificate to be issued. &nbsp;</span></span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in; text-align:justify\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO staff have variety of experience in different fields of engineering inspection &amp; maintenance and will supervise the implementation of SOAPCO Management System. </span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO employees are committed to a program of continuous quality improvement that provide successful projects that meet or exceed the client expectations.</span></span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO provide inspection, certification and reports according to the applicable international code and standard or client format requirement.</span></span></span></p>\r\n', '1', '2019-07-31 00:00:00', NULL, NULL),
(4, 'SHE Management', 'HF5f.png', '<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed to ensure safe &amp; healthy work environment SHE for the protection of people and properties at work sites. </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO assure that quality, occupational health, safety and environmental protection full under the responsibility of all individuals. SOAPCO is committed to enhance the awareness to all employees to make it integral part of their performance requirements </span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">SOAPCO is committed to comply with all technical specifications, regulations and other requirement concerning the QHSE and assure the continual improvement of the integrated system to meet the requirement of the ISO 9001, 14000 &amp; 45001 latest editions.</span></span></span></p>\r\n\r\n<p dir=\"ltr\" style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:11pt\"><span style=\"font-family:Calibri,sans-serif\"><span style=\"font-size:14.0pt\">We have created SOAPCO Safety Management Manual and top management is responsible to drive the highest safety performance always.&nbsp; </span></span></span></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n', '1', '2019-07-31 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_setting`
--

CREATE TABLE `system_setting` (
  `id` int(11) NOT NULL,
  `key_txt` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `txt_value` varchar(150) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `system_setting`
--

INSERT INTO `system_setting` (`id`, `key_txt`, `txt_value`) VALUES
(1, 'logo', '(width:200px,height:100px)(PNG|JPG|JPEG)'),
(2, 'favicon', '(width:32px,height:32px)(PNG|JPG|JPEG)'),
(3, 'home_intro', '(width:450px,height:350px)(PNG|JPG|JPEG|GIF)'),
(4, 'clients', '(width:200px,height:200px)(PNG|JPG|JPEG|GIF)'),
(5, 'our_files', '(PNG|JPG|JPEG|GIF|PDF|DOC|DOCX|XLS|XLSX)');

-- --------------------------------------------------------

--
-- Table structure for table `visiting`
--

CREATE TABLE `visiting` (
  `id` int(11) NOT NULL,
  `ip` varchar(150) CHARACTER SET utf8 NOT NULL,
  `visit_num` int(11) NOT NULL,
  `day_t` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `month_d` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `year_d` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visiting`
--

INSERT INTO `visiting` (`id`, `ip`, `visit_num`, `day_t`, `month_d`, `year_d`, `date`) VALUES
(1, '197.47.225.213', 183, '21', '05', '2019', '2019-05-21'),
(2, '45.243.204.21', 34, '21', '05', '2019', '2019-05-21'),
(3, '197.47.225.213', 237, '22', '05', '2019', '2019-05-22'),
(4, '45.243.204.21', 18, '22', '05', '2019', '2019-05-22'),
(5, '197.58.55.73', 4, '22', '05', '2019', '2019-05-22'),
(6, '197.58.55.73', 6, '23', '05', '2019', '2019-05-23'),
(7, '197.47.225.213', 42, '23', '05', '2019', '2019-05-23'),
(8, '45.243.204.21', 4, '23', '05', '2019', '2019-05-23'),
(9, '197.47.187.82', 258, '23', '05', '2019', '2019-05-23'),
(10, '45.243.169.10', 34, '23', '05', '2019', '2019-05-23'),
(11, '197.45.135.122', 6, '23', '05', '2019', '2019-05-23'),
(12, '197.58.183.131', 4, '23', '05', '2019', '2019-05-23'),
(13, '41.35.1.190', 204, '24', '05', '2019', '2019-05-24'),
(14, '154.128.241.188', 2, '24', '05', '2019', '2019-05-24'),
(15, '196.141.128.74', 6, '25', '05', '2019', '2019-05-25'),
(16, '41.35.1.190', 46, '25', '05', '2019', '2019-05-25'),
(17, '41.47.139.211', 36, '25', '05', '2019', '2019-05-25'),
(18, '41.35.1.190', 2, '26', '05', '2019', '2019-05-26'),
(19, '197.47.187.82', 123, '26', '05', '2019', '2019-05-26'),
(20, '41.37.31.214', 60, '26', '05', '2019', '2019-05-26'),
(21, '45.243.250.31', 6, '26', '05', '2019', '2019-05-26'),
(22, '45.243.205.252', 4, '26', '05', '2019', '2019-05-26'),
(23, '197.47.163.106', 27, '26', '05', '2019', '2019-05-26'),
(24, '197.47.196.48', 4, '26', '05', '2019', '2019-05-26'),
(25, '41.40.126.55', 6, '27', '05', '2019', '2019-05-27'),
(26, '41.35.106.115', 2, '27', '05', '2019', '2019-05-27'),
(27, '197.47.163.106', 39, '27', '05', '2019', '2019-05-27'),
(28, '41.40.126.55', 52, '28', '05', '2019', '2019-05-28'),
(29, '197.47.163.106', 199, '28', '05', '2019', '2019-05-28'),
(30, '41.40.126.55', 36, '29', '05', '2019', '2019-05-29'),
(31, '197.47.163.106', 257, '29', '05', '2019', '2019-05-29'),
(32, '41.129.0.201', 6, '29', '05', '2019', '2019-05-29'),
(33, '197.58.218.39', 47, '30', '05', '2019', '2019-05-30'),
(34, '41.129.0.201', 57, '30', '05', '2019', '2019-05-30'),
(35, '41.35.119.87', 24, '30', '05', '2019', '2019-05-30'),
(36, '45.246.217.125', 140, '30', '05', '2019', '2019-05-30'),
(37, '41.237.120.57', 4, '30', '05', '2019', '2019-05-30'),
(38, '41.237.120.57', 8, '31', '05', '2019', '2019-05-31'),
(39, '45.243.238.31', 140, '02', '06', '2019', '2019-06-02'),
(40, '197.58.206.72', 5, '10', '06', '2019', '2019-06-10'),
(41, '41.237.154.55', 4, '10', '06', '2019', '2019-06-10'),
(42, '41.237.154.55', 5, '13', '06', '2019', '2019-06-13'),
(43, '41.237.130.179', 2, '13', '06', '2019', '2019-06-13'),
(44, '176.18.105.68', 10, '13', '06', '2019', '2019-06-13'),
(45, '149.154.161.7', 1, '13', '06', '2019', '2019-06-13'),
(46, '5.156.47.240', 8, '13', '06', '2019', '2019-06-13'),
(47, '93.178.15.94', 2, '13', '06', '2019', '2019-06-13'),
(48, '197.58.61.64', 61, '15', '06', '2019', '2019-06-15'),
(49, '197.58.61.64', 52, '16', '06', '2019', '2019-06-16'),
(50, '46.153.36.251', 38, '16', '06', '2019', '2019-06-16'),
(51, '66.102.8.120', 1, '16', '06', '2019', '2019-06-16'),
(52, '66.102.8.122', 1, '16', '06', '2019', '2019-06-16'),
(53, '37.224.86.135', 50, '16', '06', '2019', '2019-06-16'),
(54, '37.224.86.130', 43, '16', '06', '2019', '2019-06-16'),
(55, '37.224.86.136', 22, '16', '06', '2019', '2019-06-16'),
(56, '41.237.130.179', 205, '16', '06', '2019', '2019-06-16'),
(57, '82.147.204.132', 38, '16', '06', '2019', '2019-06-16'),
(58, '82.147.204.163', 21, '16', '06', '2019', '2019-06-16'),
(59, '82.147.204.161', 22, '16', '06', '2019', '2019-06-16'),
(60, '82.147.204.162', 28, '16', '06', '2019', '2019-06-16'),
(61, '176.18.138.201', 2, '16', '06', '2019', '2019-06-16'),
(62, '93.178.15.94', 8, '16', '06', '2019', '2019-06-16'),
(63, '46.153.36.251', 32, '17', '06', '2019', '2019-06-17'),
(64, '41.237.130.179', 417, '17', '06', '2019', '2019-06-17'),
(65, '45.243.246.178', 180, '17', '06', '2019', '2019-06-17'),
(66, '82.147.204.161', 36, '17', '06', '2019', '2019-06-17'),
(67, '82.147.204.163', 33, '17', '06', '2019', '2019-06-17'),
(68, '82.147.204.132', 20, '17', '06', '2019', '2019-06-17'),
(69, '82.147.204.162', 27, '17', '06', '2019', '2019-06-17'),
(70, '31.13.103.5', 2, '17', '06', '2019', '2019-06-17'),
(71, '31.13.103.2', 1, '17', '06', '2019', '2019-06-17'),
(72, '31.13.103.4', 1, '17', '06', '2019', '2019-06-17'),
(73, '31.13.103.1', 1, '17', '06', '2019', '2019-06-17'),
(74, '69.171.251.47', 1, '17', '06', '2019', '2019-06-17'),
(75, '69.171.251.16', 1, '17', '06', '2019', '2019-06-17'),
(76, '69.171.251.1', 1, '17', '06', '2019', '2019-06-17'),
(77, '173.252.127.56', 1, '17', '06', '2019', '2019-06-17'),
(78, '173.252.127.9', 1, '17', '06', '2019', '2019-06-17'),
(79, '169.60.172.114', 1, '17', '06', '2019', '2019-06-17'),
(80, '199.16.157.181', 1, '17', '06', '2019', '2019-06-17'),
(81, '31.13.103.6', 1, '17', '06', '2019', '2019-06-17'),
(82, '31.13.103.8', 1, '17', '06', '2019', '2019-06-17'),
(83, '69.171.251.9', 2, '17', '06', '2019', '2019-06-17'),
(84, '51.39.113.112', 107, '17', '06', '2019', '2019-06-17'),
(85, '51.36.47.215', 6, '17', '06', '2019', '2019-06-17'),
(86, '51.36.219.0', 6, '17', '06', '2019', '2019-06-17'),
(87, '169.60.49.101', 1, '17', '06', '2019', '2019-06-17'),
(88, '93.178.15.94', 18, '17', '06', '2019', '2019-06-17'),
(89, '176.19.183.3', 2, '17', '06', '2019', '2019-06-17'),
(90, '51.39.113.112', 14, '18', '06', '2019', '2019-06-18'),
(91, '51.39.21.169', 2, '18', '06', '2019', '2019-06-18'),
(92, '37.224.86.130', 25, '18', '06', '2019', '2019-06-18'),
(93, '37.224.86.135', 31, '18', '06', '2019', '2019-06-18'),
(94, '37.224.86.136', 28, '18', '06', '2019', '2019-06-18'),
(95, '41.44.37.237', 286, '18', '06', '2019', '2019-06-18'),
(96, '169.60.172.114', 1, '18', '06', '2019', '2019-06-18'),
(97, '46.153.36.251', 30, '18', '06', '2019', '2019-06-18'),
(98, '169.48.198.38', 1, '18', '06', '2019', '2019-06-18'),
(99, '51.36.232.240', 44, '18', '06', '2019', '2019-06-18'),
(100, '41.44.37.237', 91, '19', '06', '2019', '2019-06-19'),
(101, '37.224.86.136', 2, '19', '06', '2019', '2019-06-19'),
(102, '46.153.36.251', 2, '19', '06', '2019', '2019-06-19'),
(103, '37.106.179.99', 6, '19', '06', '2019', '2019-06-19'),
(104, '51.39.213.83', 2, '19', '06', '2019', '2019-06-19'),
(105, '5.156.82.6', 1, '19', '06', '2019', '2019-06-19'),
(106, '197.47.186.248', 97, '20', '06', '2019', '2019-06-20'),
(107, '41.43.69.160', 2, '23', '06', '2019', '2019-06-23'),
(108, '46.153.36.251', 70, '23', '06', '2019', '2019-06-23'),
(109, '197.47.186.248', 35, '23', '06', '2019', '2019-06-23'),
(110, '45.243.149.206', 78, '23', '06', '2019', '2019-06-23'),
(111, '169.60.172.116', 1, '23', '06', '2019', '2019-06-23'),
(112, '45.243.149.206', 76, '24', '06', '2019', '2019-06-24'),
(113, '197.47.162.196', 40, '24', '06', '2019', '2019-06-24'),
(114, '41.239.188.2', 16, '24', '06', '2019', '2019-06-24'),
(115, '34.227.192.126', 1, '24', '06', '2019', '2019-06-24'),
(116, '41.43.69.160', 4, '25', '06', '2019', '2019-06-25'),
(117, '45.243.149.206', 170, '25', '06', '2019', '2019-06-25'),
(118, '31.13.127.19', 2, '25', '06', '2019', '2019-06-25'),
(119, '45.243.149.206', 254, '26', '06', '2019', '2019-06-26'),
(120, '41.239.190.118', 187, '26', '06', '2019', '2019-06-26'),
(121, '41.35.83.83', 56, '26', '06', '2019', '2019-06-26'),
(122, '169.48.198.34', 1, '26', '06', '2019', '2019-06-26'),
(123, '41.46.87.46', 4, '26', '06', '2019', '2019-06-26'),
(124, '41.237.142.204', 347, '27', '06', '2019', '2019-06-27'),
(125, '169.60.49.116', 2, '27', '06', '2019', '2019-06-27'),
(126, '169.48.198.38', 1, '27', '06', '2019', '2019-06-27'),
(127, '45.243.149.206', 6, '27', '06', '2019', '2019-06-27'),
(128, '41.237.142.204', 348, '30', '06', '2019', '2019-06-30'),
(129, '169.48.198.34', 1, '30', '06', '2019', '2019-06-30'),
(130, '41.237.142.204', 94, '01', '07', '2019', '2019-07-01'),
(131, '46.153.36.251', 3, '01', '07', '2019', '2019-07-01'),
(132, '41.35.90.100', 4, '01', '07', '2019', '2019-07-01'),
(133, '45.243.149.206', 82, '01', '07', '2019', '2019-07-01'),
(134, '45.243.149.206', 320, '02', '07', '2019', '2019-07-02'),
(135, '46.153.36.251', 58, '02', '07', '2019', '2019-07-02'),
(136, '45.243.149.206', 223, '03', '07', '2019', '2019-07-03'),
(137, '51.39.213.40', 2, '03', '07', '2019', '2019-07-03'),
(138, '105.42.150.179', 1, '03', '07', '2019', '2019-07-03'),
(139, '45.243.149.206', 312, '04', '07', '2019', '2019-07-04'),
(140, '159.89.35.198', 1, '04', '07', '2019', '2019-07-04'),
(141, '197.38.254.118', 4, '04', '07', '2019', '2019-07-04'),
(142, '165.22.37.84', 1, '05', '07', '2019', '2019-07-05'),
(143, '209.17.96.242', 1, '05', '07', '2019', '2019-07-05'),
(144, '209.17.97.114', 1, '06', '07', '2019', '2019-07-06'),
(145, '185.220.101.34', 2, '06', '07', '2019', '2019-07-06'),
(146, '45.243.149.206', 4, '07', '07', '2019', '2019-07-07'),
(147, '197.47.172.52', 316, '07', '07', '2019', '2019-07-07'),
(148, '45.243.204.87', 1, '07', '07', '2019', '2019-07-07'),
(149, '41.44.53.190', 10, '07', '07', '2019', '2019-07-07'),
(150, '195.154.61.206', 1, '07', '07', '2019', '2019-07-07'),
(151, '51.15.191.81', 1, '07', '07', '2019', '2019-07-07'),
(152, '51.15.191.81', 2, '08', '07', '2019', '2019-07-08'),
(153, '51.255.109.168', 1, '08', '07', '2019', '2019-07-08'),
(154, '51.255.109.161', 1, '08', '07', '2019', '2019-07-08'),
(155, '209.17.96.234', 1, '09', '07', '2019', '2019-07-09'),
(156, '41.40.109.77', 6, '09', '07', '2019', '2019-07-09'),
(157, '51.255.109.166', 1, '09', '07', '2019', '2019-07-09'),
(158, '51.255.109.173', 1, '09', '07', '2019', '2019-07-09'),
(159, '209.17.96.18', 1, '09', '07', '2019', '2019-07-09'),
(160, '::1', 87, '09', '07', '2019', '2019-07-09'),
(161, '::1', 124, '10', '07', '2019', '2019-07-10'),
(162, '45.243.195.173', 13, '10', '07', '2019', '2019-07-10'),
(163, '41.35.105.210', 1, '10', '07', '2019', '2019-07-10'),
(164, '51.39.232.41', 1, '10', '07', '2019', '2019-07-10'),
(165, '45.243.195.173', 140, '11', '07', '2019', '2019-07-11'),
(166, '46.153.37.151', 8, '11', '07', '2019', '2019-07-11'),
(167, '197.47.168.30', 2, '14', '07', '2019', '2019-07-14'),
(168, '45.243.195.29', 4, '14', '07', '2019', '2019-07-14'),
(169, '45.243.195.29', 5, '15', '07', '2019', '2019-07-15'),
(170, '45.243.195.29', 5, '16', '07', '2019', '2019-07-16'),
(171, '41.35.61.65', 187, '16', '07', '2019', '2019-07-16'),
(172, '37.42.159.190', 1, '16', '07', '2019', '2019-07-16'),
(173, '197.47.189.41', 1, '18', '07', '2019', '2019-07-18'),
(174, '197.47.189.41', 5, '21', '07', '2019', '2019-07-21'),
(175, '46.153.37.151', 3, '21', '07', '2019', '2019-07-21'),
(176, '84.22.254.28', 1, '22', '07', '2019', '2019-07-22'),
(177, '197.47.156.215', 4, '29', '07', '2019', '2019-07-29'),
(178, '46.153.37.151', 38, '31', '07', '2019', '2019-07-31'),
(179, '45.243.205.93', 49, '31', '07', '2019', '2019-07-31'),
(180, '178.87.32.190', 22, '31', '07', '2019', '2019-07-31'),
(181, '197.47.170.236', 1, '01', '08', '2019', '2019-08-01'),
(182, '93.178.41.91', 17, '01', '08', '2019', '2019-08-01'),
(183, '45.243.205.93', 40, '01', '08', '2019', '2019-08-01'),
(184, '45.243.146.240', 2, '06', '08', '2019', '2019-08-06'),
(185, '41.237.73.101', 1, '06', '08', '2019', '2019-08-06'),
(186, '93.178.40.237', 3, '18', '08', '2019', '2019-08-18'),
(187, '93.178.40.237', 3, '19', '08', '2019', '2019-08-19'),
(188, '197.47.173.253', 1, '20', '08', '2019', '2019-08-20'),
(189, '94.49.231.84', 9, '21', '08', '2019', '2019-08-21'),
(190, '95.219.233.14', 1, '21', '08', '2019', '2019-08-21'),
(191, '37.125.75.39', 9, '21', '08', '2019', '2019-08-21'),
(192, '95.84.110.95', 1, '22', '08', '2019', '2019-08-22'),
(193, '93.178.35.182', 5, '26', '08', '2019', '2019-08-26'),
(194, '86.51.46.21', 4, '04', '09', '2019', '2019-09-04'),
(195, '45.243.158.164', 5, '04', '09', '2019', '2019-09-04'),
(196, '41.35.86.210', 2, '08', '09', '2019', '2019-09-08'),
(197, '197.58.100.3', 7, '09', '09', '2019', '2019-09-09'),
(198, '176.224.236.178', 6, '09', '09', '2019', '2019-09-09'),
(199, '66.102.8.205', 5, '09', '09', '2019', '2019-09-09'),
(200, '66.102.8.207', 3, '09', '09', '2019', '2019-09-09'),
(201, '176.213.157.118', 1, '09', '09', '2019', '2019-09-09'),
(202, '66.102.8.205', 1, '10', '09', '2019', '2019-09-10'),
(203, '209.17.96.154', 1, '10', '09', '2019', '2019-09-10'),
(204, '199.249.230.120', 2, '10', '09', '2019', '2019-09-10'),
(205, '171.25.193.77', 2, '10', '09', '2019', '2019-09-10'),
(206, '66.102.7.178', 1, '10', '09', '2019', '2019-09-10'),
(207, '34.74.99.133', 2, '10', '09', '2019', '2019-09-10'),
(208, '35.231.233.46', 12, '10', '09', '2019', '2019-09-10'),
(209, '209.17.97.58', 1, '10', '09', '2019', '2019-09-10'),
(210, '82.202.161.133', 1, '10', '09', '2019', '2019-09-10'),
(211, '54.190.12.70', 1, '10', '09', '2019', '2019-09-10'),
(212, '158.69.225.35', 4, '10', '09', '2019', '2019-09-10'),
(213, '34.74.233.129', 2, '10', '09', '2019', '2019-09-10'),
(214, '52.11.94.217', 10, '10', '09', '2019', '2019-09-10'),
(215, '60.191.38.77', 1, '10', '09', '2019', '2019-09-10'),
(216, '209.17.96.202', 1, '11', '09', '2019', '2019-09-11'),
(217, '209.17.96.242', 1, '11', '09', '2019', '2019-09-11'),
(218, '34.74.94.23', 12, '11', '09', '2019', '2019-09-11'),
(219, '60.191.38.77', 1, '11', '09', '2019', '2019-09-11'),
(220, '197.37.30.226', 2, '11', '09', '2019', '2019-09-11'),
(221, '93.178.3.131', 1, '11', '09', '2019', '2019-09-11'),
(222, '3.214.21.251', 1, '11', '09', '2019', '2019-09-11'),
(223, '185.139.68.142', 1, '11', '09', '2019', '2019-09-11'),
(224, '54.202.101.243', 1, '11', '09', '2019', '2019-09-11'),
(225, '18.236.249.67', 1, '11', '09', '2019', '2019-09-11'),
(226, '176.224.40.71', 1, '11', '09', '2019', '2019-09-11'),
(227, '82.202.161.133', 1, '11', '09', '2019', '2019-09-11'),
(228, '51.77.246.67', 1, '11', '09', '2019', '2019-09-11'),
(229, '209.17.96.154', 1, '11', '09', '2019', '2019-09-11'),
(230, '62.4.14.198', 2, '11', '09', '2019', '2019-09-11'),
(231, '212.83.146.233', 1, '11', '09', '2019', '2019-09-11'),
(232, '51.15.191.81', 1, '11', '09', '2019', '2019-09-11'),
(233, '176.18.65.26', 2, '12', '09', '2019', '2019-09-12'),
(234, '176.19.171.142', 2, '12', '09', '2019', '2019-09-12'),
(235, '35.196.197.70', 1, '12', '09', '2019', '2019-09-12'),
(236, '179.61.180.115', 1, '12', '09', '2019', '2019-09-12'),
(237, '35.231.152.91', 13, '12', '09', '2019', '2019-09-12'),
(238, '66.102.7.178', 1, '12', '09', '2019', '2019-09-12'),
(239, '92.119.160.72', 2, '12', '09', '2019', '2019-09-12'),
(240, '138.246.253.5', 1, '12', '09', '2019', '2019-09-12'),
(241, '176.213.157.118', 3, '12', '09', '2019', '2019-09-12'),
(242, '18.237.193.24', 1, '12', '09', '2019', '2019-09-12'),
(243, '92.63.111.27', 1, '12', '09', '2019', '2019-09-12'),
(244, '35.196.64.83', 13, '12', '09', '2019', '2019-09-12'),
(245, '3.214.21.251', 2, '12', '09', '2019', '2019-09-12'),
(246, '34.73.82.37', 13, '12', '09', '2019', '2019-09-12'),
(247, '35.190.180.170', 13, '12', '09', '2019', '2019-09-12'),
(248, '60.191.38.77', 3, '12', '09', '2019', '2019-09-12'),
(249, '185.6.9.220', 2, '13', '09', '2019', '2019-09-13'),
(250, '54.202.175.10', 1, '13', '09', '2019', '2019-09-13'),
(251, '51.255.109.162', 1, '13', '09', '2019', '2019-09-13'),
(252, '51.255.109.174', 1, '13', '09', '2019', '2019-09-13'),
(253, '66.249.69.2', 1, '13', '09', '2019', '2019-09-13'),
(254, '66.249.69.47', 2, '13', '09', '2019', '2019-09-13'),
(255, '54.187.38.144', 1, '13', '09', '2019', '2019-09-13'),
(256, '209.17.96.2', 1, '13', '09', '2019', '2019-09-13'),
(257, '34.74.127.57', 2, '13', '09', '2019', '2019-09-13'),
(258, '111.7.100.27', 1, '13', '09', '2019', '2019-09-13'),
(259, '111.7.100.26', 1, '13', '09', '2019', '2019-09-13'),
(260, '178.154.200.59', 1, '13', '09', '2019', '2019-09-13'),
(261, '82.202.161.133', 1, '13', '09', '2019', '2019-09-13'),
(262, '66.249.69.30', 1, '13', '09', '2019', '2019-09-13'),
(263, '209.17.96.58', 1, '13', '09', '2019', '2019-09-13'),
(264, '35.227.71.100', 3, '13', '09', '2019', '2019-09-13'),
(265, '35.227.71.100', 9, '14', '09', '2019', '2019-09-14'),
(266, '138.246.253.5', 2, '14', '09', '2019', '2019-09-14'),
(267, '34.73.114.172', 12, '14', '09', '2019', '2019-09-14'),
(268, '35.227.13.35', 12, '14', '09', '2019', '2019-09-14'),
(269, '209.17.96.114', 1, '14', '09', '2019', '2019-09-14'),
(270, '137.226.113.26', 1, '14', '09', '2019', '2019-09-14'),
(271, '137.226.113.28', 1, '14', '09', '2019', '2019-09-14'),
(272, '66.102.7.174', 1, '14', '09', '2019', '2019-09-14'),
(273, '18.237.62.22', 1, '14', '09', '2019', '2019-09-14'),
(274, '209.17.97.58', 1, '14', '09', '2019', '2019-09-14'),
(275, '34.211.227.193', 1, '14', '09', '2019', '2019-09-14'),
(276, '209.17.97.66', 1, '14', '09', '2019', '2019-09-14'),
(277, '60.191.38.77', 3, '14', '09', '2019', '2019-09-14'),
(278, '66.249.64.75', 1, '14', '09', '2019', '2019-09-14'),
(279, '5.188.62.5', 1, '14', '09', '2019', '2019-09-14'),
(280, '192.162.101.55', 1, '14', '09', '2019', '2019-09-14'),
(281, '66.249.64.215', 1, '14', '09', '2019', '2019-09-14'),
(282, '35.237.189.101', 2, '14', '09', '2019', '2019-09-14'),
(283, '66.249.64.79', 1, '14', '09', '2019', '2019-09-14'),
(284, '66.249.64.81', 1, '14', '09', '2019', '2019-09-14'),
(285, '35.231.69.25', 12, '15', '09', '2019', '2019-09-15'),
(286, '35.237.54.139', 12, '15', '09', '2019', '2019-09-15'),
(287, '35.231.26.96', 12, '15', '09', '2019', '2019-09-15'),
(288, '34.202.159.50', 1, '15', '09', '2019', '2019-09-15'),
(289, '5.188.62.5', 1, '15', '09', '2019', '2019-09-15'),
(290, '66.249.64.79', 1, '15', '09', '2019', '2019-09-15'),
(291, '34.220.89.38', 1, '15', '09', '2019', '2019-09-15'),
(292, '89.163.242.78', 1, '15', '09', '2019', '2019-09-15'),
(293, '178.154.200.59', 1, '15', '09', '2019', '2019-09-15'),
(294, '66.249.64.77', 1, '15', '09', '2019', '2019-09-15'),
(295, '66.249.64.211', 1, '15', '09', '2019', '2019-09-15'),
(296, '35.231.239.40', 12, '15', '09', '2019', '2019-09-15'),
(297, '136.243.37.219', 11, '15', '09', '2019', '2019-09-15'),
(298, '66.249.64.81', 1, '15', '09', '2019', '2019-09-15'),
(299, '54.218.143.13', 1, '15', '09', '2019', '2019-09-15'),
(300, '148.251.120.201', 3, '15', '09', '2019', '2019-09-15'),
(301, '66.249.64.75', 1, '15', '09', '2019', '2019-09-15'),
(302, '66.249.64.215', 1, '15', '09', '2019', '2019-09-15'),
(303, '45.66.32.45', 2, '15', '09', '2019', '2019-09-15'),
(304, '179.43.146.230', 2, '15', '09', '2019', '2019-09-15'),
(305, '35.231.164.98', 12, '16', '09', '2019', '2019-09-16'),
(306, '193.70.34.209', 1, '16', '09', '2019', '2019-09-16'),
(307, '54.213.142.24', 1, '16', '09', '2019', '2019-09-16'),
(308, '54.188.148.178', 1, '16', '09', '2019', '2019-09-16'),
(309, '185.137.234.20', 1, '16', '09', '2019', '2019-09-16'),
(310, '64.246.165.10', 1, '16', '09', '2019', '2019-09-16'),
(311, '66.249.93.16', 1, '16', '09', '2019', '2019-09-16'),
(312, '34.74.215.198', 1, '16', '09', '2019', '2019-09-16'),
(313, '54.184.200.49', 1, '16', '09', '2019', '2019-09-16'),
(314, '157.55.39.175', 1, '16', '09', '2019', '2019-09-16'),
(315, '66.249.66.209', 1, '16', '09', '2019', '2019-09-16'),
(316, '66.249.66.53', 1, '16', '09', '2019', '2019-09-16'),
(317, '66.249.66.203', 1, '16', '09', '2019', '2019-09-16'),
(318, '158.69.113.140', 2, '16', '09', '2019', '2019-09-16'),
(319, '82.202.161.133', 1, '16', '09', '2019', '2019-09-16'),
(320, '51.15.191.81', 1, '16', '09', '2019', '2019-09-16'),
(321, '35.237.19.109', 13, '16', '09', '2019', '2019-09-16'),
(322, '195.154.61.206', 1, '16', '09', '2019', '2019-09-16'),
(323, '35.190.136.204', 13, '16', '09', '2019', '2019-09-16'),
(324, '51.15.191.81', 1, '17', '09', '2019', '2019-09-17'),
(325, '62.4.14.198', 1, '17', '09', '2019', '2019-09-17'),
(326, '66.249.73.141', 3, '17', '09', '2019', '2019-09-17'),
(327, '66.249.73.145', 6, '17', '09', '2019', '2019-09-17'),
(328, '66.249.73.143', 6, '17', '09', '2019', '2019-09-17'),
(329, '178.154.200.59', 2, '17', '09', '2019', '2019-09-17'),
(330, '54.214.130.158', 1, '17', '09', '2019', '2019-09-17'),
(331, '62.210.83.78', 1, '17', '09', '2019', '2019-09-17'),
(332, '80.248.227.208', 1, '17', '09', '2019', '2019-09-17'),
(333, '40.77.167.129', 1, '17', '09', '2019', '2019-09-17'),
(334, '35.203.245.184', 1, '17', '09', '2019', '2019-09-17'),
(335, '104.132.20.84', 4, '17', '09', '2019', '2019-09-17'),
(336, '209.17.96.226', 1, '17', '09', '2019', '2019-09-17'),
(337, '185.6.8.9', 16, '17', '09', '2019', '2019-09-17'),
(338, '35.227.82.50', 2, '17', '09', '2019', '2019-09-17'),
(339, '34.74.181.41', 12, '18', '09', '2019', '2019-09-18'),
(340, '66.249.79.205', 2, '18', '09', '2019', '2019-09-18'),
(341, '51.255.109.173', 2, '18', '09', '2019', '2019-09-18'),
(342, '86.51.46.20', 1, '18', '09', '2019', '2019-09-18'),
(343, '66.249.79.117', 1, '18', '09', '2019', '2019-09-18'),
(344, '66.249.79.201', 1, '18', '09', '2019', '2019-09-18'),
(345, '66.249.79.207', 2, '18', '09', '2019', '2019-09-18'),
(346, '81.150.7.48', 36, '18', '09', '2019', '2019-09-18'),
(347, '209.17.96.250', 1, '18', '09', '2019', '2019-09-18'),
(348, '157.55.39.54', 1, '18', '09', '2019', '2019-09-18'),
(349, '35.196.8.11', 2, '18', '09', '2019', '2019-09-18'),
(350, '66.249.79.209', 1, '18', '09', '2019', '2019-09-18'),
(351, '34.220.72.206', 1, '18', '09', '2019', '2019-09-18'),
(352, '209.17.96.178', 1, '18', '09', '2019', '2019-09-18'),
(353, '178.154.200.59', 2, '18', '09', '2019', '2019-09-18'),
(354, '60.191.38.77', 6, '18', '09', '2019', '2019-09-18'),
(355, '34.74.91.251', 12, '18', '09', '2019', '2019-09-18'),
(356, '137.226.113.28', 1, '18', '09', '2019', '2019-09-18'),
(357, '92.63.111.27', 1, '18', '09', '2019', '2019-09-18'),
(358, '178.154.200.59', 6, '19', '09', '2019', '2019-09-19'),
(359, '95.108.213.26', 2, '19', '09', '2019', '2019-09-19'),
(360, '93.178.3.131', 3, '19', '09', '2019', '2019-09-19'),
(361, '111.7.100.24', 2, '19', '09', '2019', '2019-09-19'),
(362, '86.51.46.20', 1, '19', '09', '2019', '2019-09-19'),
(363, '37.126.203.81', 1, '19', '09', '2019', '2019-09-19'),
(364, '37.106.81.249', 3, '19', '09', '2019', '2019-09-19'),
(365, '141.8.183.14', 1, '19', '09', '2019', '2019-09-19'),
(366, '52.38.54.10', 1, '19', '09', '2019', '2019-09-19'),
(367, '104.156.231.254', 1, '19', '09', '2019', '2019-09-19'),
(368, '179.61.176.53', 1, '19', '09', '2019', '2019-09-19'),
(369, '103.249.89.232', 1, '19', '09', '2019', '2019-09-19'),
(370, '51.255.109.164', 1, '19', '09', '2019', '2019-09-19'),
(371, '51.255.109.160', 1, '19', '09', '2019', '2019-09-19'),
(372, '66.249.76.48', 1, '19', '09', '2019', '2019-09-19'),
(373, '66.249.76.139', 1, '19', '09', '2019', '2019-09-19'),
(374, '34.74.107.170', 2, '19', '09', '2019', '2019-09-19'),
(375, '66.249.76.143', 1, '19', '09', '2019', '2019-09-19'),
(376, '66.249.69.45', 1, '19', '09', '2019', '2019-09-19'),
(377, '37.59.47.17', 4, '20', '09', '2019', '2019-09-20'),
(378, '35.231.106.134', 12, '20', '09', '2019', '2019-09-20'),
(379, '178.154.200.59', 2, '20', '09', '2019', '2019-09-20'),
(380, '52.37.192.16', 1, '20', '09', '2019', '2019-09-20'),
(381, '66.249.76.48', 1, '20', '09', '2019', '2019-09-20'),
(382, '66.249.76.139', 1, '20', '09', '2019', '2019-09-20'),
(383, '66.249.76.145', 1, '20', '09', '2019', '2019-09-20'),
(384, '104.248.199.217', 1, '20', '09', '2019', '2019-09-20'),
(385, '66.249.76.137', 1, '20', '09', '2019', '2019-09-20'),
(386, '66.249.76.47', 1, '20', '09', '2019', '2019-09-20'),
(387, '35.231.64.170', 2, '20', '09', '2019', '2019-09-20'),
(388, '209.17.96.2', 1, '20', '09', '2019', '2019-09-20'),
(389, '35.196.19.163', 12, '20', '09', '2019', '2019-09-20'),
(390, '66.249.76.141', 1, '20', '09', '2019', '2019-09-20'),
(391, '209.17.96.42', 1, '21', '09', '2019', '2019-09-21'),
(392, '14.142.64.3', 4, '21', '09', '2019', '2019-09-21'),
(393, '137.226.113.28', 2, '21', '09', '2019', '2019-09-21'),
(394, '52.33.73.62', 1, '21', '09', '2019', '2019-09-21'),
(395, '34.212.226.73', 1, '21', '09', '2019', '2019-09-21'),
(396, '66.249.76.143', 1, '21', '09', '2019', '2019-09-21'),
(397, '34.212.213.148', 1, '21', '09', '2019', '2019-09-21'),
(398, '52.27.163.70', 1, '21', '09', '2019', '2019-09-21'),
(399, '66.249.76.141', 1, '21', '09', '2019', '2019-09-21'),
(400, '178.154.200.59', 1, '21', '09', '2019', '2019-09-21'),
(401, '66.249.76.49', 1, '21', '09', '2019', '2019-09-21'),
(402, '35.237.255.21', 2, '21', '09', '2019', '2019-09-21'),
(403, '95.108.213.26', 1, '21', '09', '2019', '2019-09-21'),
(404, '35.196.92.174', 12, '21', '09', '2019', '2019-09-21'),
(405, '66.249.76.145', 1, '22', '09', '2019', '2019-09-22'),
(406, '66.249.76.49', 3, '22', '09', '2019', '2019-09-22'),
(407, '178.154.200.59', 1, '22', '09', '2019', '2019-09-22'),
(408, '95.78.174.216', 1, '22', '09', '2019', '2019-09-22'),
(409, '35.227.92.58', 12, '22', '09', '2019', '2019-09-22'),
(410, '95.216.16.51', 1, '22', '09', '2019', '2019-09-22'),
(411, '157.55.39.191', 1, '22', '09', '2019', '2019-09-22'),
(412, '54.70.197.78', 1, '22', '09', '2019', '2019-09-22'),
(413, '40.77.167.68', 1, '22', '09', '2019', '2019-09-22'),
(414, '35.231.247.224', 12, '22', '09', '2019', '2019-09-22'),
(415, '60.191.38.77', 5, '23', '09', '2019', '2019-09-23'),
(416, '54.190.100.136', 1, '23', '09', '2019', '2019-09-23'),
(417, '66.249.76.47', 2, '23', '09', '2019', '2019-09-23'),
(418, '35.185.12.219', 14, '23', '09', '2019', '2019-09-23'),
(419, '137.226.113.26', 1, '23', '09', '2019', '2019-09-23'),
(420, '40.77.167.105', 1, '23', '09', '2019', '2019-09-23'),
(421, '209.17.97.42', 1, '24', '09', '2019', '2019-09-24'),
(422, '66.249.76.48', 4, '24', '09', '2019', '2019-09-24'),
(423, '18.236.255.63', 1, '24', '09', '2019', '2019-09-24'),
(424, '35.231.164.98', 2, '24', '09', '2019', '2019-09-24'),
(425, '209.17.97.66', 1, '24', '09', '2019', '2019-09-24'),
(426, '54.148.122.157', 1, '24', '09', '2019', '2019-09-24'),
(427, '35.231.153.251', 12, '24', '09', '2019', '2019-09-24'),
(428, '178.154.200.59', 1, '25', '09', '2019', '2019-09-25'),
(429, '207.46.13.96', 1, '25', '09', '2019', '2019-09-25'),
(430, '52.26.17.92', 1, '25', '09', '2019', '2019-09-25'),
(431, '167.71.36.92', 1, '25', '09', '2019', '2019-09-25'),
(432, '51.15.78.133', 1, '25', '09', '2019', '2019-09-25'),
(433, '209.17.97.58', 1, '25', '09', '2019', '2019-09-25'),
(434, '45.93.20.4', 1, '25', '09', '2019', '2019-09-25'),
(435, '209.17.97.114', 1, '25', '09', '2019', '2019-09-25'),
(436, '34.74.91.251', 2, '25', '09', '2019', '2019-09-25'),
(437, '35.231.153.251', 2, '25', '09', '2019', '2019-09-25'),
(438, '34.74.255.105', 12, '25', '09', '2019', '2019-09-25'),
(439, '34.208.117.6', 1, '25', '09', '2019', '2019-09-25'),
(440, '66.249.76.137', 1, '25', '09', '2019', '2019-09-25'),
(441, '66.249.76.49', 2, '26', '09', '2019', '2019-09-26'),
(442, '66.249.76.145', 1, '26', '09', '2019', '2019-09-26'),
(443, '60.191.38.77', 3, '26', '09', '2019', '2019-09-26'),
(444, '178.154.200.59', 1, '26', '09', '2019', '2019-09-26'),
(445, '34.244.219.27', 1, '26', '09', '2019', '2019-09-26'),
(446, '109.235.67.128', 1, '26', '09', '2019', '2019-09-26'),
(447, '35.231.92.7', 2, '26', '09', '2019', '2019-09-26'),
(448, '45.243.255.144', 1, '26', '09', '2019', '2019-09-26'),
(449, '66.249.76.137', 1, '26', '09', '2019', '2019-09-26'),
(450, '35.227.63.250', 12, '26', '09', '2019', '2019-09-26'),
(451, '89.185.76.152', 1, '26', '09', '2019', '2019-09-26'),
(452, '185.24.233.80', 1, '26', '09', '2019', '2019-09-26'),
(453, '35.196.184.210', 12, '26', '09', '2019', '2019-09-26'),
(454, '138.246.253.5', 1, '26', '09', '2019', '2019-09-26'),
(455, '18.236.176.151', 1, '26', '09', '2019', '2019-09-26'),
(456, '66.249.64.79', 1, '27', '09', '2019', '2019-09-27'),
(457, '54.218.101.145', 1, '27', '09', '2019', '2019-09-27'),
(458, '54.149.83.168', 1, '27', '09', '2019', '2019-09-27'),
(459, '178.154.200.59', 2, '27', '09', '2019', '2019-09-27'),
(460, '95.108.213.26', 2, '27', '09', '2019', '2019-09-27'),
(461, '173.252.95.20', 1, '27', '09', '2019', '2019-09-27'),
(462, '138.246.253.5', 1, '27', '09', '2019', '2019-09-27'),
(463, '209.17.96.114', 1, '27', '09', '2019', '2019-09-27'),
(464, '35.185.12.219', 2, '27', '09', '2019', '2019-09-27'),
(465, '66.249.64.73', 1, '27', '09', '2019', '2019-09-27'),
(466, '66.249.64.211', 1, '27', '09', '2019', '2019-09-27'),
(467, '207.46.13.44', 1, '27', '09', '2019', '2019-09-27'),
(468, '35.237.177.144', 12, '27', '09', '2019', '2019-09-27'),
(469, '95.184.159.202', 1, '27', '09', '2019', '2019-09-27'),
(470, '34.74.6.88', 6, '27', '09', '2019', '2019-09-27'),
(471, '34.74.6.88', 6, '28', '09', '2019', '2019-09-28'),
(472, '46.105.127.166', 2, '28', '09', '2019', '2019-09-28'),
(473, '35.237.159.31', 12, '28', '09', '2019', '2019-09-28'),
(474, '209.17.96.122', 1, '28', '09', '2019', '2019-09-28'),
(475, '66.249.64.79', 2, '28', '09', '2019', '2019-09-28'),
(476, '137.226.113.27', 2, '28', '09', '2019', '2019-09-28'),
(477, '137.226.113.28', 1, '28', '09', '2019', '2019-09-28'),
(478, '66.249.64.75', 2, '28', '09', '2019', '2019-09-28'),
(479, '66.249.64.213', 2, '28', '09', '2019', '2019-09-28'),
(480, '54.189.122.186', 1, '28', '09', '2019', '2019-09-28'),
(481, '54.191.223.40', 1, '28', '09', '2019', '2019-09-28'),
(482, '207.46.13.72', 1, '28', '09', '2019', '2019-09-28'),
(483, '35.196.232.32', 12, '28', '09', '2019', '2019-09-28'),
(484, '35.190.173.123', 12, '28', '09', '2019', '2019-09-28'),
(485, '172.241.83.74', 1, '28', '09', '2019', '2019-09-28'),
(486, '52.11.94.217', 10, '28', '09', '2019', '2019-09-28'),
(487, '92.63.111.27', 1, '28', '09', '2019', '2019-09-28'),
(488, '66.249.64.81', 1, '28', '09', '2019', '2019-09-28'),
(489, '209.17.97.2', 1, '28', '09', '2019', '2019-09-28'),
(490, '35.190.188.151', 2, '28', '09', '2019', '2019-09-28'),
(491, '178.154.200.59', 1, '28', '09', '2019', '2019-09-28'),
(492, '45.93.20.4', 2, '29', '09', '2019', '2019-09-29'),
(493, '66.249.64.211', 2, '29', '09', '2019', '2019-09-29'),
(494, '34.219.194.165', 1, '29', '09', '2019', '2019-09-29'),
(495, '34.73.245.20', 12, '29', '09', '2019', '2019-09-29'),
(496, '136.243.37.219', 1, '29', '09', '2019', '2019-09-29'),
(497, '66.249.64.73', 1, '29', '09', '2019', '2019-09-29'),
(498, '51.68.152.26', 1, '29', '09', '2019', '2019-09-29'),
(499, '138.246.253.5', 1, '29', '09', '2019', '2019-09-29'),
(500, '178.154.200.59', 2, '29', '09', '2019', '2019-09-29'),
(501, '95.108.213.26', 1, '29', '09', '2019', '2019-09-29'),
(502, '66.249.64.79', 1, '29', '09', '2019', '2019-09-29'),
(503, '75.126.154.10', 1, '29', '09', '2019', '2019-09-29'),
(504, '188.166.114.112', 3, '29', '09', '2019', '2019-09-29'),
(505, '66.249.64.73', 1, '30', '09', '2019', '2019-09-30'),
(506, '207.46.13.221', 2, '30', '09', '2019', '2019-09-30'),
(507, '178.154.200.59', 1, '30', '09', '2019', '2019-09-30'),
(508, '35.160.31.209', 1, '30', '09', '2019', '2019-09-30'),
(509, '95.108.213.26', 1, '30', '09', '2019', '2019-09-30'),
(510, '104.192.74.202', 16, '30', '09', '2019', '2019-09-30'),
(511, '66.249.64.75', 2, '30', '09', '2019', '2019-09-30'),
(512, '54.187.170.110', 1, '30', '09', '2019', '2019-09-30'),
(513, '34.219.44.186', 1, '30', '09', '2019', '2019-09-30'),
(514, '66.249.64.77', 2, '30', '09', '2019', '2019-09-30'),
(515, '66.249.64.79', 2, '30', '09', '2019', '2019-09-30'),
(516, '35.185.12.219', 2, '30', '09', '2019', '2019-09-30'),
(517, '66.249.64.81', 1, '30', '09', '2019', '2019-09-30'),
(518, '34.73.105.148', 6, '30', '09', '2019', '2019-09-30'),
(519, '34.73.105.148', 6, '01', '10', '2019', '2019-10-01'),
(520, '66.249.64.81', 2, '01', '10', '2019', '2019-10-01'),
(521, '5.9.154.69', 1, '01', '10', '2019', '2019-10-01'),
(522, '66.249.66.201', 2, '01', '10', '2019', '2019-10-01'),
(523, '54.186.31.186', 1, '01', '10', '2019', '2019-10-01'),
(524, '54.244.139.146', 1, '01', '10', '2019', '2019-10-01'),
(525, '66.249.66.205', 3, '01', '10', '2019', '2019-10-01'),
(526, '66.249.66.209', 5, '01', '10', '2019', '2019-10-01'),
(527, '35.237.218.248', 2, '01', '10', '2019', '2019-10-01'),
(528, '139.198.19.213', 1, '01', '10', '2019', '2019-10-01'),
(529, '66.249.66.203', 1, '01', '10', '2019', '2019-10-01'),
(530, '94.21.92.42', 1, '01', '10', '2019', '2019-10-01'),
(531, '34.73.142.213', 12, '01', '10', '2019', '2019-10-01'),
(532, '35.196.36.50', 12, '01', '10', '2019', '2019-10-01'),
(533, '157.55.39.169', 1, '01', '10', '2019', '2019-10-01'),
(534, '66.249.66.207', 2, '01', '10', '2019', '2019-10-01'),
(535, '193.70.34.209', 1, '01', '10', '2019', '2019-10-01'),
(536, '66.249.66.205', 3, '02', '10', '2019', '2019-10-02'),
(537, '66.249.66.209', 6, '02', '10', '2019', '2019-10-02'),
(538, '66.249.66.207', 3, '02', '10', '2019', '2019-10-02'),
(539, '54.187.197.206', 1, '02', '10', '2019', '2019-10-02'),
(540, '66.249.66.203', 1, '02', '10', '2019', '2019-10-02'),
(541, '35.231.164.98', 12, '02', '10', '2019', '2019-10-02'),
(542, '34.210.86.92', 1, '02', '10', '2019', '2019-10-02'),
(543, '34.222.155.31', 1, '02', '10', '2019', '2019-10-02'),
(544, '92.245.104.154', 1, '02', '10', '2019', '2019-10-02'),
(545, '209.17.96.82', 1, '02', '10', '2019', '2019-10-02'),
(546, '89.163.242.62', 1, '02', '10', '2019', '2019-10-02'),
(547, '54.203.5.12', 2, '02', '10', '2019', '2019-10-02'),
(548, '34.217.29.66', 1, '02', '10', '2019', '2019-10-02'),
(549, '209.17.97.82', 1, '02', '10', '2019', '2019-10-02'),
(550, '35.229.86.127', 2, '02', '10', '2019', '2019-10-02'),
(551, '54.190.79.53', 1, '02', '10', '2019', '2019-10-02'),
(552, '35.196.4.10', 12, '02', '10', '2019', '2019-10-02'),
(553, '66.249.73.141', 1, '02', '10', '2019', '2019-10-02'),
(554, '119.29.82.153', 1, '03', '10', '2019', '2019-10-03'),
(555, '213.159.213.137', 1, '03', '10', '2019', '2019-10-03'),
(556, '66.249.73.139', 1, '03', '10', '2019', '2019-10-03'),
(557, '66.249.73.141', 1, '03', '10', '2019', '2019-10-03'),
(558, '54.190.116.199', 1, '03', '10', '2019', '2019-10-03'),
(559, '66.249.73.145', 2, '03', '10', '2019', '2019-10-03'),
(560, '197.37.92.132', 2, '03', '10', '2019', '2019-10-03'),
(561, '34.74.43.59', 2, '03', '10', '2019', '2019-10-03'),
(562, '35.231.153.251', 12, '03', '10', '2019', '2019-10-03'),
(563, '34.212.40.116', 1, '03', '10', '2019', '2019-10-03'),
(564, '66.249.66.53', 1, '03', '10', '2019', '2019-10-03'),
(565, '104.197.38.132', 1, '04', '10', '2019', '2019-10-04'),
(566, '66.249.66.203', 1, '04', '10', '2019', '2019-10-04'),
(567, '82.202.161.133', 1, '04', '10', '2019', '2019-10-04'),
(568, '148.251.78.18', 1, '04', '10', '2019', '2019-10-04'),
(569, '66.249.66.207', 1, '04', '10', '2019', '2019-10-04'),
(570, '66.249.66.209', 1, '04', '10', '2019', '2019-10-04'),
(571, '34.217.97.236', 1, '04', '10', '2019', '2019-10-04'),
(572, '178.154.200.59', 1, '04', '10', '2019', '2019-10-04'),
(573, '209.17.96.194', 1, '04', '10', '2019', '2019-10-04'),
(574, '35.166.86.253', 1, '04', '10', '2019', '2019-10-04'),
(575, '34.209.117.78', 2, '04', '10', '2019', '2019-10-04'),
(576, '37.1.218.99', 1, '04', '10', '2019', '2019-10-04'),
(577, '35.237.32.83', 1, '04', '10', '2019', '2019-10-04'),
(578, '35.227.18.236', 13, '05', '10', '2019', '2019-10-05'),
(579, '52.11.94.217', 6, '05', '10', '2019', '2019-10-05'),
(580, '52.11.94.217', 6, '05', '10', '2019', '2019-10-05'),
(581, '54.244.193.121', 2, '05', '10', '2019', '2019-10-05'),
(582, '137.226.113.27', 1, '05', '10', '2019', '2019-10-05'),
(583, '137.226.113.26', 2, '05', '10', '2019', '2019-10-05'),
(584, '34.210.127.225', 1, '05', '10', '2019', '2019-10-05'),
(585, '157.55.39.215', 1, '05', '10', '2019', '2019-10-05'),
(586, '66.249.66.51', 1, '05', '10', '2019', '2019-10-05'),
(587, '66.249.66.205', 3, '05', '10', '2019', '2019-10-05'),
(588, '192.99.15.139', 2, '05', '10', '2019', '2019-10-05'),
(589, '54.67.31.1', 1, '05', '10', '2019', '2019-10-05'),
(590, '35.196.8.11', 1, '05', '10', '2019', '2019-10-05'),
(591, '54.185.134.180', 1, '05', '10', '2019', '2019-10-05'),
(592, '54.212.193.204', 1, '05', '10', '2019', '2019-10-05'),
(593, '209.17.96.234', 1, '05', '10', '2019', '2019-10-05'),
(594, '34.73.245.20', 13, '05', '10', '2019', '2019-10-05'),
(595, '54.71.50.14', 2, '05', '10', '2019', '2019-10-05'),
(596, '54.202.22.48', 1, '05', '10', '2019', '2019-10-05'),
(597, '35.185.12.132', 13, '06', '10', '2019', '2019-10-06'),
(598, '66.249.66.209', 1, '06', '10', '2019', '2019-10-06'),
(599, '94.19.71.176', 1, '06', '10', '2019', '2019-10-06'),
(600, '54.213.7.42', 1, '06', '10', '2019', '2019-10-06'),
(601, '66.249.66.207', 2, '06', '10', '2019', '2019-10-06'),
(602, '193.25.101.187', 1, '06', '10', '2019', '2019-10-06'),
(603, '34.73.252.149', 2, '06', '10', '2019', '2019-10-06'),
(604, '54.200.251.194', 1, '06', '10', '2019', '2019-10-06'),
(605, '35.185.26.172', 12, '06', '10', '2019', '2019-10-06'),
(606, '34.212.24.87', 2, '06', '10', '2019', '2019-10-06'),
(607, '66.249.66.209', 1, '07', '10', '2019', '2019-10-07'),
(608, '34.73.124.93', 12, '07', '10', '2019', '2019-10-07'),
(609, '148.251.10.183', 1, '07', '10', '2019', '2019-10-07'),
(610, '35.243.150.124', 12, '07', '10', '2019', '2019-10-07'),
(611, '54.185.183.62', 1, '07', '10', '2019', '2019-10-07'),
(612, '35.160.217.24', 1, '07', '10', '2019', '2019-10-07'),
(613, '34.73.183.133', 2, '07', '10', '2019', '2019-10-07'),
(614, '42.106.253.240', 6, '07', '10', '2019', '2019-10-07'),
(615, '42.106.208.150', 1, '07', '10', '2019', '2019-10-07'),
(616, '34.221.173.167', 2, '07', '10', '2019', '2019-10-07'),
(617, '34.73.14.61', 12, '08', '10', '2019', '2019-10-08'),
(618, '148.251.69.139', 1, '08', '10', '2019', '2019-10-08'),
(619, '178.154.200.59', 1, '08', '10', '2019', '2019-10-08'),
(620, '18.236.92.26', 1, '08', '10', '2019', '2019-10-08'),
(621, '34.214.125.128', 1, '08', '10', '2019', '2019-10-08'),
(622, '35.237.211.38', 12, '08', '10', '2019', '2019-10-08'),
(623, '40.77.167.38', 1, '08', '10', '2019', '2019-10-08'),
(624, '199.244.88.125', 1, '08', '10', '2019', '2019-10-08'),
(625, '209.17.96.242', 1, '08', '10', '2019', '2019-10-08'),
(626, '129.78.110.131', 1, '08', '10', '2019', '2019-10-08'),
(627, '64.246.165.140', 1, '08', '10', '2019', '2019-10-08'),
(628, '167.99.125.158', 1, '08', '10', '2019', '2019-10-08'),
(629, '197.37.121.170', 1, '08', '10', '2019', '2019-10-08'),
(630, '209.17.96.74', 1, '08', '10', '2019', '2019-10-08'),
(631, '157.245.123.192', 1, '08', '10', '2019', '2019-10-08'),
(632, '157.245.209.0', 1, '08', '10', '2019', '2019-10-08'),
(633, '34.219.12.90', 1, '08', '10', '2019', '2019-10-08'),
(634, '60.191.38.77', 1, '08', '10', '2019', '2019-10-08'),
(635, '34.74.63.150', 2, '08', '10', '2019', '2019-10-08'),
(636, '142.4.218.236', 4, '08', '10', '2019', '2019-10-08'),
(637, '52.38.120.196', 2, '08', '10', '2019', '2019-10-08'),
(638, '209.17.96.122', 1, '08', '10', '2019', '2019-10-08'),
(639, '51.77.129.159', 1, '09', '10', '2019', '2019-10-09'),
(640, '45.55.48.146', 1, '09', '10', '2019', '2019-10-09'),
(641, '157.55.39.250', 1, '09', '10', '2019', '2019-10-09'),
(642, '142.93.70.220', 1, '09', '10', '2019', '2019-10-09'),
(643, '45.55.33.203', 1, '09', '10', '2019', '2019-10-09'),
(644, '35.227.32.76', 12, '09', '10', '2019', '2019-10-09'),
(645, '103.69.226.24', 5, '09', '10', '2019', '2019-10-09'),
(646, '178.154.200.59', 1, '09', '10', '2019', '2019-10-09'),
(647, '60.191.38.77', 1, '09', '10', '2019', '2019-10-09'),
(648, '18.237.220.203', 1, '09', '10', '2019', '2019-10-09'),
(649, '197.37.88.16', 2, '09', '10', '2019', '2019-10-09'),
(650, '18.236.225.177', 2, '09', '10', '2019', '2019-10-09'),
(651, '52.36.5.192', 1, '09', '10', '2019', '2019-10-09'),
(652, '181.215.204.92', 1, '10', '10', '2019', '2019-10-10'),
(653, '157.55.39.185', 2, '10', '10', '2019', '2019-10-10'),
(654, '35.163.209.188', 1, '10', '10', '2019', '2019-10-10'),
(655, '34.73.220.107', 2, '10', '10', '2019', '2019-10-10'),
(656, '144.76.56.124', 1, '10', '10', '2019', '2019-10-10'),
(657, '138.246.253.5', 2, '10', '10', '2019', '2019-10-10'),
(658, '197.37.182.101', 1, '10', '10', '2019', '2019-10-10'),
(659, '34.74.99.133', 12, '10', '10', '2019', '2019-10-10'),
(660, '40.77.167.155', 1, '10', '10', '2019', '2019-10-10'),
(661, '52.11.76.224', 1, '10', '10', '2019', '2019-10-10'),
(662, '35.185.12.219', 12, '10', '10', '2019', '2019-10-10'),
(663, '54.185.148.35', 2, '10', '10', '2019', '2019-10-10'),
(664, '209.17.96.210', 1, '11', '10', '2019', '2019-10-11'),
(665, '34.220.122.240', 1, '11', '10', '2019', '2019-10-11'),
(666, '138.68.180.18', 4, '11', '10', '2019', '2019-10-11'),
(667, '60.191.38.77', 6, '11', '10', '2019', '2019-10-11'),
(668, '60.191.38.77', 6, '11', '10', '2019', '2019-10-11'),
(669, '209.17.96.130', 1, '11', '10', '2019', '2019-10-11'),
(670, '34.221.133.156', 1, '11', '10', '2019', '2019-10-11'),
(671, '34.222.253.165', 1, '11', '10', '2019', '2019-10-11'),
(672, '209.17.96.50', 1, '11', '10', '2019', '2019-10-11'),
(673, '34.221.100.204', 2, '11', '10', '2019', '2019-10-11'),
(674, '66.249.69.41', 1, '12', '10', '2019', '2019-10-12'),
(675, '176.249.231.173', 4, '12', '10', '2019', '2019-10-12'),
(676, '137.226.113.28', 1, '12', '10', '2019', '2019-10-12'),
(677, '137.226.113.26', 1, '12', '10', '2019', '2019-10-12'),
(678, '52.26.169.39', 1, '12', '10', '2019', '2019-10-12'),
(679, '18.237.195.159', 1, '12', '10', '2019', '2019-10-12'),
(680, '138.246.253.5', 1, '12', '10', '2019', '2019-10-12'),
(681, '5.9.156.20', 1, '12', '10', '2019', '2019-10-12'),
(682, '35.166.204.138', 1, '12', '10', '2019', '2019-10-12'),
(683, '209.17.96.74', 1, '12', '10', '2019', '2019-10-12'),
(684, '34.216.129.137', 2, '12', '10', '2019', '2019-10-12'),
(685, '66.249.69.83', 1, '12', '10', '2019', '2019-10-12'),
(686, '35.237.124.3', 2, '13', '10', '2019', '2019-10-13'),
(687, '54.202.145.204', 1, '13', '10', '2019', '2019-10-13'),
(688, '54.202.31.87', 1, '13', '10', '2019', '2019-10-13'),
(689, '35.190.159.41', 12, '13', '10', '2019', '2019-10-13'),
(690, '143.137.167.191', 1, '13', '10', '2019', '2019-10-13'),
(691, '52.10.42.27', 1, '13', '10', '2019', '2019-10-13'),
(692, '66.249.69.47', 5, '13', '10', '2019', '2019-10-13'),
(693, '35.196.128.94', 12, '13', '10', '2019', '2019-10-13'),
(694, '34.221.83.199', 2, '13', '10', '2019', '2019-10-13'),
(695, '66.249.69.45', 3, '13', '10', '2019', '2019-10-13'),
(696, '66.249.69.47', 1, '14', '10', '2019', '2019-10-14'),
(697, '66.249.69.45', 1, '14', '10', '2019', '2019-10-14'),
(698, '66.249.69.49', 2, '14', '10', '2019', '2019-10-14'),
(699, '66.249.64.207', 38, '14', '10', '2019', '2019-10-14'),
(700, '66.249.64.209', 36, '14', '10', '2019', '2019-10-14'),
(701, '66.249.64.205', 44, '14', '10', '2019', '2019-10-14'),
(702, '157.55.39.228', 1, '14', '10', '2019', '2019-10-14'),
(703, '66.249.79.209', 1, '14', '10', '2019', '2019-10-14'),
(704, '35.190.128.83', 2, '14', '10', '2019', '2019-10-14'),
(705, '82.202.161.133', 1, '14', '10', '2019', '2019-10-14'),
(706, '54.185.179.97', 1, '14', '10', '2019', '2019-10-14'),
(707, '34.220.194.145', 2, '14', '10', '2019', '2019-10-14'),
(708, '35.231.153.251', 12, '14', '10', '2019', '2019-10-14'),
(709, '66.249.64.209', 3, '15', '10', '2019', '2019-10-15'),
(710, '66.249.64.205', 3, '15', '10', '2019', '2019-10-15'),
(711, '66.249.66.207', 33, '15', '10', '2019', '2019-10-15'),
(712, '66.249.66.205', 42, '15', '10', '2019', '2019-10-15'),
(713, '66.249.66.209', 33, '15', '10', '2019', '2019-10-15'),
(714, '89.163.242.239', 15, '15', '10', '2019', '2019-10-15'),
(715, '54.245.133.139', 1, '15', '10', '2019', '2019-10-15'),
(716, '157.55.39.94', 1, '15', '10', '2019', '2019-10-15'),
(717, '209.17.96.234', 1, '15', '10', '2019', '2019-10-15'),
(718, '54.245.213.148', 1, '15', '10', '2019', '2019-10-15'),
(719, '54.244.164.103', 1, '15', '10', '2019', '2019-10-15'),
(720, '209.17.96.194', 1, '15', '10', '2019', '2019-10-15'),
(721, '54.188.25.10', 2, '15', '10', '2019', '2019-10-15'),
(722, '34.212.35.41', 1, '16', '10', '2019', '2019-10-16'),
(723, '178.154.200.59', 2, '16', '10', '2019', '2019-10-16'),
(724, '95.108.213.26', 1, '16', '10', '2019', '2019-10-16'),
(725, '157.55.39.158', 1, '16', '10', '2019', '2019-10-16'),
(726, '34.220.14.178', 1, '16', '10', '2019', '2019-10-16'),
(727, '35.243.145.223', 2, '16', '10', '2019', '2019-10-16'),
(728, '209.17.96.162', 2, '16', '10', '2019', '2019-10-16'),
(729, '34.220.117.10', 2, '16', '10', '2019', '2019-10-16'),
(730, '191.101.97.237', 1, '17', '10', '2019', '2019-10-17'),
(731, '5.188.62.5', 1, '17', '10', '2019', '2019-10-17'),
(732, '35.237.201.221', 12, '17', '10', '2019', '2019-10-17'),
(733, '106.201.22.35', 2, '17', '10', '2019', '2019-10-17'),
(734, '170.247.43.142', 1, '17', '10', '2019', '2019-10-17'),
(735, '190.14.252.107', 2, '17', '10', '2019', '2019-10-17'),
(736, '92.63.111.27', 1, '17', '10', '2019', '2019-10-17'),
(737, '104.132.20.88', 1, '17', '10', '2019', '2019-10-17'),
(738, '104.132.20.78', 1, '17', '10', '2019', '2019-10-17'),
(739, '54.202.136.50', 2, '17', '10', '2019', '2019-10-17'),
(740, '141.8.142.115', 1, '18', '10', '2019', '2019-10-18'),
(741, '141.8.189.1', 1, '18', '10', '2019', '2019-10-18'),
(742, '37.9.113.175', 1, '18', '10', '2019', '2019-10-18'),
(743, '178.154.200.59', 1, '18', '10', '2019', '2019-10-18'),
(744, '35.185.83.17', 12, '18', '10', '2019', '2019-10-18'),
(745, '52.11.213.19', 1, '18', '10', '2019', '2019-10-18'),
(746, '148.251.22.75', 1, '18', '10', '2019', '2019-10-18'),
(747, '209.17.96.218', 1, '18', '10', '2019', '2019-10-18'),
(748, '35.185.103.237', 2, '18', '10', '2019', '2019-10-18'),
(749, '52.13.32.174', 1, '18', '10', '2019', '2019-10-18'),
(750, '207.46.13.141', 1, '18', '10', '2019', '2019-10-18'),
(751, '137.226.113.26', 1, '18', '10', '2019', '2019-10-18'),
(752, '52.38.66.207', 1, '18', '10', '2019', '2019-10-18'),
(753, '54.68.170.202', 1, '18', '10', '2019', '2019-10-18'),
(754, '157.55.39.250', 1, '18', '10', '2019', '2019-10-18'),
(755, '104.132.20.104', 3, '18', '10', '2019', '2019-10-18'),
(756, '34.73.177.60', 12, '18', '10', '2019', '2019-10-18'),
(757, '35.190.176.32', 12, '18', '10', '2019', '2019-10-18'),
(758, '34.220.120.249', 2, '18', '10', '2019', '2019-10-18'),
(759, '60.191.38.77', 2, '19', '10', '2019', '2019-10-19'),
(760, '106.54.254.17', 1, '19', '10', '2019', '2019-10-19'),
(761, '137.226.113.28', 1, '19', '10', '2019', '2019-10-19'),
(762, '35.243.201.96', 12, '19', '10', '2019', '2019-10-19'),
(763, '207.46.13.114', 1, '19', '10', '2019', '2019-10-19'),
(764, '209.17.97.10', 1, '19', '10', '2019', '2019-10-19'),
(765, '34.210.210.179', 1, '19', '10', '2019', '2019-10-19'),
(766, '52.42.203.17', 1, '19', '10', '2019', '2019-10-19'),
(767, '173.211.79.231', 1, '19', '10', '2019', '2019-10-19'),
(768, '34.217.83.4', 2, '19', '10', '2019', '2019-10-19'),
(769, '35.196.19.163', 12, '19', '10', '2019', '2019-10-19'),
(770, '66.249.69.45', 4, '20', '10', '2019', '2019-10-20'),
(771, '66.249.69.49', 3, '20', '10', '2019', '2019-10-20'),
(772, '66.249.69.47', 4, '20', '10', '2019', '2019-10-20'),
(773, '157.55.39.85', 1, '20', '10', '2019', '2019-10-20'),
(774, '27.79.189.8', 3, '20', '10', '2019', '2019-10-20'),
(775, '34.73.201.80', 2, '20', '10', '2019', '2019-10-20'),
(776, '52.42.26.3', 1, '20', '10', '2019', '2019-10-20'),
(777, '192.162.101.55', 1, '20', '10', '2019', '2019-10-20'),
(778, '66.249.75.151', 1, '20', '10', '2019', '2019-10-20'),
(779, '34.208.168.15', 2, '20', '10', '2019', '2019-10-20'),
(780, '34.74.106.18', 3, '20', '10', '2019', '2019-10-20'),
(781, '34.74.106.18', 9, '21', '10', '2019', '2019-10-21'),
(782, '66.249.69.45', 3, '21', '10', '2019', '2019-10-21'),
(783, '35.229.41.67', 12, '21', '10', '2019', '2019-10-21'),
(784, '34.74.101.122', 12, '21', '10', '2019', '2019-10-21'),
(785, '197.37.174.5', 4, '21', '10', '2019', '2019-10-21'),
(786, '54.187.78.55', 2, '21', '10', '2019', '2019-10-21'),
(787, '77.222.99.214', 1, '21', '10', '2019', '2019-10-21'),
(788, '35.237.71.32', 12, '22', '10', '2019', '2019-10-22'),
(789, '54.188.93.25', 1, '22', '10', '2019', '2019-10-22'),
(790, '34.213.106.188', 1, '22', '10', '2019', '2019-10-22'),
(791, '95.216.19.59', 1, '22', '10', '2019', '2019-10-22'),
(792, '157.55.39.190', 1, '22', '10', '2019', '2019-10-22'),
(793, '66.249.69.49', 1, '22', '10', '2019', '2019-10-22'),
(794, '209.17.97.58', 1, '22', '10', '2019', '2019-10-22'),
(795, '34.73.227.164', 2, '22', '10', '2019', '2019-10-22'),
(796, '18.237.20.164', 1, '22', '10', '2019', '2019-10-22'),
(797, '60.191.38.77', 20, '22', '10', '2019', '2019-10-22'),
(798, '209.17.97.42', 1, '22', '10', '2019', '2019-10-22'),
(799, '35.243.157.150', 12, '22', '10', '2019', '2019-10-22'),
(800, '34.222.252.130', 2, '22', '10', '2019', '2019-10-22'),
(801, '35.237.162.103', 12, '23', '10', '2019', '2019-10-23'),
(802, '185.17.149.179', 1, '23', '10', '2019', '2019-10-23'),
(803, '34.220.151.239', 1, '23', '10', '2019', '2019-10-23'),
(804, '18.237.178.59', 1, '23', '10', '2019', '2019-10-23'),
(805, '92.63.111.27', 1, '23', '10', '2019', '2019-10-23'),
(806, '209.17.96.98', 1, '23', '10', '2019', '2019-10-23'),
(807, '167.114.252.180', 1, '23', '10', '2019', '2019-10-23'),
(808, '35.163.160.30', 1, '23', '10', '2019', '2019-10-23'),
(809, '18.236.99.250', 1, '23', '10', '2019', '2019-10-23'),
(810, '185.72.52.237', 1, '23', '10', '2019', '2019-10-23'),
(811, '34.73.82.37', 2, '23', '10', '2019', '2019-10-23'),
(812, '82.202.161.133', 1, '23', '10', '2019', '2019-10-23'),
(813, '23.100.85.179', 2, '23', '10', '2019', '2019-10-23'),
(814, '34.218.242.0', 2, '23', '10', '2019', '2019-10-23'),
(815, '138.246.253.5', 1, '23', '10', '2019', '2019-10-23'),
(816, '35.166.112.59', 1, '24', '10', '2019', '2019-10-24'),
(817, '35.185.84.191', 12, '24', '10', '2019', '2019-10-24'),
(818, '5.188.210.51', 1, '24', '10', '2019', '2019-10-24'),
(819, '54.244.148.170', 1, '24', '10', '2019', '2019-10-24'),
(820, '18.237.10.186', 1, '24', '10', '2019', '2019-10-24'),
(821, '213.239.206.90', 1, '24', '10', '2019', '2019-10-24'),
(822, '35.190.159.41', 12, '24', '10', '2019', '2019-10-24'),
(823, '138.246.253.5', 1, '24', '10', '2019', '2019-10-24'),
(824, '213.159.213.137', 1, '24', '10', '2019', '2019-10-24'),
(825, '34.215.137.135', 2, '24', '10', '2019', '2019-10-24'),
(826, '209.17.96.170', 1, '24', '10', '2019', '2019-10-24'),
(827, '34.74.171.128', 12, '25', '10', '2019', '2019-10-25'),
(828, '66.249.75.151', 1, '25', '10', '2019', '2019-10-25'),
(829, '157.55.39.140', 1, '25', '10', '2019', '2019-10-25'),
(830, '52.27.153.36', 1, '25', '10', '2019', '2019-10-25'),
(831, '63.141.231.10', 1, '25', '10', '2019', '2019-10-25'),
(832, '82.202.161.133', 1, '25', '10', '2019', '2019-10-25'),
(833, '52.41.225.107', 1, '25', '10', '2019', '2019-10-25'),
(834, '35.231.247.224', 2, '25', '10', '2019', '2019-10-25'),
(835, '178.154.200.59', 1, '25', '10', '2019', '2019-10-25'),
(836, '209.17.96.194', 1, '25', '10', '2019', '2019-10-25'),
(837, '35.185.26.172', 12, '25', '10', '2019', '2019-10-25'),
(838, '52.38.163.240', 2, '25', '10', '2019', '2019-10-25'),
(839, '60.191.38.77', 4, '26', '10', '2019', '2019-10-26'),
(840, '34.74.91.251', 12, '26', '10', '2019', '2019-10-26'),
(841, '18.237.46.140', 1, '26', '10', '2019', '2019-10-26'),
(842, '137.226.113.27', 2, '26', '10', '2019', '2019-10-26'),
(843, '137.226.113.28', 1, '26', '10', '2019', '2019-10-26'),
(844, '54.184.130.124', 1, '26', '10', '2019', '2019-10-26'),
(845, '188.92.72.129', 1, '26', '10', '2019', '2019-10-26'),
(846, '209.17.96.130', 1, '26', '10', '2019', '2019-10-26');
INSERT INTO `visiting` (`id`, `ip`, `visit_num`, `day_t`, `month_d`, `year_d`, `date`) VALUES
(847, '209.17.96.18', 1, '26', '10', '2019', '2019-10-26'),
(848, '34.223.4.113', 1, '26', '10', '2019', '2019-10-26'),
(849, '54.190.24.164', 2, '26', '10', '2019', '2019-10-26'),
(850, '66.249.75.153', 1, '26', '10', '2019', '2019-10-26'),
(851, '82.202.161.133', 1, '26', '10', '2019', '2019-10-26'),
(852, '35.196.147.252', 12, '26', '10', '2019', '2019-10-26'),
(853, '34.218.59.25', 1, '27', '10', '2019', '2019-10-27'),
(854, '66.249.64.113', 1, '27', '10', '2019', '2019-10-27'),
(855, '109.235.67.128', 1, '27', '10', '2019', '2019-10-27'),
(856, '213.159.213.236', 1, '27', '10', '2019', '2019-10-27'),
(857, '35.185.12.132', 2, '27', '10', '2019', '2019-10-27'),
(858, '178.154.200.59', 1, '27', '10', '2019', '2019-10-27'),
(859, '18.236.224.18', 2, '27', '10', '2019', '2019-10-27'),
(860, '185.72.52.237', 1, '28', '10', '2019', '2019-10-28'),
(861, '34.221.190.131', 1, '28', '10', '2019', '2019-10-28'),
(862, '35.229.83.0', 12, '28', '10', '2019', '2019-10-28'),
(863, '178.154.200.59', 1, '28', '10', '2019', '2019-10-28'),
(864, '151.255.15.8', 1, '28', '10', '2019', '2019-10-28'),
(865, '34.216.94.86', 1, '28', '10', '2019', '2019-10-28'),
(866, '138.246.253.5', 1, '28', '10', '2019', '2019-10-28'),
(867, '100.35.75.170', 14, '28', '10', '2019', '2019-10-28'),
(868, '18.236.207.195', 2, '28', '10', '2019', '2019-10-28'),
(869, '35.231.41.235', 2, '29', '10', '2019', '2019-10-29'),
(870, '178.154.200.59', 1, '29', '10', '2019', '2019-10-29'),
(871, '23.237.4.26', 2, '29', '10', '2019', '2019-10-29'),
(872, '52.12.53.58', 1, '29', '10', '2019', '2019-10-29'),
(873, '51.158.125.36', 1, '29', '10', '2019', '2019-10-29'),
(874, '85.204.246.193', 1, '29', '10', '2019', '2019-10-29'),
(875, '35.185.12.219', 12, '29', '10', '2019', '2019-10-29'),
(876, '54.214.93.232', 1, '29', '10', '2019', '2019-10-29'),
(877, '209.17.96.234', 1, '29', '10', '2019', '2019-10-29'),
(878, '64.246.165.160', 1, '29', '10', '2019', '2019-10-29'),
(879, '60.191.38.77', 5, '29', '10', '2019', '2019-10-29'),
(880, '34.219.182.253', 2, '29', '10', '2019', '2019-10-29'),
(881, '209.17.96.162', 1, '29', '10', '2019', '2019-10-29'),
(882, '60.191.38.77', 2, '30', '10', '2019', '2019-10-30'),
(883, '35.231.88.145', 2, '30', '10', '2019', '2019-10-30'),
(884, '213.159.213.236', 1, '30', '10', '2019', '2019-10-30'),
(885, '209.17.96.18', 1, '30', '10', '2019', '2019-10-30'),
(886, '35.231.211.27', 12, '30', '10', '2019', '2019-10-30'),
(887, '77.30.251.33', 2, '30', '10', '2019', '2019-10-30'),
(888, '45.14.49.211', 1, '30', '10', '2019', '2019-10-30'),
(889, '87.117.51.147', 3, '30', '10', '2019', '2019-10-30'),
(890, '209.17.97.50', 1, '30', '10', '2019', '2019-10-30'),
(891, '34.220.209.152', 2, '30', '10', '2019', '2019-10-30'),
(892, '35.185.8.238', 12, '30', '10', '2019', '2019-10-30'),
(893, '50.7.235.2', 1, '31', '10', '2019', '2019-10-31'),
(894, '157.55.39.22', 1, '31', '10', '2019', '2019-10-31'),
(895, '18.237.158.33', 1, '31', '10', '2019', '2019-10-31'),
(896, '199.244.88.124', 1, '31', '10', '2019', '2019-10-31'),
(897, '13.229.86.130', 1, '31', '10', '2019', '2019-10-31'),
(898, '34.215.163.159', 1, '31', '10', '2019', '2019-10-31'),
(899, '88.218.196.112', 1, '31', '10', '2019', '2019-10-31'),
(900, '35.237.206.143', 12, '31', '10', '2019', '2019-10-31'),
(901, '52.24.160.250', 2, '01', '11', '2019', '2019-11-01'),
(902, '35.243.233.62', 12, '01', '11', '2019', '2019-11-01'),
(903, '34.219.63.147', 1, '01', '11', '2019', '2019-11-01'),
(904, '144.76.6.230', 1, '01', '11', '2019', '2019-11-01'),
(905, '91.121.171.104', 1, '01', '11', '2019', '2019-11-01'),
(906, '148.66.145.33', 2, '01', '11', '2019', '2019-11-01'),
(907, '159.203.114.152', 1, '01', '11', '2019', '2019-11-01'),
(908, '18.237.94.22', 1, '01', '11', '2019', '2019-11-01'),
(909, '54.186.9.195', 2, '01', '11', '2019', '2019-11-01'),
(910, '35.165.85.119', 1, '01', '11', '2019', '2019-11-01'),
(911, '106.54.254.17', 1, '01', '11', '2019', '2019-11-01'),
(912, '34.73.190.39', 2, '01', '11', '2019', '2019-11-01'),
(913, '209.17.96.34', 1, '02', '11', '2019', '2019-11-02'),
(914, '137.226.113.27', 2, '02', '11', '2019', '2019-11-02'),
(915, '137.226.113.28', 1, '02', '11', '2019', '2019-11-02'),
(916, '54.190.245.193', 1, '02', '11', '2019', '2019-11-02'),
(917, '51.83.91.129', 2, '02', '11', '2019', '2019-11-02'),
(918, '35.229.66.175', 12, '02', '11', '2019', '2019-11-02'),
(919, '54.184.10.57', 1, '02', '11', '2019', '2019-11-02'),
(920, '209.17.96.226', 1, '02', '11', '2019', '2019-11-02'),
(921, '209.17.97.98', 1, '02', '11', '2019', '2019-11-02'),
(922, '34.222.128.90', 2, '02', '11', '2019', '2019-11-02'),
(923, '35.163.11.40', 1, '02', '11', '2019', '2019-11-02'),
(924, '40.77.167.143', 1, '02', '11', '2019', '2019-11-02'),
(925, '66.36.234.186', 1, '02', '11', '2019', '2019-11-02'),
(926, '178.62.196.82', 1, '02', '11', '2019', '2019-11-02'),
(927, '209.17.96.202', 1, '03', '11', '2019', '2019-11-03'),
(928, '34.67.237.139', 1, '03', '11', '2019', '2019-11-03'),
(929, '35.167.246.11', 1, '03', '11', '2019', '2019-11-03'),
(930, '85.195.230.179', 1, '03', '11', '2019', '2019-11-03'),
(931, '35.229.122.68', 2, '03', '11', '2019', '2019-11-03'),
(932, '35.196.154.80', 12, '03', '11', '2019', '2019-11-03'),
(933, '51.83.91.129', 1, '03', '11', '2019', '2019-11-03'),
(934, '95.78.174.216', 1, '04', '11', '2019', '2019-11-04'),
(935, '5.188.62.5', 1, '04', '11', '2019', '2019-11-04'),
(936, '159.89.187.86', 1, '04', '11', '2019', '2019-11-04'),
(937, '134.209.165.83', 1, '04', '11', '2019', '2019-11-04'),
(938, '45.55.48.79', 1, '04', '11', '2019', '2019-11-04'),
(939, '181.177.98.253', 1, '04', '11', '2019', '2019-11-04'),
(940, '34.218.250.253', 1, '04', '11', '2019', '2019-11-04'),
(941, '178.154.200.59', 1, '04', '11', '2019', '2019-11-04'),
(942, '104.196.215.54', 12, '04', '11', '2019', '2019-11-04'),
(943, '35.231.194.55', 12, '04', '11', '2019', '2019-11-04'),
(944, '54.71.5.71', 2, '04', '11', '2019', '2019-11-04'),
(945, '34.219.213.65', 1, '04', '11', '2019', '2019-11-04'),
(946, '18.237.82.156', 1, '04', '11', '2019', '2019-11-04'),
(947, '54.203.213.48', 1, '04', '11', '2019', '2019-11-04'),
(948, '40.77.167.69', 1, '04', '11', '2019', '2019-11-04'),
(949, '34.73.6.14', 5, '04', '11', '2019', '2019-11-04'),
(950, '34.73.6.14', 1, '05', '11', '2019', '2019-11-05'),
(951, '34.74.245.86', 12, '05', '11', '2019', '2019-11-05'),
(952, '100.24.253.9', 1, '05', '11', '2019', '2019-11-05'),
(953, '158.69.241.134', 17, '05', '11', '2019', '2019-11-05'),
(954, '82.202.161.133', 1, '05', '11', '2019', '2019-11-05'),
(955, '209.17.97.34', 1, '05', '11', '2019', '2019-11-05'),
(956, '85.195.230.179', 1, '05', '11', '2019', '2019-11-05'),
(957, '34.220.238.228', 1, '05', '11', '2019', '2019-11-05'),
(958, '185.72.52.237', 1, '05', '11', '2019', '2019-11-05'),
(959, '207.46.13.191', 1, '05', '11', '2019', '2019-11-05'),
(960, '207.46.13.217', 1, '05', '11', '2019', '2019-11-05'),
(961, '157.55.39.67', 1, '05', '11', '2019', '2019-11-05'),
(962, '54.202.124.186', 2, '05', '11', '2019', '2019-11-05'),
(963, '54.201.160.87', 1, '05', '11', '2019', '2019-11-05'),
(964, '35.231.153.251', 2, '05', '11', '2019', '2019-11-05'),
(965, '158.69.116.77', 4, '05', '11', '2019', '2019-11-05'),
(966, '167.99.211.55', 3, '05', '11', '2019', '2019-11-05'),
(967, '23.237.4.26', 17, '06', '11', '2019', '2019-11-06'),
(968, '52.38.244.56', 1, '06', '11', '2019', '2019-11-06'),
(969, '34.73.173.7', 12, '06', '11', '2019', '2019-11-06'),
(970, '209.17.96.154', 1, '06', '11', '2019', '2019-11-06'),
(971, '66.249.64.109', 1, '06', '11', '2019', '2019-11-06'),
(972, '207.46.13.52', 2, '06', '11', '2019', '2019-11-06'),
(973, '209.17.96.82', 1, '06', '11', '2019', '2019-11-06'),
(974, '209.17.96.202', 1, '06', '11', '2019', '2019-11-06'),
(975, '35.185.12.219', 12, '06', '11', '2019', '2019-11-06'),
(976, '138.246.253.5', 1, '07', '11', '2019', '2019-11-07'),
(977, '54.212.232.216', 2, '07', '11', '2019', '2019-11-07'),
(978, '34.220.45.38', 1, '07', '11', '2019', '2019-11-07'),
(979, '51.77.246.206', 1, '07', '11', '2019', '2019-11-07'),
(980, '157.55.39.110', 1, '07', '11', '2019', '2019-11-07'),
(981, '178.154.200.59', 1, '07', '11', '2019', '2019-11-07'),
(982, '139.28.139.189', 1, '07', '11', '2019', '2019-11-07'),
(983, '45.246.238.55', 1, '07', '11', '2019', '2019-11-07'),
(984, '154.16.210.33', 1, '07', '11', '2019', '2019-11-07'),
(985, '209.99.167.8', 2, '07', '11', '2019', '2019-11-07'),
(986, '34.211.247.103', 2, '07', '11', '2019', '2019-11-07'),
(987, '34.222.124.108', 1, '07', '11', '2019', '2019-11-07'),
(988, '35.231.13.170', 14, '08', '11', '2019', '2019-11-08'),
(989, '129.78.110.131', 1, '08', '11', '2019', '2019-11-08'),
(990, '52.33.9.186', 1, '08', '11', '2019', '2019-11-08'),
(991, '5.9.151.57', 1, '08', '11', '2019', '2019-11-08'),
(992, '13.230.243.148', 1, '08', '11', '2019', '2019-11-08'),
(993, '172.241.83.21', 1, '08', '11', '2019', '2019-11-08'),
(994, '209.17.96.242', 1, '08', '11', '2019', '2019-11-08'),
(995, '138.246.253.5', 1, '08', '11', '2019', '2019-11-08'),
(996, '216.244.66.238', 1, '08', '11', '2019', '2019-11-08'),
(997, '35.237.255.21', 12, '08', '11', '2019', '2019-11-08'),
(998, '54.202.225.178', 2, '08', '11', '2019', '2019-11-08'),
(999, '34.209.48.1', 1, '08', '11', '2019', '2019-11-08'),
(1000, '137.226.113.28', 2, '09', '11', '2019', '2019-11-09'),
(1001, '104.196.37.204', 12, '09', '11', '2019', '2019-11-09'),
(1002, '40.77.167.117', 1, '09', '11', '2019', '2019-11-09'),
(1003, '23.237.4.26', 17, '09', '11', '2019', '2019-11-09'),
(1004, '209.17.97.50', 1, '09', '11', '2019', '2019-11-09'),
(1005, '178.154.200.59', 1, '09', '11', '2019', '2019-11-09'),
(1006, '137.226.113.26', 1, '09', '11', '2019', '2019-11-09'),
(1007, '54.188.66.73', 1, '09', '11', '2019', '2019-11-09'),
(1008, '34.211.29.231', 1, '09', '11', '2019', '2019-11-09'),
(1009, '157.55.39.131', 1, '09', '11', '2019', '2019-11-09'),
(1010, '34.74.11.111', 2, '10', '11', '2019', '2019-11-10'),
(1011, '34.74.171.128', 2, '10', '11', '2019', '2019-11-10'),
(1012, '23.237.4.26', 17, '10', '11', '2019', '2019-11-10'),
(1013, '34.223.254.140', 1, '10', '11', '2019', '2019-11-10'),
(1014, '35.185.12.219', 12, '10', '11', '2019', '2019-11-10'),
(1015, '207.46.13.108', 1, '10', '11', '2019', '2019-11-10'),
(1016, '45.246.238.55', 1, '10', '11', '2019', '2019-11-10'),
(1017, '173.252.95.14', 1, '10', '11', '2019', '2019-11-10'),
(1018, '66.249.76.108', 1, '10', '11', '2019', '2019-11-10'),
(1019, '66.249.76.122', 1, '10', '11', '2019', '2019-11-10'),
(1020, '66.249.76.19', 1, '10', '11', '2019', '2019-11-10'),
(1021, '54.184.18.191', 1, '10', '11', '2019', '2019-11-10'),
(1022, '207.46.13.106', 1, '11', '11', '2019', '2019-11-11'),
(1023, '60.191.38.77', 4, '11', '11', '2019', '2019-11-11'),
(1024, '60.191.38.77', 4, '11', '11', '2019', '2019-11-11'),
(1025, '60.191.38.77', 4, '11', '11', '2019', '2019-11-11'),
(1026, '216.244.66.238', 2, '11', '11', '2019', '2019-11-11'),
(1027, '52.33.110.236', 1, '11', '11', '2019', '2019-11-11'),
(1028, '34.211.28.124', 1, '11', '11', '2019', '2019-11-11'),
(1029, '66.249.76.109', 1, '11', '11', '2019', '2019-11-11'),
(1030, '209.17.96.2', 1, '11', '11', '2019', '2019-11-11'),
(1031, '132.148.250.178', 2, '12', '11', '2019', '2019-11-12'),
(1032, '23.237.4.26', 17, '12', '11', '2019', '2019-11-12'),
(1033, '138.246.253.5', 1, '12', '11', '2019', '2019-11-12'),
(1034, '209.17.96.250', 1, '12', '11', '2019', '2019-11-12'),
(1035, '54.186.114.73', 1, '12', '11', '2019', '2019-11-12'),
(1036, '158.69.248.234', 1, '12', '11', '2019', '2019-11-12'),
(1037, '216.244.66.238', 2, '12', '11', '2019', '2019-11-12'),
(1038, '159.89.194.28', 1, '12', '11', '2019', '2019-11-12'),
(1039, '35.231.153.251', 2, '12', '11', '2019', '2019-11-12'),
(1040, '209.17.96.234', 1, '12', '11', '2019', '2019-11-12'),
(1041, '66.249.76.123', 1, '13', '11', '2019', '2019-11-13'),
(1042, '216.244.66.238', 3, '13', '11', '2019', '2019-11-13'),
(1043, '66.249.76.19', 1, '13', '11', '2019', '2019-11-13'),
(1044, '209.17.97.114', 1, '13', '11', '2019', '2019-11-13'),
(1045, '159.89.194.28', 1, '13', '11', '2019', '2019-11-13'),
(1046, '40.77.167.4', 1, '13', '11', '2019', '2019-11-13'),
(1047, '13.66.132.138', 1, '13', '11', '2019', '2019-11-13'),
(1048, '34.73.170.156', 11, '13', '11', '2019', '2019-11-13'),
(1049, '167.71.156.62', 4, '13', '11', '2019', '2019-11-13'),
(1050, '54.187.183.112', 1, '13', '11', '2019', '2019-11-13'),
(1051, '54.149.20.246', 1, '13', '11', '2019', '2019-11-13'),
(1052, '209.17.96.202', 1, '13', '11', '2019', '2019-11-13'),
(1053, '167.172.170.33', 1, '13', '11', '2019', '2019-11-13'),
(1054, '35.190.159.41', 2, '14', '11', '2019', '2019-11-14'),
(1055, '40.77.167.77', 1, '14', '11', '2019', '2019-11-14'),
(1056, '216.244.66.238', 4, '14', '11', '2019', '2019-11-14'),
(1057, '54.218.232.60', 1, '14', '11', '2019', '2019-11-14'),
(1058, '34.74.199.190', 12, '14', '11', '2019', '2019-11-14'),
(1059, '158.46.174.103', 1, '14', '11', '2019', '2019-11-14'),
(1060, '52.72.223.180', 1, '14', '11', '2019', '2019-11-14'),
(1061, '54.185.38.22', 1, '14', '11', '2019', '2019-11-14'),
(1062, '54.189.80.167', 1, '14', '11', '2019', '2019-11-14'),
(1063, '60.191.38.77', 14, '14', '11', '2019', '2019-11-14'),
(1064, '82.202.161.133', 1, '14', '11', '2019', '2019-11-14'),
(1065, '209.17.96.146', 1, '15', '11', '2019', '2019-11-15'),
(1066, '209.17.96.58', 1, '15', '11', '2019', '2019-11-15'),
(1067, '191.102.164.62', 1, '15', '11', '2019', '2019-11-15'),
(1068, '191.102.137.4', 1, '15', '11', '2019', '2019-11-15'),
(1069, '69.58.178.59', 10, '15', '11', '2019', '2019-11-15'),
(1070, '34.74.134.37', 12, '15', '11', '2019', '2019-11-15'),
(1071, '34.222.70.77', 1, '15', '11', '2019', '2019-11-15'),
(1072, '144.76.29.148', 1, '15', '11', '2019', '2019-11-15'),
(1073, '66.249.76.124', 1, '15', '11', '2019', '2019-11-15'),
(1074, '66.249.76.17', 1, '15', '11', '2019', '2019-11-15'),
(1075, '35.237.149.101', 12, '15', '11', '2019', '2019-11-15'),
(1076, '178.154.200.59', 2, '15', '11', '2019', '2019-11-15'),
(1077, '95.108.213.26', 1, '15', '11', '2019', '2019-11-15'),
(1078, '123.31.20.81', 1, '15', '11', '2019', '2019-11-15'),
(1079, '138.197.159.73', 1, '15', '11', '2019', '2019-11-15'),
(1080, '34.73.220.107', 2, '16', '11', '2019', '2019-11-16'),
(1081, '209.17.96.154', 1, '16', '11', '2019', '2019-11-16'),
(1082, '66.249.76.108', 1, '16', '11', '2019', '2019-11-16'),
(1083, '137.226.113.28', 1, '16', '11', '2019', '2019-11-16'),
(1084, '137.226.113.27', 1, '16', '11', '2019', '2019-11-16'),
(1085, '137.226.113.26', 1, '16', '11', '2019', '2019-11-16'),
(1086, '54.190.123.92', 1, '16', '11', '2019', '2019-11-16'),
(1087, '34.218.225.3', 1, '16', '11', '2019', '2019-11-16'),
(1088, '172.86.75.134', 1, '16', '11', '2019', '2019-11-16'),
(1089, '66.249.76.110', 1, '16', '11', '2019', '2019-11-16'),
(1090, '34.74.191.88', 11, '16', '11', '2019', '2019-11-16'),
(1091, '154.211.8.138', 1, '16', '11', '2019', '2019-11-16'),
(1092, '52.34.116.23', 1, '16', '11', '2019', '2019-11-16'),
(1093, '34.213.26.0', 1, '16', '11', '2019', '2019-11-16'),
(1094, '60.191.38.77', 1, '16', '11', '2019', '2019-11-16'),
(1095, '204.44.86.194', 1, '17', '11', '2019', '2019-11-17'),
(1096, '95.217.73.247', 1, '17', '11', '2019', '2019-11-17'),
(1097, '157.55.39.165', 1, '17', '11', '2019', '2019-11-17'),
(1098, '209.159.145.226', 2, '17', '11', '2019', '2019-11-17'),
(1099, '18.237.237.191', 1, '17', '11', '2019', '2019-11-17'),
(1100, '35.237.177.144', 2, '17', '11', '2019', '2019-11-17'),
(1101, '23.237.4.26', 17, '17', '11', '2019', '2019-11-17'),
(1102, '216.244.66.238', 1, '17', '11', '2019', '2019-11-17'),
(1103, '35.237.201.221', 12, '17', '11', '2019', '2019-11-17'),
(1104, '148.251.177.36', 1, '17', '11', '2019', '2019-11-17'),
(1105, '139.59.64.148', 2, '17', '11', '2019', '2019-11-17'),
(1106, '35.243.183.212', 12, '17', '11', '2019', '2019-11-17'),
(1107, '216.244.66.238', 1, '18', '11', '2019', '2019-11-18'),
(1108, '35.161.169.127', 1, '18', '11', '2019', '2019-11-18'),
(1109, '23.237.4.26', 2, '18', '11', '2019', '2019-11-18'),
(1110, '45.67.53.49', 1, '18', '11', '2019', '2019-11-18'),
(1111, '35.237.188.193', 2, '18', '11', '2019', '2019-11-18'),
(1112, '216.145.5.42', 1, '18', '11', '2019', '2019-11-18'),
(1113, '66.249.76.109', 1, '18', '11', '2019', '2019-11-18'),
(1114, '35.196.82.19', 9, '18', '11', '2019', '2019-11-18'),
(1115, '35.196.82.19', 2, '19', '11', '2019', '2019-11-19'),
(1116, '54.203.69.212', 1, '19', '11', '2019', '2019-11-19'),
(1117, '216.244.66.238', 1, '19', '11', '2019', '2019-11-19'),
(1118, '203.116.18.250', 1, '19', '11', '2019', '2019-11-19'),
(1119, '35.231.153.251', 12, '19', '11', '2019', '2019-11-19'),
(1120, '209.17.96.26', 1, '19', '11', '2019', '2019-11-19'),
(1121, '209.17.97.58', 1, '19', '11', '2019', '2019-11-19'),
(1122, '209.17.96.90', 1, '19', '11', '2019', '2019-11-19'),
(1123, '209.17.97.66', 1, '19', '11', '2019', '2019-11-19'),
(1124, '165.227.26.114', 1, '19', '11', '2019', '2019-11-19'),
(1125, '60.191.38.77', 6, '19', '11', '2019', '2019-11-19'),
(1126, '60.191.38.77', 6, '19', '11', '2019', '2019-11-19'),
(1127, '60.191.38.77', 6, '19', '11', '2019', '2019-11-19'),
(1128, '60.191.38.77', 6, '19', '11', '2019', '2019-11-19'),
(1129, '209.17.97.18', 1, '19', '11', '2019', '2019-11-19'),
(1130, '50.7.234.242', 2, '20', '11', '2019', '2019-11-20'),
(1131, '18.236.89.124', 1, '20', '11', '2019', '2019-11-20'),
(1132, '60.191.38.77', 10, '20', '11', '2019', '2019-11-20'),
(1133, '35.237.8.69', 2, '20', '11', '2019', '2019-11-20'),
(1134, '100.20.101.163', 1, '20', '11', '2019', '2019-11-20'),
(1135, '66.249.76.109', 1, '20', '11', '2019', '2019-11-20'),
(1136, '35.227.24.18', 12, '20', '11', '2019', '2019-11-20'),
(1137, '196.196.39.58', 1, '21', '11', '2019', '2019-11-21'),
(1138, '34.220.119.20', 1, '21', '11', '2019', '2019-11-21'),
(1139, '34.221.116.205', 1, '21', '11', '2019', '2019-11-21'),
(1140, '82.80.230.228', 1, '21', '11', '2019', '2019-11-21'),
(1141, '82.80.249.192', 16, '21', '11', '2019', '2019-11-21'),
(1142, '181.215.28.38', 1, '21', '11', '2019', '2019-11-21'),
(1143, '34.210.43.169', 1, '21', '11', '2019', '2019-11-21'),
(1144, '52.34.236.41', 1, '21', '11', '2019', '2019-11-21'),
(1145, '138.246.253.5', 1, '21', '11', '2019', '2019-11-21'),
(1146, '188.213.166.219', 1, '21', '11', '2019', '2019-11-21'),
(1147, '35.237.50.187', 2, '21', '11', '2019', '2019-11-21'),
(1148, '77.51.49.117', 2, '21', '11', '2019', '2019-11-21'),
(1149, '35.196.112.213', 2, '21', '11', '2019', '2019-11-21'),
(1150, '209.17.96.218', 1, '22', '11', '2019', '2019-11-22'),
(1151, '35.231.153.251', 12, '22', '11', '2019', '2019-11-22'),
(1152, '34.219.26.178', 1, '22', '11', '2019', '2019-11-22'),
(1153, '35.167.61.113', 1, '22', '11', '2019', '2019-11-22'),
(1154, '157.55.39.59', 1, '22', '11', '2019', '2019-11-22'),
(1155, '54.185.22.100', 1, '22', '11', '2019', '2019-11-22'),
(1156, '34.220.0.202', 1, '22', '11', '2019', '2019-11-22'),
(1157, '178.154.200.59', 1, '22', '11', '2019', '2019-11-22'),
(1158, '209.17.96.170', 1, '22', '11', '2019', '2019-11-22'),
(1159, '95.108.213.26', 1, '22', '11', '2019', '2019-11-22'),
(1160, '34.74.136.46', 2, '23', '11', '2019', '2019-11-23'),
(1161, '157.55.39.59', 1, '23', '11', '2019', '2019-11-23'),
(1162, '66.249.76.110', 1, '23', '11', '2019', '2019-11-23'),
(1163, '40.77.167.197', 1, '23', '11', '2019', '2019-11-23'),
(1164, '137.226.113.27', 2, '23', '11', '2019', '2019-11-23'),
(1165, '137.226.113.28', 1, '23', '11', '2019', '2019-11-23'),
(1166, '5.9.155.37', 1, '23', '11', '2019', '2019-11-23'),
(1167, '34.207.207.19', 1, '23', '11', '2019', '2019-11-23'),
(1168, '209.17.96.202', 1, '23', '11', '2019', '2019-11-23'),
(1169, '77.222.96.144', 1, '23', '11', '2019', '2019-11-23'),
(1170, '34.73.165.138', 12, '23', '11', '2019', '2019-11-23'),
(1171, '209.17.96.210', 1, '23', '11', '2019', '2019-11-23'),
(1172, '34.73.86.109', 2, '23', '11', '2019', '2019-11-23'),
(1173, '35.231.73.8', 12, '23', '11', '2019', '2019-11-23'),
(1174, '52.11.94.217', 11, '23', '11', '2019', '2019-11-23'),
(1175, '51.68.152.26', 1, '23', '11', '2019', '2019-11-23'),
(1176, '35.237.189.101', 3, '23', '11', '2019', '2019-11-23'),
(1177, '35.196.36.50', 3, '23', '11', '2019', '2019-11-23'),
(1178, '60.191.38.77', 3, '23', '11', '2019', '2019-11-23'),
(1179, '60.191.38.77', 3, '23', '11', '2019', '2019-11-23'),
(1180, '34.74.76.235', 2, '23', '11', '2019', '2019-11-23'),
(1181, '46.61.105.10', 2, '24', '11', '2019', '2019-11-24'),
(1182, '104.196.37.204', 2, '24', '11', '2019', '2019-11-24'),
(1183, '66.249.76.17', 1, '24', '11', '2019', '2019-11-24'),
(1184, '66.249.76.122', 1, '24', '11', '2019', '2019-11-24'),
(1185, '35.190.136.204', 12, '24', '11', '2019', '2019-11-24'),
(1186, '54.200.117.99', 1, '24', '11', '2019', '2019-11-24'),
(1187, '138.246.253.5', 2, '24', '11', '2019', '2019-11-24'),
(1188, '35.237.2.64', 2, '25', '11', '2019', '2019-11-25'),
(1189, '87.118.116.103', 2, '25', '11', '2019', '2019-11-25'),
(1190, '167.88.7.134', 2, '25', '11', '2019', '2019-11-25'),
(1191, '66.249.76.108', 3, '25', '11', '2019', '2019-11-25'),
(1192, '35.190.152.48', 11, '25', '11', '2019', '2019-11-25'),
(1193, '66.249.76.17', 1, '25', '11', '2019', '2019-11-25'),
(1194, '66.249.76.123', 1, '25', '11', '2019', '2019-11-25'),
(1195, '66.249.76.109', 1, '25', '11', '2019', '2019-11-25'),
(1196, '23.94.52.183', 1, '25', '11', '2019', '2019-11-25'),
(1197, '23.94.52.211', 2, '25', '11', '2019', '2019-11-25'),
(1198, '35.185.12.219', 12, '25', '11', '2019', '2019-11-25'),
(1199, '178.154.200.59', 1, '25', '11', '2019', '2019-11-25'),
(1200, '66.249.76.19', 1, '25', '11', '2019', '2019-11-25'),
(1201, '34.219.86.13', 1, '26', '11', '2019', '2019-11-26'),
(1202, '178.154.200.59', 1, '26', '11', '2019', '2019-11-26'),
(1203, '66.249.76.109', 2, '26', '11', '2019', '2019-11-26'),
(1204, '209.17.96.98', 1, '26', '11', '2019', '2019-11-26'),
(1205, '54.200.33.3', 1, '26', '11', '2019', '2019-11-26'),
(1206, '66.249.76.17', 1, '26', '11', '2019', '2019-11-26'),
(1207, '34.74.50.19', 2, '26', '11', '2019', '2019-11-26'),
(1208, '209.17.96.178', 1, '26', '11', '2019', '2019-11-26'),
(1209, '54.200.93.60', 1, '26', '11', '2019', '2019-11-26'),
(1210, '18.237.92.77', 1, '26', '11', '2019', '2019-11-26'),
(1211, '209.17.96.162', 1, '26', '11', '2019', '2019-11-26'),
(1212, '107.21.1.8', 1, '26', '11', '2019', '2019-11-26'),
(1213, '51.15.191.81', 1, '26', '11', '2019', '2019-11-26'),
(1214, '212.83.146.233', 1, '26', '11', '2019', '2019-11-26'),
(1215, '195.154.61.206', 3, '26', '11', '2019', '2019-11-26'),
(1216, '35.231.153.251', 11, '26', '11', '2019', '2019-11-26'),
(1217, '209.17.97.10', 1, '26', '11', '2019', '2019-11-26'),
(1218, '66.249.76.110', 1, '26', '11', '2019', '2019-11-26'),
(1219, '66.249.76.110', 1, '27', '11', '2019', '2019-11-27'),
(1220, '109.235.67.128', 1, '27', '11', '2019', '2019-11-27'),
(1221, '212.34.20.97', 3, '27', '11', '2019', '2019-11-27'),
(1222, '35.231.218.154', 2, '27', '11', '2019', '2019-11-27'),
(1223, '60.191.38.77', 7, '27', '11', '2019', '2019-11-27'),
(1224, '64.185.235.234', 3, '27', '11', '2019', '2019-11-27'),
(1225, '66.249.76.108', 2, '27', '11', '2019', '2019-11-27'),
(1226, '52.42.72.124', 1, '27', '11', '2019', '2019-11-27'),
(1227, '34.211.7.8', 1, '27', '11', '2019', '2019-11-27'),
(1228, '34.74.150.88', 12, '27', '11', '2019', '2019-11-27'),
(1229, '148.251.52.53', 1, '27', '11', '2019', '2019-11-27'),
(1230, '51.255.109.170', 2, '28', '11', '2019', '2019-11-28'),
(1231, '51.255.109.164', 1, '28', '11', '2019', '2019-11-28'),
(1232, '77.51.133.248', 2, '28', '11', '2019', '2019-11-28'),
(1233, '51.255.109.174', 1, '28', '11', '2019', '2019-11-28'),
(1234, '179.61.181.103', 1, '28', '11', '2019', '2019-11-28'),
(1235, '114.143.144.162', 1, '28', '11', '2019', '2019-11-28'),
(1236, '35.243.234.166', 12, '29', '11', '2019', '2019-11-29'),
(1237, '178.154.200.59', 1, '29', '11', '2019', '2019-11-29'),
(1238, '92.63.111.27', 1, '29', '11', '2019', '2019-11-29'),
(1239, '34.73.201.80', 12, '29', '11', '2019', '2019-11-29'),
(1240, '8.209.79.9', 1, '29', '11', '2019', '2019-11-29'),
(1241, '40.77.167.114', 1, '29', '11', '2019', '2019-11-29'),
(1242, '35.237.189.101', 12, '29', '11', '2019', '2019-11-29'),
(1243, '209.17.97.122', 1, '29', '11', '2019', '2019-11-29'),
(1244, '5.188.62.5', 1, '29', '11', '2019', '2019-11-29'),
(1245, '66.249.76.124', 1, '29', '11', '2019', '2019-11-29'),
(1246, '66.249.76.21', 1, '29', '11', '2019', '2019-11-29'),
(1247, '69.58.178.28', 3, '29', '11', '2019', '2019-11-29'),
(1248, '209.17.96.66', 1, '29', '11', '2019', '2019-11-29'),
(1249, '185.195.24.62', 2, '29', '11', '2019', '2019-11-29'),
(1250, '35.243.169.149', 12, '30', '11', '2019', '2019-11-30'),
(1251, '137.226.113.27', 1, '30', '11', '2019', '2019-11-30'),
(1252, '137.226.113.28', 1, '30', '11', '2019', '2019-11-30'),
(1253, '34.222.186.174', 1, '30', '11', '2019', '2019-11-30'),
(1254, '18.222.164.92', 8, '30', '11', '2019', '2019-11-30'),
(1255, '51.158.113.35', 1, '30', '11', '2019', '2019-11-30'),
(1256, '137.226.113.26', 1, '30', '11', '2019', '2019-11-30'),
(1257, '159.89.144.143', 1, '30', '11', '2019', '2019-11-30'),
(1258, '66.249.64.113', 1, '30', '11', '2019', '2019-11-30'),
(1259, '209.17.96.2', 1, '30', '11', '2019', '2019-11-30'),
(1260, '209.17.96.90', 1, '30', '11', '2019', '2019-11-30'),
(1261, '207.46.13.75', 1, '30', '11', '2019', '2019-11-30'),
(1262, '35.196.64.83', 2, '01', '12', '2019', '2019-12-01'),
(1263, '138.68.180.18', 4, '01', '12', '2019', '2019-12-01'),
(1264, '40.77.167.45', 1, '01', '12', '2019', '2019-12-01'),
(1265, '159.69.249.231', 1, '01', '12', '2019', '2019-12-01'),
(1266, '178.154.200.59', 1, '01', '12', '2019', '2019-12-01'),
(1267, '35.227.71.100', 2, '01', '12', '2019', '2019-12-01'),
(1268, '34.74.183.172', 11, '02', '12', '2019', '2019-12-02'),
(1269, '35.196.82.39', 12, '02', '12', '2019', '2019-12-02'),
(1270, '5.45.207.46', 1, '02', '12', '2019', '2019-12-02'),
(1271, '207.46.13.89', 1, '02', '12', '2019', '2019-12-02'),
(1272, '62.210.79.40', 3, '02', '12', '2019', '2019-12-02'),
(1273, '35.231.42.181', 2, '02', '12', '2019', '2019-12-02'),
(1274, '104.196.19.233', 2, '03', '12', '2019', '2019-12-03'),
(1275, '157.55.39.69', 1, '03', '12', '2019', '2019-12-03'),
(1276, '34.74.107.1', 11, '03', '12', '2019', '2019-12-03'),
(1277, '103.115.120.250', 1, '03', '12', '2019', '2019-12-03'),
(1278, '209.17.97.58', 1, '03', '12', '2019', '2019-12-03'),
(1279, '185.131.54.96', 1, '03', '12', '2019', '2019-12-03'),
(1280, '114.143.144.162', 1, '03', '12', '2019', '2019-12-03'),
(1281, '78.47.228.112', 1, '03', '12', '2019', '2019-12-03'),
(1282, '209.17.97.82', 1, '03', '12', '2019', '2019-12-03'),
(1283, '209.17.96.234', 1, '03', '12', '2019', '2019-12-03'),
(1284, '167.172.244.182', 1, '03', '12', '2019', '2019-12-03'),
(1285, '35.227.63.87', 14, '04', '12', '2019', '2019-12-04'),
(1286, '178.154.200.59', 2, '04', '12', '2019', '2019-12-04'),
(1287, '95.108.213.26', 1, '04', '12', '2019', '2019-12-04'),
(1288, '3.125.18.132', 2, '04', '12', '2019', '2019-12-04'),
(1289, '209.17.97.90', 1, '04', '12', '2019', '2019-12-04'),
(1290, '94.180.140.53', 1, '04', '12', '2019', '2019-12-04'),
(1291, '178.87.56.139', 12, '04', '12', '2019', '2019-12-04'),
(1292, '8.209.79.9', 1, '05', '12', '2019', '2019-12-05'),
(1293, '35.196.239.46', 12, '05', '12', '2019', '2019-12-05'),
(1294, '52.40.70.135', 1, '05', '12', '2019', '2019-12-05'),
(1295, '85.204.246.193', 1, '05', '12', '2019', '2019-12-05'),
(1296, '178.154.200.59', 2, '05', '12', '2019', '2019-12-05'),
(1297, '95.108.213.26', 1, '05', '12', '2019', '2019-12-05'),
(1298, '66.249.76.110', 1, '05', '12', '2019', '2019-12-05'),
(1299, '167.71.254.214', 1, '05', '12', '2019', '2019-12-05'),
(1300, '167.71.167.190', 1, '05', '12', '2019', '2019-12-05'),
(1301, '66.249.76.108', 2, '05', '12', '2019', '2019-12-05'),
(1302, '167.172.249.41', 1, '05', '12', '2019', '2019-12-05'),
(1303, '103.115.120.249', 1, '05', '12', '2019', '2019-12-05'),
(1304, '138.246.253.5', 2, '05', '12', '2019', '2019-12-05'),
(1305, '66.249.73.141', 1, '05', '12', '2019', '2019-12-05'),
(1306, '66.249.76.17', 1, '05', '12', '2019', '2019-12-05'),
(1307, '185.82.218.34', 1, '06', '12', '2019', '2019-12-06'),
(1308, '209.17.96.50', 2, '06', '12', '2019', '2019-12-06'),
(1309, '178.175.132.77', 3, '06', '12', '2019', '2019-12-06'),
(1310, '66.249.76.110', 1, '06', '12', '2019', '2019-12-06'),
(1311, '209.17.97.10', 1, '06', '12', '2019', '2019-12-06'),
(1312, '35.231.153.251', 2, '06', '12', '2019', '2019-12-06'),
(1313, '35.243.154.134', 12, '06', '12', '2019', '2019-12-06'),
(1314, '52.89.36.157', 1, '06', '12', '2019', '2019-12-06'),
(1315, '158.69.26.144', 4, '06', '12', '2019', '2019-12-06'),
(1316, '51.77.246.76', 1, '06', '12', '2019', '2019-12-06'),
(1317, '209.17.97.74', 1, '06', '12', '2019', '2019-12-06'),
(1318, '66.249.76.19', 1, '07', '12', '2019', '2019-12-07'),
(1319, '137.226.113.27', 1, '07', '12', '2019', '2019-12-07'),
(1320, '137.226.113.26', 2, '07', '12', '2019', '2019-12-07'),
(1321, '104.196.40.230', 11, '07', '12', '2019', '2019-12-07'),
(1322, '209.17.96.82', 1, '07', '12', '2019', '2019-12-07'),
(1323, '40.77.167.55', 1, '07', '12', '2019', '2019-12-07'),
(1324, '35.231.113.41', 18, '07', '12', '2019', '2019-12-07'),
(1325, '54.184.105.99', 1, '07', '12', '2019', '2019-12-07'),
(1326, '188.49.248.40', 2, '07', '12', '2019', '2019-12-07'),
(1327, '78.155.218.95', 3, '07', '12', '2019', '2019-12-07'),
(1328, '35.231.153.251', 5, '07', '12', '2019', '2019-12-07'),
(1329, '35.231.153.251', 7, '08', '12', '2019', '2019-12-08'),
(1330, '138.246.253.5', 1, '08', '12', '2019', '2019-12-08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page`
--
ALTER TABLE `home_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_from`
--
ALTER TABLE `jobs_from`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_info`
--
ALTER TABLE `site_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sustainability`
--
ALTER TABLE `sustainability`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_setting`
--
ALTER TABLE `system_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visiting`
--
ALTER TABLE `visiting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `home_page`
--
ALTER TABLE `home_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `jobs_from`
--
ALTER TABLE `jobs_from`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `site_info`
--
ALTER TABLE `site_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_setting`
--
ALTER TABLE `site_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sustainability`
--
ALTER TABLE `sustainability`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_setting`
--
ALTER TABLE `system_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `visiting`
--
ALTER TABLE `visiting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1331;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
