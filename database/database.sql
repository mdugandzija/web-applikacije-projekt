drop table if exists users;
drop table if exists roles;
drop table if exists countries;
drop table if exists news;
drop table if exists images;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

#### Table Countries ####
CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) CHARSET=utf8;

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People''s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People''s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

#### Table Roles ####
CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(100) NOT NULL DEFAULT ''
) CHARSET=utf8;

INSERT INTO `roles` (`id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'Editor'),
(3, 'User');

ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

#### Table Users ####
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(100) NOT NULL DEFAULT '',
  `last_name` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `country_id` int NOT NULL,
  `city` varchar(100) NOT NULL DEFAULT '',
  `street` varchar(100) NOT NULL DEFAULT '',
  `birthday` DATE,
  `role_id` int(11) NOT NULL,
  FOREIGN KEY (`role_id`) REFERENCES roles(id),
  FOREIGN KEY (`country_id`) REFERENCES countries(id)
) CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `country_id`, `city`, `street`, `birthday`, `role_id`) VALUES
(1, 'admin', '0cc175b9c0f1b6a831c399e269772661', 'Admin', 'admin', 'admin@gmail.com', 52, 'Zagreb', 'Slavenskog 21', '1992-05-19', 1),
(2, 'mdugi', '0cc175b9c0f1b6a831c399e269772661', 'Marko', 'Dugandžija', 'a@gmail.com', 52, 'Zagreb', 'Slavenskog 21', '1992-05-19', 2),
(3, 'ihorvat', '0cc175b9c0f1b6a831c399e269772661', 'Ivan', 'Horvat', 'b@gmail.com', 52, 'Zagreb', 'Slavenskog 22', '1992-06-30', 3);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;


#### Table Images ####
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `path` varchar(100) NOT NULL DEFAULT ''
) CHARSET=utf8;

INSERT INTO `images` (`id`, `path`) VALUES
(1, 'img/vijest1.png'),
(2, 'img/vijest2.jpg'),
(3, 'img/vijest3.jpg'),
(4, 'img/vijest4.jpg'),
(5, 'img/vijest5.jpg');

ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

#### Table News ####
CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `img_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL DEFAULT '',
  `text` varchar(2048) NOT NULL DEFAULT '',
  `date_created` DATE,
  FOREIGN KEY (`img_id`) REFERENCES images(id)
) CHARSET=utf8;

INSERT INTO `news` (`id`, `img_id`, `title`, `text`, `date_created`) VALUES
(1, 1, 'Ćorić o LNG terminalu: Radovi kreću u ožujku, u pogon 2021.', 'Država će sufinancirati prvu fazu izgradnju LNG terminala na Krku sa 100 milijuna eura, odlučila je Vlada. Projekt plutajućeg terminala za ukapljeni prirodni plin procijenjen je na 234 milijuna eura, Od Europske komisije osigurano je 101,4 milija eura bespovratnih sredstava, dok su osnivači HEP i Plinacro osigurali 32,6 milijuna eura. - Ideja je da LNG terminal počne funkcionirati od 1.1.2021. godine - objasnio je ministar Tomislav Ćorić te podsjetio da se radi o strateški važnoj investiciji koja će biti značajna i za Hrvatsku, ali i za Europsku uniju. Početak radova ministar Ćorić očekuje već u ožujku ove godine. Ćorić ističe da je LNG terminal ključan za energetsku neovisnost Hrvatske, no da će i okolne zemlje imati veliku korist od njega obzirom da će uspjeti diverzificirati dobavne pravce. Dodaje kako su poduzeti svi koraci kako ne bi došlo do štete za okoliš. - S obzirom na zakup koji u ovom trenutku iznosi 520 milijuna kubnih metara, očekujemo da će se operativni troškovi namirivati iz tog zakupa i takozvane SOS naknade za korištenje terminala koja će ovisiti o tome na koji način će završiti pregovori između vlasnika terminala, u ovom slučaju LNG Hrvatske i potencijalnog daljnjeg zakupitelja. Razgovori na tu temu između naše i mađarske strane nastavit će narednih mjeseci. Vjerujemo da ćemo da će tzv. SOS naknada od 1.1.2021. godine minimalno opterećivati cijenu plina, ako će je uopće biti - objasnio te Ćorić. - Ukoliko zakup terminala ostane na ovome, SOS naknada opteretit će cijenu plina do jednog postupnog boda, što će za prosječno kućanstvo na godišnjoj razini iznositi 35 kuna. Vjerujemo da će se ovaj udio SOS naknade u naredne dvije godine umanjiti - objasnio je. Istraživanje i eksploatacija na području Dinarida Vlada je odlučila pokrenuti i postupak nadmetanja za izdavanje dozvole za istraživanje i eksploataciju ugljikovodika na području Dinarida i odredila istražne prostore za koje se nadmetanje provodi. Oni ne uključuju područja nacionalnih parkova. Ministar Ćorić ističe da se radi o četiri bloka površine 12.134 kilometara kvadratna i prostire se na šest hrvatskih županija. - Kroz nadmetanje činimo vrlo važne korake za smanjenje energetske ovisnosti Hrvatske - objasnio je Ćorić. ', '2019-01-30'),
(2, 2, 'HSU se priključio Amsterdamskoj koaliciji', 'PREDSJEDNIK HSU-a Silvano Hrelja i predsjednici HSS-a, GLAS-a, IDS-a i PGS-a, stranaka koje tvore Amsterdamsku koaliciju, u srijedu su potpisali aneks sporazuma o zajedničkom nastupu na predstojećim izborima za Europski parlament te su najavili kako će do 23. veljače predstaviti zajedničku listu kandidata. Istaknuli su i da su u tijeku intenzivni pregovori da im se pridruže i neke druge stranke uključivši Laburiste, ali i Demokrate bivšeg SDP-ova ministra Miranda Mrsića. Predsjednik HSU-a Silvano Hrelja rekao je kako je potpisivanjem aneksa sporazuma Hrvatska stranka umirovljenika i formalno pristupila Amsterdamskoj koaliciji te kako će tom savezu dati novu dimenziju i kompetenciju. Amsterdamska koalicija sada dobiva partnera koji već petnaest godina u parlamentu radi na definiranju socijalnih minimuma, ispravljanju nepravdi u mirovinskom, socijalnom i zdravstvenom sustavu, rekao je Hrelja naglasivši i kako je cilj na izborima za EU dobiti dva zastupnika. Beljak: Cilj je biti najjača opcija u Hrvatskoj Predsjednik HSS-a Krešo Beljak istaknuo je kako je cilj Amsterdamske koalicije biti najjača politička opcija u Hrvatskoj. Iako ankete pokazuju da je to HDZ, najjača politička opcija su apstinenti - oni koji ne idu na izbore. Uvjeren sam da možemo biti faktor privlačnosti za one koji ne idu na izbore i nemaju za koga glasati. Što se tiče europskih politika, samo je jedna europska politika zamišljena prije dvadeset godina - ujedinjena Europa bez granica, Europa mira, napretka i tolerancije. Mi jedini u Hrvatskoj predstavljamo europsku politiku, HDZ predstavlja Orbanovu politiku, rekao je Beljak. Izvijestio je kako se vode intenzivni razgovori s ravnateljem Klinike za dječje bolesti Zagreb Zoran Bahtijarevićem ocijenivši kako će on kao nezavisni najvjerojatnije braniti boje HSS-a na izborima za EU parlament. Mrak Taritaš: Zadnje ankete pokazuju da smo najjača oporbena snaga u zemlji Predsjednica GLAS-a Anka Mrak Taritaš naglasila je kako su u Amsterdamskoj koaliciji izrazito svjesni jačanja desnog radikalizma i populizma u Europi te kako na predstojećim izborima žele biti najžešća europska pro opcija. Zadnje ankete pokazuju da smo najjača oporbena snaga u zemlji. Građani su prepoznali našu iskrenost, zalaganje te da budimo nadu i vjeru. Zalagat ćemo se za Europu i Hrvatsku te imamo dovoljno snage da kolegama u HDZ-u kažemo dosta je bilo. Da iskoristim rječnik koji kolege iz HDZ puno bolje poznaju – da im kažemo ne meže, rekla je Mrak Taritaš naglasivši i svoju poruku SDP-u. U SDP-u imaju svoje probleme – kada ih riješe, neka se jave i sjest ćemo za stol. Mi idemo svojom politikom dalje, rekla je Mrak Taritaš otkrivši i kako će na listi za predstojeće listi za EU izbore prvo biti netko iz IDS-a, pa zatim netko iz GLAS-a, HSS-a i HSU-a. Predsjednik IDS-a Boris Miletić naglasio je kako u Amsterdamskoj koaliciji žele drugačiju Hrvatsku, progresivnu, naprednu, otvorenu i prosperitetnu. Ovi izbori za EU parlament odlučivat će o dvije Hrvatske i o dvije Europe. Želimo li otvorenu, naprednu i prosperitetnu Hrvatsku i Europu ili neku drugu rekao je Miletić. Predsjednik PGS-a Darijo Vasilić ocijenio je kako u sjeni HDZ-a, posrnulog SDP-a i sada rastućih antisistemskih stranaka u Hrvatskoj sada nažalost nema stranaka koje promoviraju zdravi razum te kako u tome Amsterdamska koalicija ima veliku šansu.', '2019-01-30'),
(3, 3, 'ODBIJENA ŽALBA TOMISLAVA SAUCHE: Tražio je odbacivanje nalaza i mišljenja grafološkog vještaka kao nezakonitih dokaza', 'Odbijena je žalba Tomislava Sauche u aferi ‘Dnevnice’ kao neosnovana Vrhovni sud je odbio kao neosnovanu žalbu Tomislava Sauche u aferi ‘Dnevnice’, koji je tražio da se iz spisa predmeta kao nezakoniti dokazi izdvoje nalazi i mišljenje grafološkog vještaka, piše N1. Neime, optužnica je u ožujku 2018. bila vraćena Uskoku na doradu nakon zahtjeva obrane da se iz spisa izdvoji grafološko vještačenje Sauchinih potpisa koje smatraju nezakonitim. NOVI SAUCHIN POKUŠAJ IZVLAČENJA: ‘Ovaj čovjek je davao izjave u medijima, njegova analiza mojih potpisa nije zakonita’ Lažirao putne naloge Saucha se sumnjiči da je kao predstojnik ureda bivšeg premijera Zorana Milanovića lažirao putne naloge te tako, zajedno sa svojom tadašnjom tajnicom, nezakonito stekao 580 tisuća kuna. U proširenju istrage Sauchu je Uskok osumnjičio da je akontacije za fiktivne dnevnice dijelio sa Sandrom Zeljko, nekadašnjom “krunskom svjedokinjom” u tom slučaju, koju terete da je i nakon Sauchina odlaska nastavila dizati novac. Zeljko je, navodno prema Uskokovim tvrdnjama, od ožujka 2016. do veljače ove godine na svoju ruku krivotvorila potpise kasnijih šefova kabineta Nevena Zelića i Davora Božinovića te preuzela i zadržala akontacije dnevnica u ukupnom iznosu od gotovo 350.000 kuna, piše N1.', '2019-01-30'),
(4, 4, 'Prosinečki: Dobro sam, operacija možda tek nakon Grčke', 'ROBERT PROSINEČKI i treći put u dva mjeseca mogao bi biti podvrgnut operaciji zbog problema s divertikulumom tankog crijeva. Prva, četverosatna, operacija uslijedila je 23. studenoga 2018. godine nakon što se Robert Prosinečki nekoliko dana prije požalio na trbušne bolove. Ubrzo je hospitaliziran i operiran u Sarajevu. Potom je, s obzirom na manje komplikacije, ponovno operiran 1. prosinca. Dnevni avaz najavio je kako bi završni kirurški zahvat trebao biti zakazan u Sarajevu do 15. veljače. Međutim, Robert Prosinečki ipak planira prolongirati rutinsku jednosatnu operaciju. "Osjećam se odlično, odmorio sam se i oporavio. Preda mnom još je jedan, više korektivni, zahvat, ali razmišljam da to bude tek nakon utakmice s Grčkom", poručio je Robert Prosinečki za službenu mrežnu stranicu Nogometnog saveza Bosne i Hercegovine. Bosna i Hercegovina u ožujku će protiv Armenije (23. ožujka) i Grčke (26. ožujka) započeti s kvalifikacijskim ciklusom za Europsko prvenstvo 2020. godine. U grupi je još s Italijom, Finskom i Lihtenštajnom. Robert Prosinečki izbornikom bosanskohercegovačke reprezentacije proglašen je početkom siječnja 2018. godine. U 12 dosadašnjih utakmica upisao je po pet pobjeda i pet remija, kao i dva poraza u prijateljskim ogledima sa Španjolskom (0:1) i Meksikom (0:1). S Bosnom i Hercegovinom plasirao se u elitno izdanje Lige nacija.', '2019-01-30'),
(5, 5, 'Fenjeraš se ruga Napoliju kojem propada sezona: Platite kaznu i istupite', 'SELJAK koji ništa nije osvojio, ispalio je Frosinoneov gazda Maurizio Stirpe nakon što je Napolijev šef Aurelio De Laurentiis izvrijeđao njegov klub teorijom da bi klubovi koji igraju loše u Serie A trebali plaćati kaznu savezu, a ne dobivati financijske nagrade. De Laurentiis smatra da klubovi poput Frosinonea ne trebaju igrati prvu ligu jer nikog ne zanimaju pa bi najbolje bilo da plate kaznu i ne natječu se. Prepucavanja su se nastavila, Stirpe, odnosno njegov klub, opalio je po Napoliju koji je jučer ispao u četvrtfinalu kupa od Milana 2:0. Pored toga, Napoli zaostaje 11 bodova za Juventusom u prvenstvu te je ispao iz Lige prvaka. Ako ne možete ništa, ni Ligu prvaka, ni da se borite za naslov, ni da osvojite talijanski kup, platite kaznu i istupite, poruka je Frosinonea na društvenim mrežama. Napoli će, osim ako ne osvoji Europa ligu, i ove sezone ostati bez trofeja. Zbog trofeja je doveden Carlo Ancelotti, no za njih je Juventus jednostavno prejak i to je svima jasno. Iz Frosinonea su samo uzvratili južnjacima otrovne strelice.', '2019-01-30');

ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;