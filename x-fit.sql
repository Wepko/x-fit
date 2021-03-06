-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2021 at 07:28 PM
-- Server version: 10.3.22-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `x-fit`
--
CREATE DATABASE IF NOT EXISTS `x-fit` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `x-fit`;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_trainer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `full_name`, `text`, `id_trainer`) VALUES
(1, 'Артем Виноградов', 'Я пытался набрать мышечную массу в течение 10 лет, но максимум что получалось – это плюс 2кг. После того, как я купил абонемент в Ваш клуб, я попал на пробную тренировку к Юрию Бондаренко. Конечно, я не верил, что может что-то получиться, но за 5 месяцев тренировок я набрал 7кг. – и это мышцы! Буду продолжать: ни шагу назад, только вперед! Отдельная пятерка всему коллективу клуба!', 1),
(2, 'Ольга Малахова', 'Хочу выразить благодарность персональному тренеру Кириллу Богданову за профессионализм и замечательные тренировки.', 6),
(5, 'Светлана Куликова', 'Выражаю безмерную благодарность моему тренеру Кириллу Богданову. Это профессионал высокого класса и очень позитивный человек. Благодаря Кириллу я добилась больших результатов! Желаю ему большого успеха в работе и здоровья! Спасибо Кирилл!', 6),
(6, 'Лариса Степановна', 'Являюсь членом клуба уже 3 года. Клуб отличный, высококвалифицированные тренеры, вкусная кухня, доброжелательный персонал. Сначала пыталась тренироваться сама, но достаточно быстро поняла, что без тренера невозможно добиться результата. Выбирать долго не пришлось, работала с Юлей Берниковой.', 7),
(7, 'Яна Смежанская', 'Занималась в этом клубе год в 2018, я хочу выразить восхищение руководителям клуба, которые немало труда вложили в его развитие. Клуб уютный и я в целом чувствовала себя очень комфортно. Выражаю благодарность тренеру Юлии Берниковой, классная и позитивная. ', 7);

-- --------------------------------------------------------

--
-- Table structure for table `order_abonnement`
--

DROP TABLE IF EXISTS `order_abonnement`;
CREATE TABLE `order_abonnement` (
  `id` int(11) NOT NULL,
  `name` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `club` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_abonnement`
--

INSERT INTO `order_abonnement` (`id`, `name`, `phone`, `club`, `id_user`) VALUES
(12, 'Ксения', '23457890-', 'x-fit Столешников', 1),
(13, 'Вероника', '7894235235', 'x-fit Столешников', 76),
(14, 'Данил Анатолевич', '+79326578124', 'x-fit Алтуфьево', 77);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `text`, `images`, `price`) VALUES
(1, 'БАССЕЙН В ФИТНЕС КЛУБАХ X-FIT', 'Визитная карточка большей части клубов X-Fit – бассейны с морской водой. Она известна своими целебными свойствами, снимает стресс и создает дополнительный терапевтический эффект для кожи. Бассейны фитнес-клубов X-Fit оборудованы многоступенчатой системой очистки, обеспечивающей идеальное состояние воды. ', '<h1 class=\"title is-4\">АКВААЭРОБИКА</h1>\r\n<p>Аквааэробика – это комплекс упражнений, выполняемых в воде под ритмичную музыку. Тренировки в бассейне пользуются огромной популярностью, т.к. водная среда минимизирует нагрузку на опорно-двигательный аппарат и подходит практически всем. Благодаря сопротивлению воды равномерно прорабатываются все участки тела, повышается выносливость и укрепляется сердечно-сосудистая система.</p>\r\n<p>В клубах X-Fit есть авкапрограммы как для начинающих, так и для подготовленных. Занятия проводятся с использованием специального оборудования и помогают быстро привести тело в тонус.</p>\r\n<h1 class=\"title is-4\">ПЛАВАНИЕ</h1>\r\n<p>Плавание в бассейне – это идеальный вид активности, который помогает быстро подтянуть тело, натренировать мышцы и улучшить эмоциональное состояние. В X-Fit вы можете тренироваться самостоятельно, а также под контролем инструктора, который обучит вас правильной технике плавания.Плавание в бассейне – это идеальный вид активности, который помогает быстро подтянуть тело, натренировать мышцы и улучшить эмоциональное состояние. В X-Fit вы можете тренироваться самостоятельно, а также под контролем инструктора, который обучит вас правильной технике плавания.</p>\r\n<h1 class=\"title is-4\">ДЕТСКИЕ ЗАНЯТИЯ</h1>\r\n<p>Детские занятия в бассейне построены по принципу увлекательной игры и помогают малышам быстро освоиться в водной среде. Самые маленькие учатся держаться без опоры, преодолевают водобоязнь, а дети постарше  осваивают техники плавания, участвуют в занимательных играх и эстафетах.</p>', 'assets/img/services/bassein-min.jpg', '1000'),
(2, 'ТРЕНАЖЕРНЫЙ ЗАЛ', 'Тренажерные залы X-Fit – это просторные тренировочные пространства, где каждый найдет оборудование для достижения своих целей. Удобное разделение по зонам и продуманное расположение обеспечивают максимальный комфорт. Все оборудование для фитнеса поставляется ведущими мировыми брендами – Life Fitness, Hammer Strength и другими.', '<h1 class=\"title is-4\">ЭФФЕКТИВНЫЕ ТРЕНИРОВКИ – ВСЕ ПОД РУКОЙ</h1>\r\n<p>Оборудование в наших залах грамотно расставлено, поэтому вам не придется искать нужный тренажер для выполнения очередного упражнения.</p>\r\n<h1 class=\"title is-4\">ФИТНЕС МЕНЯЕТ ЖИЗНЬ</h1>\r\n<p>Регулярные тренировки – это не только красивая фигура и здоровый организм, но еще и отличное настроение! Занятия ускоряют обмен веществ, способствуют выработке эндорфинов, дарят энергию и заряд бодрости.</p>\r\n<p>В наших залах вы пройдете все запланированные этапы тренировки с комфортом и без потери времени.</p>\r\n<h1 class=\"title is-4\">ТРЕНЕРА</h1>\r\n<p>ТРЕНЕРЫ ВСЕГДА ГОТОВЫ ДАТЬ ВАМ ПОДРОБНУЮ КОНСУЛЬТАЦИЮ И ПОДСТРАХОВАТЬ ПРИ ВЫПОЛНЕНИИ ПОДХОДОВ. ОБРАЩАЙТЕСЬ К НАШИМ СПЕЦИАЛИСТАМ – ЭТО СДЕЛАЕТ ВАШИ ТРЕНИРОВКИ ЕЩЕ БОЛЕЕ ПРОДУКТИВНЫМИ!\r\n</p>', 'assets/img/services/trenzal-min.jpg', '250'),
(3, 'ДЕТСКИЙ ФИТНЕС', 'Smart Fitness Kids – это уникальная система занятий, разработанная экспертами детских программ специально для юных членов клуба. Методика учитывает возрастные особенности детей и направлена на гармоничное и всестороннее развитие. Тренировки по программе Smart Fitness Kids укрепляют мышечный корсет, формируют правильную осанку, улучшают работу сердца и дыхательной системы, нормализуют обменные процессы.', '<h1 class=\"title is-4\">НА ЛЮБОЙ ВКУС</h1>\r\n<p>Детский фитнес в X-Fit включает следующие направления: развивающие занятия, коррекционные и фитнес-программы, спортивные секции, фитнес каникулы. Для всех маленьких членов клубов обязательно найдутся интересные и полезные тренировки, которые помогут укрепить здоровье и весело провести время в компании друзей.</p>\r\n<h1 class=\"title is-4\">ОПЫТНЫЕ НАСТАВНИКИ</h1>\r\n<p>Знакомство детей с миром фитнеса проходит под руководством профессиональной команды X-Fit – педагогов-психологов, хореографов, мастеров спортивных единоборств и т.д. Они станут для Ваших детей настоящим примером, привьют любовь к здоровому образу жизни, научат ставить цели и добиваться их.</p>\r\n<p>ДЛЯ КОМФОРТА И БЕЗОПАСНОСТИ МАЛЕНЬКИЕ ГОСТИ КЛУБОВ РАЗДЕЛЕНЫ ПО ГРУППАМ В ЗАВИСИМОСТИ ОТ ВОЗРАСТА И УРОВНЯ ПОДГОТОВКИ. ВСЕ ТРЕНИРОВКИ ПОСТРОЕНЫ С УЧЕТОМ ПОЭТАПНОГО ФОРМИРОВАНИЯ ФИЗИЧЕСКИХ НАВЫКОВ: ДЛЯ ДЕТЕЙ 3-6 ЛЕТ ПРОВОДЯТСЯ ТЩАТЕЛЬНО ПРОДУМАННЫЕ РАЗВИВАЮЩИЕ ЗАНЯТИЯ, КОТОРЫЕ ПОДГОТАВЛИВАЮТ К БОЛЕЕ СЕРЬЕЗНЫМ ФИТНЕС-ПРОГРАММАМ, РАССЧИТАННЫМ НА ДЕТЕЙ 7-14 ЛЕТ.</p>\r\n', 'assets/img/services/detfitnes-min.jpg', '470'),
(4, 'ГРУППОВЫЕ ПРОГРАММЫ', 'В сети фитнес-клубов X-Fit есть разные виды тренировок: функциональные и силовые, танцевальные и статические. Большой популярностью пользуются боевые искусства и занятия с элементами бокса. Очень эффективны аэробные и силовые аквапрограммы в бассейне. Тренировки на земле и в воде рассчитаны на людей разного уровня подготовки – каждый клиент может выбрать то направление, которое ему подходит.', '<h1 class=\"title is-4\">АЭРОБНЫЕ ПРОГРАММЫ</h1>\r\n<p>Аэробные программы – классика любого фитнес-центра. Во время таких занятий потребляется большое количество кислорода, за счет чего быстро уходит лишний вес. В клубах Х-Fit вы найдете полный спектр аэробных тренировок: от традиционных до самых необычных и модных.Аэробные программы – классика любого фитнес-центра. Во время таких занятий потребляется большое количество кислорода, за счет чего быстро уходит лишний вес. В клубах Х-Fit вы найдете полный спектр аэробных тренировок: от традиционных до самых необычных и модных.</p>\r\n<h1 class=\"title is-4\">СИЛОВАЯ ТРЕНИРОВКА</h1>\r\n<p>Групповые программы в фитнес-центрах сети X-Fit обязательно включают комплекс упражнений для силовых тренировок. Они развивают выносливость, увеличивают мышечную силу, формируют рельеф. Занятия проводятся с использованием оборудования: сборные штанги, бодибары, гантели, амортизаторы, медицинские мячи, фитболы и т.д. Инвентарь прорабатывает как все тело, так и отдельные мышечные группы.</p>\r\n<h1 class=\"title is-4\">ТАНЦЕВАЛЬНЫЕ ПРОГРАММЫ</h1>\r\n<p>Танцевальные программы – это любимый многими вид активности, ведь сложно найти более искренний и завораживающий способ передать эмоции и чувства. А еще у танца нет возраста: научиться правильно и красиво двигаться может каждый, главное – желание! Наши хореографы обучают самым популярным танцевальным направлениям и помогают каждому почувствовать свое тело.</p>\r\n<h1 class=\"title is-4\">ФУНКЦИОНАЛЬНЫЙ ТРЕНИНГ</h1>\r\n<p>Функциональный тренинг вовлекает в работу все группы мышц, включая глубокие.  Он наиболее близок к повседневной физической активности и дает телу естественную и эффективную нагрузку. На занятиях развивается координация, мышечная сила и выносливость, укрепляется сердечно-сосудистая система и улучшается подвижность суставов.</p>', 'assets/img/services/groupprog-min.jpg', '850');

-- --------------------------------------------------------

--
-- Table structure for table `tips`
--

DROP TABLE IF EXISTS `tips`;
CREATE TABLE `tips` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_trainer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tips`
--

INSERT INTO `tips` (`id`, `title`, `text`, `description`, `id_trainer`) VALUES
(1, 'БЕЛКОВАЯ ДИЕТА', '     <p>Проблема лишнего веса является злободневной для многих, но решить ее можно лишь путем объединения физических упражнений с диетическим питанием. Если вы всерьез решили заняться своим телом, похудеть и к тому же создать красивый мышечный рельеф, вам нужно испробовать белковую диету. Она является одной из самых эффективных, и голодать при этом не придется. Скорее, наоборот! Питание будет довольно сытным.</p>\r\n      <p>Напомним, что белки – главный строительный элемент нашего организма. Кроме того, они выполняют массу других задач по поддержанию жизнедеятельности, поэтому их присутствие в ежедневном рационе человека обязательно. Белки состоят из аминокислот, бывают растительного и животного происхождения. Наиболее ценными считаются животные протеины, содержащие все необходимые человеку аминокислоты. Растительные полипептиды не так богаты аминокислотами, поэтому их пищевая ценность ниже. При дефиците белков мышечная масса начинает уменьшаться, постепенно заменяясь жировой, снижается иммунитет и устойчивость к стрессам, быстрее наступает усталость, заметно ухудшается состояние кожи, волос и ногтей. В норме человеку требуется 1 г чистого белка в сутки на каждый килограмм веса</p>\r\n      <h1 class=\"titl\">СУТЬ БЕЛКОВОЙ ДИЕТЫ</h1>\r\n\r\n      <ul>\r\n        Белковая диета строится на следующих постулатах:\r\n        <li>простые углеводы исключаются полностью;</li>\r\n        <li>белки составляют 60 % ежедневного рациона;</li>\r\n        <li>жиры (исключительно растительные) присутствуют в минимальном количестве;</li>\r\n        <li>белковая пища для лучшего пищеварения дополняется небольшим количеством овощей и фруктов.</li>\r\n      </ul>\r\n      <p>Известно, что углеводы являются главными источниками энергии. Когда их полностью убирают из рациона, возникает энергетический дефицит, и тогда организм начинает сжигать гликоген, а потом и жиры.</p>\r\n      <ul>\r\n        <li>Пищу при белковой диете следует принимать небольшими порциями через 2,5–3 часа 5-6 раз в день, при этом ежедневно заниматься фитнесом.</li>\r\n        <li>Особое внимание следует уделить качеству продуктов. Колбасы, копчености и полуфабрикаты из супермаркета следует однозначно исключить, потому что при их приготовлении не всегда используется первосортное мясо и жиры. Кроме того, туда входят всевозможные растительные и химические добавки – консерванты, красители, ароматизаторы и т. п.</li>\r\n        <li>Следует отдавать предпочтение нежирным сортам мяса, птицы и рыбы, потому что обилие липидов мешает полноценному усвоению белка. В этой связи от употребления семги, сома, гуся и утки, печени трески, свинины и говяжьей грудинки лучше отказаться.</li>\r\n      </ul>', 'Проблема лишнего веса является злободневной для многих, но решить ее можно лишь путем объединения физических упражнений с диетическим питанием.', 1),
(2, 'ПОЛЕЗНЫХ СУХОФРУКТОВ', ' <p>Энциклопедия гласит, что сухофрукты – это разнообразные высушенные на солнце или в специальных сушилках плоды с остаточной влажностью, не превышающей 20 %. Сегодня их популярность как никогда высока – они стали полноценной частью повседневного и спортивного питания.</p>\r\n      <h1 class=\"title\">В ЧЕМ ПОЛЬЗА</h1>\r\n      <p>Сушеные и вяленые фрукты и ягоды охотно добавляют в каши, творог, выпечку и другие блюда, заменяют ими конфеты и десерты, изобилующие синтетическими красителями и ароматизаторами, «идентичными натуральным».</p>\r\n      <p>В процессе высушивания содержащиеся в свежих плодах витамины, особенно аскорбиновая кислота, частично или полностью разрушаются, а концентрация углеводов с испарением влаги существенно возрастает. Однако остаются необходимые для нормальной жизнедеятельности человека микро- и макроэлементы, улучшающие работу кишечника пищевые волокна и масса иных полезных соединений.</p>\r\n      <p>По мнению диетологов, большинство сухофруктов слишком сладкие, поэтому их не рекомендуют диабетикам. Но обычному здоровому человеку достаточно съесть в виде перекуса несколько штук или небольшую горсть плодов, чтобы утолить голод. Многие из них имеют достаточно низкий гликемический индекс, поэтому вызывают плавное и постепенное повышение уровня глюкозы, и, соответственно, инсулина в крови, в конечном итоге угнетающего расщепление гликогена и жиров.</p>\r\n      <h1 class=\"tilte\">ИЗЮМ</h1>\r\n      <p>Сушеные ягоды винограда известны и любимы всеми. Приторно-сладкие и кисловатые, с косточками и без них, иссиня-черные и светло-коричневые, они добавляются в пудинги, булочки, кексы, иную выпечку и кондитерские изделия, каши, творожные блюда, компоты и проч. Ценный источник калия, поддерживающего сердечно-сосудистую систему, фторидов, кальция и микроэлементов.</p>\r\n      <h1 class=\"title\">КУРАГА</h1>\r\n      <p>Сушеные абрикосы встречаются в нескольких видах: цельные мелкие плоды с косточкой называются урюком, без косточки – кайсой, крупные половинки – курагой. Использование столь же широко и разнообразно, как и изюма. Содержат множество макро- и микроэлементов, в частности, калий, хром, кремний, кобальт, комплекс витаминов, среди которых преобладает ретинол и его предшественник бета-каротин. Незаменима при составлении рациона спортивного питания.</p>\r\n      <h1 class=\"title\">ЧЕРНОСЛИВ</h1>\r\n      <p>Раньше под этим названием были известны копченые плоды, сейчас – любая сушеная слива. Ее лучшие виды – с легко отделяемой косточкой или совсем без нее. Добавляется в выпечку, десерты, приправы к мясу. Один из самых полезных продуктов в своей группе: помимо набора витаминов и минералов, содержит вещества с мягким слабительным действием, а также соединения, защищающие толстый кишечник от новообразований.</p>', 'Энциклопедия гласит, что сухофрукты – это разнообразные высушенные на солнце или в специальных сушилках плоды с остаточной влажностью, не превышающей 20 %.', 1),
(3, 'ДИЕТА — ЭТО НЕ ЖЕСТКИЕ ОГРАНИЧЕНИЯ В ЕДЕ, А ОБРАЗ ЖИЗНИ', '<h1 class=\"title\">КАКОВЫ ОСНОВНЫЕ ПРИНЦИПЫ ЗДОРОВОГО ПИТАНИЯ?</h1>\r\n<p>Принципов не так много: баланс между количеством потраченных и количеством поступивших калорий, баланс между главными компонентами питания – белками, жирами и углеводами-, достаточное количество клетчатки, индивидуальный питьевой режим, и конечно, количество приемов пищи и интервалы между ними. Для многих кажется сложным соблюдение этих принципов – но это только на первый взгляд. Привычка питаться правильно сформируется буквально за несколько дней. Мы ведь не забываем чистить зубы, ложиться спать, ходить на работу. То же самое в соблюдении принципов здорового питания. Кроме того, почти всегда любимой «вредной» пище есть альтернативы. Любители выпечки, знайте: белая мука, манка, белый сахар можно легко заменить на серую и коричневую муку, нерафинированный сахар фактически без изменения вкуса, но с добавлением пользы.  Какие бы советы вы дали тем, кто соблюдает диеты? Традиционное убеждение заключается в том, что диета – это вареная куриная грудка, гречневая крупа и брокколи. Хотя эти продукты и являются классическими, ими рацион не должен исчерпываться. Диета – это не жесткие ограничения в еде, запреты или мучительный отказ от любимых продуктов. Это образ жизни, рассчитанный не на месяц – два, а на длительное поддержание здорового, рационального питания. Самая важная рекомендация для людей, которые встали на путь здорового питания – это максимальное разнообразие продуктов. Можно и нужно пробовать, например, морские гребешки, перепелиные яйца, разные виды круп, чечевицу, киноа, нут и т. д. Не обязательно включать все эти продукты в повседневный рацион, главное – запечатлеть вкус этих продуктов. Так, не стоит забывать про регулярное потребление клетчатки – особенно свежих  овощей. Ведь свежесть и красота нашей кожи во многом определяется их регулярным употреблением. Своим клиентам я рекомендую есть небольшую порцию корнеплодов вечером: это способствует благоприятной работе лакто- и бифидумбактерий кишечника на протяжении всей ночи. В ответ на это организм отблагодарит вас множеством витаминов группы В.</p>\r\n<h1 class=\"title\">КАКИЕ ПРОДУКТЫ НУЖНО ОБЯЗАТЕЛЬНО ВКЛЮЧАТЬ В РАЦИОН, А КАКИЕ ИСКЛЮЧАТЬ ВО ВРЕМЯ ДИЕТЫ?</h1>\r\n<p>С условием максимального разнообразия рациона включите в повседневный рацион продукты с незаменимыми аминокислотами – «кирпичиками», из которых складывается наше тело. Ими могут стать, например, орехи, мясо, молочные продукты, яйца, бобовые. На втором месте – продукты, обеспечивающие достаточное поступление жира в организм. Вы не ослышались, именно жира. От него зависит и скорость протекания метаболических процессов, и наш гормональный фон, и многое другое. Но здесь мы не можем обойтись только подсолнечным маслом. Существуют так называемые незаменимые жиры – омега 3 и омега 6 жирные кислоты. В идеале мы должны принимать в различной форме несколько видов масла, по 3-4 ежедневно (оливковое, льняное, масло виноградной косточки, кунжутное). Особенное внимание хотелось бы уделить льняному маслу: жирные кислоты, содержащиеся в нем, не синтезируются в нашем организме и должны всегда поступать с пищей. Во время диеты мы стремимся ничего не исключать из рациона. Но, безусловно, рекомендуем уменьшить количество сахара, простых углеводов в пище, особенно при углеводном типе питания, связать их употребление с тренировками.</p>', 'Кандидат медицинских наук и эксперт-диетолог сети фитнес клубов X-Fit отвечает на самые волнующие вопросы о полезном питании.', 1),
(4, 'КАК ЗАНИМАТЬСЯ СПОРТОМ ДЕВУШКАМ', '<h1 class=\"title\">КАК НАЧАТЬ ЗАНИМАТЬСЯ? </h1>\r\n<p>Сначала главной целью должно стать похудение до нормы — ориентироваться можно на ИМТ (индекс массы тела). Значение ИМТ позволяет определить, страдает ли человек ожирением или у него просто небольшой излишек веса.  В первом случае необходимо начать правильно питаться по рекомендациям диетолога и работать в режиме низкоударных нагрузок (плавание, легкое кардио). Людям с небольшим излишком веса стоит больше внимания уделять кардиозоне, заниматься интенсивнее, но при этом следить за давлением и общим состоянием. </p>\r\n<h1 class=\"title\">ВОЙТИ В РИТМ?</h1>\r\n<p>Рекомендации стандартные для всех новичков: тренировки умеренной интенсивности два-три раза в неделю. Дольше часа начинающим заниматься смысла нет. Если цель девушки — коррекция фигуры и снижение жировой массы, я бы посоветовала легкое кардио три раза в неделю по 40-50 минут, пульс должен находиться в зоне низкой интенсивности — 50–60% от максимальной частоты сердечных сокращений. Максимальный пульс в базовом варианте можно рассчитать по формуле «220 – ваш возраст». Если силы еще остались, то к кардио можно добавить растяжку и йогу. Но не перебарщивайте с занятиями — организму необходимо время на восстановление.</p>\r\n<h1 class=\"title\">КАК ИЗБАВИТЬСЯ ОТ НЕУВЕРЕННОСТИ В СЕБЕ ВО ВРЕМЯ ТРЕНИРОВОК?</h1>\r\n<p>С самого начала необходимо сконцентрироваться на себе, на своей цели. Еще одним мотивирующим фактором может стать красивая спортивная одежда, в которой захочется выйти в зал. Помните: все те люди, которые пришли в зал вместе с вами, тоже недовольны своей фигурой (иначе бы их здесь не было), а потому они точно так же стесняются и концентрируются на себе. \r\nИдеальный пресс вашего тренера — это, можно сказать, его портфолио, поэтому ничего удивительного, что он выглядит именно так. Стремиться к таким формам надо, но не стоит на них зацикливаться. Наверняка в своей работе, которая не связана со спортом, вы чувствуете себя так же уверенно, как тренер на тренировке.</p>\r\n<h1 class=\"title\">ДОПОЛНИТЕЛЬНЫЕ ПРОЦЕДУРЫ ДЛЯ ЭФФЕКТИВНОГО РЕЗУЛЬТАТА</h1>\r\n<p>Ими могут стать обертывания или массажи — как ручные, так и аппаратные. Многим клиентам я советую посещать бани, сауны и спа: все эти процедуры прекрасно расслабляют тело, помогают восстановиться, улучшают лимфодренаж и обмен веществ. Но нужно понимать, что эти процедуры дополнительные и без диеты и тренировок они не приведут к желаемому результату.\r\nНе стоит стесняться себя. Помните: все те люди, что пришли в зал вместе с вами, тоже недовольны своей фигурой и смущаются. Поэтому сконцентрируйтесь на себе и своей цели.</p>\r\n<h1 class=\"title\">КОГДА МОЖНО ОЦЕНИТЬ РЕЗУЛЬТАТ?</h1>\r\n<p>Первый результат нужно оценивать не раньше, чем через месяц системной работы, а первые успехи будут заметны через три. Для оценки ваших стараний лучше всего подойдет методика исследования состава тела. В разных клубах используют разные приборы, но в результате вы получаете информацию о том, сколько в вашем организме жира, сколько мышечной массы, а сколько воды</p>', 'Фитнес-менеджер и персональный тренер направления групповых программ федеральной сети фитнес-клубов «X-Fit Монарх» Анастасия Юркова рассказала Glamour об особенностях занятий спортом девушек с избыточным весом и дала собственные рекомендации.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

DROP TABLE IF EXISTS `trainers`;
CREATE TABLE `trainers` (
  `id` int(11) NOT NULL,
  `full_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `full_name`, `description`, `images`) VALUES
(1, 'Юрий Бондаренко', 'Персональный тренер по фитнесу\r\nСертифицированный инструктор по направлению TRX\r\nТренер групповых занятий с оборудованием ТРХ\r\nСертифицированный инструктор по базовой аэробике', 'assets/img/tr1.jpg'),
(6, 'Кирилл Богданов', 'Персональный тренер тренажерного зала. Чемпион России по народному жиму 2016 по версии WPA/AWPA. Чемпион Европы по жиму лежа без экипировки 2017, союз пауэрлифтеров России. Серебряный призер кубка мира \"World cup of champions\" Moscow 2016. Мастер спорта по жиму лежа.', 'assets/img/tr2.jpg'),
(7, 'Юлия Берникова', 'Персональный тренер по фитнесу\r\nСертифицированный инструктор по направлению TRX\r\nТренер групповых занятий с оборудованием ТРХ\r\nСертифицированный инструктор по базовой аэробике', 'assets/img/tr3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `status`) VALUES
(1, 'Максим', '1234', 0),
(2, 'Данил', '1234', 0),
(76, 'mka', '1234', 0),
(77, 'Danil404', 'note404', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_trainer` (`id_trainer`);

--
-- Indexes for table `order_abonnement`
--
ALTER TABLE `order_abonnement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tips`
--
ALTER TABLE `tips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_trainer` (`id_trainer`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_abonnement`
--
ALTER TABLE `order_abonnement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tips`
--
ALTER TABLE `tips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_trainer`) REFERENCES `trainers` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `order_abonnement`
--
ALTER TABLE `order_abonnement`
  ADD CONSTRAINT `order_abonnement_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tips`
--
ALTER TABLE `tips`
  ADD CONSTRAINT `tips_ibfk_1` FOREIGN KEY (`id_trainer`) REFERENCES `trainers` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
