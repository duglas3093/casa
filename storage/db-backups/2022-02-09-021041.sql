

CREATE TABLE IF NOT EXISTS `accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO accounts VALUES("1","1","","","","","","","USD","info@sangvish.com","1","No","2021-08-11 11:02:12","2021-08-11 11:02:12");
INSERT INTO accounts VALUES("2","1","","","","","","","USD","athi@gmail.com","4","No","2021-08-11 11:03:28","2021-08-11 11:03:28");
INSERT INTO accounts VALUES("3","2","","","","","","","USD","demo@gmail.com","1","No","2021-08-15 09:21:03","2021-08-15 09:21:03");
INSERT INTO accounts VALUES("4","23","","","","","","","USD","rigoleto.p@gmail.com","4","No","2021-12-27 16:38:20","2021-12-27 16:38:20");
INSERT INTO accounts VALUES("5","25","","","","","","","USD","danielcruzmichel@outlook.com","4","No","2022-01-05 16:26:56","2022-01-05 16:26:56");





CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_username_unique` (`username`),
  UNIQUE KEY `admin_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO admin VALUES("1","admin","admin@gmail.com","$2y$10$ufeJFqDIogNOnatLc0dfEe22PNkipngRUNxvqA0WNG/d0/j6rLVn.","","Active","","2021-06-28 20:21:02","2022-01-05 15:43:32");
INSERT INTO admin VALUES("3","Danic","danielcruzmichel@outlook.com","$2y$10$CJ2Y655l98IpTg4PdYq2mOf8tZ3YrHZkctwrwdTy5ghmKO./dctSq","","Active","","2022-01-05 15:18:32","2022-01-05 15:18:32");
INSERT INTO admin VALUES("4","rigoleto.p","rigoleto.p@gmail.com","$2y$10$3XRAG8s1W4RT/Mwy5fM6.ubmaHhWMyKKSykKleIqi7MqnZiw517bG","","Active","","2022-01-05 15:19:06","2022-01-05 15:19:06");
INSERT INTO admin VALUES("5","Peggysan","Peggysan555@gmail.com","$2y$10$kQk6nVGgfIIuU11GF/xALOUXpTAIHP5/FeYKaEI9XT8AYKOcg2VP.","","Active","","2022-02-08 01:32:49","2022-02-08 01:32:49");





CREATE TABLE IF NOT EXISTS `amenities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO amenities VALUES("1","1","Essentials","Towels, bed sheets, soap and toilet paper","essentials","1","Active","en","1");
INSERT INTO amenities VALUES("2","2","TV","","tv","1","Active","en","1");
INSERT INTO amenities VALUES("3","3","Cable TV","","desktop","1","Active","en","1");
INSERT INTO amenities VALUES("4","4","Air Conditioning","","air-conditioning","1","Active","en","1");
INSERT INTO amenities VALUES("5","5","Heating","Heating","heating","1","Active","en","1");
INSERT INTO amenities VALUES("6","6","Kitchen","Kitchen","meal","1","Active","en","1");
INSERT INTO amenities VALUES("7","7","Internet","Internet","internet","1","Active","en","1");
INSERT INTO amenities VALUES("8","8","Gym","Gym","gym","1","Active","en","1");
INSERT INTO amenities VALUES("9","9","Elevator in Building","","elevator","1","Active","en","1");
INSERT INTO amenities VALUES("10","10","Indoor Fireplace","","fireplace","1","Active","en","1");
INSERT INTO amenities VALUES("11","11","Buzzer/Wireless Intercom","","intercom","1","Active","en","1");
INSERT INTO amenities VALUES("12","12","Doorman","","doorman","1","Active","en","1");
INSERT INTO amenities VALUES("13","13","Shampoo","","smoking","1","Active","en","1");
INSERT INTO amenities VALUES("14","14","Wireless Internet","Wireless Internet","wifi","1","Active","en","1");
INSERT INTO amenities VALUES("15","15","Hot Tub","","hot-tub","1","Active","en","1");
INSERT INTO amenities VALUES("16","16","Washer","Washer","washer","1","Active","en","1");
INSERT INTO amenities VALUES("17","17","Pool","Pool","pool","1","Active","en","1");
INSERT INTO amenities VALUES("18","18","Dryer","Dryer","dryer","1","Active","en","1");
INSERT INTO amenities VALUES("19","19","Breakfast","Breakfast","cup","1","Active","en","1");
INSERT INTO amenities VALUES("20","20","Free Parking on Premises","","parking","1","Active","en","1");
INSERT INTO amenities VALUES("21","21","Family/Kid Friendly","Family/Kid Friendly","family","1","Active","en","1");
INSERT INTO amenities VALUES("22","22","Smoking Allowed","","smoking","1","Active","en","1");
INSERT INTO amenities VALUES("23","23","Suitable for Events","Suitable for Events","balloons","1","Active","en","1");
INSERT INTO amenities VALUES("24","24","Pets Allowed","","paw","1","Active","en","1");
INSERT INTO amenities VALUES("25","25","Pets live on this property","","ok","1","Active","en","1");
INSERT INTO amenities VALUES("26","26","Wheelchair Accessible","Wheelchair Accessible","accessible","1","Active","en","1");
INSERT INTO amenities VALUES("27","27","Smoke Detector","Smoke Detector","ok","2","Active","en","1");
INSERT INTO amenities VALUES("28","28","Carbon Monoxide Detector","Carbon Monoxide Detector","ok","2","Active","en","1");
INSERT INTO amenities VALUES("29","29","First Aid Kit","","ok","2","Active","en","1");
INSERT INTO amenities VALUES("30","30","Safety Card","Safety Card","ok","2","Active","en","1");
INSERT INTO amenities VALUES("31","31","Fire Extinguisher","Fire Extinguisher","ok","2","Active","en","1");
INSERT INTO amenities VALUES("40","14","???????????? ????????????","???????????? ????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("41","14","???????????????","???????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("42","14","Internet sans fil","Internet sans fil","","28","Active","fr","4");
INSERT INTO amenities VALUES("43","14","Internet sem fio","Internet sem fio","","29","Active","pt","5");
INSERT INTO amenities VALUES("44","14","???????????????????????? ????????????????","???????????????????????? ????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("45","14","Conexi??n inal??mbrica a internet","Body","","31","Active","es","7");
INSERT INTO amenities VALUES("46","14","Kablosuz internet","Kablosuz internet","","32","Active","tr","8");
INSERT INTO amenities VALUES("47","26","?????????????? ?????????? ????????????????","?????????????? ?????????? ????????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("48","26","???????????????","???????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("49","26","Accessible aux fauteuils roulants","Accessible aux fauteuils roulants","","28","Active","fr","4");
INSERT INTO amenities VALUES("50","26","Acess??vel a cadeiras de rodas","Acess??vel a cadeiras de rodas","","29","Active","pt","5");
INSERT INTO amenities VALUES("51","26","???????????????? ?????? ??????????????????","???????????????? ?????? ??????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("52","26","silla de ruedas accesible","silla de ruedas accesible","","31","Active","es","7");
INSERT INTO amenities VALUES("53","26","tekerlekli sandalye eri??imine uygun","tekerlekli sandalye eri??imine uygun","","32","Active","tr","8");
INSERT INTO amenities VALUES("54","16","??????????","??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("55","16","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("56","16","machine ?? laver","machine ?? laver","","28","Active","fr","4");
INSERT INTO amenities VALUES("57","16","m??quina de lavar","m??quina de lavar","","29","Active","pt","5");
INSERT INTO amenities VALUES("58","16","???????????????????? ????????????","???????????????????? ????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("59","16","lavadora","lavadora","","31","Active","es","7");
INSERT INTO amenities VALUES("60","16","y??kay??c??","y??kay??c??","","32","Active","tr","8");
INSERT INTO amenities VALUES("61","2","??????????????","??????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("62","2","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("63","2","la t??l??","la t??l??","","28","Active","fr","4");
INSERT INTO amenities VALUES("64","2","televis??o","televis??o","","29","Active","pt","5");
INSERT INTO amenities VALUES("65","2","??????????????????????","??????????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("66","2","televisor","televisor","","31","Active","es","7");
INSERT INTO amenities VALUES("67","2","televizyon","televizyon","","32","Active","tr","8");
INSERT INTO amenities VALUES("68","23","?????????? ??????????????","?????????? ??????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("69","23","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("70","23","Convient pour les ??v??nements","Convient pour les ??v??nements","","28","Active","fr","4");
INSERT INTO amenities VALUES("71","23","Adequado para eventos","Adequado para eventos","","29","Active","pt","5");
INSERT INTO amenities VALUES("72","23","???????????????? ?????? ??????????????????????","???????????????? ?????? ??????????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("73","23","Apto para eventos","Apto para eventos","","31","Active","es","7");
INSERT INTO amenities VALUES("74","23","Etkinlikler i??in Uygun","Etkinlikler i??in Uygun","","32","Active","tr","8");
INSERT INTO amenities VALUES("75","22","?????????? ??????????????","?????????? ??????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("76","22","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("77","22","Autorisation de fumer","Autorisation de fumer","","28","Active","fr","4");
INSERT INTO amenities VALUES("78","22","fumar ?? permitido","fumar ?? permitido","","29","Active","pt","5");
INSERT INTO amenities VALUES("79","22","???????????? ??????????????????","???????????? ??????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("80","22","fumar est?? permitido","fumar est?? permitido","","31","Active","es","7");
INSERT INTO amenities VALUES("81","22","sigara i??mek serbesttir","sigara i??mek serbesttir","","32","Active","tr","8");
INSERT INTO amenities VALUES("82","27","???????? ????????????","???????? ????????????","","19","Active","ar","2");
INSERT INTO amenities VALUES("83","27","???????????????","???????????????","","20","Active","ch","3");
INSERT INTO amenities VALUES("84","27","d??tecteur de fum??e","d??tecteur de fum??e","","21","Active","fr","4");
INSERT INTO amenities VALUES("85","27","detector de fuma??a","detector de fuma??a","","22","Active","pt","5");
INSERT INTO amenities VALUES("86","27","???????????????? ????????","???????????????? ????????","","23","Active","ru","6");
INSERT INTO amenities VALUES("87","27","detector de humo","detector de humo","","24","Active","es","7");
INSERT INTO amenities VALUES("88","27","duman dedekt??r??","duman dedekt??r??","","25","Active","tr","8");
INSERT INTO amenities VALUES("89","13","??????????","??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("90","13","?????????","?????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("91","13","shampooing","shampooing","","28","Active","fr","4");
INSERT INTO amenities VALUES("92","13","xampu","xampu","","29","Active","pt","5");
INSERT INTO amenities VALUES("93","13","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("94","13","champ??","champ??","","31","Active","es","7");
INSERT INTO amenities VALUES("95","13","??ampuan","??ampuan","","32","Active","tr","8");
INSERT INTO amenities VALUES("96","30","?????????? ??????????????","?????????? ??????????????","","19","Active","ar","2");
INSERT INTO amenities VALUES("97","30","?????????","?????????","","20","Active","ch","3");
INSERT INTO amenities VALUES("98","30","Carte de s??curit??","Carte de s??curit??","","21","Active","fr","4");
INSERT INTO amenities VALUES("99","30","Cart??o de Seguran??a","Cart??o de Seguran??a","","22","Active","pt","5");
INSERT INTO amenities VALUES("100","30","?????????? ????????????????????????","?????????? ????????????????????????","","23","Active","ru","6");
INSERT INTO amenities VALUES("101","30","Tarjeta de seguridad","Tarjeta de seguridad","","24","Active","es","7");
INSERT INTO amenities VALUES("102","30","G??venlik Kart??","G??venlik Kart??","","25","Active","tr","8");
INSERT INTO amenities VALUES("103","17","???????? ??????????","???????? ??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("104","17","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("105","17","bassin","bassin","","28","Active","fr","4");
INSERT INTO amenities VALUES("106","17","piscina","piscina","","29","Active","pt","5");
INSERT INTO amenities VALUES("107","17","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("108","17","piscina","piscina","","31","Active","es","7");
INSERT INTO amenities VALUES("109","17","havuz","havuz","","32","Active","tr","8");
INSERT INTO amenities VALUES("110","25","?????????????????? ?????????????? ???????? ???? ?????? ????????????","?????????????????? ?????????????? ???????? ???? ?????? ????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("111","25","????????????????????????","????????????????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("112","25","Les animaux vivent sur cette propri??t??","Les animaux vivent sur cette propri??t??","","28","Active","fr","4");
INSERT INTO amenities VALUES("113","25","Animais de estima????o vivem nesta propriedade","Animais de estima????o vivem nesta propriedade","","29","Active","pt","5");
INSERT INTO amenities VALUES("114","25","???? ???????????????????? ?????????? ???????????????? ????????????????.","???? ???????????????????? ?????????? ???????????????? ????????????????.","","30","Active","ru","6");
INSERT INTO amenities VALUES("115","25","???? ???????????????????? ?????????? ???????????????? ????????????????.","???? ???????????????????? ?????????? ???????????????? ????????????????.","","31","Active","es","7");
INSERT INTO amenities VALUES("116","25","Bu tesiste evcil hayvanlar ya????yor","Bu tesiste evcil hayvanlar ya????yor","","32","Active","tr","8");
INSERT INTO amenities VALUES("117","24","?????????? ?????????? ?????????????????? ??????????????","?????????? ?????????? ?????????????????? ??????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("118","24","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("119","24","animaux accept??s","animaux accept??s","","28","Active","fr","4");
INSERT INTO amenities VALUES("120","24","animais de estima????o permitidos","animais de estima????o permitidos","","29","Active","pt","5");
INSERT INTO amenities VALUES("121","24","???????????????? ???????????????? ??????????????????","???????????????? ???????????????? ??????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("122","24","Mascotas permitidas","Mascotas permitidas","","31","Active","es","7");
INSERT INTO amenities VALUES("123","24","Evcil Hayvanlar girebilir","Evcil Hayvanlar girebilir","","32","Active","tr","8");
INSERT INTO amenities VALUES("124","6","????????","????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("125","6","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("126","6","cuisine","cuisine","","28","Active","fr","4");
INSERT INTO amenities VALUES("127","6","cozinha","cozinha","","29","Active","pt","5");
INSERT INTO amenities VALUES("128","6","??????????","??????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("129","6","cocina","cocina","","31","Active","es","7");
INSERT INTO amenities VALUES("130","6","mutfak","mutfak","","32","Active","tr","8");
INSERT INTO amenities VALUES("131","7","????????????","????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("132","7","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("133","7","l\'Internet","l\'Internet","","28","Active","fr","4");
INSERT INTO amenities VALUES("134","7","Internet","Internet","","29","Active","pt","5");
INSERT INTO amenities VALUES("135","7","????????????????","????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("136","7","Internet","Internet","","31","Active","es","7");
INSERT INTO amenities VALUES("137","7","internet","internet","","32","Active","tr","8");
INSERT INTO amenities VALUES("138","10","?????????? ????????????","?????????? ????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("139","10","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("140","10","foyer d\'int??rieur","foyer d\'int??rieur","","28","Active","fr","4");
INSERT INTO amenities VALUES("141","10","lareira interna","lareira interna","","29","Active","pt","5");
INSERT INTO amenities VALUES("142","10","???????????????? ??????????","???????????????? ??????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("143","10","chimenea interior","chimenea interior","","31","Active","es","7");
INSERT INTO amenities VALUES("144","10","kapal?? ????mine","kapal?? ????mine","","32","Active","tr","8");
INSERT INTO amenities VALUES("145","15","?????? ?????????????? ????????","?????? ?????????????? ????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("146","15","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("147","15","jacuzzi","jacuzzi","","28","Active","fr","4");
INSERT INTO amenities VALUES("148","15","jacuzzi","jacuzzi","","29","Active","pt","5");
INSERT INTO amenities VALUES("149","15","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("150","15","Ba??era de hidromasaje","Ba??era de hidromasaje","","31","Active","es","7");
INSERT INTO amenities VALUES("151","15","jakuzi","jakuzi","","32","Active","tr","8");
INSERT INTO amenities VALUES("152","5","??????????","??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("153","5","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("154","5","chauffage","chauffage","","28","Active","fr","4");
INSERT INTO amenities VALUES("155","5","aquecimento","aquecimento","","29","Active","pt","5");
INSERT INTO amenities VALUES("156","5","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("157","5","calefacci??n","calefacci??n","","31","Active","es","7");
INSERT INTO amenities VALUES("158","5","??s??tma","??s??tma","","32","Active","tr","8");
INSERT INTO amenities VALUES("159","8","???????? ??????????","???????? ??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("160","8","?????????","?????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("161","8","gym","gym","","28","Active","fr","4");
INSERT INTO amenities VALUES("162","8","Academia","Academia","","29","Active","pt","5");
INSERT INTO amenities VALUES("163","8","????????????????","????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("164","8","Gimnasio","Gimnasio","","31","Active","es","7");
INSERT INTO amenities VALUES("165","8","Jimnastik","Jimnastik","","32","Active","tr","8");
INSERT INTO amenities VALUES("166","20","?????????? ???????????? ???????????????? ???? ?????????? ??????????","?????????? ???????????? ???????????????? ???? ?????????? ??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("167","20","??????????????????","??????????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("168","20","parking gratuit sur place","parking gratuit sur place","","28","Active","fr","4");
INSERT INTO amenities VALUES("169","20","estacionamento gr??tis no local","estacionamento gr??tis no local","","29","Active","pt","5");
INSERT INTO amenities VALUES("170","20","???????????????????? ???????????????? ???? ????????????????????","???????????????????? ???????????????? ???? ????????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("171","20","estacionamiento gratuito en las instalaciones","estacionamiento gratuito en las instalaciones","","31","Active","es","7");
INSERT INTO amenities VALUES("172","20","tesis b??nyesinde ??cretsiz otopark","tesis b??nyesinde ??cretsiz otopark","","32","Active","tr","8");
INSERT INTO amenities VALUES("173","29","?????????? ?????????? ????????","?????????? ?????????? ????????","","19","Active","ar","2");
INSERT INTO amenities VALUES("174","29","?????????","?????????","","20","Active","ch","3");
INSERT INTO amenities VALUES("175","29","trousse de premiers secours","trousse de premiers secours","","21","Active","fr","4");
INSERT INTO amenities VALUES("176","29","kit de primeiros socorros","kit de primeiros socorros","","22","Active","pt","5");
INSERT INTO amenities VALUES("177","29","?????????????? ???????????? ????????????","?????????????? ???????????? ????????????","","23","Active","ru","6");
INSERT INTO amenities VALUES("178","29","Kit de primeros auxilios","Kit de primeros auxilios","","24","Active","es","7");
INSERT INTO amenities VALUES("179","29","ilk yard??m kiti","ilk yard??m kiti","","25","Active","tr","8");
INSERT INTO amenities VALUES("180","31","?????????? ????????","?????????? ????????","","19","Active","ar","2");
INSERT INTO amenities VALUES("181","31","?????????","?????????","","20","Active","ch","3");
INSERT INTO amenities VALUES("182","31","extincteur d\'incendie","extincteur d\'incendie","","21","Active","fr","4");
INSERT INTO amenities VALUES("183","31","extintor de inc??ndio","extintor de inc??ndio","","22","Active","pt","5");
INSERT INTO amenities VALUES("184","31","????????????????????????","????????????????????????","","23","Active","ru","6");
INSERT INTO amenities VALUES("185","31","extintor de incendios","extintor de incendios","","24","Active","es","7");
INSERT INTO amenities VALUES("186","31","yang??n s??nd??r??c??","yang??n s??nd??r??c??","","25","Active","tr","8");
INSERT INTO amenities VALUES("187","21","?????????? ???????????? / ??????","?????????? ???????????? / ??????","","26","Active","ar","2");
INSERT INTO amenities VALUES("188","21","??????/????????????","??????/????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("189","21","Adapt?? aux familles/enfants","Adapt?? aux familles/enfants","","28","Active","fr","4");
INSERT INTO amenities VALUES("190","21","Fam??lia / adequado para crian??as","Fam??lia / adequado para crian??as","","29","Active","pt","5");
INSERT INTO amenities VALUES("191","21","???????????????? ?????? ?????????? / ??????????","???????????????? ?????? ?????????? / ??????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("192","21","Apto para familias / ni??os","Apto para familias / ni??os","","31","Active","es","7");
INSERT INTO amenities VALUES("193","21","Aile/??ocuk Dostu","Aile/??ocuk Dostu","","32","Active","tr","8");
INSERT INTO amenities VALUES("194","1","??????????????????","?????????????? ???????????????? ???????????????? ???????? ????????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("195","1","?????????","????????????????????????????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("196","1","essentiel","Serviettes, draps, savon et papier toilette","","28","Active","fr","4");
INSERT INTO amenities VALUES("197","1","Essenciais","Toalhas, len????is, sabonete e papel higi??nico","","29","Active","pt","5");
INSERT INTO amenities VALUES("198","1","???????????????? ???????????? ??????????????????????????","??????????????????, ????????????????, ???????? ?? ?????????????????? ????????????.","","30","Active","ru","6");
INSERT INTO amenities VALUES("199","1","esenciales","Toallas, s??banas, jab??n y papel higi??nico.","","31","Active","es","7");
INSERT INTO amenities VALUES("200","1","temeller","Havlu, ??ar??af, sabun ve tuvalet ka????d??","","32","Active","tr","8");
INSERT INTO amenities VALUES("201","9","???????? ???? ????????????","???????? ???? ????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("202","9","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("203","9","Ascenseur dans le b??timent","Ascenseur dans le b??timent","","28","Active","fr","4");
INSERT INTO amenities VALUES("204","9","Elevador na constru????o","Elevador na constru????o","","29","Active","pt","5");
INSERT INTO amenities VALUES("205","9","???????? ?? ????????????","???????? ?? ????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("206","9","Ascensor en edificio","Ascensor en edificio","","31","Active","es","7");
INSERT INTO amenities VALUES("207","9","Binada Asans??r","Binada Asans??r","","32","Active","tr","8");
INSERT INTO amenities VALUES("208","18","????????","????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("209","18","?????????","?????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("210","18","s??choir","s??choir","","28","Active","fr","4");
INSERT INTO amenities VALUES("211","18","secador","secador","","29","Active","pt","5");
INSERT INTO amenities VALUES("212","18","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("213","18","secadora","secadora","","31","Active","es","7");
INSERT INTO amenities VALUES("214","18","kurutucu","kurutucu","","32","Active","tr","8");
INSERT INTO amenities VALUES("215","12","????????","????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("216","12","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("217","12","portier","portier","","28","Active","fr","4");
INSERT INTO amenities VALUES("218","12","porteiro","porteiro","","29","Active","pt","5");
INSERT INTO amenities VALUES("219","12","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("220","12","portero","portero","","31","Active","es","7");
INSERT INTO amenities VALUES("221","12","kap??c??","kap??c??","","32","Active","tr","8");
INSERT INTO amenities VALUES("222","28","???????? ?????? ?????????? ??????????????","???????? ?????? ?????????? ??????????????","","19","Active","ar","2");
INSERT INTO amenities VALUES("223","28","?????????????????????","?????????????????????","","20","Active","ch","3");
INSERT INTO amenities VALUES("224","28","Detecteur de monoxyde de carbone","Detecteur de monoxyde de carbone","","21","Active","fr","4");
INSERT INTO amenities VALUES("225","28","detector de mon??xido de carbono","detector de mon??xido de carbono","","22","Active","pt","5");
INSERT INTO amenities VALUES("226","28","???????????????? ???????????????? ????????","???????????????? ???????????????? ????????","","23","Active","ru","6");
INSERT INTO amenities VALUES("227","28","karbon monoksit dedekt??r??","karbon monoksit dedekt??r??","","24","Active","es","7");
INSERT INTO amenities VALUES("228","28","karbon monoksit dedekt??r??","karbon monoksit dedekt??r??","","25","Active","tr","8");
INSERT INTO amenities VALUES("229","3","???????????? ????????????????????","???????????? ????????????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("230","3","????????????","????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("231","3","t??l??vision par c??ble","t??l??vision par c??ble","","28","Active","fr","4");
INSERT INTO amenities VALUES("232","3","TV a cabo","TV a cabo","","29","Active","pt","5");
INSERT INTO amenities VALUES("233","3","?????????????????? ??????????????????????","?????????????????? ??????????????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("234","3","televisi??n por cable","televisi??n por cable","","31","Active","es","7");
INSERT INTO amenities VALUES("235","3","kablo TV","kablo TV","","32","Active","tr","8");
INSERT INTO amenities VALUES("236","11","?????????? / ?????????????? ?????????????? ????????????????","?????????? / ?????????????? ?????????????? ????????????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("237","11","?????????/????????????","?????????/????????????","","27","Active","ch","3");
INSERT INTO amenities VALUES("238","11","Avertisseur sonore/interphone sans fil","Avertisseur sonore/interphone sans fil","","28","Active","fr","4");
INSERT INTO amenities VALUES("239","11","Campainha / Intercom sem fio","Campainha / Intercom sem fio","","29","Active","pt","5");
INSERT INTO amenities VALUES("240","11","???????????? / ???????????????????????? ??????????????","???????????? / ???????????????????????? ??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("241","11","Zumbador / Intercomunicador inal??mbrico","Zumbador / Intercomunicador inal??mbrico","","31","Active","es","7");
INSERT INTO amenities VALUES("242","11","Buzzer/Kablosuz ??nterkom","Buzzer/Kablosuz ??nterkom","","32","Active","tr","8");
INSERT INTO amenities VALUES("243","19","???????? ??????????","???????? ??????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("244","19","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("245","19","d??jeuner","d??jeuner","","28","Active","fr","4");
INSERT INTO amenities VALUES("246","19","caf?? da manh??","caf?? da manh??","","29","Active","pt","5");
INSERT INTO amenities VALUES("247","19","??????????????","??????????????","","30","Active","ru","6");
INSERT INTO amenities VALUES("248","19","desayuno","desayuno","","31","Active","es","7");
INSERT INTO amenities VALUES("249","19","kahvalt??","kahvalt??","","32","Active","tr","8");
INSERT INTO amenities VALUES("250","4","????????","????????","","26","Active","ar","2");
INSERT INTO amenities VALUES("251","4","??????","??????","","27","Active","ch","3");
INSERT INTO amenities VALUES("252","4","Climatisation","Climatisation","","14","Active","fr","4");
INSERT INTO amenities VALUES("253","4","Ar condicionado","Ar condicionado","","29","Active","pt","5");
INSERT INTO amenities VALUES("254","4","?????????????????????????????????? ??????????????","?????????????????????????????????? ??????????????","","16","Active","ru","6");
INSERT INTO amenities VALUES("255","4","Aire acondicionado","Aire acondicionado","","31","Active","es","7");
INSERT INTO amenities VALUES("256","4","Klima","Klima","","32","Active","tr","8");





CREATE TABLE IF NOT EXISTS `amenity_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO amenity_type VALUES("1","1","Common Amenities","","en","1");
INSERT INTO amenity_type VALUES("2","2","Safety Amenities","","en","1");
INSERT INTO amenity_type VALUES("19","2","?????????? ???????????? ????????????????","?????????? ???????????? ????????????????","ar","2");
INSERT INTO amenity_type VALUES("20","2","????????????","????????????","ch","3");
INSERT INTO amenity_type VALUES("21","2","??quipements de s??curit??","??quipements de s??curit??","fr","4");
INSERT INTO amenity_type VALUES("22","2","Equipamentos de Seguran??a","Equipamentos de Seguran??a","pt","5");
INSERT INTO amenity_type VALUES("23","2","???????????????? ????????????????????????","???????????????? ????????????????????????","ru","6");
INSERT INTO amenity_type VALUES("24","2","Servicios de seguridad","Servicios de seguridad","es","7");
INSERT INTO amenity_type VALUES("25","2","G??venlik Olanaklar??","G??venlik Olanaklar??","tr","8");
INSERT INTO amenity_type VALUES("26","1","?????????? ???????????? ????????????????","","ar","2");
INSERT INTO amenity_type VALUES("27","1","????????????","","ch","3");
INSERT INTO amenity_type VALUES("28","1","Commodit??s communes","","fr","4");
INSERT INTO amenity_type VALUES("29","1","Amenidades comuns","","pt","5");
INSERT INTO amenity_type VALUES("30","1","?????????? ????????????????","","ru","6");
INSERT INTO amenity_type VALUES("31","1","Servicios comunes","","es","7");
INSERT INTO amenity_type VALUES("32","1","Ortak Olanaklar","","tr","8");





CREATE TABLE IF NOT EXISTS `backups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO backups VALUES("1","2021-08-05-074511.sql","2021-08-05 07:45:11","");
INSERT INTO backups VALUES("2","2022-01-19-204306.sql","2022-01-19 20:43:06","");





CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `heading` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subheading` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO banners VALUES("1","1","Book your trips in Bolivia","We have the place you want to be","banner_1640649697.jpg","Active","en","1");
INSERT INTO banners VALUES("4","4","Get your Rental Home","Experiences Local things to do, wherever you are.","banner_1640077250.jpg","Active","en","1");
INSERT INTO banners VALUES("5","5","Book Top Hill Tent","Experiences Local things to do, wherever you are.","banner_1640077336.jpg","Active","en","1");
INSERT INTO banners VALUES("6","5","????????  ???????? ?????? ??????","?????????????? ?????????????? ?????????????? ???????? ?????????? ???????????? ?????? ?? ?????????? ??????.","","Active","ar","2");
INSERT INTO banners VALUES("7","5","","","","Active","ch","3");
INSERT INTO banners VALUES("8","5","","","","Active","fr","4");
INSERT INTO banners VALUES("9","5","","","","Active","pt","5");
INSERT INTO banners VALUES("10","5","","","","Active","ru","6");
INSERT INTO banners VALUES("11","5","Book Top Hill Tent","Experiences Local things to do, wherever you are.","","Active","es","7");
INSERT INTO banners VALUES("12","5","Top Hill ??ad??r??","Nerede olursan??z olun, yap??lacak yerel ??eyleri deneyimler.","","Active","tr","8");
INSERT INTO banners VALUES("13","4","","","banner_1640077250.jpg","Active","ar","2");
INSERT INTO banners VALUES("14","4","","","banner_1640077250.jpg","Active","ch","3");
INSERT INTO banners VALUES("15","4","","","banner_1640077250.jpg","Active","fr","4");
INSERT INTO banners VALUES("16","4","","","banner_1640077250.jpg","Active","pt","5");
INSERT INTO banners VALUES("17","4","","","banner_1640077250.jpg","Active","ru","6");
INSERT INTO banners VALUES("18","4","","","banner_1640077250.jpg","Active","es","7");
INSERT INTO banners VALUES("19","4","","","banner_1640077250.jpg","Active","tr","8");
INSERT INTO banners VALUES("20","1","","","","Active","ar","2");
INSERT INTO banners VALUES("21","1","","","","Active","ch","3");
INSERT INTO banners VALUES("22","1","","","","Active","fr","4");
INSERT INTO banners VALUES("23","1","","","banner_1640649697.jpg","Active","pt","5");
INSERT INTO banners VALUES("24","1","","","","Active","ru","6");
INSERT INTO banners VALUES("25","1","Reserva tu hospedaje en Bolivia","Tenemos el lugar en el que quieres estar","banner_1640649697.jpg","Active","es","7");
INSERT INTO banners VALUES("26","1","","","","Active","tr","8");





CREATE TABLE IF NOT EXISTS `bed_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bed_type VALUES("1","1","king","en","1");
INSERT INTO bed_type VALUES("2","2","Queen","en","1");
INSERT INTO bed_type VALUES("3","3","Double","en","1");
INSERT INTO bed_type VALUES("4","4","Single","en","1");
INSERT INTO bed_type VALUES("5","5","Sofa bed","en","1");
INSERT INTO bed_type VALUES("6","6","Sofa","en","1");
INSERT INTO bed_type VALUES("7","7","Sofa bed","en","1");
INSERT INTO bed_type VALUES("8","8","Bunk bed","en","1");
INSERT INTO bed_type VALUES("9","9","Air mattress","en","1");
INSERT INTO bed_type VALUES("10","10","Floor mattress","en","1");
INSERT INTO bed_type VALUES("11","11","Toddler bed","en","1");
INSERT INTO bed_type VALUES("12","12","Crib","en","1");
INSERT INTO bed_type VALUES("13","13","Water bed","en","1");
INSERT INTO bed_type VALUES("14","14","Hammock","en","1");
INSERT INTO bed_type VALUES("23","23","single bed","en","1");
INSERT INTO bed_type VALUES("24","23","???????? ????????","ar","2");
INSERT INTO bed_type VALUES("25","23","?????????","ch","3");
INSERT INTO bed_type VALUES("26","23","lit simple","fr","4");
INSERT INTO bed_type VALUES("27","23","cama de solteiro","pt","5");
INSERT INTO bed_type VALUES("28","23","???????????????????????? ??????????????","ru","6");
INSERT INTO bed_type VALUES("29","23","cama individual","es","7");
INSERT INTO bed_type VALUES("30","23","tek ki??ilik yatak","tr","8");
INSERT INTO bed_type VALUES("31","1","??????","ar","2");
INSERT INTO bed_type VALUES("32","1","???","ch","3");
INSERT INTO bed_type VALUES("33","1","roi","fr","4");
INSERT INTO bed_type VALUES("34","1","Rei","pt","5");
INSERT INTO bed_type VALUES("35","1","????????????","ru","6");
INSERT INTO bed_type VALUES("36","1","Rey","es","7");
INSERT INTO bed_type VALUES("37","1","Kral","tr","8");
INSERT INTO bed_type VALUES("38","13","???????? ????????","ar","2");
INSERT INTO bed_type VALUES("39","13","??????","ch","3");
INSERT INTO bed_type VALUES("40","13","lit d\'eau","fr","4");
INSERT INTO bed_type VALUES("41","13","cama d\'??gua","pt","5");
INSERT INTO bed_type VALUES("42","13","?????????????? ??????????????","ru","6");
INSERT INTO bed_type VALUES("43","13","cama de agua","es","7");
INSERT INTO bed_type VALUES("44","13","su yata????","tr","8");
INSERT INTO bed_type VALUES("45","11","???????? ??????","ar","2");
INSERT INTO bed_type VALUES("46","11","?????????","ch","3");
INSERT INTO bed_type VALUES("47","11","Lit b??b??","fr","4");
INSERT INTO bed_type VALUES("48","11","Ber??o","pt","5");
INSERT INTO bed_type VALUES("49","11","?????????????? ?????? ??????????????","ru","6");
INSERT INTO bed_type VALUES("50","11","Cama para ni??o","es","7");
INSERT INTO bed_type VALUES("51","11","Y??r??meye ba??layan ??ocuk yata????","tr","8");
INSERT INTO bed_type VALUES("52","5","???????? ??????????","ar","2");
INSERT INTO bed_type VALUES("53","5","?????????","ch","3");
INSERT INTO bed_type VALUES("54","5","canap??-lit","fr","4");
INSERT INTO bed_type VALUES("55","5","sof??-cama","pt","5");
INSERT INTO bed_type VALUES("56","5","??????????-??????????????","ru","6");
INSERT INTO bed_type VALUES("57","5","Sofa cama","es","7");
INSERT INTO bed_type VALUES("58","5","??ekyat","tr","8");
INSERT INTO bed_type VALUES("59","6","????????","ar","2");
INSERT INTO bed_type VALUES("60","6","??????","ch","3");
INSERT INTO bed_type VALUES("61","6","sofa","fr","4");
INSERT INTO bed_type VALUES("62","6","sof??","pt","5");
INSERT INTO bed_type VALUES("63","6","??????????","ru","6");
INSERT INTO bed_type VALUES("64","6","sof??","es","7");
INSERT INTO bed_type VALUES("65","6","Divan","tr","8");
INSERT INTO bed_type VALUES("66","4","?????? ????????????","ar","2");
INSERT INTO bed_type VALUES("67","4","?????????","ch","3");
INSERT INTO bed_type VALUES("68","4","C??libataire","fr","4");
INSERT INTO bed_type VALUES("69","4","solteiro","pt","5");
INSERT INTO bed_type VALUES("70","4","????????","ru","6");
INSERT INTO bed_type VALUES("71","4","soltero","es","7");
INSERT INTO bed_type VALUES("72","4","tek bir","tr","8");
INSERT INTO bed_type VALUES("73","2","????????","ar","2");
INSERT INTO bed_type VALUES("74","2","??????","ch","3");
INSERT INTO bed_type VALUES("75","2","reine","fr","4");
INSERT INTO bed_type VALUES("76","2","rainha","pt","5");
INSERT INTO bed_type VALUES("77","2","????????????????","ru","6");
INSERT INTO bed_type VALUES("78","2","reina","es","7");
INSERT INTO bed_type VALUES("79","2","Krali??e","tr","8");
INSERT INTO bed_type VALUES("80","14","???????????? ??????????","ar","2");
INSERT INTO bed_type VALUES("81","14","??????","ch","3");
INSERT INTO bed_type VALUES("82","14","hamac","fr","4");
INSERT INTO bed_type VALUES("83","14","maca","pt","5");
INSERT INTO bed_type VALUES("84","14","??????????","ru","6");
INSERT INTO bed_type VALUES("85","14","hamaca","es","7");
INSERT INTO bed_type VALUES("86","14","hamak","tr","8");
INSERT INTO bed_type VALUES("87","10","?????????? ??????????","ar","2");
INSERT INTO bed_type VALUES("88","10","??????","ch","3");
INSERT INTO bed_type VALUES("89","10","matelas de sol","fr","4");
INSERT INTO bed_type VALUES("90","10","colch??o de ch??o","pt","5");
INSERT INTO bed_type VALUES("91","10","?????????????????? ????????????","ru","6");
INSERT INTO bed_type VALUES("92","10","colch??n de suelo","es","7");
INSERT INTO bed_type VALUES("93","10","yer yata????","tr","8");
INSERT INTO bed_type VALUES("94","3","??????????","ar","2");
INSERT INTO bed_type VALUES("95","3","?????????","ch","3");
INSERT INTO bed_type VALUES("96","3","double","fr","4");
INSERT INTO bed_type VALUES("97","3","duplo","pt","5");
INSERT INTO bed_type VALUES("98","3","??????????????","ru","6");
INSERT INTO bed_type VALUES("99","3","doble","es","7");
INSERT INTO bed_type VALUES("100","3","??ift","tr","8");
INSERT INTO bed_type VALUES("101","12","????????","ar","2");
INSERT INTO bed_type VALUES("102","12","?????????","ch","3");
INSERT INTO bed_type VALUES("103","12","cr??che","fr","4");
INSERT INTO bed_type VALUES("104","12","ber??o","pt","5");
INSERT INTO bed_type VALUES("105","12","?????????????? ????????????????","ru","6");
INSERT INTO bed_type VALUES("106","12","cuna","es","7");
INSERT INTO bed_type VALUES("107","12","be??ik","tr","8");
INSERT INTO bed_type VALUES("108","8","???????? ???????? ???? ???????????? ???????? ?? ????????","ar","2");
INSERT INTO bed_type VALUES("109","8","?????????","ch","3");
INSERT INTO bed_type VALUES("110","8","lit superpos??","fr","4");
INSERT INTO bed_type VALUES("111","8","beliche","pt","5");
INSERT INTO bed_type VALUES("112","8","???????????????????????? ??????????????","ru","6");
INSERT INTO bed_type VALUES("113","8","litera","es","7");
INSERT INTO bed_type VALUES("114","8","ranza","tr","8");
INSERT INTO bed_type VALUES("115","9","?????????? ????????????","ar","2");
INSERT INTO bed_type VALUES("116","9","??????","ch","3");
INSERT INTO bed_type VALUES("117","9","matelas d\'air","fr","4");
INSERT INTO bed_type VALUES("118","9","colch??o de ar","pt","5");
INSERT INTO bed_type VALUES("119","9","???????????????? ????????????","ru","6");
INSERT INTO bed_type VALUES("120","9","colch??n de aire","es","7");
INSERT INTO bed_type VALUES("121","9","??i??me yatak","tr","8");





CREATE TABLE IF NOT EXISTS `booking_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO booking_details VALUES("1","1","country","");
INSERT INTO booking_details VALUES("2","2","country","");
INSERT INTO booking_details VALUES("3","3","country","IN");
INSERT INTO booking_details VALUES("4","4","country","IN");
INSERT INTO booking_details VALUES("5","5","country","");
INSERT INTO booking_details VALUES("6","6","country","");
INSERT INTO booking_details VALUES("7","7","country","");
INSERT INTO booking_details VALUES("8","8","country","");
INSERT INTO booking_details VALUES("9","9","country","IN");
INSERT INTO booking_details VALUES("10","10","country","");
INSERT INTO booking_details VALUES("11","11","country","IN");
INSERT INTO booking_details VALUES("12","12","country","");
INSERT INTO booking_details VALUES("13","13","country","");
INSERT INTO booking_details VALUES("14","14","country","");
INSERT INTO booking_details VALUES("15","15","country","");
INSERT INTO booking_details VALUES("16","16","country","");
INSERT INTO booking_details VALUES("17","17","country","");
INSERT INTO booking_details VALUES("18","18","country","");
INSERT INTO booking_details VALUES("19","18","decline_reason","dates_not_available");
INSERT INTO booking_details VALUES("20","19","country","");
INSERT INTO booking_details VALUES("21","19","cancelled_reason","no_longer_available");
INSERT INTO booking_details VALUES("22","20","country","");
INSERT INTO booking_details VALUES("23","21","country","");
INSERT INTO booking_details VALUES("24","22","country","");
INSERT INTO booking_details VALUES("25","22","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("26","23","country","IN");
INSERT INTO booking_details VALUES("27","23","cancelled_reason","other");
INSERT INTO booking_details VALUES("28","24","country","IN");
INSERT INTO booking_details VALUES("29","25","country","IN");
INSERT INTO booking_details VALUES("30","26","country","");
INSERT INTO booking_details VALUES("31","26","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("32","25","cancelled_reason","place_not_okay");
INSERT INTO booking_details VALUES("33","27","country","");
INSERT INTO booking_details VALUES("34","27","cancelled_reason","IN");
INSERT INTO booking_details VALUES("35","28","country","IN");
INSERT INTO booking_details VALUES("36","28","cancelled_reason","other");
INSERT INTO booking_details VALUES("37","29","country","IN");
INSERT INTO booking_details VALUES("38","29","cancelled_reason","no_longer_need_accommodations");
INSERT INTO booking_details VALUES("39","30","country","IN");
INSERT INTO booking_details VALUES("40","30","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("41","31","country","");
INSERT INTO booking_details VALUES("42","31","cancelled_reason","IN");
INSERT INTO booking_details VALUES("43","32","country","");
INSERT INTO booking_details VALUES("44","32","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("45","33","country","");
INSERT INTO booking_details VALUES("46","34","country","IN");
INSERT INTO booking_details VALUES("47","34","cancelled_reason","no_longer_need_accommodations");
INSERT INTO booking_details VALUES("48","35","country","IN");
INSERT INTO booking_details VALUES("49","35","cancelled_reason","IN");
INSERT INTO booking_details VALUES("50","36","country","IN");
INSERT INTO booking_details VALUES("51","36","cancelled_reason","IN");
INSERT INTO booking_details VALUES("52","37","country","IN");
INSERT INTO booking_details VALUES("53","37","cancelled_reason","need_maintenance");
INSERT INTO booking_details VALUES("54","38","country","IN");
INSERT INTO booking_details VALUES("55","39","country","");
INSERT INTO booking_details VALUES("56","39","cancelled_reason","IN");
INSERT INTO booking_details VALUES("57","40","country","");
INSERT INTO booking_details VALUES("58","40","cancelled_reason","no_longer_need_accommodations");
INSERT INTO booking_details VALUES("59","41","country","");
INSERT INTO booking_details VALUES("60","41","cancelled_reason","made_the_reservation_by_accident");
INSERT INTO booking_details VALUES("61","42","country","");
INSERT INTO booking_details VALUES("62","42","cancelled_reason","place_not_okay");
INSERT INTO booking_details VALUES("63","43","country","IN");
INSERT INTO booking_details VALUES("64","43","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("65","44","country","");
INSERT INTO booking_details VALUES("66","44","cancelled_reason","no_longer_available");
INSERT INTO booking_details VALUES("67","45","country","");
INSERT INTO booking_details VALUES("68","45","cancelled_reason","no_longer_available");
INSERT INTO booking_details VALUES("69","46","country","");
INSERT INTO booking_details VALUES("70","46","cancelled_reason","need_maintenance");
INSERT INTO booking_details VALUES("71","46","cancelled_reason","need_maintenance");
INSERT INTO booking_details VALUES("72","47","country","");
INSERT INTO booking_details VALUES("73","47","cancelled_reason","no_longer_available");
INSERT INTO booking_details VALUES("74","48","country","");
INSERT INTO booking_details VALUES("75","48","cancelled_reason","need_maintenance");
INSERT INTO booking_details VALUES("76","49","country","");
INSERT INTO booking_details VALUES("77","49","cancelled_reason","no_longer_available");
INSERT INTO booking_details VALUES("78","50","country","");
INSERT INTO booking_details VALUES("79","50","cancelled_reason","travel_dates_changed");
INSERT INTO booking_details VALUES("80","51","country","");
INSERT INTO booking_details VALUES("81","51","cancelled_reason","no_longer_need_accommodations");
INSERT INTO booking_details VALUES("82","52","country","");
INSERT INTO booking_details VALUES("83","52","cancelled_reason","no_longer_need_accommodations");
INSERT INTO booking_details VALUES("84","53","country","IN");
INSERT INTO booking_details VALUES("85","54","country","");
INSERT INTO booking_details VALUES("86","55","country","");
INSERT INTO booking_details VALUES("87","56","country","");
INSERT INTO booking_details VALUES("88","57","country","");
INSERT INTO booking_details VALUES("89","58","country","");
INSERT INTO booking_details VALUES("90","59","country","");
INSERT INTO booking_details VALUES("91","60","country","");
INSERT INTO booking_details VALUES("92","61","country","IN");
INSERT INTO booking_details VALUES("93","62","country","BO");





CREATE TABLE IF NOT EXISTS `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Accepted','Pending','Cancelled','Declined','Expired','Processing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `guest` int(11) NOT NULL DEFAULT 0,
  `total_night` int(11) NOT NULL DEFAULT 0,
  `per_night` double NOT NULL DEFAULT 0,
  `custom_price_dates` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_price` double NOT NULL DEFAULT 0,
  `cleaning_charge` double NOT NULL DEFAULT 0,
  `guest_charge` double NOT NULL DEFAULT 0,
  `service_charge` double NOT NULL DEFAULT 0,
  `security_money` double NOT NULL DEFAULT 0,
  `iva_tax` double NOT NULL DEFAULT 0,
  `accomodation_tax` double NOT NULL DEFAULT 0,
  `host_fee` double NOT NULL DEFAULT 0,
  `total` double NOT NULL DEFAULT 0,
  `booking_type` enum('request','instant') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_with_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancellation` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(11) NOT NULL DEFAULT 0,
  `accepted_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL,
  `declined_at` timestamp NULL DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` enum('Host','Guest') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO bookings VALUES("3","4","Y7gdXt","1","2","2021-08-09","2021-08-10","Accepted","1","1","20","","21","0","0","1","0","0","0","0","21","instant","USD","[{\"price\":20,\"date\":\"2021-08-09\"}]","Flexible","ch_3JMRUHDpvvQP5tMR4qf6cylg","2","","","","","","2021-08-09 04:27:24","2021-08-09 04:27:24");
INSERT INTO bookings VALUES("4","4","fTGQi2","1","2","2021-08-11","2021-08-11","Accepted","1","1","20","","21","0","0","1","0","0","0","0","21","instant","USD","[{\"price\":20,\"date\":\"2021-08-11\"}]","Flexible","ch_3JMRW0DpvvQP5tMR3g5cBVqB","2","","","","","","2021-08-09 04:29:11","2021-08-09 04:29:11");
INSERT INTO bookings VALUES("5","4","uvj2Mi","1","2","1970-01-01","1970-01-01","Pending","1","1","20","","21","0","0","1","0","0","0","0","21","request","USD","[{\"price\":20,\"date\":\"1970-01-01\"}]","Flexible","","0","","","","","","2021-08-13 07:08:04","2021-08-13 07:08:04");
INSERT INTO bookings VALUES("6","6","HWG35c","2","13","2021-08-24","2021-08-25","Pending","1","1","50","","53","0","0","3","0","0","0","0","53","request","USD","[{\"price\":50,\"date\":\"2021-08-24\"}]","Flexible","","0","","","","","","2021-08-24 00:52:33","2021-08-24 00:52:33");
INSERT INTO bookings VALUES("7","59","bwPM8m","14","15","2021-08-24","2021-08-25","Pending","1","1","85","","101","5","0","4","7","0","0","0","101","request","USD","[{\"price\":85,\"date\":\"2021-08-24\"}]","Flexible","","0","","","","","","2021-08-24 07:16:04","2021-08-24 07:16:04");
INSERT INTO bookings VALUES("8","60","6Wh0HR","15","14","2021-08-30","2021-08-31","Processing","1","1","35","","42","5","0","2","0","0","0","0","42","request","USD","[{\"price\":35,\"date\":\"2021-08-30\"}]","Flexible","","0","2021-08-30 07:58:49","","","","","2021-08-30 07:44:30","2021-08-30 07:58:49");
INSERT INTO bookings VALUES("9","52","sOx14B","14","2","2021-08-31","2021-09-01","Accepted","1","1","35","","37","0","0","2","0","0","0","0","37","request","USD","[{\"price\":35,\"date\":\"2021-08-31\"}]","Flexible","3GK03127X2248760N","1","2021-08-31 03:01:19","","","","","2021-08-31 03:00:36","2021-08-31 03:30:44");
INSERT INTO bookings VALUES("10","53","gDL1nP","14","2","2021-08-31","2021-09-01","Processing","1","1","47","","59","0","0","2","10","0","0","0","59","request","USD","[{\"price\":47,\"date\":\"2021-08-31\"}]","Flexible","","0","2021-08-31 03:34:43","","","","","2021-08-31 03:33:45","2021-08-31 03:34:43");
INSERT INTO bookings VALUES("11","60","pdoUA0","15","14","2021-09-02","2021-09-03","Accepted","1","1","35","","42","5","0","2","0","0","0","0","42","request","USD","[{\"price\":35,\"date\":\"2021-09-02\"}]","Flexible","ch_3JV83xSHoGAoXlO01kOmivPp","2","2021-09-01 23:28:50","","","","","2021-09-01 23:28:21","2021-09-01 23:32:08");
INSERT INTO bookings VALUES("13","53","FHvXO6","14","1","2021-09-13","2021-09-14","Pending","1","1","47","","59","0","0","2","10","0","0","0","59","request","USD","[{\"price\":47,\"date\":\"2021-09-13\"}]","Flexible","","0","","","","","","2021-09-12 23:38:06","2021-09-12 23:38:06");
INSERT INTO bookings VALUES("14","53","Ivx1Jp","14","1","2021-09-13","2021-09-14","Pending","1","1","47","","59","0","0","2","10","0","0","0","59","request","USD","[{\"price\":47,\"date\":\"2021-09-13\"}]","Flexible","","0","","","","","","2021-09-12 23:55:19","2021-09-12 23:55:19");
INSERT INTO bookings VALUES("15","53","q02pOp","14","1","2021-09-13","2021-09-14","Pending","1","1","47","","59","0","0","2","10","0","0","0","59","request","USD","[{\"price\":47,\"date\":\"2021-09-13\"}]","Flexible","","0","","","","","","2021-09-12 23:58:13","2021-09-12 23:58:13");
INSERT INTO bookings VALUES("16","71","2xOY3m","1","2","2021-11-13","2021-11-14","Pending","1","1","15","","16","0","0","1","0","0","0","0","16","request","USD","[{\"price\":15,\"date\":\"2021-11-13\"}]","Flexible","","0","","","","","","2021-11-10 21:01:54","2021-11-10 21:01:55");
INSERT INTO bookings VALUES("17","70","6mFNQz","1","2","2021-11-11","2021-11-30","Pending","1","19","5","","100","0","0","5","0","0","0","3","100","request","USD","[{\"price\":5,\"date\":\"2021-11-11\"},{\"price\":5,\"date\":\"2021-11-12\"},{\"price\":5,\"date\":\"2021-11-13\"},{\"price\":5,\"date\":\"2021-11-14\"},{\"price\":5,\"date\":\"2021-11-15\"},{\"price\":5,\"date\":\"2021-11-16\"},{\"price\":5,\"date\":\"2021-11-17\"},{\"price\":5,\"date\":\"2021-11-18\"","Flexible","","0","","","","","","2021-11-10 21:18:32","2021-11-10 21:18:32");
INSERT INTO bookings VALUES("18","70","o2pwLf","1","2","2021-11-15","2021-11-16","Declined","1","1","5","","5","0","0","0","0","0","0","0","5","request","USD","[{\"price\":5,\"date\":\"2021-11-15\"}]","Flexible","","0","","","2021-11-11 01:44:36","","","2021-11-11 01:42:21","2021-11-11 01:44:36");
INSERT INTO bookings VALUES("19","70","Mk6veM","1","2","2021-11-20","2021-11-30","Cancelled","1","10","5","","53","0","0","3","0","0","0","2","53","request","USD","[{\"price\":5,\"date\":\"2021-11-20\"},{\"price\":5,\"date\":\"2021-11-21\"},{\"price\":5,\"date\":\"2021-11-22\"},{\"price\":5,\"date\":\"2021-11-23\"},{\"price\":5,\"date\":\"2021-11-24\"},{\"price\":5,\"date\":\"2021-11-25\"},{\"price\":5,\"date\":\"2021-11-26\"},{\"price\":5,\"date\":\"2021-11-27\"","Flexible","","0","2021-11-11 02:37:10","","","2021-11-11 03:20:59","Host","2021-11-11 01:47:12","2021-11-11 03:20:59");
INSERT INTO bookings VALUES("20","6","CIFc2W","2","1","2021-11-24","2021-11-25","Pending","1","1","50","","58","5","0","3","0","0","0","2","58","request","USD","[{\"price\":50,\"date\":\"2021-11-24\"}]","Flexible","","0","","","","","","2021-11-23 21:32:51","2021-11-23 21:32:51");
INSERT INTO bookings VALUES("21","6","3Jty1H","2","1","2021-11-26","2021-11-27","Pending","1","1","10","","16","5","0","1","0","0","0","1","16","request","USD","[{\"price\":10,\"date\":\"2021-11-26\"}]","Flexible","","0","","","","","","2021-11-25 21:06:35","2021-11-25 21:06:35");
INSERT INTO bookings VALUES("22","6","ISkIZ1","2","1","2021-12-01","2021-12-02","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","request","USD","[{\"price\":10,\"date\":\"2021-12-01\"}]","Flexible","","0","","","","2021-11-25 21:45:08","Guest","2021-11-25 21:44:15","2021-11-25 21:45:08");
INSERT INTO bookings VALUES("23","6","Gz4CrH","2","1","2021-12-03","2021-12-04","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","instant","USD","[{\"price\":10,\"date\":\"2021-12-03\"}]","Flexible","0EU76903DH167335H","1","","","","2021-11-26 01:01:44","Guest","2021-11-26 00:58:03","2021-11-26 01:01:44");
INSERT INTO bookings VALUES("24","6","NN3y1Z","2","1","2021-12-10","2021-12-11","Accepted","1","1","10","","16","5","0","1","0","0","0","5","16","instant","USD","[{\"price\":10,\"date\":\"2021-12-10\"}]","Flexible","64E650980D4314509","1","","","","","","2021-11-26 01:13:46","2021-11-26 01:13:46");
INSERT INTO bookings VALUES("25","6","dhG42M","2","1","2021-11-29","2021-11-30","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","instant","USD","[{\"price\":10,\"date\":\"2021-11-29\"}]","Flexible","52K63395NM975623V","1","","","","2021-11-26 19:32:41","Guest","2021-11-26 01:26:16","2021-11-26 19:32:41");
INSERT INTO bookings VALUES("26","6","8Hvx4S","2","1","2021-12-09","2021-12-10","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","request","USD","[{\"price\":10,\"date\":\"2021-12-09\"}]","Flexible","","0","","","","2021-11-26 18:21:48","Guest","2021-11-26 18:19:24","2021-11-26 18:21:48");
INSERT INTO bookings VALUES("27","6","s1WJjs","2","1","2021-12-15","2021-12-16","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","request","USD","[{\"price\":10,\"date\":\"2021-12-15\"}]","Flexible","","0","","","","2021-11-29 22:14:11","Host","2021-11-29 22:04:41","2021-11-29 22:14:11");
INSERT INTO bookings VALUES("28","6","Ju2y8q","2","1","2021-12-20","2021-12-21","Cancelled","1","1","10","","16","5","0","1","0","0","0","1","16","instant","USD","[{\"price\":10,\"date\":\"2021-12-20\"}]","Flexible","4U5449883H691801W","1","","","","2021-11-30 00:29:53","Host","2021-11-30 00:19:26","2021-11-30 00:29:53");
INSERT INTO bookings VALUES("29","73","gVrJo7","1","2","2021-12-25","2022-01-03","Cancelled","1","9","200","","2000","10","0","90","100","0","0","90","2000","request","USD","[{\"price\":200,\"date\":\"2021-12-25\"},{\"price\":200,\"date\":\"2021-12-26\"},{\"price\":200,\"date\":\"2021-12-27\"},{\"price\":200,\"date\":\"2021-12-28\"},{\"price\":200,\"date\":\"2021-12-29\"},{\"price\":200,\"date\":\"2021-12-30\"},{\"price\":200,\"date\":\"2021-12-31\"},{\"price\":200,\"da","Flexible","","0","","","","2021-12-01 19:59:45","Guest","2021-12-01 19:56:08","2021-12-01 19:59:45");
INSERT INTO bookings VALUES("30","73","Xc9sJ4","1","2","2021-12-25","2022-01-03","Cancelled","2","9","200","","2000","10","0","90","100","0","0","90","2000","request","USD","[{\"price\":200,\"date\":\"2021-12-25\"},{\"price\":200,\"date\":\"2021-12-26\"},{\"price\":200,\"date\":\"2021-12-27\"},{\"price\":200,\"date\":\"2021-12-28\"},{\"price\":200,\"date\":\"2021-12-29\"},{\"price\":200,\"date\":\"2021-12-30\"},{\"price\":200,\"date\":\"2021-12-31\"},{\"price\":200,\"da","Flexible","","0","2021-12-01 20:07:45","","","2021-12-01 20:11:03","Guest","2021-12-01 20:03:37","2021-12-01 20:11:03");
INSERT INTO bookings VALUES("31","74","ZGtK3S","17","18","2021-12-24","2021-12-30","Cancelled","1","6","200","","1370","10","0","60","100","0","0","60","1370","request","USD","[{\"price\":200,\"date\":\"2021-12-24\"},{\"price\":200,\"date\":\"2021-12-25\"},{\"price\":200,\"date\":\"2021-12-26\"},{\"price\":200,\"date\":\"2021-12-27\"},{\"price\":200,\"date\":\"2021-12-28\"},{\"price\":200,\"date\":\"2021-12-29\"}]","Flexible","","0","","","","2021-12-01 20:30:02","Guest","2021-12-01 20:29:09","2021-12-01 20:30:02");
INSERT INTO bookings VALUES("32","74","x3bH1G","17","18","2022-01-01","2022-01-09","Cancelled","1","8","200","","1790","10","0","80","100","0","0","80","1790","request","USD","[{\"price\":200,\"date\":\"2022-01-01\"},{\"price\":200,\"date\":\"2022-01-02\"},{\"price\":200,\"date\":\"2022-01-03\"},{\"price\":200,\"date\":\"2022-01-04\"},{\"price\":200,\"date\":\"2022-01-05\"},{\"price\":200,\"date\":\"2022-01-06\"},{\"price\":200,\"date\":\"2022-01-07\"},{\"price\":200,\"da","Flexible","","0","2021-12-01 20:44:51","","","2021-12-01 20:46:11","Guest","2021-12-01 20:43:59","2021-12-01 20:46:11");
INSERT INTO bookings VALUES("33","74","Gga9hZ","17","18","2022-01-10","2022-01-15","Expired","2","5","200","","1660","10","500","50","100","0","0","50","1660","request","USD","[{\"price\":200,\"date\":\"2022-01-10\"},{\"price\":200,\"date\":\"2022-01-11\"},{\"price\":200,\"date\":\"2022-01-12\"},{\"price\":200,\"date\":\"2022-01-13\"},{\"price\":200,\"date\":\"2022-01-14\"}]","Flexible","","0","2021-12-01 20:55:50","","","","","2021-12-01 20:52:30","2021-12-02 21:38:54");
INSERT INTO bookings VALUES("34","73","7szfRC","1","2","2022-01-01","2022-01-07","Cancelled","2","6","200","","1370","10","0","60","100","0","0","60","1370","request","USD","[{\"price\":200,\"date\":\"2022-01-01\"},{\"price\":200,\"date\":\"2022-01-02\"},{\"price\":200,\"date\":\"2022-01-03\"},{\"price\":200,\"date\":\"2022-01-04\"},{\"price\":200,\"date\":\"2022-01-05\"},{\"price\":200,\"date\":\"2022-01-06\"}]","Flexible","8H387126UE8736637","1","2021-12-01 21:18:07","","","2021-12-01 21:43:24","Guest","2021-12-01 21:17:42","2021-12-01 21:43:24");
INSERT INTO bookings VALUES("35","75","iv3TKv","17","18","2022-01-01","2022-01-05","Cancelled","2","4","100","","675","5","200","20","50","0","0","20","675","instant","USD","[{\"price\":100,\"date\":\"2022-01-01\"},{\"price\":100,\"date\":\"2022-01-02\"},{\"price\":100,\"date\":\"2022-01-03\"},{\"price\":100,\"date\":\"2022-01-04\"}]","Flexible","138898925C441160C","1","","","","2021-12-01 23:43:28","Guest","2021-12-01 23:40:50","2021-12-01 23:43:28");
INSERT INTO bookings VALUES("36","74","fLJ9ga","17","18","2021-12-05","2021-12-10","Cancelled","1","5","200","","1160","10","0","50","100","0","0","50","1160","request","USD","[{\"price\":200,\"date\":\"2021-12-05\"},{\"price\":200,\"date\":\"2021-12-06\"},{\"price\":200,\"date\":\"2021-12-07\"},{\"price\":200,\"date\":\"2021-12-08\"},{\"price\":200,\"date\":\"2021-12-09\"}]","Flexible","","0","","","","2021-12-02 00:07:20","Host","2021-12-02 00:05:22","2021-12-02 00:07:20");
INSERT INTO bookings VALUES("37","74","s28l7V","17","18","2021-12-19","2021-12-25","Cancelled","2","6","200","","1370","10","0","60","100","0","0","60","1370","request","USD","[{\"price\":200,\"date\":\"2021-12-19\"},{\"price\":200,\"date\":\"2021-12-20\"},{\"price\":200,\"date\":\"2021-12-21\"},{\"price\":200,\"date\":\"2021-12-22\"},{\"price\":200,\"date\":\"2021-12-23\"},{\"price\":200,\"date\":\"2021-12-24\"}]","Flexible","8F222632JK165292A","1","2021-12-02 00:42:31","","","2021-12-02 00:45:21","Host","2021-12-02 00:41:56","2021-12-02 00:45:21");
INSERT INTO bookings VALUES("38","6","UQsF4e","2","17","2021-12-02","2021-12-03","Accepted","1","1","10","","16","5","0","1","0","0","0","1","16","instant","USD","[{\"price\":10,\"date\":\"2021-12-02\"}]","Flexible","2D034258DW512350P","1","","","","","","2021-12-02 02:55:07","2021-12-02 02:55:07");
INSERT INTO bookings VALUES("39","74","Oa8B9x","17","2","2021-12-29","2021-12-31","Cancelled","1","2","200","","530","10","0","20","100","0","0","20","530","request","USD","[{\"price\":200,\"date\":\"2021-12-29\"},{\"price\":200,\"date\":\"2021-12-30\"}]","Flexible","17R81599T83362517","1","2021-12-02 03:02:50","","","2021-12-02 03:07:54","Host","2021-12-02 03:01:42","2021-12-02 03:07:54");
INSERT INTO bookings VALUES("40","77","3yR70P","17","18","2022-01-01","2022-01-05","Cancelled","2","4","100","","475","5","0","20","50","0","0","20","475","request","USD","[{\"price\":100,\"date\":\"2022-01-01\"},{\"price\":100,\"date\":\"2022-01-02\"},{\"price\":100,\"date\":\"2022-01-03\"},{\"price\":100,\"date\":\"2022-01-04\"}]","Flexible","","0","","","","2021-12-02 19:15:47","Guest","2021-12-02 19:14:19","2021-12-02 19:15:47");
INSERT INTO bookings VALUES("41","77","pjWc16","17","18","2021-12-10","2021-12-15","Cancelled","2","5","100","","580","5","0","25","50","0","0","25","580","request","USD","[{\"price\":100,\"date\":\"2021-12-10\"},{\"price\":100,\"date\":\"2021-12-11\"},{\"price\":100,\"date\":\"2021-12-12\"},{\"price\":100,\"date\":\"2021-12-13\"},{\"price\":100,\"date\":\"2021-12-14\"}]","Flexible","","0","2021-12-02 19:24:13","","","2021-12-02 19:26:34","Guest","2021-12-02 19:22:37","2021-12-02 19:26:34");
INSERT INTO bookings VALUES("42","77","1hxJV5","17","18","2021-12-24","2021-12-28","Cancelled","3","4","100","","475","5","0","20","50","0","0","20","475","request","USD","[{\"price\":100,\"date\":\"2021-12-24\"},{\"price\":100,\"date\":\"2021-12-25\"},{\"price\":100,\"date\":\"2021-12-26\"},{\"price\":100,\"date\":\"2021-12-27\"}]","Flexible","6MT79912NF181314F","1","2021-12-02 19:48:54","","","2021-12-02 19:54:50","Guest","2021-12-02 19:47:18","2021-12-02 19:54:50");
INSERT INTO bookings VALUES("43","78","2ro3Yo","17","18","2021-12-11","2021-12-17","Cancelled","1","6","200","","1370","10","0","60","100","0","0","60","1370","instant","USD","[{\"price\":200,\"date\":\"2021-12-11\"},{\"price\":200,\"date\":\"2021-12-12\"},{\"price\":200,\"date\":\"2021-12-13\"},{\"price\":200,\"date\":\"2021-12-14\"},{\"price\":200,\"date\":\"2021-12-15\"},{\"price\":200,\"date\":\"2021-12-16\"}]","Flexible","43287383FX184464X","1","","","","2021-12-02 20:38:15","Guest","2021-12-02 20:17:23","2021-12-02 20:38:15");
INSERT INTO bookings VALUES("44","74","ymO32R","17","18","2022-01-01","2022-01-05","Cancelled","2","4","200","","950","10","0","40","100","0","0","40","950","request","USD","[{\"price\":200,\"date\":\"2022-01-01\"},{\"price\":200,\"date\":\"2022-01-02\"},{\"price\":200,\"date\":\"2022-01-03\"},{\"price\":200,\"date\":\"2022-01-04\"}]","Flexible","","0","","","","2021-12-02 21:14:27","Host","2021-12-02 21:13:24","2021-12-02 21:14:27");
INSERT INTO bookings VALUES("45","77","8Y5tMc","17","18","2021-12-10","2021-12-15","Cancelled","2","5","100","","580","5","0","25","50","0","0","25","580","request","USD","[{\"price\":100,\"date\":\"2021-12-10\"},{\"price\":100,\"date\":\"2021-12-11\"},{\"price\":100,\"date\":\"2021-12-12\"},{\"price\":100,\"date\":\"2021-12-13\"},{\"price\":100,\"date\":\"2021-12-14\"}]","Flexible","","0","2021-12-02 21:33:29","","","2021-12-02 21:34:38","Host","2021-12-02 21:32:31","2021-12-02 21:34:38");
INSERT INTO bookings VALUES("46","74","z6Rtft","17","18","2022-01-10","2022-01-15","Cancelled","2","5","200","","1160","10","0","50","100","0","0","50","1160","request","USD","[{\"price\":200,\"date\":\"2022-01-10\"},{\"price\":200,\"date\":\"2022-01-11\"},{\"price\":200,\"date\":\"2022-01-12\"},{\"price\":200,\"date\":\"2022-01-13\"},{\"price\":200,\"date\":\"2022-01-14\"}]","Flexible","0PG1979155464313C","1","2021-12-02 21:38:04","","","2021-12-02 21:42:21","Host","2021-12-02 21:37:04","2021-12-02 21:42:21");
INSERT INTO bookings VALUES("47","77","EKxz73","17","18","2021-12-10","2021-12-15","Cancelled","2","5","100","","580","5","0","25","50","0","0","25","580","request","USD","[{\"price\":100,\"date\":\"2021-12-10\"},{\"price\":100,\"date\":\"2021-12-11\"},{\"price\":100,\"date\":\"2021-12-12\"},{\"price\":100,\"date\":\"2021-12-13\"},{\"price\":100,\"date\":\"2021-12-14\"}]","Flexible","","0","2021-12-02 23:53:14","","","2021-12-02 23:55:08","Host","2021-12-02 23:52:24","2021-12-02 23:55:08");
INSERT INTO bookings VALUES("48","74","NE4S2r","17","18","2021-12-11","2021-12-17","Cancelled","2","6","200","","1370","10","0","60","100","0","0","60","1370","request","USD","[{\"price\":200,\"date\":\"2021-12-11\"},{\"price\":200,\"date\":\"2021-12-12\"},{\"price\":200,\"date\":\"2021-12-13\"},{\"price\":200,\"date\":\"2021-12-14\"},{\"price\":200,\"date\":\"2021-12-15\"},{\"price\":200,\"date\":\"2021-12-16\"}]","Flexible","2WK15834SL333454D","1","2021-12-03 00:01:55","","","2021-12-03 00:05:22","Host","2021-12-03 00:01:08","2021-12-03 00:05:22");
INSERT INTO bookings VALUES("49","77","694ceU","17","18","2021-12-12","2021-12-16","Cancelled","2","4","100","","475","5","0","20","50","0","0","20","475","request","USD","[{\"price\":100,\"date\":\"2021-12-12\"},{\"price\":100,\"date\":\"2021-12-13\"},{\"price\":100,\"date\":\"2021-12-14\"},{\"price\":100,\"date\":\"2021-12-15\"}]","Flexible","9JC49222AH387215A","1","2021-12-03 01:03:39","","","2021-12-03 01:07:05","Host","2021-12-03 01:03:03","2021-12-03 01:07:05");
INSERT INTO bookings VALUES("50","79","Sbt0AL","17","18","2021-12-07","2021-12-11","Cancelled","2","4","100","","480","10","0","20","50","0","0","20","480","request","USD","[{\"price\":100,\"date\":\"2021-12-07\"},{\"price\":100,\"date\":\"2021-12-08\"},{\"price\":100,\"date\":\"2021-12-09\"},{\"price\":100,\"date\":\"2021-12-10\"}]","Moderate","6XF78966PU7044242","1","2021-12-03 02:30:05","","","2021-12-03 02:35:17","Guest","2021-12-03 02:29:29","2021-12-03 02:35:17");
INSERT INTO bookings VALUES("51","80","j6BHhX","17","18","2021-12-08","2021-12-12","Cancelled","2","4","100","","480","10","0","20","50","0","0","20","480","request","USD","[{\"price\":100,\"date\":\"2021-12-08\"},{\"price\":100,\"date\":\"2021-12-09\"},{\"price\":100,\"date\":\"2021-12-10\"},{\"price\":100,\"date\":\"2021-12-11\"}]","Strict","37R22873UV349173A","1","2021-12-03 02:54:07","","","2021-12-03 02:55:36","Guest","2021-12-03 02:53:45","2021-12-03 02:55:36");
INSERT INTO bookings VALUES("52","81","4QkkaN","17","18","2021-12-11","2021-12-15","Cancelled","2","4","100","","480","10","0","20","50","0","0","20","480","request","USD","[{\"price\":100,\"date\":\"2021-12-11\"},{\"price\":100,\"date\":\"2021-12-12\"},{\"price\":100,\"date\":\"2021-12-13\"},{\"price\":100,\"date\":\"2021-12-14\"}]","Flexible","38B26697BV685474Y","1","2021-12-03 19:15:47","","","2021-12-03 19:19:42","Guest","2021-12-03 19:15:20","2021-12-03 19:19:42");
INSERT INTO bookings VALUES("53","83","Zv68rV","2","17","2021-12-07","2021-12-11","Accepted","2","4","100","","420","0","0","20","0","0","0","20","420","instant","USD","[{\"price\":100,\"date\":\"2021-12-07\"},{\"price\":100,\"date\":\"2021-12-08\"},{\"price\":100,\"date\":\"2021-12-09\"},{\"price\":100,\"date\":\"2021-12-10\"}]","Flexible","4LA35723FM463044E","1","","","","","","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO bookings VALUES("54","79","On3mDB","17","18","2021-12-07","2021-12-11","Accepted","2","4","100","","480","10","0","20","50","0","0","20","480","request","USD","[{\"price\":100,\"date\":\"2021-12-07\"},{\"price\":100,\"date\":\"2021-12-08\"},{\"price\":100,\"date\":\"2021-12-09\"},{\"price\":100,\"date\":\"2021-12-10\"}]","Moderate","6WU81144G4129902E","1","2021-12-06 19:32:15","","","","","2021-12-06 19:27:38","2021-12-06 19:34:10");
INSERT INTO bookings VALUES("55","83","q4EvWj","2","1","2021-12-17","2021-12-18","Pending","1","1","100","","105","0","0","5","0","0","0","5","105","request","USD","[{\"price\":100,\"date\":\"2021-12-17\"}]","Flexible","","0","","","","","","2021-12-06 22:00:39","2021-12-06 22:00:39");
INSERT INTO bookings VALUES("56","86","LIBof3","17","18","2021-12-07","2021-12-11","Accepted","2","4","100","","420","0","0","20","0","0","0","20","420","request","USD","[{\"price\":100,\"date\":\"2021-12-07\"},{\"price\":100,\"date\":\"2021-12-08\"},{\"price\":100,\"date\":\"2021-12-09\"},{\"price\":100,\"date\":\"2021-12-10\"}]","Flexible","2B556650LW641194V","1","2021-12-06 23:46:39","","","","","2021-12-06 23:46:01","2021-12-06 23:48:47");
INSERT INTO bookings VALUES("57","86","ogBm78","17","16","2021-12-23","2021-12-30","Pending","1","7","100","","735","0","0","35","0","0","0","35","735","request","USD","[{\"price\":100,\"date\":\"2021-12-23\"},{\"price\":100,\"date\":\"2021-12-24\"},{\"price\":100,\"date\":\"2021-12-25\"},{\"price\":100,\"date\":\"2021-12-26\"},{\"price\":100,\"date\":\"2021-12-27\"},{\"price\":100,\"date\":\"2021-12-28\"},{\"price\":100,\"date\":\"2021-12-29\"}]","Flexible","","0","","","","","","2021-12-07 01:05:42","2021-12-07 01:05:42");
INSERT INTO bookings VALUES("58","58","tLz77T","14","1","2021-12-07","2021-12-08","Pending","1","1","25","","34","8","0","1","0","0","0","1","34","request","USD","[{\"price\":25,\"date\":\"2021-12-07\"}]","Flexible","","0","","","","","","2021-12-07 02:00:08","2021-12-07 02:00:08");
INSERT INTO bookings VALUES("59","70","u9kI61","1","2","2021-12-17","2021-12-18","Processing","1","1","5","","5","0","0","0","0","0","0","0","5","request","USD","[{\"price\":5,\"date\":\"2021-12-17\"}]","Flexible","","0","2021-12-17 02:35:58","","","","","2021-12-17 02:34:55","2021-12-17 02:35:58");
INSERT INTO bookings VALUES("60","59","cQ2eOz","14","1","2021-12-21","2021-12-22","Pending","1","1","85","","101","5","0","4","7","0","0","4","101","request","USD","[{\"price\":85,\"date\":\"2021-12-21\"}]","Flexible","","0","","","","","","2021-12-21 00:39:06","2021-12-21 00:39:06");
INSERT INTO bookings VALUES("61","46","wECW3Q","14","1","2021-12-22","2021-12-23","Accepted","1","1","24","","25","0","0","1","0","0","0","1","25","instant","USD","[{\"price\":24,\"date\":\"2021-12-22\"}]","Flexible","pay_IaY2jdlnz6nIiK","5","","","","","","2021-12-22 03:38:18","2021-12-22 03:38:18");
INSERT INTO bookings VALUES("62","89","a8C0VL","23","25","2022-01-12","2022-01-13","Accepted","1","1","20","","29","5","0","1","0","3","0","1","29","instant","USD","[{\"price\":20,\"date\":\"2022-01-12\"}]","Moderate","pay_Iidh2I9Rb094ip","5","","","","","","2022-01-12 00:51:59","2022-01-12 00:51:59");





CREATE TABLE IF NOT EXISTS `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `useremail` varchar(255) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO contact VALUES("1","aaa","athiivps09@gmail.com","sds");
INSERT INTO contact VALUES("2","admin","athiivps09@gmail.com","hfgh");
INSERT INTO contact VALUES("3","admin","athiivps09@gmail.com","gdfg");
INSERT INTO contact VALUES("4","admin","athiivps09@gmail.com","dffd");
INSERT INTO contact VALUES("5","athi","athiivps09@gmail.com","gdfg");
INSERT INTO contact VALUES("6","athi","athiivps09@gmail.com","msg");
INSERT INTO contact VALUES("7","athi","athiivps09@gmail.com","test msg");
INSERT INTO contact VALUES("8","gaa","mshop@test.com","fddf");
INSERT INTO contact VALUES("9","NathanSoisa","no-replyWeelm@gmail.com","Good day!  llegacasa.com \n \nWe present \n \nSending your message through the feedback form which can be found on the sites in the contact section. Feedback forms are filled in by our software and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This technique raise the chances that your message will be open. \n \nOur database contains more than 27 million sites around the world to which we can send your message. \n \nThe cost of one million messages 49 USD \n \nFREE TEST mailing Up to 50,000 messages. \n \n \nThis offer is created automatically.  Use our contacts for communication. \n \nContact us. \nTelegram - @FeedbackMessages \nSkype  live:contactform_18 \nWhatsApp - +375259112693 \nWe only use chat.");
INSERT INTO contact VALUES("10","Mike Creighton","no-replyBeli@gmail.com","Hello \n \nI have just took an in depth look on your  llegacasa.com for its SEO metrics and saw that your website could use an upgrade. \n \nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \n \nPlease check our plans here, we offer SEO at cheap rates. \nhttps://www.hilkom-digital.de/cheap-seo-packages/ \n \nStart improving your sales and leads with us, today! \n \n \nregards \nMike Creighton\n \nHilkom Digital Team \nsupport@hilkom-digital.de");
INSERT INTO contact VALUES("11","Mike Palmer","no-replyBeli@gmail.com","Hello \n \nWe all know the importance that dofollow link have on any website`s ranks. \nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \n \nBuy quality dofollow links from us, that will impact your ranks in a positive way \nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \n \nBest regards \nMike Palmer\n \nsupport@digital-x-press.com");
INSERT INTO contact VALUES("12","Express Documents","jonathanproducts001@gmail.com","We are a Team of IT Experts specialized in the production of Real and authentic Documents such as Passport, Driving License, Covid19 Vaccine Cards, CSCS Cards, Diploma Certificates, PhD\'s, IELTS Certificate, Bachelor  degrees, NCLEX Certificate, MBA, ID Cards, SS Cards, Associate Certificate, University Certificates, Green Cards, Death Certificate, Master Degree, PMP Certificate, Working Permits, Visa\'s etc. Contact us on WhatsApp for more information +49 1590 2969018. or Email us at documentsservicesexperts@gmail.com");
INSERT INTO contact VALUES("13","Mike Blomfield","no-replyBeli@gmail.com","Howdy \n \nIf you\'ll ever need a permanent increase in your website\'s Domain Authority score, We can help. \n \nMore info: \nhttps://www.strictlydigital.net/product/moz-da50-seo-plan/ \n \nNEW: Ahrefs DR70 plan: \nhttps://www.strictlydigital.net/product/ahrefs-seo-plan/ \n \n \nThank you \nMike Blomfield\n \nmike@strictlydigital.net");
INSERT INTO contact VALUES("14","Donald Cole","lanj7962@gmail.com","Good day \n \nI contacted you some days back seeking your cooperation in a matter regarding funds worth $24 Million, I urge you to get back to me through this email coledd11@cloedcolela.com if you\'re still interested. \n \nI await your response. \n \nThanks, \n \nDonald Cole");
INSERT INTO contact VALUES("15","Kevin Johnson","tbformleads@gmail.com","Hello \n \nMy main objective here, is to help increase revenue for you by producing an animated video that will generate leads and sales for your business 24/7, for just $97. \n \nBut this offer is only good this week, so get your video before the deadline. \n \nWatch Our Video Now!   https://bit.ly/Xpress97offer \n \nFor less than you spend on coffee each month you get an American Owned Video company that can write your script, create your story board, lay-in a good soundtrack and produce an awesome video that brings home the bacon. \n \nAgain, this $97 promotion is for this week only. Don???t miss out!!! \n \nI???m in, show me what you got.   https://bit.ly/Xpress97offer \n \nBest, \n \nKevin Johnson \nBusiness Development Manager");
INSERT INTO contact VALUES("16","Mike Brown","no-replyBeli@gmail.com","Hi there \n \nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \n \nPlease check our plans here, we offer Local SEO at cheap rates. \nhttps://speed-seo.net/product/local-seo-package/ \n \nNEW: \nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \n \nregards \nMike Brown\n \nSpeed SEO Digital Agency");
INSERT INTO contact VALUES("17","Mike Boolman","no-replyBeli@gmail.com","Negative SEO attack Services. Deindex bad competitors from Google. It works with any Website, video, blog, product or service. \nhttps://www.seo-treff.de/product/derank-seo-service/");
INSERT INTO contact VALUES("18","Thomas Kraynik","autoreply@ddmmarketing.ro","Hi there, \nAfter analyzing your business\'s online presence, we identified some key growth opportunities. \nWe can develop these points and provide you our data and market intelligence report analysis on your specific niche. \nMy company helps businesses like yours to grow and disrupt the market. \nBest of all, we handle all the IT and marketing implementations, making it extremely simple for you. \nSo, if you are interested in learning more about how we can help you get more clients and grow your brand let me know what your calendar looks like. \nBest, \nThomas Kraynik | SVP \nDigital Disruptive Marketing \nThe new way of outsourced marketing \nEmail: thomas@ddm.marketing \nhttps://ddm.marketing");





CREATE TABLE IF NOT EXISTS `country` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso3` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `country_short_name_unique` (`short_name`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO country VALUES("1","AF","Afghanistan","AFG","4","93");
INSERT INTO country VALUES("2","AL","Albania","ALB","8","355");
INSERT INTO country VALUES("3","DZ","Algeria","DZA","12","213");
INSERT INTO country VALUES("4","AS","American Samoa","ASM","16","1684");
INSERT INTO country VALUES("5","AD","Andorra","AND","20","376");
INSERT INTO country VALUES("6","AO","Angola","AGO","24","244");
INSERT INTO country VALUES("7","AI","Anguilla","AIA","660","1264");
INSERT INTO country VALUES("8","AQ","Antarctica","","","0");
INSERT INTO country VALUES("9","AG","Antigua and Barbuda","ATG","28","1268");
INSERT INTO country VALUES("10","AR","Argentina","ARG","32","54");
INSERT INTO country VALUES("11","AM","Armenia","ARM","51","374");
INSERT INTO country VALUES("12","AW","Aruba","ABW","533","297");
INSERT INTO country VALUES("13","AU","Australia","AUS","36","61");
INSERT INTO country VALUES("14","AT","Austria","AUT","40","43");
INSERT INTO country VALUES("15","AZ","Azerbaijan","AZE","31","994");
INSERT INTO country VALUES("16","BS","Bahamas","BHS","44","1242");
INSERT INTO country VALUES("17","BH","Bahrain","BHR","48","973");
INSERT INTO country VALUES("18","BD","Bangladesh","BGD","50","880");
INSERT INTO country VALUES("19","BB","Barbados","BRB","52","1246");
INSERT INTO country VALUES("20","BY","Belarus","BLR","112","375");
INSERT INTO country VALUES("21","BE","Belgium","BEL","56","32");
INSERT INTO country VALUES("22","BZ","Belize","BLZ","84","501");
INSERT INTO country VALUES("23","BJ","Benin","BEN","204","229");
INSERT INTO country VALUES("24","BM","Bermuda","BMU","60","1441");
INSERT INTO country VALUES("25","BT","Bhutan","BTN","64","975");
INSERT INTO country VALUES("26","BO","Bolivia","BOL","68","591");
INSERT INTO country VALUES("27","BA","Bosnia and Herzegovina","BIH","70","387");
INSERT INTO country VALUES("28","BW","Botswana","BWA","72","267");
INSERT INTO country VALUES("29","BV","Bouvet Island","","","0");
INSERT INTO country VALUES("30","BR","Brazil","BRA","76","55");
INSERT INTO country VALUES("31","IO","British Indian Ocean Territory","","","246");
INSERT INTO country VALUES("32","BN","Brunei Darussalam","BRN","96","673");
INSERT INTO country VALUES("33","BG","Bulgaria","BGR","100","359");
INSERT INTO country VALUES("34","BF","Burkina Faso","BFA","854","226");
INSERT INTO country VALUES("35","BI","Burundi","BDI","108","257");
INSERT INTO country VALUES("36","KH","Cambodia","KHM","116","855");
INSERT INTO country VALUES("37","CM","Cameroon","CMR","120","237");
INSERT INTO country VALUES("38","CA","Canada","CAN","124","1");
INSERT INTO country VALUES("39","CV","Cape Verde","CPV","132","238");
INSERT INTO country VALUES("40","KY","Cayman Islands","CYM","136","1345");
INSERT INTO country VALUES("41","CF","Central African Republic","CAF","140","236");
INSERT INTO country VALUES("42","TD","Chad","TCD","148","235");
INSERT INTO country VALUES("43","CL","Chile","CHL","152","56");
INSERT INTO country VALUES("44","CN","China","CHN","156","86");
INSERT INTO country VALUES("45","CX","Christmas Island","","","61");
INSERT INTO country VALUES("46","CC","Cocos (Keeling) Islands","","","672");
INSERT INTO country VALUES("47","CO","Colombia","COL","170","57");
INSERT INTO country VALUES("48","KM","Comoros","COM","174","269");
INSERT INTO country VALUES("49","CG","Congo","COG","178","242");
INSERT INTO country VALUES("50","CD","Congo, the Democratic Republic of the","COD","180","242");
INSERT INTO country VALUES("51","CK","Cook Islands","COK","184","682");
INSERT INTO country VALUES("52","CR","Costa Rica","CRI","188","506");
INSERT INTO country VALUES("53","CI","Cote D\'Ivoire","CIV","384","225");
INSERT INTO country VALUES("54","HR","Croatia","HRV","191","385");
INSERT INTO country VALUES("55","CU","Cuba","CUB","192","53");
INSERT INTO country VALUES("56","CY","Cyprus","CYP","196","357");
INSERT INTO country VALUES("57","CZ","Czech Republic","CZE","203","420");
INSERT INTO country VALUES("58","DK","Denmark","DNK","208","45");
INSERT INTO country VALUES("59","DJ","Djibouti","DJI","262","253");
INSERT INTO country VALUES("60","DM","Dominica","DMA","212","1767");
INSERT INTO country VALUES("61","DO","Dominican Republic","DOM","214","1809");
INSERT INTO country VALUES("62","EC","Ecuador","ECU","218","593");
INSERT INTO country VALUES("63","EG","Egypt","EGY","818","20");
INSERT INTO country VALUES("64","SV","El Salvador","SLV","222","503");
INSERT INTO country VALUES("65","GQ","Equatorial Guinea","GNQ","226","240");
INSERT INTO country VALUES("66","ER","Eritrea","ERI","232","291");
INSERT INTO country VALUES("67","EE","Estonia","EST","233","372");
INSERT INTO country VALUES("68","ET","Ethiopia","ETH","231","251");
INSERT INTO country VALUES("69","FK","Falkland Islands (Malvinas)","FLK","238","500");
INSERT INTO country VALUES("70","FO","Faroe Islands","FRO","234","298");
INSERT INTO country VALUES("71","FJ","Fiji","FJI","242","679");
INSERT INTO country VALUES("72","FI","Finland","FIN","246","358");
INSERT INTO country VALUES("73","FR","France","FRA","250","33");
INSERT INTO country VALUES("74","GF","French Guiana","GUF","254","594");
INSERT INTO country VALUES("75","PF","French Polynesia","PYF","258","689");
INSERT INTO country VALUES("76","TF","French Southern Territories","","","0");
INSERT INTO country VALUES("77","GA","Gabon","GAB","266","241");
INSERT INTO country VALUES("78","GM","Gambia","GMB","270","220");
INSERT INTO country VALUES("79","GE","Georgia","GEO","268","995");
INSERT INTO country VALUES("80","DE","Germany","DEU","276","49");
INSERT INTO country VALUES("81","GH","Ghana","GHA","288","233");
INSERT INTO country VALUES("82","GI","Gibraltar","GIB","292","350");
INSERT INTO country VALUES("83","GR","Greece","GRC","300","30");
INSERT INTO country VALUES("84","GL","Greenland","GRL","304","299");
INSERT INTO country VALUES("85","GD","Grenada","GRD","308","1473");
INSERT INTO country VALUES("86","GP","Guadeloupe","GLP","312","590");
INSERT INTO country VALUES("87","GU","Guam","GUM","316","1671");
INSERT INTO country VALUES("88","GT","Guatemala","GTM","320","502");
INSERT INTO country VALUES("89","GN","Guinea","GIN","324","224");
INSERT INTO country VALUES("90","GW","Guinea-Bissau","GNB","624","245");
INSERT INTO country VALUES("91","GY","Guyana","GUY","328","592");
INSERT INTO country VALUES("92","HT","Haiti","HTI","332","509");
INSERT INTO country VALUES("93","HM","Heard Island and Mcdonald Islands","","","0");
INSERT INTO country VALUES("94","VA","Holy See (Vatican City State)","VAT","336","39");
INSERT INTO country VALUES("95","HN","Honduras","HND","340","504");
INSERT INTO country VALUES("96","HK","Hong Kong","HKG","344","852");
INSERT INTO country VALUES("97","HU","Hungary","HUN","348","36");
INSERT INTO country VALUES("98","IS","Iceland","ISL","352","354");
INSERT INTO country VALUES("99","IN","India","IND","356","91");
INSERT INTO country VALUES("100","ID","Indonesia","IDN","360","62");
INSERT INTO country VALUES("101","IR","Iran, Islamic Republic of","IRN","364","98");
INSERT INTO country VALUES("102","IQ","Iraq","IRQ","368","964");
INSERT INTO country VALUES("103","IE","Ireland","IRL","372","353");
INSERT INTO country VALUES("104","IL","Israel","ISR","376","972");
INSERT INTO country VALUES("105","IT","Italy","ITA","380","39");
INSERT INTO country VALUES("106","JM","Jamaica","JAM","388","1876");
INSERT INTO country VALUES("107","JP","Japan","JPN","392","81");
INSERT INTO country VALUES("108","JO","Jordan","JOR","400","962");
INSERT INTO country VALUES("109","KZ","Kazakhstan","KAZ","398","7");
INSERT INTO country VALUES("110","KE","Kenya","KEN","404","254");
INSERT INTO country VALUES("111","KI","Kiribati","KIR","296","686");
INSERT INTO country VALUES("112","KP","Korea, Democratic People\'s Republic of","PRK","408","850");
INSERT INTO country VALUES("113","KR","Korea, Republic of","KOR","410","82");
INSERT INTO country VALUES("114","KW","Kuwait","KWT","414","965");
INSERT INTO country VALUES("115","KG","Kyrgyzstan","KGZ","417","996");
INSERT INTO country VALUES("116","LA","Lao People\'s Democratic Republic","LAO","418","856");
INSERT INTO country VALUES("117","LV","Latvia","LVA","428","371");
INSERT INTO country VALUES("118","LB","Lebanon","LBN","422","961");
INSERT INTO country VALUES("119","LS","Lesotho","LSO","426","266");
INSERT INTO country VALUES("120","LR","Liberia","LBR","430","231");
INSERT INTO country VALUES("121","LY","Libyan Arab Jamahiriya","LBY","434","218");
INSERT INTO country VALUES("122","LI","Liechtenstein","LIE","438","423");
INSERT INTO country VALUES("123","LT","Lithuania","LTU","440","370");
INSERT INTO country VALUES("124","LU","Luxembourg","LUX","442","352");
INSERT INTO country VALUES("125","MO","Macao","MAC","446","853");
INSERT INTO country VALUES("126","MK","Macedonia, the Former Yugoslav Republic of","MKD","807","389");
INSERT INTO country VALUES("127","MG","Madagascar","MDG","450","261");
INSERT INTO country VALUES("128","MW","Malawi","MWI","454","265");
INSERT INTO country VALUES("129","MY","Malaysia","MYS","458","60");
INSERT INTO country VALUES("130","MV","Maldives","MDV","462","960");
INSERT INTO country VALUES("131","ML","Mali","MLI","466","223");
INSERT INTO country VALUES("132","MT","Malta","MLT","470","356");
INSERT INTO country VALUES("133","MH","Marshall Islands","MHL","584","692");
INSERT INTO country VALUES("134","MQ","Martinique","MTQ","474","596");
INSERT INTO country VALUES("135","MR","Mauritania","MRT","478","222");
INSERT INTO country VALUES("136","MU","Mauritius","MUS","480","230");
INSERT INTO country VALUES("137","YT","Mayotte","","","269");
INSERT INTO country VALUES("138","MX","Mexico","MEX","484","52");
INSERT INTO country VALUES("139","FM","Micronesia, Federated States of","FSM","583","691");
INSERT INTO country VALUES("140","MD","Moldova, Republic of","MDA","498","373");
INSERT INTO country VALUES("141","MC","Monaco","MCO","492","377");
INSERT INTO country VALUES("142","MN","Mongolia","MNG","496","976");
INSERT INTO country VALUES("143","MS","Montserrat","MSR","500","1664");
INSERT INTO country VALUES("144","MA","Morocco","MAR","504","212");
INSERT INTO country VALUES("145","MZ","Mozambique","MOZ","508","258");
INSERT INTO country VALUES("146","MM","Myanmar","MMR","104","95");
INSERT INTO country VALUES("147","NA","Namibia","NAM","516","264");
INSERT INTO country VALUES("148","NR","Nauru","NRU","520","674");
INSERT INTO country VALUES("149","NP","Nepal","NPL","524","977");
INSERT INTO country VALUES("150","NL","Netherlands","NLD","528","31");
INSERT INTO country VALUES("151","AN","Netherlands Antilles","ANT","530","599");
INSERT INTO country VALUES("152","NC","New Caledonia","NCL","540","687");
INSERT INTO country VALUES("153","NZ","New Zealand","NZL","554","64");
INSERT INTO country VALUES("154","NI","Nicaragua","NIC","558","505");
INSERT INTO country VALUES("155","NE","Niger","NER","562","227");
INSERT INTO country VALUES("156","NG","Nigeria","NGA","566","234");
INSERT INTO country VALUES("157","NU","Niue","NIU","570","683");
INSERT INTO country VALUES("158","NF","Norfolk Island","NFK","574","672");
INSERT INTO country VALUES("159","MP","Northern Mariana Islands","MNP","580","1670");
INSERT INTO country VALUES("160","NO","Norway","NOR","578","47");
INSERT INTO country VALUES("161","OM","Oman","OMN","512","968");
INSERT INTO country VALUES("162","PK","Pakistan","PAK","586","92");
INSERT INTO country VALUES("163","PW","Palau","PLW","585","680");
INSERT INTO country VALUES("164","PS","Palestinian Territory, Occupied","","","970");
INSERT INTO country VALUES("165","PA","Panama","PAN","591","507");
INSERT INTO country VALUES("166","PG","Papua New Guinea","PNG","598","675");
INSERT INTO country VALUES("167","PY","Paraguay","PRY","600","595");
INSERT INTO country VALUES("168","PE","Peru","PER","604","51");
INSERT INTO country VALUES("169","PH","Philippines","PHL","608","63");
INSERT INTO country VALUES("170","PN","Pitcairn","PCN","612","0");
INSERT INTO country VALUES("171","PL","Poland","POL","616","48");
INSERT INTO country VALUES("172","PT","Portugal","PRT","620","351");
INSERT INTO country VALUES("173","PR","Puerto Rico","PRI","630","1787");
INSERT INTO country VALUES("174","QA","Qatar","QAT","634","974");
INSERT INTO country VALUES("175","RE","Reunion","REU","638","262");
INSERT INTO country VALUES("176","RO","Romania","ROM","642","40");
INSERT INTO country VALUES("177","RU","Russian Federation","RUS","643","70");
INSERT INTO country VALUES("178","RW","Rwanda","RWA","646","250");
INSERT INTO country VALUES("179","SH","Saint Helena","SHN","654","290");
INSERT INTO country VALUES("180","KN","Saint Kitts and Nevis","KNA","659","1869");
INSERT INTO country VALUES("181","LC","Saint Lucia","LCA","662","1758");
INSERT INTO country VALUES("182","PM","Saint Pierre and Miquelon","SPM","666","508");
INSERT INTO country VALUES("183","VC","Saint Vincent and the Grenadines","VCT","670","1784");
INSERT INTO country VALUES("184","WS","Samoa","WSM","882","684");
INSERT INTO country VALUES("185","SM","San Marino","SMR","674","378");
INSERT INTO country VALUES("186","ST","Sao Tome and Principe","STP","678","239");
INSERT INTO country VALUES("187","SA","Saudi Arabia","SAU","682","966");
INSERT INTO country VALUES("188","SN","Senegal","SEN","686","221");
INSERT INTO country VALUES("189","CS","Serbia and Montenegro","","","381");
INSERT INTO country VALUES("190","SC","Seychelles","SYC","690","248");
INSERT INTO country VALUES("191","SL","Sierra Leone","SLE","694","232");
INSERT INTO country VALUES("192","SG","Singapore","SGP","702","65");
INSERT INTO country VALUES("193","SK","Slovakia","SVK","703","421");
INSERT INTO country VALUES("194","SI","Slovenia","SVN","705","386");
INSERT INTO country VALUES("195","SB","Solomon Islands","SLB","90","677");
INSERT INTO country VALUES("196","SO","Somalia","SOM","706","252");
INSERT INTO country VALUES("197","ZA","South Africa","ZAF","710","27");
INSERT INTO country VALUES("198","GS","South Georgia and the South Sandwich Islands","","","0");
INSERT INTO country VALUES("199","ES","Spain","ESP","724","34");
INSERT INTO country VALUES("200","LK","Sri Lanka","LKA","144","94");
INSERT INTO country VALUES("201","SD","Sudan","SDN","736","249");
INSERT INTO country VALUES("202","SR","Suriname","SUR","740","597");
INSERT INTO country VALUES("203","SJ","Svalbard and Jan Mayen","SJM","744","47");
INSERT INTO country VALUES("204","SZ","Swaziland","SWZ","748","268");
INSERT INTO country VALUES("205","SE","Sweden","SWE","752","46");
INSERT INTO country VALUES("206","CH","Switzerland","CHE","756","41");
INSERT INTO country VALUES("207","SY","Syrian Arab Republic","SYR","760","963");
INSERT INTO country VALUES("208","TW","Taiwan, Province of China","TWN","158","886");
INSERT INTO country VALUES("209","TJ","Tajikistan","TJK","762","992");
INSERT INTO country VALUES("210","TZ","Tanzania, United Republic of","TZA","834","255");
INSERT INTO country VALUES("211","TH","Thailand","THA","764","66");
INSERT INTO country VALUES("212","TL","Timor-Leste","","","670");
INSERT INTO country VALUES("213","TG","Togo","TGO","768","228");
INSERT INTO country VALUES("214","TK","Tokelau","TKL","772","690");
INSERT INTO country VALUES("215","TO","Tonga","TON","776","676");
INSERT INTO country VALUES("216","TT","Trinidad and Tobago","TTO","780","1868");
INSERT INTO country VALUES("217","TN","Tunisia","TUN","788","216");
INSERT INTO country VALUES("218","TR","Turkey","TUR","792","90");
INSERT INTO country VALUES("219","TM","Turkmenistan","TKM","795","7370");
INSERT INTO country VALUES("220","TC","Turks and Caicos Islands","TCA","796","1649");
INSERT INTO country VALUES("221","TV","Tuvalu","TUV","798","688");
INSERT INTO country VALUES("222","UG","Uganda","UGA","800","256");
INSERT INTO country VALUES("223","UA","Ukraine","UKR","804","380");
INSERT INTO country VALUES("224","AE","United Arab Emirates","ARE","784","971");
INSERT INTO country VALUES("225","GB","United Kingdom","GBR","826","44");
INSERT INTO country VALUES("226","US","United States","USA","840","1");
INSERT INTO country VALUES("227","UM","United States Minor Outlying Islands","","","1");
INSERT INTO country VALUES("228","UY","Uruguay","URY","858","598");
INSERT INTO country VALUES("229","UZ","Uzbekistan","UZB","860","998");
INSERT INTO country VALUES("230","VU","Vanuatu","VUT","548","678");
INSERT INTO country VALUES("231","VE","Venezuela","VEN","862","58");
INSERT INTO country VALUES("232","VN","Viet Nam","VNM","704","84");
INSERT INTO country VALUES("233","VG","Virgin Islands, British","VGB","92","1284");
INSERT INTO country VALUES("234","VI","Virgin Islands, U.s.","VIR","850","1340");
INSERT INTO country VALUES("235","WF","Wallis and Futuna","WLF","876","681");
INSERT INTO country VALUES("236","EH","Western Sahara","ESH","732","212");
INSERT INTO country VALUES("237","YE","Yemen","YEM","887","967");
INSERT INTO country VALUES("238","ZM","Zambia","ZMB","894","260");
INSERT INTO country VALUES("239","ZW","Zimbabwe","ZWE","716","263");





CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO currency VALUES("1","US Dollar","USD","&#36;","1.00","Active","1");
INSERT INTO currency VALUES("2","Pound Sterling","GBP","&pound;","0.65","Inactive","0");
INSERT INTO currency VALUES("3","Europe","EUR","&euro;","0.88","Active","0");
INSERT INTO currency VALUES("4","Australian Dollar","AUD","&#36;","1.41","Inactive","0");
INSERT INTO currency VALUES("5","Singapore","SGD","&#36;","1.41","Inactive","0");
INSERT INTO currency VALUES("6","Swedish Krona","SEK","kr","8.24","Inactive","0");
INSERT INTO currency VALUES("7","Danish Krone","DKK","kr","6.58","Inactive","0");
INSERT INTO currency VALUES("8","Mexican Peso","MXN","$","16.83","Inactive","0");
INSERT INTO currency VALUES("9","Brazilian Real","BRL","R$","3.88","Inactive","0");
INSERT INTO currency VALUES("10","Malaysian Ringgit","MYR","RM","4.31","Inactive","0");
INSERT INTO currency VALUES("11","Philippine Peso","PHP","P","46.73","Inactive","0");
INSERT INTO currency VALUES("12","Swiss Franc","CHF","&euro;","0.97","Inactive","0");
INSERT INTO currency VALUES("13","India","INR","&#x20B9;","66.24","Inactive","0");
INSERT INTO currency VALUES("14","Argentine Peso","ARS","&#36;","9.35","Inactive","0");
INSERT INTO currency VALUES("15","Canadian Dollar","CAD","&#36;","1.33","Inactive","0");
INSERT INTO currency VALUES("16","Chinese Yuan","CNY","&#165;","6.37","Inactive","0");
INSERT INTO currency VALUES("17","Czech Republic Koruna","CZK","K&#269;","23.91","Inactive","0");
INSERT INTO currency VALUES("18","Hong Kong Dollar","HKD","&#36;","7.75","Inactive","0");
INSERT INTO currency VALUES("20","Indonesian Rupiah","IDR","Rp","14249.50","Inactive","0");
INSERT INTO currency VALUES("21","Israeli New Sheqel","ILS","&#8362;","3.86","Inactive","0");
INSERT INTO currency VALUES("22","Japanese Yen","JPY","&#165;","120.59","Inactive","0");
INSERT INTO currency VALUES("23","South Korean Won","KRW","&#8361;","1182.69","Inactive","0");
INSERT INTO currency VALUES("24","Norwegian Krone","NOK","kr","8.15","Inactive","0");
INSERT INTO currency VALUES("25","New Zealand Dollar","NZD","&#36;","1.58","Inactive","0");
INSERT INTO currency VALUES("26","Polish Zloty","PLN","z&#322;","3.71","Inactive","0");
INSERT INTO currency VALUES("27","Russian Ruble","RUB","p","67.75","Inactive","0");
INSERT INTO currency VALUES("28","Thai Baht","THB","&#3647;","36.03","Inactive","0");
INSERT INTO currency VALUES("29","Turkish Lira","TRY","&#8378;","3.05","Inactive","0");
INSERT INTO currency VALUES("30","New Taiwan Dollar","TWD","&#36;","32.47","Inactive","0");
INSERT INTO currency VALUES("31","Vietnamese Dong","VND","&#8363;","22472.00","Inactive","0");
INSERT INTO currency VALUES("32","South African Rand","ZAR","R","13.55","Inactive","0");
INSERT INTO currency VALUES("33","Boliviano","BS","BS","7.00","Active","0");





CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(11) NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('email','sms') COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO email_templates VALUES("1","1","Your Payout information has been updated in {site_name}","Hi {first_name},\n                            <br><br>\n                            We hope this message finds you well. Your {site_name} payout account information was recently changed on {date_time}. To help keep your account secure, we wanted to reach out to confirm that you made this change. Feel free to disregard this message if you updated your payout account information on {date_time}.\n                            <br><br>\n                            If you did not make this change to your account, please contact us.<br>","","en","email","1","","");
INSERT INTO email_templates VALUES("2","2","Your Payout information has been updated in {site_name}","Hi {first_name},\n                            <br><br>\n                            Your {site_name} payout information was updated on {date_time}.<br>","","en","email","1","","");
INSERT INTO email_templates VALUES("3","3","Your Payout information has been deleted in {site_name}","Hi {first_name},\n                            <br><br>\n                            Your {site_name} payout information was deleted on {date_time}.<br>","","en","email","1","","");
INSERT INTO email_templates VALUES("4","4","Booking inquiry for {property_name}","Hi {owner_first_name},\n                            <br><br>\n            				<h1>Respond to {user_first_name}???s Inquiry</h1>\n            				<br>\n            				{total_night} {night/nights} at {property_name}\n            				<br>\n            				{messages_message}\n            				<br>\n            				Property Name:  {property_name}\n            				<br>\n            				Number of Guest: {total_guest}\n            				<br>\n            				Number of Night: {total_night}\n            				<br>\n                            Check in Time: {start_date}","","en","email","1","","");
INSERT INTO email_templates VALUES("5","5","Please confirm your e-mail address","Hi {first_name},\n                            <br><br>\n                            Welcome to {site_name}! Please confirm your account.","","en","email","1","","");
INSERT INTO email_templates VALUES("6","6","Reset your Password","Hi {first_name},\n                            <br><br>\n                            Your requested password reset link is below. If you didn\'t make the request, just ignore this email.","","en","email","1","","");
INSERT INTO email_templates VALUES("7","7","Please set a payment account","Hi {first_name},\n                            <br><br>\n                            Amount {currency_symbol}{payout_amount} is waiting for you but you did not add any payout account to send the money. Please add a payout method.","","en","email","1","","");
INSERT INTO email_templates VALUES("8","8","Payout Sent","Hi {first_name},\n                            <br><br>\n                            \n\nyour amount \n\n{currency_symbol}{payout_amount}\n\n transferred to your wallet \n                            <br>","","en","email","1","","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("9","9","Booking Cancelled","Hi {user_first_name},\n                            <br><br>\n                            {owner_first_name} cancelled booking of {property_name}.<br>","","en","email","1","","2021-12-02 19:48:50");
INSERT INTO email_templates VALUES("10","10","Booking {Accepted/Declined}","Hi {guest_first_name},\n                            <br><br>\n                            {host_first_name} {Accepted/Declined} the booking of {property_name}.<br>","","en","email","1","","");
INSERT INTO email_templates VALUES("11","11","Booking request send for {property_name}","Hi {user_first_name},\n                            <br><br>\n                            <h1>Booking request send to {owner_first_name}</h1>\n                            <br>\n                            {total_night} {night/nights} at {property_name}\n                            <br>\n                            Property Name:  {property_name}\n                            <br>\n                            Number of Guest: {total_guest}\n                            <br>\n                            Number of Night: {total_night}\n                            <br>\n                            Check in Time: {start_date}","","en","email","1","","");
INSERT INTO email_templates VALUES("12","12","Booking Cancelled","Hi {owner_first_name},\n                            <br><br>{user_first_name} cancelled booking of {property_name}.<br>","","en","email","1","","");
INSERT INTO email_templates VALUES("13","8","Subject","Body","","ar","email","2","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("14","8","Subject","Body","","ch","email","3","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("15","8","Subject","Body","","fr","email","4","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("16","8","Subject","Body","","pt","email","5","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("17","8","Subject","Body","","ru","email","6","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("18","8","Subject","Body","","es","email","7","2021-12-02 22:31:17","2021-12-02 22:31:17");
INSERT INTO email_templates VALUES("19","8","Subject","Body","","tr","email","8","2021-12-02 22:31:17","2021-12-02 22:31:17");





CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `language` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `default` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO language VALUES("1","English","en","Active","0");
INSERT INTO language VALUES("2","????????","ar","Inactive","0");
INSERT INTO language VALUES("3","?????? (??????)","ch","Inactive","0");
INSERT INTO language VALUES("4","Fran??ais","fr","Inactive","0");
INSERT INTO language VALUES("5","Portugu??s","pt","Active","0");
INSERT INTO language VALUES("6","??????????????","ru","Inactive","0");
INSERT INTO language VALUES("7","Espa??ol","es","Active","1");
INSERT INTO language VALUES("8","T??rk??e","tr","Inactive","0");





CREATE TABLE IF NOT EXISTS `message_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO message_type VALUES("1","query","");
INSERT INTO message_type VALUES("2","guest_cancellation","");
INSERT INTO message_type VALUES("3","host_cancellation","");
INSERT INTO message_type VALUES("4","booking_request","");
INSERT INTO message_type VALUES("5","booking_accecpt","");
INSERT INTO message_type VALUES("6","booking_decline","");
INSERT INTO message_type VALUES("7","booking_expire","");





CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `read` int(11) NOT NULL DEFAULT 0,
  `archive` int(11) NOT NULL DEFAULT 0,
  `star` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO messages VALUES("3","4","3","2","1","gfg","4","1","0","0","2021-08-09 00:27:24","2021-08-14 03:59:07");
INSERT INTO messages VALUES("4","4","4","2","1","fsdf","4","1","0","0","2021-08-09 00:29:11","2021-09-12 23:18:00");
INSERT INTO messages VALUES("5","4","4","1","2","ok","1","1","0","0","2021-08-09 04:58:42","2021-08-24 00:24:39");
INSERT INTO messages VALUES("6","4","4","1","2","gfg","1","1","0","0","2021-08-10 02:01:38","2021-08-24 00:24:39");
INSERT INTO messages VALUES("7","4","3","1","2","sdf","1","1","0","0","2021-08-11 07:58:11","2021-08-24 00:24:28");
INSERT INTO messages VALUES("8","4","5","2","1","Hi, Im test","4","1","0","0","2021-08-13 03:08:04","2021-08-14 02:44:46");
INSERT INTO messages VALUES("10","4","5","1","2","hh","1","1","0","0","2021-08-14 02:10:57","2021-08-24 00:24:30");
INSERT INTO messages VALUES("11","4","5","1","2","hgfh","1","1","0","0","2021-08-14 02:17:20","2021-08-24 00:24:30");
INSERT INTO messages VALUES("12","4","3","1","2","gfgf","1","1","0","0","2021-08-14 02:17:25","2021-08-24 00:24:28");
INSERT INTO messages VALUES("13","4","4","2","1","jhj","1","1","0","0","2021-08-24 00:24:39","2021-09-12 23:18:00");
INSERT INTO messages VALUES("15","6","6","13","2","hiiiiiii","4","1","0","0","2021-08-24 00:52:33","2021-08-24 00:59:34");
INSERT INTO messages VALUES("16","6","6","2","13","ss","1","0","0","0","2021-08-24 00:59:34","2021-08-24 00:59:34");
INSERT INTO messages VALUES("17","59","7","15","14","Book House","4","1","0","0","2021-08-24 07:16:04","2021-09-12 23:17:46");
INSERT INTO messages VALUES("18","60","8","14","15","test message","4","1","0","0","2021-08-30 07:44:30","2021-09-12 22:53:59");
INSERT INTO messages VALUES("19","60","8","15","14","your request accepted","5","0","0","0","2021-08-30 07:58:49","2021-08-30 07:58:49");
INSERT INTO messages VALUES("20","52","9","2","14","hjjh","4","1","0","0","2021-08-31 03:00:36","2021-09-12 22:53:47");
INSERT INTO messages VALUES("21","52","9","14","2","accepted","5","0","0","0","2021-08-31 03:01:19","2021-08-31 03:01:19");
INSERT INTO messages VALUES("22","52","9","2","14","dsfdsadsdsd fdgdfdsfsdf","4","1","0","0","2021-08-31 03:30:44","2021-09-12 22:53:47");
INSERT INTO messages VALUES("23","53","10","2","14","fsdfsad","4","1","0","0","2021-08-31 03:33:45","2021-09-14 12:30:53");
INSERT INTO messages VALUES("24","53","10","14","2","hjhjghj","5","1","0","0","2021-08-31 03:34:43","2021-09-13 22:44:48");
INSERT INTO messages VALUES("25","60","11","14","15","test","4","1","0","0","2021-09-01 23:28:21","2021-09-10 21:45:12");
INSERT INTO messages VALUES("26","60","11","15","14","hjhgj","5","0","0","0","2021-09-01 23:28:50","2021-09-01 23:28:50");
INSERT INTO messages VALUES("27","60","11","14","15","dfsdfsd","4","1","0","0","2021-09-01 23:32:08","2021-09-10 21:45:12");
INSERT INTO messages VALUES("32","53","10","2","14","hi","1","1","0","0","2021-09-13 22:44:48","2021-09-14 12:30:53");
INSERT INTO messages VALUES("33","71","16","2","1","testttt","4","0","0","0","2021-11-10 21:01:55","2021-11-10 21:01:55");
INSERT INTO messages VALUES("34","70","17","2","1","hgfhf","4","1","0","0","2021-11-10 21:18:32","2021-11-24 04:42:05");
INSERT INTO messages VALUES("35","70","18","2","1","testt message","4","1","0","0","2021-11-11 01:42:21","2021-11-24 04:42:04");
INSERT INTO messages VALUES("36","70","18","1","2","sorry for inconvenience","6","0","0","0","2021-11-11 01:44:36","2021-11-11 01:44:36");
INSERT INTO messages VALUES("37","70","19","2","1","fdgfgf","4","1","0","0","2021-11-11 01:47:12","2021-11-24 04:42:06");
INSERT INTO messages VALUES("38","70","19","1","2","ghghg","5","0","0","0","2021-11-11 02:37:10","2021-11-11 02:37:10");
INSERT INTO messages VALUES("39","70","19","1","2","fgtffg","3","0","0","0","2021-11-11 03:20:59","2021-11-11 03:20:59");
INSERT INTO messages VALUES("40","6","20","1","2","testtt","4","1","0","0","2021-11-23 21:32:51","2021-11-26 01:11:01");
INSERT INTO messages VALUES("41","6","21","1","2","test booking","4","1","0","0","2021-11-25 21:06:35","2021-11-26 01:11:02");
INSERT INTO messages VALUES("42","6","22","1","2","test","4","1","0","0","2021-11-25 21:44:15","2021-11-26 01:11:00");
INSERT INTO messages VALUES("43","6","22","1","2","test cancle","2","1","0","0","2021-11-25 21:45:08","2021-11-26 01:11:00");
INSERT INTO messages VALUES("44","6","23","1","2","test","4","1","0","0","2021-11-26 00:58:05","2021-11-26 01:11:03");
INSERT INTO messages VALUES("45","6","23","1","2","test cancle msg","2","1","0","0","2021-11-26 01:01:44","2021-11-26 01:11:03");
INSERT INTO messages VALUES("46","6","24","1","2","gdsfdfdf","4","0","0","0","2021-11-26 01:13:47","2021-11-26 01:13:47");
INSERT INTO messages VALUES("47","6","25","1","2","hgfg","4","0","0","0","2021-11-26 01:26:17","2021-11-26 01:26:17");
INSERT INTO messages VALUES("48","6","26","1","2","testt","4","0","0","0","2021-11-26 18:19:24","2021-11-26 18:19:24");
INSERT INTO messages VALUES("49","6","26","1","2","cancle","2","0","0","0","2021-11-26 18:21:48","2021-11-26 18:21:48");
INSERT INTO messages VALUES("50","6","25","1","2","test cancle after payment","2","0","0","0","2021-11-26 19:32:41","2021-11-26 19:32:41");
INSERT INTO messages VALUES("51","6","27","1","2","test guest msg","4","0","0","0","2021-11-29 22:04:41","2021-11-29 22:04:41");
INSERT INTO messages VALUES("52","6","27","2","1","testtt","3","0","0","0","2021-11-29 22:14:11","2021-11-29 22:14:11");
INSERT INTO messages VALUES("53","6","28","1","2","gdfgf","4","0","0","0","2021-11-30 00:19:26","2021-11-30 00:19:26");
INSERT INTO messages VALUES("54","6","28","2","1","dfdfd","3","0","0","0","2021-11-30 00:29:53","2021-11-30 00:29:53");
INSERT INTO messages VALUES("55","73","29","2","1","requesting for the host approval","4","0","0","0","2021-12-01 19:56:08","2021-12-01 19:56:08");
INSERT INTO messages VALUES("56","73","29","2","1","no longer need accommodations","2","0","0","0","2021-12-01 19:59:45","2021-12-01 19:59:45");
INSERT INTO messages VALUES("57","73","30","2","1","requesting for approval from the host","4","0","0","0","2021-12-01 20:03:38","2021-12-01 20:03:38");
INSERT INTO messages VALUES("58","73","30","1","2","","5","0","0","0","2021-12-01 20:07:45","2021-12-01 20:07:45");
INSERT INTO messages VALUES("59","73","30","2","1","travel dates changes","2","0","0","0","2021-12-01 20:11:03","2021-12-01 20:11:03");
INSERT INTO messages VALUES("60","74","31","18","17","request for approval","4","0","0","0","2021-12-01 20:29:09","2021-12-01 20:29:09");
INSERT INTO messages VALUES("61","74","31","18","17","no longer need accommodations","2","0","0","0","2021-12-01 20:30:02","2021-12-01 20:30:02");
INSERT INTO messages VALUES("62","74","32","18","17","booking request","4","0","0","0","2021-12-01 20:43:59","2021-12-01 20:43:59");
INSERT INTO messages VALUES("63","74","32","17","18","","5","0","0","0","2021-12-01 20:44:51","2021-12-01 20:44:51");
INSERT INTO messages VALUES("64","74","32","18","17","travel dates changed","2","0","0","0","2021-12-01 20:46:11","2021-12-01 20:46:11");
INSERT INTO messages VALUES("65","74","33","18","17","accept the booking","4","0","0","0","2021-12-01 20:52:30","2021-12-01 20:52:30");
INSERT INTO messages VALUES("66","74","33","17","18","booking request accepted","5","0","0","0","2021-12-01 20:55:51","2021-12-01 20:55:51");
INSERT INTO messages VALUES("67","73","34","2","1","booking request","4","0","0","0","2021-12-01 21:17:42","2021-12-01 21:17:42");
INSERT INTO messages VALUES("68","73","34","1","2","accepted","5","0","0","0","2021-12-01 21:18:07","2021-12-01 21:18:07");
INSERT INTO messages VALUES("69","73","34","2","1","payment booking","4","0","0","0","2021-12-01 21:40:04","2021-12-01 21:40:04");
INSERT INTO messages VALUES("70","73","34","2","1","no longer need the accommodation","2","0","0","0","2021-12-01 21:43:24","2021-12-01 21:43:24");
INSERT INTO messages VALUES("71","75","35","18","17","Payment For Booking","4","0","0","0","2021-12-01 23:40:50","2021-12-01 23:40:50");
INSERT INTO messages VALUES("72","75","35","18","17","Traveling Dates Changed","2","0","0","0","2021-12-01 23:43:28","2021-12-01 23:43:28");
INSERT INTO messages VALUES("73","74","36","18","17","requesting for accept the booking","4","0","0","0","2021-12-02 00:05:22","2021-12-02 00:05:22");
INSERT INTO messages VALUES("74","74","36","17","18","no longer available","3","0","0","0","2021-12-02 00:07:20","2021-12-02 00:07:20");
INSERT INTO messages VALUES("75","74","37","18","17","requesting for booking approval","4","0","0","0","2021-12-02 00:41:56","2021-12-02 00:41:56");
INSERT INTO messages VALUES("76","74","37","17","18","accepted","5","0","0","0","2021-12-02 00:42:31","2021-12-02 00:42:31");
INSERT INTO messages VALUES("77","74","37","18","17","payment for booking accommodation","4","0","0","0","2021-12-02 00:43:54","2021-12-02 00:43:54");
INSERT INTO messages VALUES("78","74","37","17","18","Needs Maintenance","3","0","0","0","2021-12-02 00:45:21","2021-12-02 00:45:21");
INSERT INTO messages VALUES("79","6","38","17","2","test","4","1","0","0","2021-12-02 02:55:07","2021-12-06 00:05:16");
INSERT INTO messages VALUES("80","74","39","2","17","test","4","0","0","0","2021-12-02 03:01:42","2021-12-02 03:01:42");
INSERT INTO messages VALUES("81","74","39","17","2","testtt","5","0","0","0","2021-12-02 03:02:50","2021-12-02 03:02:50");
INSERT INTO messages VALUES("82","74","39","2","17","fdf","4","0","0","0","2021-12-02 03:03:44","2021-12-02 03:03:44");
INSERT INTO messages VALUES("83","74","39","17","2","yttryt","3","0","0","0","2021-12-02 03:07:54","2021-12-02 03:07:54");
INSERT INTO messages VALUES("84","77","40","18","17","Request to book the accommodation","4","0","0","0","2021-12-02 19:14:19","2021-12-02 19:14:19");
INSERT INTO messages VALUES("85","77","40","18","17","no longer need accommodations","2","0","0","0","2021-12-02 19:15:47","2021-12-02 19:15:47");
INSERT INTO messages VALUES("86","77","41","18","17","booking request","4","0","0","0","2021-12-02 19:22:37","2021-12-02 19:22:37");
INSERT INTO messages VALUES("87","77","41","17","18","request accepted","5","0","0","0","2021-12-02 19:24:13","2021-12-02 19:24:13");
INSERT INTO messages VALUES("88","77","41","18","17","booked by accident","2","0","0","0","2021-12-02 19:26:34","2021-12-02 19:26:34");
INSERT INTO messages VALUES("89","77","42","18","17","booking request","4","0","0","0","2021-12-02 19:47:18","2021-12-02 19:47:18");
INSERT INTO messages VALUES("90","77","42","17","18","accepting the booking","5","0","0","0","2021-12-02 19:48:54","2021-12-02 19:48:54");
INSERT INTO messages VALUES("91","77","42","18","17","Payment for the accommodation","4","0","0","0","2021-12-02 19:52:34","2021-12-02 19:52:34");
INSERT INTO messages VALUES("92","77","42","18","17","place doesn\'t met my expectation","2","0","0","0","2021-12-02 19:54:50","2021-12-02 19:54:50");
INSERT INTO messages VALUES("93","78","43","18","17","instant booking payment","4","0","0","0","2021-12-02 20:17:23","2021-12-02 20:17:23");
INSERT INTO messages VALUES("94","78","43","18","17","travel dates changed","2","0","0","0","2021-12-02 20:38:15","2021-12-02 20:38:15");
INSERT INTO messages VALUES("95","74","44","18","17","requesting to accept the booking","4","0","0","0","2021-12-02 21:13:24","2021-12-02 21:13:24");
INSERT INTO messages VALUES("96","74","44","17","18","no longer available","3","0","0","0","2021-12-02 21:14:27","2021-12-02 21:14:27");
INSERT INTO messages VALUES("97","77","45","18","17","booking request for penalty check","4","0","0","0","2021-12-02 21:32:31","2021-12-02 21:32:31");
INSERT INTO messages VALUES("98","77","45","17","18","accepting the request","5","0","0","0","2021-12-02 21:33:29","2021-12-02 21:33:29");
INSERT INTO messages VALUES("99","77","45","17","18","no longer available","3","0","0","0","2021-12-02 21:34:38","2021-12-02 21:34:38");
INSERT INTO messages VALUES("100","74","46","18","17","booking request","4","0","0","0","2021-12-02 21:37:04","2021-12-02 21:37:04");
INSERT INTO messages VALUES("101","74","46","17","18","accepting the request","5","0","0","0","2021-12-02 21:38:04","2021-12-02 21:38:04");
INSERT INTO messages VALUES("102","74","46","18","17","payment","4","0","0","0","2021-12-02 21:38:54","2021-12-02 21:38:54");
INSERT INTO messages VALUES("103","74","46","17","18","needs maintenance","3","0","0","0","2021-12-02 21:42:19","2021-12-02 21:42:19");
INSERT INTO messages VALUES("104","74","46","17","18","needs maintenance","3","0","0","0","2021-12-02 21:42:21","2021-12-02 21:42:21");
INSERT INTO messages VALUES("105","77","47","18","17","booking request","4","0","0","0","2021-12-02 23:52:24","2021-12-02 23:52:24");
INSERT INTO messages VALUES("106","77","47","17","18","accepting the booking","5","0","0","0","2021-12-02 23:53:14","2021-12-02 23:53:14");
INSERT INTO messages VALUES("107","77","47","17","18","not available","3","0","0","0","2021-12-02 23:55:08","2021-12-02 23:55:08");
INSERT INTO messages VALUES("108","74","48","18","17","requesting for the booking","4","1","0","0","2021-12-03 00:01:08","2021-12-03 18:49:27");
INSERT INTO messages VALUES("109","74","48","17","18","accepting the request","5","0","0","0","2021-12-03 00:01:55","2021-12-03 00:01:55");
INSERT INTO messages VALUES("110","74","48","18","17","payment for the accommodation","4","1","0","0","2021-12-03 00:03:25","2021-12-03 18:49:27");
INSERT INTO messages VALUES("111","74","48","17","18","not available","3","0","0","0","2021-12-03 00:05:22","2021-12-03 00:05:22");
INSERT INTO messages VALUES("112","77","49","18","17","approve the request","4","1","0","0","2021-12-03 01:03:03","2021-12-03 18:49:19");
INSERT INTO messages VALUES("113","77","49","17","18","accepted","5","0","0","0","2021-12-03 01:03:39","2021-12-03 01:03:39");
INSERT INTO messages VALUES("114","77","49","18","17","payment process","4","1","0","0","2021-12-03 01:04:31","2021-12-03 18:49:19");
INSERT INTO messages VALUES("115","77","49","17","18","not available","3","0","0","0","2021-12-03 01:07:05","2021-12-03 01:07:05");
INSERT INTO messages VALUES("116","79","50","18","17","booking request","4","1","0","0","2021-12-03 02:29:29","2021-12-03 18:49:18");
INSERT INTO messages VALUES("117","79","50","17","18","booking accepted","5","0","0","0","2021-12-03 02:30:05","2021-12-03 02:30:05");
INSERT INTO messages VALUES("118","79","50","18","17","payment for booking","4","1","0","0","2021-12-03 02:33:31","2021-12-03 18:49:18");
INSERT INTO messages VALUES("119","79","50","18","17","dates changed","2","1","0","0","2021-12-03 02:35:17","2021-12-03 18:49:18");
INSERT INTO messages VALUES("120","80","51","18","17","dasfafs","4","1","0","0","2021-12-03 02:53:45","2021-12-03 18:49:18");
INSERT INTO messages VALUES("121","80","51","17","18","accepted","5","0","0","0","2021-12-03 02:54:07","2021-12-03 02:54:07");
INSERT INTO messages VALUES("122","80","51","18","17","payment process","4","1","0","0","2021-12-03 02:54:54","2021-12-03 18:49:18");
INSERT INTO messages VALUES("123","80","51","18","17","no longer need accommodations","2","1","0","0","2021-12-03 02:55:36","2021-12-03 18:49:18");
INSERT INTO messages VALUES("124","81","52","18","17","booking request","4","0","0","0","2021-12-03 19:15:20","2021-12-03 19:15:20");
INSERT INTO messages VALUES("125","81","52","17","18","booking accepted","5","0","0","0","2021-12-03 19:15:47","2021-12-03 19:15:47");
INSERT INTO messages VALUES("126","81","52","18","17","payment","4","0","0","0","2021-12-03 19:16:58","2021-12-03 19:16:58");
INSERT INTO messages VALUES("127","81","52","18","17","no longer need accommodations","2","0","0","0","2021-12-03 19:19:42","2021-12-03 19:19:42");
INSERT INTO messages VALUES("128","83","53","17","2","fdsadhf","4","0","0","0","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO messages VALUES("129","79","54","18","17","sdgahajkhsfd","4","0","0","0","2021-12-06 19:27:38","2021-12-06 19:27:38");
INSERT INTO messages VALUES("130","79","54","17","18","sdfghdfg","5","0","0","0","2021-12-06 19:32:15","2021-12-06 19:32:15");
INSERT INTO messages VALUES("131","79","54","18","17","sdgfdgfh","4","0","0","0","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO messages VALUES("132","83","55","1","2","tete","4","0","0","0","2021-12-06 22:00:39","2021-12-06 22:00:39");
INSERT INTO messages VALUES("133","86","56","18","17","sdggfs","4","0","0","0","2021-12-06 23:46:01","2021-12-06 23:46:01");
INSERT INTO messages VALUES("134","86","56","17","18","accepted","5","0","0","0","2021-12-06 23:46:39","2021-12-06 23:46:39");
INSERT INTO messages VALUES("135","86","56","18","17","payment","4","0","0","0","2021-12-06 23:48:47","2021-12-06 23:48:47");
INSERT INTO messages VALUES("136","86","57","16","17","tes","4","0","0","0","2021-12-07 01:05:42","2021-12-07 01:05:42");
INSERT INTO messages VALUES("137","58","58","1","14","test","4","0","0","0","2021-12-07 02:00:08","2021-12-07 02:00:08");
INSERT INTO messages VALUES("138","70","59","2","1","test","4","0","0","0","2021-12-17 02:34:55","2021-12-17 02:34:55");
INSERT INTO messages VALUES("139","70","59","1","2","test","5","0","0","0","2021-12-17 02:35:58","2021-12-17 02:35:58");
INSERT INTO messages VALUES("140","59","60","1","14","testtt","4","0","0","0","2021-12-21 00:39:06","2021-12-21 00:39:06");
INSERT INTO messages VALUES("141","46","61","1","14","test","4","0","0","0","2021-12-22 03:38:18","2021-12-22 03:38:18");
INSERT INTO messages VALUES("142","89","62","25","23","j","4","0","0","0","2022-01-12 00:51:59","2022-01-12 00:51:59");





CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES("1","2014_10_12_000000_create_users_table","1");
INSERT INTO migrations VALUES("2","2014_10_12_100000_create_password_resets_table","1");
INSERT INTO migrations VALUES("3","2015_09_26_161159_entrust_setup_tables","1");
INSERT INTO migrations VALUES("4","2015_10_05_153204_create_timezone_table","1");
INSERT INTO migrations VALUES("5","2017_02_08_044609_create_accounts_table","1");
INSERT INTO migrations VALUES("6","2017_02_08_045108_create_pages_table","1");
INSERT INTO migrations VALUES("7","2017_02_08_045204_create_reports_table","1");
INSERT INTO migrations VALUES("8","2017_02_08_045412_create_country_table","1");
INSERT INTO migrations VALUES("9","2017_02_08_045643_create_language_table","1");
INSERT INTO migrations VALUES("10","2017_02_08_045745_create_currency_table","1");
INSERT INTO migrations VALUES("11","2017_02_23_110333_create_backup_table","1");
INSERT INTO migrations VALUES("12","2017_02_27_124315_create_seo_metas_table","1");
INSERT INTO migrations VALUES("13","2017_03_01_130507_create_user_details_table","1");
INSERT INTO migrations VALUES("14","2017_03_29_070352_create_payment_methods_table","1");
INSERT INTO migrations VALUES("15","2017_04_02_110016_create_notification_table","1");
INSERT INTO migrations VALUES("16","2017_05_04_102846_create_admin_table","1");
INSERT INTO migrations VALUES("17","2017_05_04_103841_create_property_type_table","1");
INSERT INTO migrations VALUES("18","2017_05_04_104010_create_amenities_table","1");
INSERT INTO migrations VALUES("19","2017_05_04_104406_create_amenity_type_table","1");
INSERT INTO migrations VALUES("20","2017_05_04_104509_create_rules_table","1");
INSERT INTO migrations VALUES("21","2017_05_04_105120_create_settings_table","1");
INSERT INTO migrations VALUES("22","2017_05_04_105515_create_properties_table","1");
INSERT INTO migrations VALUES("23","2017_05_04_105605_create_property_description_table","1");
INSERT INTO migrations VALUES("24","2017_05_04_105636_create_property_price_table","1");
INSERT INTO migrations VALUES("25","2017_05_04_105726_create_property_address_table","1");
INSERT INTO migrations VALUES("26","2017_05_04_105742_create_property_photos_table","1");
INSERT INTO migrations VALUES("27","2017_05_04_105800_create_property_details_table","1");
INSERT INTO migrations VALUES("28","2017_05_04_112613_create_property_dates_table","1");
INSERT INTO migrations VALUES("29","2017_05_04_112728_create_property_rules_table","1");
INSERT INTO migrations VALUES("30","2017_05_04_112954_create_property_fees_table","1");
INSERT INTO migrations VALUES("31","2017_05_04_113049_create_bookings_table","1");
INSERT INTO migrations VALUES("32","2017_05_04_113223_create_penalty_table","1");
INSERT INTO migrations VALUES("33","2017_05_04_113243_create_payout_table","1");
INSERT INTO migrations VALUES("34","2017_05_04_113355_create_payout_penalties_table","1");
INSERT INTO migrations VALUES("35","2017_05_04_113622_create_booking_details_table","1");
INSERT INTO migrations VALUES("36","2017_05_04_114011_create_reviews_table","1");
INSERT INTO migrations VALUES("37","2017_05_04_114131_create_messages_table","1");
INSERT INTO migrations VALUES("38","2017_05_04_114152_create_bed_types_table","1");
INSERT INTO migrations VALUES("39","2017_05_04_114215_create_banners_table","1");
INSERT INTO migrations VALUES("40","2017_05_04_114238_create_starting_cities_table","1");
INSERT INTO migrations VALUES("41","2017_05_07_133954_create_message_type_table","1");
INSERT INTO migrations VALUES("42","2017_05_08_073511_create_property_beds_table","1");
INSERT INTO migrations VALUES("43","2017_05_13_055552_create_space_type_table","1");
INSERT INTO migrations VALUES("44","2017_05_18_121707_create_property_steps_table","1");
INSERT INTO migrations VALUES("45","2017_06_18_080440_create_table_user_verification","1");
INSERT INTO migrations VALUES("46","2019_02_02_111427_create_email_templates_table","1");
INSERT INTO migrations VALUES("47","2019_03_03_100404_create_property_icalimports_table","1");
INSERT INTO migrations VALUES("48","2019_08_19_000000_create_failed_jobs_table","1");
INSERT INTO migrations VALUES("49","2020_08_06_062818_create_testimonials_table","1");
INSERT INTO migrations VALUES("50","2020_11_19_082447_create_wallets_table","1");
INSERT INTO migrations VALUES("51","2020_11_19_084031_create_withdrawals_table","1");
INSERT INTO migrations VALUES("52","2020_11_19_102628_create_payout_settings_table","1");





CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('read','unread') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pages VALUES("1","1","Help","help","<h2>Help</h2>\n\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<ul>\n	<li>\n	<p>Can i share my home on Rent?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<p>Who can be on Rent host?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<p>Does Rent screen Guests?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<p>How should i price my listing on Rent?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<p>How do Rent payments work?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<p>Does Rent provide any insurance for hosts?</p>\n\n	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>","first","Active","en","1","","2021-12-03 19:50:04");
INSERT INTO pages VALUES("2","2","About","about","<h2>About</h2>\n\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>","first","Active","en","1","","2021-12-03 19:42:41");
INSERT INTO pages VALUES("3","3","Policies","policies","<h2>Policies</h2>\n\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>","second","Active","en","1","","2021-12-03 20:11:48");
INSERT INTO pages VALUES("4","4","Privacy","privacy","<h2><strong>Privacy</strong></h2>\n\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of &quot;de Finibus Bonorum et Malorum&quot; (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, &quot;Lorem ipsum dolor sit amet..&quot;, comes from a line in section 1.10.32.</p>\n\n<p>&nbsp;</p>","second","Active","en","1","","2021-07-05 02:20:04");
INSERT INTO pages VALUES("5","5","Contact Us","contact-us","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Email Us</h2>\n\n<p><a>demo@gmail.com</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Call Us</h2>\n\n<p><a>+1 111 111 1111</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Contact Address</h2>\n\n<p>City, State, Country</p>\n</div>\n</div>\n</div>","first","Active","en","1","2021-07-05 02:20:30","2021-12-06 22:30:05");
INSERT INTO pages VALUES("7","7","Terms of Service","terms-of-service","<ul>\n	<li><a href=\"#\">Terms of Service</a></li>\n</ul>","first","Active","en","1","2021-07-05 02:21:23","2021-12-10 02:30:57");
INSERT INTO pages VALUES("8","8","Become Host","become-host","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","en","1","2021-08-05 06:22:25","2021-12-03 20:45:18");
INSERT INTO pages VALUES("9","2","????","","<p>????<br />\n???????? ?????????? ?????????? ?????? ?????? ???????? ?????? ???? ?????????????? ?????????????? ?????????? ???? ?????????? ???????????? ???? ?????????????? ?????? ?????????? ?????????????? ???????? ???? ?????? ???????? ?????????????? ???? ???????????? ???????? ????????????. ?????????? ???? ?????????????? ?????????? ???????????? ???? ?????? ?????????? ?????? ?????????? ?????????? -?????? ???? ????- ???????????? ?? ?????????? ???? ?????????????? &quot;?????? ???????? ?????????? ?????? ?? ?????? ???????? ?????????? ??????&quot; ?? ?????? ???????????? ???????? ???????????? ???????????????? ?????????? ??????????????. ???????????? ???????????? ???? ?????? ?????????? ?????????????? ???????????? ?????????? ?????????? ???????? Lorem Ipsum ?????? ?????????? ?????????????? ?? ???????????? ?????????? ???? &quot;lorem ipsum&quot; ???? ???????????? ???? ?????????? ?????????? ???????? ???? ???????? ???? ??????????. ?????????? ?????????????? ???????????? ?????? ???? ???????????? ?? ?????????????? ???? ???????? ???????????? ?? ???????????????? ???? ?????? (?????? ?????????????? ???????????????? ?????? ???????? ??????).</p>","first","Active","ar","2","2021-12-03 19:42:41","2021-12-03 19:42:41");
INSERT INTO pages VALUES("10","2","??????","","<h2>??????</h2>\n\n<p>?????????????????????????????????????????????????????????????????????????????????????????????????????????????????? Lorem Ipsum ??????????????????????????????????????????????????????????????????????????????&ldquo;?????????????????????????????????&rdquo;???????????????????????????????????????????????????????????????????????????????????????????????? Lorem Ipsum ?????????????????????????????????&ldquo;lorem ipsum&rdquo;??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n\n<p>&nbsp;</p>","first","Active","ch","3","2021-12-03 19:42:41","2021-12-03 19:47:18");
INSERT INTO pages VALUES("11","2","Sur","","<p>Sur<br />\nC&#39;est un fait &eacute;tabli de longue date qu&#39;un lecteur sera distrait par le contenu lisible d&#39;une page lorsqu&#39;il regarde sa mise en page. L&#39;int&eacute;r&ecirc;t d&#39;utiliser Lorem Ipsum est qu&#39;il a une distribution de lettres plus ou moins normale, par opposition &agrave; l&#39;utilisation de &laquo;&nbsp;Content here, content here&nbsp;&raquo;, le faisant ressembler &agrave; un anglais lisible. De nombreux logiciels de publication assist&eacute;e par ordinateur et &eacute;diteurs de pages Web utilisent d&eacute;sormais Lorem Ipsum comme texte de mod&egrave;le par d&eacute;faut, et une recherche de &laquo;&nbsp;lorem ipsum&nbsp;&raquo; permettra de d&eacute;couvrir de nombreux sites Web encore &agrave; leurs balbutiements. Diff&eacute;rentes versions ont &eacute;volu&eacute; au fil des ann&eacute;es, parfois par accident, parfois volontairement (humour inject&eacute;, etc.).</p>","first","Active","fr","4","2021-12-03 19:42:41","2021-12-03 19:42:41");
INSERT INTO pages VALUES("12","2","Cerca de","","<p>Cerca de<br />\n&Eacute; um fato estabelecido h&aacute; muito tempo que um leitor se distrair&aacute; com o conte&uacute;do leg&iacute;vel de uma p&aacute;gina ao examinar seu layout. O objetivo de usar Lorem Ipsum &eacute; que ele tem uma distribui&ccedil;&atilde;o de letras mais ou menos normal, ao contr&aacute;rio de usar &#39;Conte&uacute;do aqui, conte&uacute;do aqui&#39;, fazendo com que pare&ccedil;a um ingl&ecirc;s leg&iacute;vel. Muitos pacotes de editora&ccedil;&atilde;o eletr&ocirc;nica e editores de p&aacute;ginas da web agora usam Lorem Ipsum como seu texto de modelo padr&atilde;o, e uma pesquisa por &#39;lorem ipsum&#39; revelar&aacute; muitos sites ainda em sua inf&acirc;ncia. V&aacute;rias vers&otilde;es evolu&iacute;ram ao longo dos anos, &agrave;s vezes por acidente, &agrave;s vezes de prop&oacute;sito (humor injetado e coisas do g&ecirc;nero).</p>","first","Active","pt","5","2021-12-03 19:42:41","2021-12-03 19:42:41");
INSERT INTO pages VALUES("13","2","??","","<p>??<br />\n?????????? ??????????????????????, ?????? ???????????????? ?????????? ?????????????????????? ???? ?????????????????????????? ???????????????????? ????????????????, ?????????? ???? ???? ??????????. ?????????? ?????????????????????????? Lorem Ipsum ?? ??????, ?????? ???? ?????????? ?????????? ?????? ?????????? ???????????????????? ?????????????????????????? ????????, ?? ?????????????? ???? ?????????????????????????? &laquo;?????????????? ??????????, ?????????????? ??????????&raquo;, ?????? ???????????? ?????? ?????????????? ???? ???????????????? ????????????????????. ???????????? ???????????????????? ???????????????????????? ???????????? ?? ?????????????????? ??????-?????????????? ???????????? ???????????????????? Lorem Ipsum ?? ???????????????? ???????????? ???????????? ???? ??????????????????, ?? ?????????? ???? ?????????????? &laquo;lorem ipsum&raquo; ?????????????????? ???????????? ??????-??????????, ?????? ?????? ?????????????????????? ?? ???????????????????? ??????????????????. ?? ???????????? ?????????????????? ???????????? ????????????, ???????????? ????????????????, ???????????? ???????????????????? (?? ?????????????????????? ?????????? ?? ??.??.).</p>","first","Active","ru","6","2021-12-03 19:42:41","2021-12-03 19:45:46");
INSERT INTO pages VALUES("14","2","sobre","","<p>Sobre<br />\nEs un hecho establecido desde hace mucho tiempo que un lector se distraer&aacute; con el contenido legible de una p&aacute;gina cuando mire su dise&ntilde;o. El punto de usar Lorem Ipsum es que tiene una distribuci&oacute;n de letras m&aacute;s o menos normal, en lugar de usar &#39;Contenido aqu&iacute;, contenido aqu&iacute;&#39;, lo que hace que parezca un ingl&eacute;s legible. Muchos paquetes de autoedici&oacute;n y editores de p&aacute;ginas web ahora usan Lorem Ipsum como su texto modelo predeterminado, y una b&uacute;squeda de &#39;lorem ipsum&#39; revelar&aacute; muchos sitios web que a&uacute;n est&aacute;n en su infancia. Varias versiones han evolucionado a lo largo de los a&ntilde;os, a veces por accidente, a veces a prop&oacute;sito (humor inyectado y cosas por el estilo).</p>","first","Active","es","7","2021-12-03 19:42:41","2021-12-03 19:45:46");
INSERT INTO pages VALUES("15","2","hakk??nda","","<p>Hakk??nda<br />\nBir okuyucunun, sayfa d&uuml;zenine bakarken sayfan??n okunabilir i&ccedil;eri??i taraf??ndan dikkatinin da????laca???? uzun zamand??r bilinen bir ger&ccedil;ektir. Lorem Ipsum kullanman??n amac??, &#39;??&ccedil;erik burada, i&ccedil;erik burada&#39; kullan??lmas??n??n aksine, harflerin az &ccedil;ok normal da????l??m??na sahip olmas?? ve okunabilir ??ngilizce gibi g&ouml;r&uuml;nmesini sa??lamas??d??r. Bir&ccedil;ok masa&uuml;st&uuml; yay??nc??l??k paketi ve web sayfas?? d&uuml;zenleyicisi art??k varsay??lan model metni olarak Lorem Ipsum&#39;u kullan??yor ve &#39;lorem ipsum&#39; aramas??, hen&uuml;z emekleme a??amas??nda olan bir&ccedil;ok web sitesini ortaya &ccedil;??karacakt??r. Y??llar i&ccedil;inde, bazen tesad&uuml;fen, bazen de bilerek (enjekte edilmi?? mizah ve benzeri) &ccedil;e??itli versiyonlar geli??ti.</p>","first","Active","tr","8","2021-12-03 19:42:41","2021-12-03 19:45:46");
INSERT INTO pages VALUES("16","1","??????????","","<h2> ???????????? </ h2>\n\n<p> ?????????? ???????????? ???? ???????????? ???? ???????? ?????????????? ???? ?????????? ?????????????? ????????????????. ?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ???????? ???????? ????????. ?????? ?????? ?????? ?????? ?????????? ???????? ?? ???????? ?????????? ???????????? ???? ?????????????? ???????????????????? ?? ?????? ?????? ?????????? ??????????. ???? ?????????? ???? ?????????????????? ???? ?????????? ???????????? ???? ?????????? ?????????? Letraset ???????? ?????????? ?????? ?????????? Lorem Ipsum ?? ?????????????? ???? ?????????? ?????????? ?????????????? ?????? Aldus PageMaker ?????? ???? ?????? ?????????????? Lorem Ipsum. </p>\n\n<ul>\n<li>\n<p> ???? ???????????? ???????????? ?????????? ?????? ???????????????? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n<li>\n<p> ???? ?????????? ???????????????? ???? \"???????? ???????????????? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n<li>\n<p> ???? ?????????????? ???????? ?????????????? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n<li>\n<p> ?????? ???????????? ?????????? ???????????? ?????? \"??????????\"?? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n<li>\n<p> ?????? ???????? ?????????????? ???????????????? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n<li>\n<p> ???? ???????? Rent ???? ?????????? ?????????????????? </ p>\n\n<p> Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? nec ullamcorper ????????. </ p>\n</li>\n</ul>","first","Active","ar","2","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("17","1","??????","","<h2>??????</h2>\n\n<p>Lorem Ipsum ???????????????????????????????????????????????? 1500 ???????????????Lorem Ipsum ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 1960 ?????????????????? Lorem Ipsum ????????? Letraset ?????????????????????????????????????????????????????? Aldus PageMaker ?????? Lorem Ipsum ?????????????????????</p>\n\n<ul>\n<li>\n<p>?????????????????????????????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n<li>\n<p>??????????????? Rent ?????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n<li>\n<p>Rent ?????????????????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n<li>\n<p>???????????????????????????????????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n<li>\n<p>???????????????????????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n<li>\n<p>Rent ????????????????????????????????????</p>\n\n<p>Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit??? Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien??? Lorem ipsum dolor ??? amet???consectetur adipiscing ????????? Nulla mollis maximus sem, idmalesuada neque porta id??? Praesent scelerisque molestie mollis????????? necullamcorper massa???</p>\n</li>\n</ul>","first","Active","ch","3","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("18","1","Aider","","<h2>Aide</h2>\n\n<p>Lorem Ipsum est tout simplement un texte factice de l\'industrie de l\'impression et de la composition. Lorem Ipsum est le texte factice standard de l\'industrie depuis les ann??es 1500, lorsqu\'un imprimeur inconnu a pris une gal??re de caract??res et l\'a brouill?? pour cr??er un livre de sp??cimens de caract??res. Il a surv??cu non seulement ?? cinq si??cles, mais aussi au saut dans la composition ??lectronique, restant essentiellement inchang??. Il a ??t?? popularis?? dans les ann??es 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus r??cemment avec des logiciels de PAO comme Aldus PageMaker comprenant des versions de Lorem Ipsum.</p>\n\n<ul>\n<li>\n<p>Puis-je partager ma maison en location???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n<li>\n<p>Qui peut ??tre sur l\'h??te Rent???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n<li>\n<p>Loue-t-il les invit??s de l\'??cran???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n<li>\n<p>Comment dois-je tarifer mon annonce sur Louer???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n<li>\n<p>Comment fonctionnent les paiements de loyer???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n<li>\n<p>Loyer propose-t-il une assurance pour les h??tes???</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Pr??sent scelerisque molestie mollis. Entier nec ullamcorper massa.</p>\n</li>\n</ul>","first","Active","fr","4","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("19","1","Ajuda","","<h2> Ajuda </h2>\n\n<p> Lorem Ipsum ?? simplesmente um texto fict??cio da ind??stria de impress??o e composi????o. Lorem Ipsum tem sido o texto fict??cio padr??o da ind??stria desde 1500, quando um impressor desconhecido pegou um modelo de impress??o e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu n??o apenas cinco s??culos, mas tamb??m ao salto para a composi????o eletr??nica, permanecendo essencialmente inalterado. Foi popularizado na d??cada de 1960 com o lan??amento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editora????o eletr??nica como Aldus PageMaker incluindo vers??es de Lorem Ipsum. </p>\n\n<ul>\n<li>\n<p> Posso dividir minha casa no aluguel? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n<li>\n<p> Quem pode ser o host do Rent? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n<li>\n<p> O Rent faz a triagem de convidados? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n<li>\n<p> Como devo definir o pre??o de minha listagem no aluguel? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n<li>\n<p> Como funcionam os pagamentos de aluguel? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n<li>\n<p> O Rent oferece algum seguro para os anfitri??es? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa. </p>\n</li>\n</ul>","first","Active","pt","5","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("20","1","????????????","","<h2> ?????????????? </h2>\n\n<p> Lorem Ipsum - ?????? ???????????? ?????????????????? ??????????, ???????????????????????? ?? ?????????????????????????????? ?? ???????????????? ??????????????????. Lorem Ipsum ?????? ?????????????????????? ?????????????????? ?????????????? ?? ?????????????? ?? 1500-?? ??????????, ?????????? ?????????????????????? ???????????????? ???????? ???????????? ???????????? ?? ?????????????????????????? ??????, ?????????? ?????????????? ?????????? ???????????????? ????????????. ???? ?????????????? ???? ???????????? ???????? ??????????, ???? ?? ???????????? ?? ?????????????????????? ??????????, ?????????????????? ?????????????????????? ????????????????????. ???? ?????? ?????????????????????????????? ?? 1960-?? ?????????? ?? ???????????????? ???????????? Letraset, ???????????????????? ?????????????? Lorem Ipsum, ?? ?? ?????????????????? ?????????? - ?? ?????????????? ???????????????????? ???????????????????????? ????????????????, ?????????? ?????? Aldus PageMaker, ?????????????? ???????????? Lorem Ipsum. </p>\n\n<ul>\n<li>\n<p> ???????? ???? ?? ?????????? ???????? ?????? ?? ????????????? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ?????? ?????????? ???????? ???? ?????????? Rent? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ?????????????????? ???? ???????????? ????????????? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ?????? ?????? ???????????????????? ???????? ???? ???????? ???????????????????? ?????? ????????????? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ?????? ???????????????? ???????????????? ??????????????? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ?????????????????????????? ???? Rent ??????????-???????? ?????????????????? ?????? ????????????? </p>\n\n<p> Lorem ipsum dolor sit amet, conctetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conctetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. ?????????????????????????? ???????????????? nec ullamcorper massa. </p>\n</li>\n</ul>","first","Active","ru","6","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("21","1","Ayudar","","<h2> Ayuda </h2>\n\n<p> Lorem Ipsum es simplemente texto de relleno de la industria de la impresi??n y la composici??n tipogr??fica. Lorem Ipsum ha sido el texto de relleno est??ndar de la industria desde el a??o 1500, cuando un impresor desconocido tom?? una galera de tipos y la mezcl?? para hacer un libro de muestras tipogr??ficas. Ha sobrevivido no solo a cinco siglos, sino tambi??n al salto a la composici??n tipogr??fica electr??nica, permaneciendo esencialmente sin cambios. Se populariz?? en la d??cada de 1960 con el lanzamiento de hojas de Letraset que contienen pasajes de Lorem Ipsum y, m??s recientemente, con software de autoedici??n como Aldus PageMaker que incluye versiones de Lorem Ipsum. </p>\n\n<ul>\n<li>\n<p> ??Puedo compartir mi casa en Rent? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ??Qui??n puede participar en Rent host? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ??El alquiler muestra a los invitados? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ??C??mo debo fijar el precio de mi anuncio en Rent? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ??C??mo funcionan los pagos de alquiler? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n<li>\n<p> ??Rent ofrece alg??n seguro para los anfitriones? </p>\n\n<p> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id maleuada neque porta id. Praesent scelerisque molestie mollis. Entero nec ullamcorper massa. </p>\n</li>\n</ul>","first","Active","es","7","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("22","1","Yard??m","","<h2>Yard??m</h2>\n\n<p>Lorem Ipsum, bas??m ve dizgi end??strisinin basit bir sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaac??n??n bir tip numune kitab?? yapmak i??in bir yaz?? galerisini al??p kar????t??rd?????? 1500\'lerden beri end??strinin standart sahte metni olmu??tur. Sadece be?? y??zy??l boyunca hayatta kalmay??p, ayn?? zamanda esasen de??i??meden elektronik dizgiye s????rad??. 1960\'larda Lorem Ipsum pasajlar?? i??eren Letraset sayfalar??n??n yay??nlanmas??yla ve daha yak??n zamanda Aldus PageMaker gibi Lorem Ipsum s??r??mleri i??eren masa??st?? yay??nc??l??k yaz??l??mlar??yla pop??ler hale geldi.</p>\n\n<ul>\n<li>\n<p>Kiral??k evimi payla??abilir miyim?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitle.</p>\n</li>\n<li>\n<p>Kimler Kiral??k sunucuda olabilir?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitle.</p>\n</li>\n<li>\n<p>Kira, Misafirleri ekrana getirir mi?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitle.</p>\n</li>\n<li>\n<p>Kiral??k listemi nas??l fiyatland??rmal??y??m?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitle.</p>\n</li>\n<li>\n<p>Kira ??demeleri nas??l ??al??????r?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitle.</p>\n</li>\n<li>\n<p>Rent, ev sahipleri i??in herhangi bir sigorta sa??l??yor mu?</p>\n\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum toplu bir elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, conectetur adipiscing elit. Nulla mollis maximus sem, id mensuada neque porta id. Praesent scelerisque molestie mollis. Tamsay?? nec ullamcorper kitlesi.</p>\n</li>\n</ul>","first","Active","tr","8","2021-12-03 19:50:04","2021-12-03 19:54:36");
INSERT INTO pages VALUES("23","5","???????? ??????","","<div class=\"col-md-12\">\n<p><strong>?????????? ???????????? <!-- strong--> ???? ???????????? ???? ???????? ???????? ???????????? ?????????????? ????????????????. ?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ???????? ???????? ????????.</strong></p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/email.png\" /></strong></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>???????? ?????? ?????? ???????????? ????????????????????</strong></h2>\n\n<p><strong><a>demo@gmail.com</a></strong></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/call.png\" /></strong></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>???????? ??????</strong></h2>\n\n<p><strong><a>+1 111 111 1111</a></strong></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><strong><img src=\"public/img/placeholder.png\" /></strong></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\"><strong>?????????? ??????????????</strong></h2>\n\n<p><strong>?????????? ?????????? ????????</strong></p>\n</div>\n</div>\n</div>","first","Active","ar","2","2021-12-03 20:00:50","2021-12-06 22:28:35");
INSERT INTO pages VALUES("24","5","????????????","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum</strong>&nbsp;???????????????????????????????????????????????? 1500 ???????????????Lorem Ipsum ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">????????????????????????</h2>\n\n<p><a>demo@gmail.com</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">????????????</h2>\n\n<p><a>+1 111 111 1111</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">????????????</h2>\n\n<p>?????????????????????</p>\n</div>\n</div>\n</div>","first","Active","ch","3","2021-12-03 20:00:50","2021-12-06 22:32:50");
INSERT INTO pages VALUES("25","5","Nous contacter","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour en faire un livre sp&eacute;cimen de caract&egrave;res.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Envoyez-nous un e-mail</h2>\n\n<p><a>demo@gmail.com</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Appelez-nous</h2>\n\n<p><a>+1 111 111 1111</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Adresse de contact</h2>\n\n<p>Ville, &Eacute;tat, Pays</p>\n</div>\n</div>\n</div>","first","Active","fr","4","2021-12-03 20:00:50","2021-12-06 22:35:19");
INSERT INTO pages VALUES("26","5","Entre em contato conosco","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde os anos 1500, quando um impressor desconhecido pegou uma gal&eacute; do tipo e embaralhou para fazer um livro de amostra de tipos.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Envie-nos um e-mail</h2>\n\n<p><a> demo@gmail.com </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Ligue para n&oacute;s</h2>\n\n<p><a> +1 111 111 1111 </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Endere&ccedil;o de contato</h2>\n\n<p>Cidade, estado, pa&iacute;s</p>\n</div>\n</div>\n</div>","first","Active","pt","5","2021-12-03 20:00:50","2021-12-06 22:35:19");
INSERT INTO pages VALUES("27","5","?????????????????? ?? ????????","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - ?????? ???????????? ?????????????????? ??????????, ???????????????????????? ?? ?????????????????????????????? ?? ???????????????? ??????????????????. Lorem Ipsum ?????? ?????????????????????? ?????????????????? ?????????????? ?? ?????????????? ?? 1500-?? ??????????, ?????????? ?????????????????????? ???????????????? ???????? ???????????? ?? ?????????????????????????? ????, ?????????? ?????????????? ?????????? ?? ?????????????????? ??????????????.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">???????????????? ??????</h2>\n\n<p><a> demo@gmail.com </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">?????????????????? ??????</h2>\n\n<p><a> +1 111 111 1111 </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">???????????????????? ??????????</h2>\n\n<p>??????????, ????????, ????????????</p>\n</div>\n</div>\n</div>","first","Active","ru","6","2021-12-03 20:00:50","2021-12-06 22:35:19");
INSERT INTO pages VALUES("28","5","Contacta con nosotras","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el siglo XVI, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Env&iacute;enos un correo electr&oacute;nico</h2>\n\n<p><a> demo@gmail.com </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Ll&aacute;manos</h2>\n\n<p><a> +1 111 111 1111 </a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Direcci&oacute;n de contacto</h2>\n\n<p>Ciudad, estado, pa&iacute;s</p>\n</div>\n</div>\n</div>","first","Active","es","7","2021-12-03 20:00:50","2021-12-06 22:35:19");
INSERT INTO pages VALUES("29","5","Bizimle ileti??ime ge??in","","<div class=\"col-md-12\">\n<p><strong>Lorem Ipsum</strong>&nbsp;bask?? ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaac??n??n bir tip numune kitab?? yapmak i&ccedil;in bir yaz?? galerisini al??p kar????t??rd?????? 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmu??tur.</p>\n\n<div align=\"center\" class=\"row\">\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/email.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Bize E-posta G&ouml;nderin</h2>\n\n<p><a>demo@gmail.com</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/call.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">Bizi Aray??n</h2>\n\n<p><a>+1 111 111 1111</a></p>\n</div>\n\n<div class=\"col-md-4\">\n<div class=\"contact-page-icon mt-5\"><img src=\"public/img/placeholder.png\" /></div>\n\n<h2 class=\"pt-5 mb-3 font-weight-600\">??leti??im Adresi</h2>\n\n<p>??ehir, Eyalet, &Uuml;lke</p>\n</div>\n</div>\n</div>","first","Active","tr","8","2021-12-03 20:00:50","2021-12-06 22:35:19");
INSERT INTO pages VALUES("30","3","????????????","","<h2> ???????????????? </ h2>\n\n<p> ???????? ???????????? ???? ?????????????? ?????????????? ?????????? ?????????? ???????????? ?? ???????? ???????????????? ???? ?????????? ?????????????? ???????? ???? ?? ???? ???????? ?????????? ?????????????? ???? ?????????????? ?????????????????? ???????? ???? ???????? ?????? ?????????? ?????????????? ?????? ???? ????. ?????? ?????? ?????????????? ???????????? ???? ?????????? ???????????? ?? ?????????? ???????????? ???? ?????? ???????? ???? ?????? ???????? ???????? ???? ?????????? ????????. ???????? ???????? ???????????? Lorem Ipsum ?????? ???????????????? ?????? ?????????? ?????????????? ?????????????? ???????????? ?????? ?????????????? ?? ?????? ???????? ?????? ?????? ???????? ?????????? ?????? ????????????????. ???????????? ?????????????? ?????? ???????? ???? 200 ???????? ?????????????? ?? ?????????? ?????? ?????? ???? ???????? ???? ???????????? ???????????? ?????????????????? ?? ???????????? Lorem Ipsum ???????? ???????? ??????????????. ???????? ?????? ?????????? ???????????? ???????? ???? ???????????? ???????? ???????????? ???????????? ???? ?????????????? ???? ?????????????? ???????????????? ???? ?????????????? ?????? ?????????????? ?????? ?????? ??????. </ p>","second","Active","ar","2","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("31","3","??????","","<h2>??????</h2>\n\n<p> Lorem Ipsum ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????? Lorem Ipsum ????????????????????????????????????????????????????????????????????????????????? ????????????????????? Lorem Ipsum ??????????????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????? 200 ????????????????????????????????????????????????????????????????????????????????? Lorem Ipsum??? ?????????????????? Lorem Ipsum ??????????????????????????????????????????????????????</p>","second","Active","ch","3","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("32","3","Strat??gies","","<h2>Politiques</h2>\n\n<p>Il existe de nombreuses variantes de passages de Lorem Ipsum disponibles, mais la majorit?? ont subi une alt??ration sous une forme ou une autre, par injection d\'humour ou par des mots al??atoires qui ne semblent m??me pas l??g??rement cr??dibles. Si vous allez utiliser un passage de Lorem Ipsum, vous devez vous assurer qu\'il n\'y a rien d\'embarrassant cach?? au milieu du texte. Tous les g??n??rateurs Lorem Ipsum sur Internet ont tendance ?? r??p??ter des morceaux pr??d??finis si n??cessaire, ce qui en fait le premier v??ritable g??n??rateur sur Internet. Il utilise un dictionnaire de plus de 200 mots latins, combin?? ?? une poign??e de structures de phrases mod??les, pour g??n??rer Lorem Ipsum qui semble raisonnable. Le Lorem Ipsum g??n??r?? est donc toujours exempt de r??p??tition, d\'humour inject??, ou de mots non caract??ristiques, etc.</p>","second","Active","fr","4","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("33","3","Pol??ticas","","<h2> Pol??ticas </h2>\n\n<p> Existem muitas varia????es de passagens de Lorem Ipsum dispon??veis, mas a maioria sofreu altera????o de alguma forma, por humor injetado ou palavras aleat??rias que n??o parecem nem um pouco cr??veis. Se for usar uma passagem de Lorem Ipsum, voc?? precisa ter certeza de que n??o h?? nada embara??oso escondido no meio do texto. Todos os geradores Lorem Ipsum na Internet tendem a repetir blocos predefinidos conforme necess??rio, tornando este o primeiro gerador verdadeiro na Internet. Ele usa um dicion??rio de mais de 200 palavras latinas, combinado com um punhado de estruturas de frases modelo, para gerar Lorem Ipsum que parece razo??vel. O Lorem Ipsum gerado ??, portanto, sempre livre de repeti????o, humor injetado ou palavras n??o caracter??sticas, etc. </p>","second","Active","pt","5","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("34","3","????????????????","","<h2> ???????????????? </h2>\n\n<p> ???????????????? ?????????????????? ???????????????? ???????????????? Lorem Ipsum, ???? ?????????????????????? ???? ?????? ???????????????????? ?????????????????? ?? ?????? ?????? ???????? ?????????? ????-???? ???????????????????????? ?????????? ?????? ?????????????????? ????????, ?????????????? ???? ???????????????? ???????? ???????????? ??????????????????????????????. ???????? ???? ?????????????????????? ???????????????????????? ?????????????? ???? Lorem Ipsum, ???? ???????????? ???????? ??????????????, ?????? ?? ???????????????? ???????????? ?????? ???????????? ????????????????????. ?????? ???????????????????? Lorem Ipsum ?? ?????????????????? ?????????? ?????????????????? ?????????????????? ?????????????? ???????????????????????? ?????????? ???? ???????? ??????????????????????????, ?????? ???????????? ?????? ???????????? ?????????????????? ?????????????????????? ?? ??????????????????. ???? ???????????????????? ?????????????? ???? ?????????? ?????? 200 ?????????????????? ???????? ?? ?????????????????? ?? ?????????????????????? ???????????????????? ?????????????????????? ?????????????????????? ?????? ???????????????? Lorem Ipsum, ?????????????? ???????????????? ????????????????. ?????????? ??????????????, ?????????????????????????????? Lorem Ipsum ???????????? ???????????????? ???? ????????????????, ???????????????????????? ??????????, ?????????????????????????? ???????? ?? ??. ??. </p>","second","Active","ru","6","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("35","3","Pol??ticas","","<h2> Pol??ticas </h2>\n\n<p> Hay muchas variaciones de pasajes de Lorem Ipsum disponibles, pero la mayor??a han sufrido alteraciones de alguna forma, por humor inyectado o palabras aleatorias que no parecen ni un poco cre??bles. Si va a utilizar un pasaje de Lorem Ipsum, debe asegurarse de que no haya nada vergonzoso oculto en medio del texto. Todos los generadores de Lorem Ipsum en Internet tienden a repetir fragmentos predefinidos seg??n sea necesario, lo que lo convierte en el primer generador verdadero en Internet. Utiliza un diccionario de m??s de 200 palabras latinas, combinado con un pu??ado de estructuras de oraciones modelo, para generar Lorem Ipsum que parece razonable. Por lo tanto, el Lorem Ipsum generado est?? siempre libre de repeticiones, humor inyectado o palabras no caracter??sticas, etc. </p>","second","Active","es","7","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("36","3","Politikalar","","<h2>Politikalar</h2>\n\n<p>Lorem Ipsum\'un bir??ok pasaj varyasyonu mevcuttur, ancak ??o??u, enjekte edilen mizah veya biraz inand??r??c?? g??r??nmeyen rastgele kelimelerle bir ??ekilde de??i??ikli??e u??ram????t??r. Lorem Ipsum\'dan bir pasaj kullanacaksan??z, metnin ortas??nda utand??r??c?? bir ??ey olmad??????ndan emin olman??z gerekir. ??nternetteki t??m Lorem Ipsum olu??turucular, ??nceden tan??mlanm???? par??alar?? gerekti??i gibi tekrarlama e??ilimindedir ve bu da bunu ??nternet\'teki ilk ger??ek olu??turucu yapar. Makul g??r??nen Lorem Ipsum\'u olu??turmak i??in bir avu?? model c??mle yap??s??yla birle??tirilmi?? 200\'den fazla Latince kelimeden olu??an bir s??zl??k kullan??r. Bu nedenle olu??turulan Lorem Ipsum\'da her zaman tekrar, enjekte edilen mizah veya karakteristik olmayan kelimeler vb. yoktur.</p>","second","Active","tr","8","2021-12-03 20:11:48","2021-12-03 20:11:48");
INSERT INTO pages VALUES("37","4","????????????","","<h2> <strong> ???????????????? </ strong> </h2>\n\n<p> ???????????? ???????????????? ???????????? ?? ?????? Lorem Ipsum ?????? ???????? ???? ????????????. ?????? ???????? ???? ???????? ???? ?????????? ???????????????? ?????????????????? ???? 45 ?????? ?????????????? ?? ?????? ???????????? ???????? ???? 2000 ??????. ?????? ?????????????? ???????????????? ?? ?????????????? ???????????????? ???? ???????? ???????????? ?????????? ???? ???????????????? ?? ???????????? ???? ?????????? ???? ???????? ?????????????? ?????????????????? ???????????? ?? consectetur ?? ???? ???????? ?????????? ???????????? ?? ?????????? ???????????????? ???????????? ???? ?????????? ?????????????????? ?? ?????????? ???????????? ???????? ???? ???? ??????. ???????? Lorem Ipsum ???? ?????????????? 1.10.32 ?? 1.10.33 ???? & quot?? de Finibus Bonorum et Malorum & quot?? (???????? ?????????? ??????????) ???????? ???????????? ?? ?????????? ?????? 45 ?????? ??????????????. ?????? ???????????? ?????????? ???? ???????????? ?????? ?????????? ?????????????? ?? ?????? ???????? ???????????? ?????????? ???????? ?????? ????????????. ?????????? ?????????? ???? Lorem Ipsum ?? & quot?? Lorem ipsum dolor sit amet .. & quot ???? ???????? ???? ?????? ???? ?????????? 1.10.32. </p>\n\n<p> ???????? ?? </p>","second","Active","ar","2","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("38","4","??????","","<h2><strong>??????</strong></h2>\n\n<p>???????????????????????????Lorem Ipsum ??????????????????????????? ?????????????????? 45 ??????????????????????????????????????? 2000 ?????????????????? ????????????????????????-????????????????????????????????????????????????????????? Lorem Ipsum ????????????????????????????????????????????????????????? consectetur???????????????????????????????????????????????????????????????????????????????????? Lorem Ipsum ?????????de Finibus Bonorum et Malorum????????? 1.10.32 ??? 1.10.33 ?????? (The Extremes of Good and Evil) by Cicero?????????????????? 45 ?????? ????????????????????????????????????????????????????????????????????????????????? Lorem Ipsum ???????????????Lorem ipsum dolor sat amet..???????????? 1.10.32 ??????????????????</p>\n\n<p>&nbsp;</p>","second","Active","ch","3","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("39","4","Intimit??","","<h2><strong>Confidentialit??</strong></h2>\n\n<p>Contrairement ?? la croyance populaire, Lorem Ipsum n\'est pas simplement un texte al??atoire. Il a ses racines dans un morceau de litt??rature latine classique de 45 avant JC, ce qui en fait plus de 2000 ans. Richard McClintock, professeur de latin au Hampden-Sydney College en Virginie, a recherch?? l\'un des mots latins les plus obscurs, consectetur, d\'un passage de Lorem Ipsum, et en parcourant les citations du mot dans la litt??rature classique, a d??couvert la source incontestable. Lorem Ipsum est issu des sections 1.10.32 et 1.10.33 de &quot;de Finibus Bonorum et Malorum&quot; (Les extr??mes du bien et du mal) de Cic??ron, ??crit en 45 av. Ce livre est un trait?? sur la th??orie de l\'??thique, tr??s populaire ?? la Renaissance. La premi??re ligne de Lorem Ipsum, \"Lorem ipsum dolor sit amet...\", vient d\'une ligne de la section 1.10.32.</p>\n\n<p>&nbsp;</p>","second","Active","fr","4","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("40","4","Privacidade","","<h2> <strong> Privacidade </strong> </h2>\n\n<p> Ao contr??rio da cren??a popular, Lorem Ipsum n??o ?? simplesmente um texto aleat??rio. Tem ra??zes em uma pe??a da literatura cl??ssica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virg??nia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as cita????es da palavra na literatura cl??ssica, descobriu a fonte indubit??vel. Lorem Ipsum vem das se????es 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por C??cero, escrito em 45 AC. Este livro ?? um tratado sobre a teoria da ??tica, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na se????o 1.10.32. </p>\n\n<p> & nbsp; </p>","second","Active","pt","5","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("41","4","????????????????????????????????????","","<h2> <strong> Privacidade </strong> </h2>\n\n<p> Ao contr??rio da cren??a popular, Lorem Ipsum n??o ?? simplesmente um texto aleat??rio. Tem ra??zes em uma pe??a da literatura cl??ssica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virg??nia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as cita????es da palavra na literatura cl??ssica, descobriu a fonte indubit??vel. Lorem Ipsum vem das se????es 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por C??cero, escrito em 45 AC. Este livro ?? um tratado sobre a teoria da ??tica, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na se????o 1.10.32. </p>\n\n<p> & nbsp; </p>","second","Active","ru","6","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("42","4","Intimidad","","<h2> <strong> Privacidade </strong> </h2>\n\n<p> Ao contr??rio da cren??a popular, Lorem Ipsum n??o ?? simplesmente um texto aleat??rio. Tem ra??zes em uma pe??a da literatura cl??ssica latina de 45 aC, tornando-a com mais de 2.000 anos. Richard McClintock, professor de latim no Hampden-Sydney College, na Virg??nia, pesquisou uma das palavras latinas mais obscuras, consectetur, de uma passagem de Lorem Ipsum e, examinando as cita????es da palavra na literatura cl??ssica, descobriu a fonte indubit??vel. Lorem Ipsum vem das se????es 1.10.32 e 1.10.33 de & quot; de Finibus Bonorum et Malorum & quot; (Os extremos do bem e do mal) por C??cero, escrito em 45 AC. Este livro ?? um tratado sobre a teoria da ??tica, muito popular durante o Renascimento. A primeira linha de Lorem Ipsum, & quot; Lorem ipsum dolor sit amet .. & quot ;, vem de uma linha na se????o 1.10.32. </p>\n\n<p> & nbsp; </p>","second","Active","es","7","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("43","4","Mahremiyet","","<h2><strong>Gizlilik</strong></h2>\n\n<p>Pop??ler inan??????n aksine, Lorem Ipsum rastgele bir metin de??ildir. 45\'ten kalma bir klasik Latin edebiyat?? par??as??nda k??kleri vard??r ve 2000 y??ldan daha eskidir. Virginia\'daki Hampden-Sydney College\'da Latince profes??r?? olan Richard McClintock, bir Lorem Ipsum pasaj??ndaki daha anla????lmas?? g???? Latince s??zc??klerden biri olan consectetur\'u ara??t??rd?? ve kelimenin klasik edebiyattaki ??rneklerini g??zden ge??irerek, ????phesiz kayna???? ke??fetti. Lorem Ipsum, \"de Finibus Bonorum et Malorum\"un 1.10.32 ve 1.10.33 b??l??mlerinden gelmektedir. (??yi ve K??t??n??n A????r??l??klar??) Cicero taraf??ndan M?? 45\'te yaz??lm????t??r. Bu kitap, R??nesans d??neminde ??ok pop??ler olan etik teorisi ??zerine bir incelemedir. Lorem Ipsum\'un ilk sat??r??, \"Lorem ipsum dolor sit amet..\", 1.10.32 b??l??m??ndeki bir sat??rdan gelmektedir.</p>\n\n<p>&nbsp;</p>","second","Active","tr","8","2021-12-03 20:14:51","2021-12-03 20:14:51");
INSERT INTO pages VALUES("44","7","???????? ????????????","","<p>???????? ????????????</p>","first","Active","ar","2","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("45","7","????????????","","<p>????????????</p>","first","Active","ch","3","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("46","7","Conditions d\'utilisation","","<p>Conditions d&#39;utilisation</p>","first","Active","fr","4","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("47","7","Termos de servi??o","","<p>Termos de servi&ccedil;o</p>","first","Active","pt","5","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("48","7","?????????????? ????????????????????????","","<p>?????????????? ????????????????????????</p>","first","Active","ru","6","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("49","7","T??rminos de servicio","","<p>T&eacute;rminos de servicio</p>","first","Active","es","7","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("50","7","Kullan??m ??artlar??","","<p>Kullan??m ??artlar??</p>","first","Active","tr","8","2021-12-03 20:17:25","2021-12-03 20:17:25");
INSERT INTO pages VALUES("51","8","???? ??????????","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>?????????? ?????????????? ???? ?????? ??</h4>\n\n<h4>???? ???? ????????</h4>\n<a href=\"http://letswechat.com/athi/buy2rental/signup\"><button class=\"btn green-theme-btn\">??????????</button></a></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">???????????? ???? ??????????????</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5??00??000 ???????? ????????</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ??????????.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">?????????? ?????????? ????????????</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ??????????.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">?????????????? ???????? ?????? ??????????</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ??????????.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">?????? ???????????? ?????? ?????????? ?????????????? ?????? ???? ??????????????????</p>\n\n<p class=\"mt-2\">?????????? ???????????????? ???????????????????????? ???????????????????? ???????????? ????</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">????????</div>\n\n<p class=\"details\">???????? ???????????? ??????????????</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">????????</div>\n\n<p class=\"details\">?????????? ????????????</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">???????? ??????????</div>\n\n<p class=\"details\">???????? ?????? ???????? ????????????????</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">?????? ??????????</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> ???????? ??????????</div>\n\n<div class=\"start-content\">?????????????? ?????? ?????? ???? 5 ?????????? ???? ????????</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> ?????????? ?????????? ??????????????</div>\n\n<div class=\"start-content\">?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ??????????.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> ?????????????? ??????????????</div>\n\n<div class=\"start-content\">?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ??????????.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">?????????? ??????????</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">???? ???????????? ???????????? ?????????? ?????? ????????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">???? ?????????? ???? ???????? ?????? ???????? ????????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">???? ?????????? ???????? ??????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">?????? ???????????? ?????????? ???????????? ?????? ????????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">?????? ???????? ?????????????? ????????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">???? ???????? ?????????????? ???? ?????????? ??????????????????</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Morbi aliquam?? felis quis viverra mattis?? quam mi elementum ipsum?? lacinia blandit ipsum massa a elit. ?????????? ?????????? ???????? ?? ???????? ?????????? ?? ?????????????? ?????????????? ??????????. Lorem ipsum dolor sit amet?? consectetur adipiscing elit. Nulla mollis maximus sem ?? ???????? malesuada neque porta id. ???????????? ?????????? ????????. ?????? ???????? ?????? ?????????? ?????? ?????? ????????..</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">?????? ????????!</h4>\n\n<h2>???????? ??????????. ?????????????? ???? ???? ???????? ?????? ????????????.</h2>\n<a href=\"http://letswechat.com/athi/buy2rental/signup\"><button class=\"btn green-theme-btn\">??????????</button></a></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">???? ???????? ???????????? ???? ????????????????</h2>\n\n<p class=\"mt-md-5\">?????????? ???????? ?????? <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","ar","2","2021-12-03 20:45:18","2021-12-03 20:59:05");
INSERT INTO pages VALUES("52","8","???????????????","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","ch","3","2021-12-03 20:45:18","2021-12-03 20:48:50");
INSERT INTO pages VALUES("53","8","Devenir h??te","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","fr","4","2021-12-03 20:45:18","2021-12-03 20:48:50");
INSERT INTO pages VALUES("54","8","Torne-se anfitri??o","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","pt","5","2021-12-03 20:45:18","2021-12-03 20:48:50");
INSERT INTO pages VALUES("55","8","?????????? ????????????????","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","ru","6","2021-12-03 20:45:18","2021-12-03 20:48:50");
INSERT INTO pages VALUES("56","8","Convi??rtete en anfitr??n","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>Puedes hospedar a quien quieras, cuando quieras</h4>\n<font color=\"#000000\" face=\"Arial\"><span style=\"font-size: 13.3333px; background-color: rgb(239, 239, 239);\">Comienza aqui&nbsp;</span></font></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Seguridad al rentar&nbsp;</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","es","7","2021-12-03 20:45:18","2021-12-27 19:25:19");
INSERT INTO pages VALUES("57","8","Ev Sahibi Ol","","<!--banner-->\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner host-banner-bg\">\n<div class=\"host-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4>You can host anything,</h4>\n\n<h4>anywhere</h4>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<p>&nbsp;</p>\n<!--why partner-->\n\n<section class=\"partner-sec\">\n<div class=\"container\">\n<div data-testid=\"how-it-works-section\">\n<div class=\"SectionSteps_root__2NGjK SectionSteps_root--gray__2vZS6\">\n<div class=\"Container_root__1WntK\">\n<div>\n<h1 class=\"SectionSteps_title__3JXIX text-center font-weight-700\">Safety On Rent</h1>\n</div>\n\n<div class=\"SectionSteps_stepsWrapper__231A6\">\n<div class=\"SectionSteps_stepsInner__3OYc8 row\">\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">5,00,000 host guarantee</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Host Protection Insurance</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n\n<div class=\"SectionSteps_stepRoot__mCrpV text-center col-md-4\">\n<div class=\"SectionSteps_stepHeader__3LkpP\">\n<div class=\"SectionSteps_stepIconContainer__1kIXG\">&nbsp;</div>\n\n<h2 class=\"SectionSteps_stepTitle__MXOfF font-weight-600\">Rent is built on trust</h2>\n</div>\n\n<p class=\"SectionSteps_stepBody__1oiml\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--why partner-->\n\n<p>&nbsp;</p>\n<!--Customized for your bussiness-->\n\n<section class=\"pb-70 business-sec\">\n<div class=\"asd\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead section-intro text-center mt-70\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">We&rsquo;ll help you bring the art of hosting to life</p>\n\n<p class=\"mt-2\">Manage your bookings, Enquiry and Reviews</p>\n</div>\n</div>\n\n<div class=\"row mt-5\">\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img1\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Ask</div>\n\n<p class=\"details\">Ask a Superhost</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img2\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Experience</div>\n\n<p class=\"details\">Host your experience</p>\n</div>\n</div>\n</div>\n\n<div class=\"col-md-4 mt-4 host-page\">\n<div class=\"item card-1 img3\">\n<div class=\"img-card-content\">\n<div class=\"name font-weight-600\">Support Host</div>\n\n<p class=\"details\">Learn how we support hosts</p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n\n<section class=\"faq-sec\" id=\"start-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">How do I start?</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<div data-v-3601cef9=\"\">\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">1. </span> Create your account</div>\n\n<div class=\"start-content\">This will take less than 5 minutes of&nbsp;your&nbsp;time</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">2. </span> Create your listing</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n\n<div class=\"operators-page__how__item\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__text\" data-v-3601cef9=\"\">\n<div class=\"operators-page__how__title\" data-v-3601cef9=\"\"><span class=\"operators-page__how__index\" data-v-3601cef9=\"\">3. </span> Get Paid</div>\n\n<div class=\"start-content\">Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to book.</div>\n</div>\n\n<div class=\"operators-page__how__img\" data-v-3601cef9=\"\">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<section class=\"faq-sec\">\n<div class=\"container\">\n<div class=\"row\">\n<div class=\"recommandedhead text-center col-md-12\">\n<p class=\"animated fadeIn text-24 text-color font-weight-700 m-0\">Frequently asked questions</p>\n</div>\n\n<div class=\"col-xl-8 offset-xl-2 col-lg-8 offset-lg-2\">\n<ul class=\"faq-list\">\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Can i share my home on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Who can be on Rent host?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent screen Guests?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How should i price my listing on Rent?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">How do Rent payments work?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n	<li>\n	<h4 class=\"faq-heading font-weight-600\">Does Rent provide any insurance for hosts?</h4>\n\n	<p class=\"read faq-text\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi aliquam, felis quis viverra mattis, quam mi elementum ipsum, lacinia blandit ipsum massa a elit. Suspendisse metus ex, porta ut velit vitae, sagittis dapibus sapien. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla mollis maximus sem, id malesuada neque porta id. Praesent scelerisque molestie mollis. Integer nec ullamcorper massa.</p>\n	</li>\n</ul>\n</div>\n</div>\n</div>\n</section>\n<!--faq-->\n\n<p>&nbsp;</p>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"host-banner join-banner join-banner-bg\" style=\"min-height: 420px;\">\n<div class=\"join-overlay\">&nbsp;</div>\n\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"join_banner_txt\">\n<h4 class=\"join-txt\">Join Now!</h4>\n\n<h2>Join us. We&rsquo;ll help you every step of the way.</h2>\n<button class=\"btn green-theme-btn\">Get Started</button></div>\n</div>\n</div>\n</div>\n</section>\n<!--banner-->\n\n<section class=\"hero-banner magic-ball\">\n<div class=\"container\">\n<div align=\"center\" class=\"col-ms-12\">\n<div class=\"more-qn-sec\">\n<h2 class=\"font-weight-600\">Have More Questions?</h2>\n\n<p class=\"mt-md-5\">Contact us at <a class=\"green-theme-font\" href=\"mailto:support@migrateshop.com\">support@migrateshop.com</a></p>\n</div>\n</div>\n</div>\n</section>","first","Active","tr","8","2021-12-03 20:45:18","2021-12-03 20:48:50");
INSERT INTO pages VALUES("58","58","Guest Refund","guest-refund","<h2><strong>Guest Refund</strong></h2>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>","second","Active","en","1","2021-12-07 01:25:17","2021-12-07 01:29:32");
INSERT INTO pages VALUES("59","58","?????? ??????????????","","<h2><strong>???? ?????????? ?????????? <!-- strong--> </strong></h2>\n\n<p><strong><strong>Lorem Ipsum </strong> ???? ???????? ???? ???????? ???????????? ?????????????? ????????????????. ?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ???????? ???????? ????????. ?????? ?????? ?????? ?????? ???????? ???????? ?? ???????? ?????????? ???????????? ???? ?????????????? ???????????????????? ?? ???????? ?????? ?????????? ??????????. ???? ?????????? ???? ?????????????????? ???? ?????????? ???????????? ???? ?????????? ?????????? Letraset ???????? ?????????? ?????? ?????????? Lorem Ipsum ?? ?????????????? ???? ?????????? ?????????? ?????????????? ?????? Aldus PageMaker ?????? ???? ?????? ?????????????? Lorem Ipsum. </strong></p>\n\n<p><strong>???????? ?? </strong></p>\n\n<p><strong><strong>Lorem Ipsum </strong> ???? ???????? ???? ???????? ???????????? ?????????????? ????????????????. ?????? Lorem Ipsum ???? ???????? ???????????? ?????????????? ???? ?????????????? ?????? ?????????? ???????????? ?????? ???????????????? ?? ?????????? ???????? ?????????? ?????? ???????????? ?????????? ???? ?????????? ?????????????? ???????? ???????? ???????? ????????. ?????? ?????? ?????? ?????? ?????????? ???????? ?? ???????? ?????????? ???????????? ???? ?????????????? ???????????????????? ?? ?????? ?????? ?????????? ??????????. <!-- p--> </strong></p>","second","Active","ar","2","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("60","58","????????????","","<h2><strong>????????????</strong></h2>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;???????????????????????????????????????????????? 1500 ???????????????Lorem Ipsum ?????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? 1960 ?????????????????? Lorem Ipsum ????????? Letraset ????????????????????????????????????????????????????????? Aldus PageMaker ?????? Lorem Ipsum ?????????????????????</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;???????????????????????????????????????????????? 1500 ???????????????Lorem Ipsum ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>","second","Active","ch","3","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("61","58","Remboursement invit??","","<h2><strong>Remboursement invit&eacute;</strong></h2>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour cr&eacute;er un livre de sp&eacute;cimens de caract&egrave;res. Il a surv&eacute;cu non seulement &agrave; cinq si&egrave;cles, mais aussi au saut dans la composition &eacute;lectronique, restant essentiellement inchang&eacute;. Il a &eacute;t&eacute; popularis&eacute; dans les ann&eacute;es 1960 avec la sortie de feuilles Letraset contenant des passages de Lorem Ipsum, et plus r&eacute;cemment avec des logiciels de PAO comme Aldus PageMaker comprenant des versions de Lorem Ipsum.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;est simplement un texte factice de l&#39;industrie de l&#39;impression et de la composition. Lorem Ipsum est le texte factice standard de l&#39;industrie depuis les ann&eacute;es 1500, lorsqu&#39;un imprimeur inconnu a pris une gal&egrave;re de caract&egrave;res et l&#39;a brouill&eacute; pour cr&eacute;er un livre de sp&eacute;cimens de caract&egrave;res. Il a surv&eacute;cu non seulement &agrave; cinq si&egrave;cles, mais aussi au saut dans la composition &eacute;lectronique, restant essentiellement inchang&eacute;.</p>","second","Active","fr","4","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("62","58","Reembolso de Convidado","","<h2><strong>Reembolso de Convidado </strong></h2>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde 1500, quando um impressor desconhecido pegou um modelo de impress&atilde;o e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu n&atilde;o apenas cinco s&eacute;culos, mas tamb&eacute;m ao salto para a composi&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado. Foi popularizado na d&eacute;cada de 1960 com o lan&ccedil;amento de folhas de Letraset contendo passagens de Lorem Ipsum e, mais recentemente, com software de editora&ccedil;&atilde;o eletr&ocirc;nica como Aldus PageMaker incluindo vers&otilde;es de Lorem Ipsum.</p>\n\n<p>&amp; nbsp;</p>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; &eacute; simplesmente um texto fict&iacute;cio da ind&uacute;stria de impress&atilde;o e composi&ccedil;&atilde;o. Lorem Ipsum tem sido o texto fict&iacute;cio padr&atilde;o da ind&uacute;stria desde 1500, quando um impressor desconhecido pegou um modelo de impress&atilde;o e o embaralhou para fazer um livro de amostra de tipos. Ele sobreviveu n&atilde;o apenas cinco s&eacute;culos, mas tamb&eacute;m ao salto para a composi&ccedil;&atilde;o eletr&ocirc;nica, permanecendo essencialmente inalterado.</p>","second","Active","pt","5","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("63","58","?????????????? ??????????","","<h2><strong>?????????????? ?????????? </strong></h2>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - ?????? ???????????? ?????????????????? ??????????, ???????????????????????? ?? ?????????????????????????????? ?? ???????????????? ??????????????????. Lorem Ipsum ?????? ?????????????????????? ?????????????????? ?????????????? ?? ?????????????? ?? 1500-?? ??????????, ?????????? ?????????????????????? ???????????????? ???????? ???????????? ???????????? ?? ?????????????????????????? ??????, ?????????? ?????????????? ?????????? ???????????????? ????????????. ???? ?????????????? ???? ???????????? ???????? ??????????, ???? ?? ???????????? ?? ?????????????????????? ??????????, ?????????????????? ?????????????????????? ????????????????????. ???? ?????? ?????????????????????????????? ?? 1960-?? ?????????? ?? ???????????????? ???????????? Letraset, ???????????????????? ?????????????? Lorem Ipsum, ?? ?? ?????????????????? ?????????? - ?? ?????????????? ???????????????????? ???????????????????????? ????????????????, ?????????? ?????? Aldus PageMaker, ?????????????? ???????????? Lorem Ipsum.</p>\n\n<p>&amp; nbsp;</p>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; - ?????? ???????????? ?????????????????? ??????????, ???????????????????????? ?? ?????????????????????????????? ?? ???????????????? ??????????????????. Lorem Ipsum ?????? ?????????????????????? ?????????????????? ?????????????? ?? ?????????????? ?? 1500-?? ??????????, ?????????? ?????????????????????? ???????????????? ???????? ???????????? ???????????? ?? ?????????????????????????? ??????, ?????????? ?????????????? ?????????? ???????????????? ????????????. ???? ?????????????? ???? ???????????? ???????? ??????????, ???? ?? ???????????? ?? ?????????????????????? ??????????, ?????????????????? ?????????????????????? ????????????????????.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>","second","Active","ru","6","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("64","58","Reembolso de invitado","","<h2><strong>Reembolso de invitado </strong></h2>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el a&ntilde;o 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas. Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios. Se populariz&oacute; en la d&eacute;cada de 1960 con el lanzamiento de hojas de Letraset que contienen pasajes de Lorem Ipsum y, m&aacute;s recientemente, con software de autoedici&oacute;n como Aldus PageMaker que incluye versiones de Lorem Ipsum.</p>\n\n<p>&amp; nbsp;</p>\n\n<p><strong>Lorem Ipsum </strong> &amp; nbsp; es simplemente texto de relleno de la industria de la impresi&oacute;n y la composici&oacute;n tipogr&aacute;fica. Lorem Ipsum ha sido el texto de relleno est&aacute;ndar de la industria desde el a&ntilde;o 1500, cuando un impresor desconocido tom&oacute; una galera de tipos y la mezcl&oacute; para hacer un libro de muestras tipogr&aacute;ficas. Ha sobrevivido no solo a cinco siglos, sino tambi&eacute;n al salto a la composici&oacute;n tipogr&aacute;fica electr&oacute;nica, permaneciendo esencialmente sin cambios.</p>","second","Active","es","7","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("65","58","Misafir Geri ??demesi","","<h2><strong>Misafir Geri &Ouml;demesi</strong></h2>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;bask?? ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaac??n??n bir tip numune kitab?? yapmak i&ccedil;in bir yaz?? galerisini al??p kar????t??rd?????? 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmu??tur. Sadece be?? y&uuml;zy??l boyunca hayatta kalmay??p, ayn?? zamanda esasen de??i??meden elektronik dizgiye s??&ccedil;rad??. 1960&#39;larda Lorem Ipsum pasajlar?? i&ccedil;eren Letraset sayfalar??n??n yay??nlanmas??yla ve daha yak??n zamanda Aldus PageMaker gibi Lorem Ipsum s&uuml;r&uuml;mleri i&ccedil;eren masa&uuml;st&uuml; yay??nc??l??k yaz??l??mlar??yla pop&uuml;ler hale geldi.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Lorem Ipsum</strong>&nbsp;bask?? ve dizgi end&uuml;strisinin sahte metnidir. Lorem Ipsum, bilinmeyen bir matbaac??n??n bir tip numune kitab?? yapmak i&ccedil;in bir yaz?? galerisini al??p kar????t??rd?????? 1500&#39;lerden beri end&uuml;strinin standart sahte metni olmu??tur. Yaln??zca be?? y&uuml;zy??l boyunca ayakta kalmay?? ba??armakla kalmam????, ayn?? zamanda temelde de??i??meden elektronik dizgiye ge&ccedil;i??te de olmu??tur.</p>","second","Active","tr","8","2021-12-07 01:25:17","2021-12-07 02:37:27");
INSERT INTO pages VALUES("66","66","Cancellation Policies","cancellation-policies","<h2><strong>Cancellation Policies</strong></h2>\n\n<div class=\"cancellation_policy\">\n<p>&nbsp;</p>\n\n<p>Buy2rental allows hosts to choose among three standardized cancellation policies (Flexible, Moderate, and Strict) that we will enforce to protect both guest and host alike. Each listing and reservation on our site will clearly state the cancellation policy. Guests may cancel and review any penalties by viewing their travel plans and then clicking &#39;Cancel&#39; on the appropriate reservation.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Flexible: Full refund 1 day prior to arrival, except fees</strong></h3>\n\n<ul>\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\n	<li>The Buy2rental service fee is non-refundable.</li>\n	<li>If there is a complaint from either party, notice must be given to Buy2rental within 24 hours of check-in.</li>\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n	<li>Applicable taxes will be retained and remitted.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Moderate: Full refund 5 days prior to arrival, except fees</strong></h3>\n\n<ul>\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\n	<li>The Buy2rental service fee is non-refundable.</li>\n	<li>If there is a complaint from either party, notice must be given to Buy2rental&nbsp;within 24 hours of check-in.</li>\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n	<li>Applicable taxes will be retained and remitted.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Strict: 50% refund up until 1 week prior to arrival, except fees</strong></h3>\n\n<ul>\n	<li>Cleaning fees are always refunded if the guest did not check in.</li>\n	<li>The Buy2rental service fee is non-refundable.</li>\n	<li>If there is a complaint from either party, notice must be given to Buy2rental within 24 hours of check-in.</li>\n	<li>Buy2rental will mediate when necessary, and has the final say in all disputes.</li>\n	<li>A reservation is officially canceled when the guest clicks the cancellation button on the cancellation confirmation page, which they can find in Dashboard &gt; Your Trips &gt; Change or Cancel.</li>\n	<li>Cancellation policies may be superseded by the Guest Refund Policy, safety cancellations, or extenuating circumstances. Please review these exceptions.</li>\n	<li>Applicable taxes will be retained and remitted.</li>\n</ul>\n</div>","second","Active","en","1","2021-12-07 01:28:56","2021-12-07 01:42:02");
INSERT INTO pages VALUES("67","66","???????????? ??????????????","","<h2> <strong> ???????????? ?????????????? </ strong> </h2>\n\n<div class = \"cancellation_policy\">\n<p> ???????? ?? </p>\n\n<p> ???????? Buy2rental ???????????????? ?????????????????? ???? ?????? ???????? ???????????? ?????????? ?????????? (???????? ?????????????? ????????????) ???????????? ???????????? ???? ???? ?????????? ?????????????? ?????? ?????? ????????. ???? ?????????? ???????? ?????? ???????????? ?????????? ?????????? ?????? ?????????? ??????????????. ???????? ???????????? ?????????? ?????????????? ???? ???????????? ???? ???????? ?????? ?????? ?????????? ???????????? ?????? ???? ?????????? ?????? & # 39 ?? ?????????? & # 39 ?? ?????? ?????????? ??????????????. </ p>\n\n<p> ???????? ?? </p>\n\n<h3> <strong> ??????: ???? ?????????????? ?????????????? ?????? ?????? ???????? ???? ???????????? ?? ???????????????? ???????????? </ strong> </h3>\n\n<ul>\n<li> ?????? ???????????? ???? ???????? ?????????????? ???? ???????? ?????? ???????? ?????????? ???????????? ????????????. </ li>\n<li> ???????? ???????? Buy2rental ?????? ?????????? ??????????????????. </ li>\n<li> ?????? ???????? ???????? ???????? ???? ???? ???? ?????????????? ?? ???????? ?????????? ?????????? ?????? Buy2rental ???? ???????? 24 ???????? ???? ?????????? ????????????. </ li>\n<li> ?????? ?????????? Buy2rental ?????? ?????????????? ?? ?????? ?????????? ?????????? ???? ???????? ????????????????. </ li>\n<li> ?????? ?????????? ?????????? ???????????? ?????????? ???????? ?????????? ?????? ???? ?????????????? ???? ???????? ?????????? ?????????????? ?? ?????????? ?????????? ???????????? ???????? ???? Dashboard & gt?? ???????????? ?? GT. ?????????? ???? ??????????. </ li>\n<li> ???? ?????? ?????????????? ???????????? ?????????????? ???????????? ???? ?????????? ?????????? ???? ???????????? ?????????? ???????????? ???? ???????????? ??????????????. ???????? ???????????? ?????? ??????????????????????. </ li>\n<li> ???????? ???????????????? ???????????????? ?????????????? ??????????????. </ li>\n</ul>\n\n<p> ???????? ?? </p>\n\n<h3> <strong> ??????????: ???? ?????????????? ?????????????? ?????? 5 ???????? ???? ???????????? ?? ???????????????? ???????????? </ strong> </h3>\n\n<ul>\n<li> ?????? ???????????? ???? ???????? ?????????????? ???? ???????? ?????? ???????? ?????????? ???????????? ????????????. </ li>\n<li> ???????? ???????? Buy2rental ?????? ?????????? ??????????????????. </ li>\n<li> ?????? ???????? ???????? ???????? ???? ???? ???? ?????????????? ?? ???????? ?????????? ?????????? ?????? Buy2rental & nbsp?? ???? ???????? 24 ???????? ???? ?????????? ????????????. </ li>\n<li> ?????? ?????????? Buy2rental ?????? ?????????????? ?? ?????? ?????????? ?????????? ???? ???????? ????????????????. </ li>\n<li> ?????? ?????????? ?????????? ???????????? ?????????? ???????? ?????????? ?????? ???? ?????????????? ???? ???????? ?????????? ?????????????? ?? ?????????? ?????????? ???????????? ???????? ???? Dashboard & gt?? ???????????? ?? GT. ?????????? ???? ??????????. </ li>\n<li> ???? ?????? ?????????????? ???????????? ?????????????? ???????????? ???? ?????????? ?????????? ???? ???????????? ?????????? ???????????? ???? ???????????? ??????????????. ???????? ???????????? ?????? ??????????????????????. </ li>\n<li> ???????? ???????????????? ???????????????? ?????????????? ??????????????. </ li>\n</ul>\n\n<p> ???????? ?? </p>\n\n<h3> <strong> ????????: ?????????????? 50?? ?????? ?????????? ???????? ?????? ???????????? ?? ???????????????? ???????????? </ strong> </h3>\n\n<ul>\n<li> ?????? ???????????? ???? ???????? ?????????????? ???? ???????? ?????? ???????? ?????????? ???????????? ????????????. </ li>\n<li> ???????? ???????? Buy2rental ?????? ?????????? ??????????????????. </ li>\n<li> ?????? ???????? ???????? ???????? ???? ???? ???? ?????????????? ?? ???????? ?????????? ?????????? ?????? Buy2rental ???? ???????? 24 ???????? ???? ?????????? ????????????. </ li>\n<li> ?????? ?????????? Buy2rental ?????? ?????????????? ?? ?????? ?????????? ?????????? ???? ???????? ????????????????. </ li>\n<li> ?????? ?????????? ?????????? ???????????? ?????????? ???????? ?????????? ?????? ???? ?????????????? ???? ???????? ?????????? ?????????????? ?? ?????????? ?????????? ???????????? ???????? ???? Dashboard & gt?? ???????????? ?? GT. ?????????? ???? ??????????. </ li>\n<li> ???? ?????? ?????????????? ???????????? ?????????????? ???????????? ???? ?????????? ?????????? ???? ???????????? ?????????? ???????????? ???? ???????????? ??????????????. ???????? ???????????? ?????? ??????????????????????. </ li>\n<li> ???????? ???????????????? ???????????????? ?????????????? ??????????????. </ li>\n</ul>\n</div>","second","Active","ar","2","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("68","66","????????????","","<h2><strong>????????????</strong></h2>\n\n<div class=\"cancellation_policy\">\n<p>&nbsp;</p>\n\n<p>Buy2rental ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>?????????????????? 1 ??????????????????????????????</strong></h3>\n\n<ul>\n<li>?????????????????????????????????????????????????????????</li>\n<li>Buy2rental ????????????????????????</li>\n<li>??????????????????????????????????????????????????? 24 ??????????????? Buy2rental???</li>\n<li>Buy2rental ????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? &gt;???????????? &gt;??????????????????</li>\n<li>???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>?????????????????? 5 ??????????????????????????????</strong></h3>\n\n<ul>\n<li>?????????????????????????????????????????????????????????</li>\n<li>Buy2rental ????????????????????????</li>\n<li>??????????????????????????????????????????????????? 24 ??????????????? Buy2rental???</li>\n<li>Buy2rental ????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? &gt;???????????? &gt;??????????????????</li>\n<li>???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>?????????????????? 1 ???????????? 50%???????????????</strong></h3>\n\n<ul>\n<li>?????????????????????????????????????????????????????????</li>\n<li>Buy2rental ????????????????????????</li>\n<li>??????????????????????????????????????????????????? 24 ??????????????? Buy2rental???</li>\n<li>Buy2rental ????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? &gt;???????????? &gt;??????????????????</li>\n<li>???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????</li>\n<li>????????????????????????????????????</li>\n</ul>\n</div>","second","Active","ch","3","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("69","66","Politiques d\'annulation","","<h2><strong>Politiques d\'annulation</strong></h2>\n\n<div class=\"cancellation_policy\">\n<p>&nbsp;</p>\n\n<p>Buy2rental permet aux h??tes de choisir parmi trois politiques d\'annulation standardis??es (flexible, mod??r??e et stricte) que nous appliquerons pour prot??ger ?? la fois l\'invit?? et l\'h??te. Chaque annonce et r??servation sur notre site indiquera clairement la politique d\'annulation. Les voyageurs peuvent annuler et revoir les p??nalit??s en consultant leurs projets de voyage, puis en cliquant sur ????Annuler????. sur la r??servation appropri??e.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Flexible??: Remboursement int??gral 1 jour avant la date d\'arriv??e, hors frais</strong></h3>\n\n<ul>\n<li>Les frais de m??nage sont toujours rembours??s si le client ne s\'est pas enregistr??.</li>\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit ??tre donn?? ?? Buy2rental dans les 24 heures suivant l\'enregistrement.</li>\n<li>Buy2rental arbitrera si n??cessaire et aura le dernier mot dans tous les litiges.</li>\n<li>Une r??servation est officiellement annul??e lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord??&gt??; Vos voyages &gt; Modifier ou annuler.</li>\n<li>Les politiques d\'annulation peuvent ??tre remplac??es par la politique de remboursement des invit??s, les annulations de s??curit?? ou des circonstances att??nuantes. Veuillez consulter ces exceptions.</li>\n<li>Les taxes applicables seront retenues et remises.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Mod??r????: Remboursement int??gral 5 jours avant la date d\'arriv??e, hors frais</strong></h3>\n\n<ul>\n<li>Les frais de m??nage sont toujours rembours??s si le client ne s\'est pas enregistr??.</li>\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit ??tre donn?? ?? Buy2rental&nbsp;dans les 24 heures suivant l\'enregistrement.</li>\n<li>Buy2rental arbitrera si n??cessaire et aura le dernier mot dans tous les litiges.</li>\n<li>Une r??servation est officiellement annul??e lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord??&gt??; Vos voyages &gt; Modifier ou annuler.</li>\n<li>Les politiques d\'annulation peuvent ??tre remplac??es par la politique de remboursement des invit??s, les annulations de s??curit?? ou des circonstances att??nuantes. Veuillez consulter ces exceptions.</li>\n<li>Les taxes applicables seront retenues et remises.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Strict??: 50??% de remboursement jusqu\'?? 1 semaine avant la date d\'arriv??e, hors frais</strong></h3>\n\n<ul>\n<li>Les frais de m??nage sont toujours rembours??s si le client ne s\'est pas enregistr??.</li>\n<li>Les frais de service Buy2rental ne sont pas remboursables.</li>\n<li>S\'il y a une plainte de l\'une ou l\'autre des parties, un avis doit ??tre donn?? ?? Buy2rental dans les 24 heures suivant l\'enregistrement.</li>\n<li>Buy2rental arbitrera si n??cessaire et aura le dernier mot dans tous les litiges.</li>\n<li>Une r??servation est officiellement annul??e lorsque le client clique sur le bouton d\'annulation sur la page de confirmation d\'annulation, qu\'il peut trouver dans le tableau de bord??&gt??; Vos voyages &gt; Modifier ou annuler.</li>\n<li>Les politiques d\'annulation peuvent ??tre remplac??es par la politique de remboursement des invit??s, les annulations de s??curit?? ou des circonstances att??nuantes. Veuillez consulter ces exceptions.</li>\n<li>Les taxes applicables seront retenues et remises.</li>\n</ul>\n</div>","second","Active","fr","4","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("70","66","Pol??ticas de Cancelamento","","<h2> <strong> Pol??ticas de cancelamento </strong> </h2>\n\n<div class = \"cancellation_policy\">\n<p> & nbsp; </p>\n\n<p> Buy2rental permite que os hosts escolham entre tr??s pol??ticas de cancelamento padronizadas (flex??vel, moderada e estrita) que aplicaremos para proteger tanto o h??spede quanto o anfitri??o. Cada listagem e reserva em nosso site indicar?? claramente a pol??tica de cancelamento. Os h??spedes podem cancelar e revisar quaisquer penalidades visualizando seus planos de viagem e clicando em & # 39; Cancelar & # 39; na reserva apropriada. </p>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Flex??vel: Reembolso total 1 dia antes da chegada, exceto taxas </strong> </h3>\n\n<ul>\n<li> As taxas de limpeza s??o sempre reembolsadas caso o h??spede n??o tenha feito o check-in. </li>\n<li> A taxa de servi??o Buy2rental n??o ?? reembols??vel. </li>\n<li> Se houver uma reclama????o de qualquer uma das partes, um aviso deve ser dado ao Buy2rental dentro de 24 horas ap??s o check-in. </li>\n<li> Buy2rental mediar?? quando necess??rio e ter?? a palavra final em todas as disputas. </li>\n<li> Uma reserva ?? oficialmente cancelada quando o h??spede clica no bot??o de cancelamento na p??gina de confirma????o de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\n<li> As pol??ticas de cancelamento podem ser substitu??das pela Pol??tica de Reembolso de H??spedes, cancelamentos de seguran??a ou circunst??ncias atenuantes. Reveja essas exce????es. </li>\n<li> Os impostos aplic??veis ??????ser??o retidos e remetidos. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Moderado: Reembolso total 5 dias antes da chegada, exceto taxas </strong> </h3>\n\n<ul>\n<li> As taxas de limpeza s??o sempre reembolsadas caso o h??spede n??o tenha feito o check-in. </li>\n<li> A taxa de servi??o Buy2rental n??o ?? reembols??vel. </li>\n<li> Se houver uma reclama????o de qualquer uma das partes, um aviso deve ser enviado ao Buy2rental & nbsp; dentro de 24 horas ap??s o check-in. </li>\n<li> Buy2rental mediar?? quando necess??rio e ter?? a palavra final em todas as disputas. </li>\n<li> Uma reserva ?? oficialmente cancelada quando o h??spede clica no bot??o de cancelamento na p??gina de confirma????o de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\n<li> As pol??ticas de cancelamento podem ser substitu??das pela Pol??tica de Reembolso de H??spedes, cancelamentos de seguran??a ou circunst??ncias atenuantes. Reveja essas exce????es. </li>\n<li> Os impostos aplic??veis ??????ser??o retidos e remetidos. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Estrito: 50% de reembolso at?? 1 semana antes da chegada, exceto taxas </strong> </h3>\n\n<ul>\n<li> As taxas de limpeza s??o sempre reembolsadas caso o h??spede n??o tenha feito o check-in. </li>\n<li> A taxa de servi??o Buy2rental n??o ?? reembols??vel. </li>\n<li> Se houver uma reclama????o de qualquer uma das partes, um aviso deve ser dado ao Buy2rental dentro de 24 horas ap??s o check-in. </li>\n<li> Buy2rental mediar?? quando necess??rio e ter?? a palavra final em todas as disputas. </li>\n<li> Uma reserva ?? oficialmente cancelada quando o h??spede clica no bot??o de cancelamento na p??gina de confirma????o de cancelamento, que pode ser encontrado em Painel & gt; Suas viagens & gt; Alterar ou cancelar. </li>\n<li> As pol??ticas de cancelamento podem ser substitu??das pela Pol??tica de Reembolso de H??spedes, cancelamentos de seguran??a ou circunst??ncias atenuantes. Reveja essas exce????es. </li>\n<li> Os impostos aplic??veis ??????ser??o retidos e remetidos. </li>\n</ul>\n</div>","second","Active","pt","5","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("71","66","???????????????? ????????????","","<h2> <strong> ???????????????? ???????????? </strong> </h2>\n\n<div class = \"cancellation_policy\">\n<p> & nbsp; </p>\n\n<p> Buy2rental ?????????????????? ???????????? ???????????????? ???? ???????? ?????????????????????? ?????????????? ???????????? (????????????, ?????????????????? ?? ??????????????), ?????????????? ???? ?????????? ?????????????????? ?????? ???????????? ?????? ??????????, ?????? ?? ??????????. ?? ???????????? ???????????????????? ?? ???????????????????????? ???? ?????????? ?????????? ?????????? ?????????? ?????????????? ???????????????? ????????????. ?????????? ?????????? ???????????????? ?? ?????????????????????? ?????????? ????????????, ???????????????????? ???????? ?????????? ?????????????? ?? ?????????? ???????????? ????????????????????. ???? ???????????????????????????????? ????????????????????????. </p>\n\n<p> & nbsp; </p>\n\n<h3> <strong> ??????????: ???????????? ?????????????? ?????????????? ???? 1 ???????? ???? ????????????????, ???? ?????????????????????? ???????????? </strong> </h3>\n\n<ul>\n<li> ?????????? ???? ???????????? ???????????? ????????????????????????, ???????? ?????????? ???? ???????????? ??????????????????????. </li>\n<li> ?????????? ???? ???????????? Buy2rental ???? ????????????????????????. </li>\n<li> ???????? ???????? ???????????? ???? ?????????? ???? ????????????, ?????????????????????? ???????????? ???????? ???????????????????? Buy2rental ?? ?????????????? 24 ?????????? ?????????? ??????????????????????. </li>\n<li> Buy2rental ???????????????? ??????????????????????, ?????????? ?????? ????????????????????, ?? ?????????????????? ?????????? ???? ???????? ????????????. </li>\n<li> ???????????????????????? ???????????????????? ????????????????????, ?????????? ?????????? ???????????????? ???????????? ???????????? ???? ???????????????? ?????????????????????????? ????????????, ?????????????? ???? ?????????? ?????????? ?? ???????????? ???????????????? & gt; ???????? ?????????????? & gt; ???????????????? ?????? ????????????????. </li>\n<li> ???????????????? ???????????? ???????????????????????? ?????????? ???????? ???????????????? ?????????????????? ???????????????? ??????????, ?????????????? ???????????????????????? ???? ???????????????????????? ???????????????????????? ?????? ?????????????????????? ????????????????????????????????. ?????????????????????? ?????? ????????????????????. </li>\n<li> ???????????????????? ???????????? ?????????? ???????????????????????? ?? ??????????????????????????. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> ????????????????: ???????????? ?????????????? ?????????????? ???? 5 ???????? ???? ????????????????, ???? ?????????????????????? ???????????? </strong> </h3>\n\n<ul>\n<li> ?????????? ???? ???????????? ???????????? ????????????????????????, ???????? ?????????? ???? ???????????? ??????????????????????. </li>\n<li> ?????????? ???? ???????????? Buy2rental ???? ????????????????????????. </li>\n<li> ???????? ???????? ???????????? ???? ?????????? ???? ????????????, ?????????????????????? ???????????? ???????? ???????????????????? Buy2rental & nbsp; ?? ?????????????? 24 ?????????? ?????????? ??????????????????????. </li>\n<li> Buy2rental ???????????????? ??????????????????????, ?????????? ?????? ????????????????????, ?? ?????????????????? ?????????? ???? ???????? ????????????. </li>\n<li> ???????????????????????? ???????????????????? ????????????????????, ?????????? ?????????? ???????????????? ???????????? ???????????? ???? ???????????????? ?????????????????????????? ????????????, ?????????????? ???? ?????????? ?????????? ?? ???????????? ???????????????? & gt; ???????? ?????????????? & gt; ???????????????? ?????? ????????????????. </li>\n<li> ???????????????? ???????????? ???????????????????????? ?????????? ???????? ???????????????? ?????????????????? ???????????????? ??????????, ?????????????? ???????????????????????? ???? ???????????????????????? ???????????????????????? ?????? ?????????????????????? ????????????????????????????????. ?????????????????????? ?????? ????????????????????. </li>\n<li> ???????????????????? ???????????? ?????????? ???????????????????????? ?? ??????????????????????????. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> ??????????????: ?????????????? 50% ???? 1 ???????????? ???? ????????????????, ???? ?????????????????????? ???????????? </strong> </h3>\n\n<ul>\n<li> ?????????? ???? ???????????? ???????????? ????????????????????????, ???????? ?????????? ???? ???????????? ??????????????????????. </li>\n<li> ?????????? ???? ???????????? Buy2rental ???? ????????????????????????. </li>\n<li> ???????? ???????? ???????????? ???? ?????????? ???? ????????????, ?????????????????????? ???????????? ???????? ???????????????????? Buy2rental ?? ?????????????? 24 ?????????? ?????????? ??????????????????????. </li>\n<li> Buy2rental ???????????????? ??????????????????????, ?????????? ?????? ????????????????????, ?? ?????????????????? ?????????? ???? ???????? ????????????. </li>\n<li> ???????????????????????? ???????????????????? ????????????????????, ?????????? ?????????? ???????????????? ???????????? ???????????? ???? ???????????????? ?????????????????????????? ????????????, ?????????????? ???? ?????????? ?????????? ?? ???????????? ???????????????? & gt; ???????? ?????????????? & gt; ???????????????? ?????? ????????????????. </li>\n<li> ???????????????? ???????????? ???????????????????????? ?????????? ???????? ???????????????? ?????????????????? ???????????????? ??????????, ?????????????? ???????????????????????? ???? ???????????????????????? ???????????????????????? ?????? ?????????????????????? ????????????????????????????????. ?????????????????????? ?????? ????????????????????. </li>\n<li> ???????????????????? ???????????? ?????????? ???????????????????????? ?? ??????????????????????????. </li>\n</ul>\n</div>","second","Active","ru","6","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("72","66","Pol??ticas de cancelaci??n","","<h2> <strong> Pol??ticas de cancelaci??n </strong> </h2>\n\n<div class = \"cancelaci??n_pol??tica\">\n<p> & nbsp; </p>\n\n<p> Buy2rental permite a los anfitriones elegir entre tres pol??ticas de cancelaci??n estandarizadas (Flexible, Moderada y Estricta) que aplicaremos para proteger tanto al hu??sped como al anfitri??n. Cada listado y reserva en nuestro sitio indicar?? claramente la pol??tica de cancelaci??n. Los hu??spedes pueden cancelar y revisar cualquier penalizaci??n al ver sus planes de viaje y luego hacer clic en & # 39; Cancelar & # 39; en la reserva correspondiente. </p>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Flexible: reembolso completo 1 d??a antes de la llegada, excepto tarifas </strong> </h3>\n\n<ul>\n<li> Las tarifas de limpieza siempre se reembolsan si el hu??sped no se registr??. </li>\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental dentro de las 24 horas posteriores al registro. </li>\n<li> Buy2rental mediar?? cuando sea necesario y tiene la ??ltima palabra en todas las disputas. </li>\n<li> Una reserva se cancela oficialmente cuando el hu??sped hace clic en el bot??n de cancelaci??n en la p??gina de confirmaci??n de cancelaci??n, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\n<li> Las pol??ticas de cancelaci??n pueden ser reemplazadas por la Pol??tica de reembolso para hu??spedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\n<li> Los impuestos aplicables se retendr??n y remitir??n. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Moderado: reembolso completo 5 d??as antes de la llegada, excepto tarifas </strong> </h3>\n\n<ul>\n<li> Las tarifas de limpieza siempre se reembolsan si el hu??sped no se registr??. </li>\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental & nbsp; dentro de las 24 horas posteriores al registro. </li>\n<li> Buy2rental mediar?? cuando sea necesario y tiene la ??ltima palabra en todas las disputas. </li>\n<li> Una reserva se cancela oficialmente cuando el hu??sped hace clic en el bot??n de cancelaci??n en la p??gina de confirmaci??n de cancelaci??n, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\n<li> Las pol??ticas de cancelaci??n pueden ser reemplazadas por la Pol??tica de reembolso para hu??spedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\n<li> Los impuestos aplicables se retendr??n y remitir??n. </li>\n</ul>\n\n<p> & nbsp; </p>\n\n<h3> <strong> Estricto: reembolso del 50% hasta 1 semana antes de la llegada, excepto tarifas </strong> </h3>\n\n<ul>\n<li> Las tarifas de limpieza siempre se reembolsan si el hu??sped no se registr??. </li>\n<li> La tarifa del servicio Buy2rental no es reembolsable. </li>\n<li> Si hay una queja de cualquiera de las partes, se debe notificar a Buy2rental dentro de las 24 horas posteriores al registro. </li>\n<li> Buy2rental mediar?? cuando sea necesario y tiene la ??ltima palabra en todas las disputas. </li>\n<li> Una reserva se cancela oficialmente cuando el hu??sped hace clic en el bot??n de cancelaci??n en la p??gina de confirmaci??n de cancelaci??n, que puede encontrar en Panel de control & gt; Tus viajes & gt; Cambiar o cancelar. </li>\n<li> Las pol??ticas de cancelaci??n pueden ser reemplazadas por la Pol??tica de reembolso para hu??spedes, cancelaciones de seguridad o circunstancias atenuantes. Revise estas excepciones. </li>\n<li> Los impuestos aplicables se retendr??n y remitir??n. </li>\n</ul>\n</div>","second","Active","es","7","2021-12-07 01:28:56","2021-12-07 02:41:16");
INSERT INTO pages VALUES("73","66","??ptal Ko??ullar??","","<h2><strong>??ptal Politikalar??</strong></h2>\n\n<div class=\"cancellation_policy\">\n<p>&nbsp;</p>\n\n<p>Buy2rental, ev sahiplerinin hem misafiri hem de ev sahibini ayn?? ??ekilde korumak i??in uygulayaca????m??z ???? standartla??t??r??lm???? iptal politikas?? (Esnek, Orta ve Kat??) aras??ndan se??im yapmas??na olanak tan??r. Sitemizdeki her kay??t ve rezervasyon, iptal politikas??n?? a????k??a belirtecektir. Misafirler, seyahat planlar??n?? g??r??nt??leyerek ve ard??ndan \'??ptal\'i t??klayarak cezalar?? iptal edebilir ve g??zden ge??irebilir; uygun rezervasyonda.</p>\n\n<p>&nbsp;</p>\n\n<h3><strong>Esnek: ??cretler hari?? var????tan 1 g??n ??nce tam geri ??deme</strong></h3>\n\n<ul>\n<li>Konuk giri?? yapmad??ysa temizlik ??cretleri her zaman iade edilir.</li>\n<li>Buy2rental hizmet ??creti iade edilmez.</li>\n<li>Taraflardan herhangi birinin ??ikayeti varsa, check-in\'den sonraki 24 saat i??inde Buy2rental\'e bildirilmelidir.</li>\n<li>Buy2rental gerekti??inde arabuluculuk yapacak ve t??m anla??mazl??klarda son s??z?? s??yleyecektir.</li>\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; De??i??tir veya ??ptal Et.</li>\n<li>??ptal politikalar??, Misafir Geri ??deme Politikas??, g??venlik iptalleri veya hafifletici nedenler taraf??ndan ge??ersiz k??l??nabilir. L??tfen bu istisnalar?? inceleyin.</li>\n<li>Ge??erli vergiler al??konulacak ve havale edilecektir.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Orta: ??cretler hari??, var????tan 5 g??n ??nce tam geri ??deme</strong></h3>\n\n<ul>\n<li>Konuk giri?? yapmad??ysa temizlik ??cretleri her zaman iade edilir.</li>\n<li>Buy2rental hizmet ??creti iade edilmez.</li>\n<li>Taraflardan herhangi birinin ??ikayeti varsa, check-in\'den sonraki 24 saat i??inde Buy2rental&nbsp;\'e bildirilmelidir.</li>\n<li>Buy2rental gerekti??inde arabuluculuk yapacak ve t??m anla??mazl??klarda son s??z?? s??yleyecektir.</li>\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; De??i??tir veya ??ptal Et.</li>\n<li>??ptal politikalar??, Misafir Geri ??deme Politikas??, g??venlik iptalleri veya hafifletici nedenler taraf??ndan ge??ersiz k??l??nabilir. L??tfen bu istisnalar?? inceleyin.</li>\n<li>Ge??erli vergiler al??konulacak ve havale edilecektir.</li>\n</ul>\n\n<p>&nbsp;</p>\n\n<h3><strong>Kesin: ??cretler hari??, var????tan 1 hafta ??ncesine kadar %50 geri ??deme</strong></h3>\n\n<ul>\n<li>Konuk giri?? yapmad??ysa temizlik ??cretleri her zaman iade edilir.</li>\n<li>Buy2rental hizmet ??creti iade edilmez.</li>\n<li>Taraflardan herhangi birinin ??ikayeti varsa, check-in\'den sonraki 24 saat i??inde Buy2rental\'e bildirilmelidir.</li>\n<li>Buy2rental gerekti??inde arabuluculuk yapacak ve t??m anla??mazl??klarda son s??z?? s??yleyecektir.</li>\n<li>Konuk, Kontrol Paneli &gt; Seyahatleriniz &gt; De??i??tir veya ??ptal Et.</li>\n<li>??ptal politikalar??, Misafir Geri ??deme Politikas??, g??venlik iptalleri veya hafifletici nedenler taraf??ndan ge??ersiz k??l??nabilir. L??tfen bu istisnalar?? inceleyin.</li>\n<li>Ge??erli vergiler al??konulacak ve havale edilecektir.</li>\n</ul>\n</div>","second","Active","tr","8","2021-12-07 01:28:56","2021-12-07 02:41:16");





CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO password_resets VALUES("demo@gmail.com","B4BcN0FmyOkVO8zEf6aw64mAgctYVc6ZoN43bftTNE9JrefDDm460PbzX5pehU9lL0HscZpaDOFxVwWi9j9lVIsOFO2YgYtY8wlI","2021-07-05 01:20:37");
INSERT INTO password_resets VALUES("testuser@gmail.com","VqJih3cingiIQJy3hXywenLoNViOEW2Fln81RtbCroQ5209LGZzkfl2DGKV7yaQoV6h7xyvKwFG4SHbRLqeGbnpEnejWPs08RMqQ","2021-07-20 01:49:23");
INSERT INTO password_resets VALUES("aaaaaaaaa@gmail.com","mAckdmmmph78DoIXQ8iP7Zf2e6u77RUgKuRwtFEwXCmbYlHdsyfPKKwZPoOUUrE9bHFJ5XU9i0KBGtHxVfGmTSwQW593PEoIDLXj","2021-07-31 07:40:33");
INSERT INTO password_resets VALUES("bbbb@gmail.com","nRQ6q537K410jfBakmMkeewHWKhnIJsHYZ86IOyrQZqut8NYksUJMLLLfzNYRCTHiLNUdHp3QCjJEvxzFNcz0jsRjFcDHGqkoJQb","2021-07-31 07:42:23");
INSERT INTO password_resets VALUES("athi@gmail.com","0lcPVPgAnDGsesJwz0nPbiy6lostctuyYjRPwYaasZDhDwfZj7bdaWKO9YiwgyTe6VcfEwhC8xZxFF4wxMG1hSUwVUTNsfSVCT7U","2021-08-11 13:36:15");
INSERT INTO password_resets VALUES("test10@gmail.com","C7nWArAFzrtKNKivqLnhkpGfPXNoOzobhYiD6eCgvZ03rIRwfoL2Ve65ez0HxWv8jeFEgNAiteMJas1IQykDNqMhKQkDfi6Vd7nt","2021-08-17 06:44:03");
INSERT INTO password_resets VALUES("mshop@test.com","3vWWG3LPQdrcNs21Ez28cRWqz1Uk368W1MHgIMvvLFSXrCQhYYHDP5QDvaBYkLecZjo9kygb7mRKJFrln2VWvGaOGtk7YG4faUYv","2021-08-17 06:46:11");
INSERT INTO password_resets VALUES("aaaa@gmail.com","JtOh8vSvOb0PA8F86ZrbpGKevUUxhM5kv3JbNklODMMizw5bF6XJoqKmY30NjwuJQXx07zuX4qhlblPlIYrjneJ1gYYHiCR5a5MR","2021-08-17 07:08:39");
INSERT INTO password_resets VALUES("mshopfg@test.com","pmtzqfgh8krEkE9wpWLkpzBMOfi6acqfCxp8PckvCOTaGjah50222XpfyohpR7nCMPSAeuuETydFZTXSfkxdAXKTgIU9fRhuvLWq","2021-08-17 07:21:11");
INSERT INTO password_resets VALUES("hghg@sdhfhsgd.com","11DGmSxAqTiliqL4kKJMNSnsT6VnGlmWitjJFNaAaOIR9A0dDScMKVGinAV2X4X9md3hIaNiEunX3J37tXHjfo7aIZoMsaNRFKHb","2021-08-17 07:25:03");
INSERT INTO password_resets VALUES("vifyebiknu@biyac.com","JXelDM8UrNvPqcJfXGnNYXLSAkZUCzaERotmc3pkOG1nsxFkNdfvBTVnVePWZmICYuzOR76PH9n4O5vFvWbwkSOWye8yiNJ5oz8k","2021-08-17 07:42:20");
INSERT INTO password_resets VALUES("test10@gmail.com","q3HM8GrJ8nVVq1Gjj1JKENlLKHoOyQ2AFzTJGQF9PpFM3u590QP32OdljyfUkcZnJxpw0bpYsUTphCEJAHR2dce3VjBBvYbaluFh","2021-08-17 09:07:47");
INSERT INTO password_resets VALUES("albert@demo.com","P4Afh4Go1yBBUJngb59ZgCrDkCks2SjbeA7MjxJCpltpTzx6nkcYAGr3hatpVgFBnaNyHkgfm1I9tTlSmoHOSytztPAyrZZ5wqo7","2021-08-23 11:41:47");
INSERT INTO password_resets VALUES("anna@demo.com","RlMnrdSXb6a3pQUbn4y3xOdQRVWliw2JUhOMwl3Mrg7N1okWDdZUvgdfzJsh1ZSe6mxe7tEKPXnhqyJrv3Yv1Mkpmv14xb8A4L9F","2021-08-23 11:46:59");
INSERT INTO password_resets VALUES("vosheo@scrsot.com","1yQz6s5GnG8lIXNeDY0OtzoILHpbz2jO32xN4fsEhyt9bOBaWnx6X0HnF6BvrqPTxBckOdDEX2r1BkSpejli6PudmgKX3NarojT1","2021-08-26 06:17:15");
INSERT INTO password_resets VALUES("aaaa@gmail.com","DBEuGbVDq4VeaCRq1j7E8sI9DM6qdfV0m75jKSgWxZIHyud7Aob7env8PK1yAzbj8q9zFbKsA0PTq0pHsRr355DOkkWF66aLs9hv","2021-08-26 06:18:27");
INSERT INTO password_resets VALUES("dfsgdf@hfghfd.com","CnBOG3JEXGw8MPnYtZM1WdRqqiZ9k76etvOsr8Y7N9bqP0SKKhNqlKqydE2ERiqz0V4rqrGrQCy1XNgaEaDZOI0dX646sB7QXY9l","2021-08-26 06:19:59");
INSERT INTO password_resets VALUES("dfsgdf@gmaill.com","bfV2erTvg0UMZPnBse3ALoOZA65BgwMbhEb9zZSLtpXEtzRXhZIoJVU7CQyjhXC7EihCFcxhP5ba7raHGec3rVLt1rAnT9r5Zk4Q","2021-08-26 06:20:15");
INSERT INTO password_resets VALUES("dfsgdf@gmail.com","jVXOSBoTD0NBJ6SghcBSoYT4X8dd2BdtvkV5AikYAGNlTsDujJBeFX8Fn2P9rGk0PUqMcR7ynuyIixrDQnS0LoUTVGs6pTRYusvo","2021-08-26 06:20:27");
INSERT INTO password_resets VALUES("demoaccount@demo.com","2nDsQY3r4u4y4BCvdaAxy3mXavkGT1DMoUPBIxkUMcmQRBqbWCJwL7pEaoURN0eZG9WrxfPULkcw8rTwZ6aMXVsjVYCfDM4ZZMtJ","2021-09-02 05:51:41");
INSERT INTO password_resets VALUES("demoaccount@demo.com","YEHUA2vz3JzQalIfhgMP0JgWuZoQdUDqXTdqv2dtv3qhDuXIwPpXDcFpEWM8lZxwMMUJ4Deidwb2alTzv1Hc4YMKxAjmveaGzdMW","2021-09-02 05:56:07");
INSERT INTO password_resets VALUES("albert@demo.com","ZjNKAWrkoo7AhugH5XFTSkxQfTJ5PyJNU13UeuFo11PtxR44MZ12yhwOaqan7wQ3wE7oS4AWulzAx5RiGqwWugT708mfKcofjtPt","2021-09-12 23:59:37");
INSERT INTO password_resets VALUES("siprai@scrsot.com","bx0lTyq38N1wPhFB18TkjVxhyU3Fx9hl5Edq2RKxftezSHiMitq2BbsRU71iGbxGX41AwSVNPcz5WWCuHnXfmBhJWK0vmirrMo3F","2021-09-13 01:26:54");
INSERT INTO password_resets VALUES("sonsimon159@gmail.com","czh3eBaHjSp0Dy3jMDt7qnDq5lXCXNWym82RhkGxslAifIHg10ihaAhy2HkPSBNvpUlwMp7RatZ8XTIm6cZUNTfXHtOIjro4CXYb","2021-12-01 20:16:50");
INSERT INTO password_resets VALUES("charlesj2195@gmail.com","67Rd691GnSmh4RBlMJuUcxM3zJ9NO1p5MIPnVfyfaXgIIEfQazNVmgdt3CRQEP1UF0mgtMPkxg6ePd894eh4029mh0Wh1FXJnOlh","2021-12-01 20:20:53");
INSERT INTO password_resets VALUES("test100@gmail.com","7HFCZatpZgj6QygXybnr9YNB4iSput6MIcRzyoTm8jItGrsBF0CRcKgT55aK9v9Ccf3Aac9dWfWZPDkdRXinnCUYLwA8VS6zOv8u","2021-12-17 03:02:13");
INSERT INTO password_resets VALUES("gdfg@gmail.com","GhUEBMOrJ6t7ZI6h8af3qOgXDDvWJJzwkibuy3ULqQxN8mZrYhUa7YBkoukoc6bTTx11LicuFPDcGCZQwqPgCl850R2GTBemVC76","2021-12-23 21:20:57");
INSERT INTO password_resets VALUES("test12@gmail.com","KcyIu91h1ZeBWpaZQ1L5UB5tAxFlNkxy9cjsSwX3rM5aOzVhZ4uO7Felgsh3VJCkIyfaqDwIaWn99gSWi6aIjufJIBbERZdN8B9R","2021-12-23 21:22:10");
INSERT INTO password_resets VALUES("rigoleto.p@gmail.com","OaDo7yGuk2gUCtkx3U6KkaCQcHqDsStsDY0SDgRtvVUIEA0K37i2dIdzUZlVGOYSl17SEVwasAxZdqVLmXowIJAGrBN147ifUtkA","2021-12-27 16:29:15");
INSERT INTO password_resets VALUES("ovis30@hotmail.com","u3FMGOzlkG4H01S2IvC3uRQcFrnkNEX3qjh2ALUwu81QMdE4ZgmulkX6UE8pt8MGfXbcYXz0dYeSwZOPob7br5OLTZch9OiZ2CWx","2021-12-27 21:38:32");
INSERT INTO password_resets VALUES("danielcruzmichel@outlook.com","DIuSxIaVYWyNxNyZYeBbrMjn58RMCUhnIr0E00pRXPvYN1ZQyKOd9damkRIzKmm0Vo0otTMREbyjyXD9YbMZLIepRgaTe1sNnYYV","2021-12-28 13:02:27");
INSERT INTO password_resets VALUES("dr.erick.sanabria@gmail.com","SpTgQwbJzaP7T05ltSzg08I7HNCqu8Ia40YhfDuTit6XL73PC0Pk5Alyo4rXVuTHvZhF5aIkX7FNFWqOEzlQfHkBdF3rxzkMxjj9","2021-12-28 15:21:57");
INSERT INTO password_resets VALUES("prueba@gmail.com","wdtgZ75w2Q4GKDcKiH2vQD15g17PbhDR05NUriQI6AzhiZFAKYsBTZ813iwJJkUJoPnXCIomHAoY2uuizi0WVWrs5JbILoXSBos5","2022-01-11 21:42:58");
INSERT INTO password_resets VALUES("Peggysan555@gmail.com","YFGiSTOyFkXRUCUmfMoEymq9O9Evoqu0DMUCQPzwrUZbZXX1cNSFctXwV9z5peqTaMuScYt9PacU8lhMLqMoBfKQevYZ9ZIQsnqD","2022-02-09 01:03:45");





CREATE TABLE IF NOT EXISTS `payment_methods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payment_methods VALUES("1","Paypal","Active");
INSERT INTO payment_methods VALUES("2","Stripe","Active");
INSERT INTO payment_methods VALUES("3","Wallet","Active");
INSERT INTO payment_methods VALUES("4","Bank","Active");
INSERT INTO payment_methods VALUES("5","Razorpay","Active");





CREATE TABLE IF NOT EXISTS `payout_penalties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `payout_id` int(11) NOT NULL,
  `penalty_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `payout_settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `selected` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payout_settings VALUES("1","1","1","info@sangvish.com","Athi Lakshmi","","","","","","","","1","No","2021-08-11 11:02:12","2021-08-11 11:02:12");
INSERT INTO payout_settings VALUES("2","1","4","athi@gmail.com","Athi","123445566","anna nagar","madurai","anna nagar","99","SBI000012","SBI","1","No","2021-08-11 11:03:28","2021-08-11 11:03:28");
INSERT INTO payout_settings VALUES("3","2","1","demo@gmail.com","Demo Demo","","","","","","","","1","No","2021-08-15 09:21:03","2021-08-15 09:21:03");
INSERT INTO payout_settings VALUES("4","23","4","rigoleto.p@gmail.com","Alejandro del Villar","1500472371","COchabamba","Cochabamba","Calle Qori sunqu Urb los ceibos","26","BNBOBOLXXX","Banco nacional de bolivia","1","No","2021-12-27 16:38:20","2021-12-27 16:38:20");
INSERT INTO payout_settings VALUES("5","25","4","danielcruzmichel@outlook.com","daniel cruz","123565","mercantil","cochabamab","cochamaan","26","85694","mercantil","1","No","2022-01-05 16:26:56","2022-01-05 16:26:56");





CREATE TABLE IF NOT EXISTS `payouts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `penalty_amount` double NOT NULL DEFAULT 0,
  `status` enum('Completed','Future') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO payouts VALUES("1","3","1","4","Host","","20","0","Future","USD","2021-08-09 05:57:24","2021-08-09 05:57:24");
INSERT INTO payouts VALUES("2","4","1","4","Host","","20","0","Future","USD","2021-08-09 05:59:11","2021-08-09 05:59:11");
INSERT INTO payouts VALUES("3","8","15","60","Host","","40","0","Future","USD","2021-08-30 13:28:49","2021-08-30 13:28:49");
INSERT INTO payouts VALUES("4","9","14","52","Host","","35","0","Future","USD","2021-08-31 08:31:19","2021-08-31 08:31:19");
INSERT INTO payouts VALUES("5","9","14","52","Host","","35","0","Future","USD","2021-08-31 09:00:44","2021-08-31 09:00:44");
INSERT INTO payouts VALUES("6","10","14","53","Host","","57","0","Future","USD","2021-08-31 09:04:43","2021-08-31 09:04:43");
INSERT INTO payouts VALUES("7","11","15","60","Host","","40","0","Future","USD","2021-09-02 04:58:50","2021-09-02 04:58:50");
INSERT INTO payouts VALUES("8","11","15","60","Host","","40","0","Future","USD","2021-09-02 05:02:08","2021-09-02 05:02:08");
INSERT INTO payouts VALUES("9","18","2","70","Guest","","5","0","Future","USD","2021-11-11 01:44:36","2021-11-11 01:44:36");
INSERT INTO payouts VALUES("11","19","2","70","Guest","","53","0","Future","USD","2021-11-11 03:20:58","2021-11-11 03:20:58");
INSERT INTO payouts VALUES("12","22","1","6","Guest","","16","0","Future","USD","2021-11-25 21:45:08","2021-11-25 21:45:08");
INSERT INTO payouts VALUES("14","23","1","6","Guest","","15","0","Completed","USD","2021-11-26 01:01:43","2021-12-03 18:43:50");
INSERT INTO payouts VALUES("15","24","2","6","Host","","10","0","Future","USD","2021-11-26 01:13:47","2021-11-26 01:13:47");
INSERT INTO payouts VALUES("17","26","1","6","Guest","","16","0","Future","USD","2021-11-26 18:21:47","2021-11-26 18:21:47");
INSERT INTO payouts VALUES("18","25","1","6","Guest","","14","0","Completed","USD","2021-11-26 19:32:41","2021-11-28 17:38:17");
INSERT INTO payouts VALUES("19","27","1","6","Guest","","16","0","Future","USD","2021-11-29 22:14:11","2021-11-29 22:14:11");
INSERT INTO payouts VALUES("21","28","1","6","Guest","","14","0","Completed","USD","2021-11-30 00:29:53","2021-11-30 00:32:09");
INSERT INTO payouts VALUES("31","34","2","73","Guest","","1250","0","Completed","USD","2021-12-01 21:43:24","2021-12-01 22:09:40");
INSERT INTO payouts VALUES("33","35","18","75","Guest","","635","0","Completed","USD","2021-12-01 23:43:28","2021-12-01 23:50:18");
INSERT INTO payouts VALUES("34","36","18","74","Guest","","1160","0","Future","USD","2021-12-02 00:07:20","2021-12-02 00:07:20");
INSERT INTO payouts VALUES("37","37","18","74","Guest","","1250","0","Completed","USD","2021-12-02 00:45:21","2021-12-02 00:53:44");
INSERT INTO payouts VALUES("38","38","2","6","Host","","14","0","Future","USD","2021-12-02 02:55:07","2021-12-02 02:55:07");
INSERT INTO payouts VALUES("41","39","2","74","Guest","","530","0","Future","USD","2021-12-02 03:07:54","2021-12-02 03:07:54");
INSERT INTO payouts VALUES("42","40","18","77","Guest","","475","0","Future","USD","2021-12-02 19:15:47","2021-12-02 19:15:47");
INSERT INTO payouts VALUES("44","41","18","77","Guest","","580","0","Future","USD","2021-12-02 19:26:34","2021-12-02 19:26:34");
INSERT INTO payouts VALUES("47","42","18","77","Guest","","455","0","Completed","USD","2021-12-02 19:54:50","2021-12-02 20:01:23");
INSERT INTO payouts VALUES("49","43","18","78","Guest","","1310","0","Completed","USD","2021-12-02 20:38:15","2021-12-02 20:43:51");
INSERT INTO payouts VALUES("50","44","18","74","Guest","","950","0","Future","USD","2021-12-02 21:14:27","2021-12-02 21:14:27");
INSERT INTO payouts VALUES("52","45","18","77","Guest","","580","0","Future","USD","2021-12-02 21:34:38","2021-12-02 21:34:38");
INSERT INTO payouts VALUES("55","46","18","74","Guest","","1110","0","Completed","USD","2021-12-02 21:42:19","2021-12-02 21:44:53");
INSERT INTO payouts VALUES("56","46","18","74","Guest","","1160","0","Future","USD","2021-12-02 21:42:21","2021-12-02 21:42:21");
INSERT INTO payouts VALUES("58","47","18","77","Guest","","580","0","Future","USD","2021-12-02 23:55:08","2021-12-02 23:55:08");
INSERT INTO payouts VALUES("61","48","18","74","Guest","","1310","0","Completed","USD","2021-12-03 00:05:22","2021-12-03 00:06:15");
INSERT INTO payouts VALUES("64","49","18","77","Guest","","455","0","Completed","USD","2021-12-03 01:07:05","2021-12-03 01:08:23");
INSERT INTO payouts VALUES("67","50","18","79","Guest","","230","0","Completed","USD","2021-12-03 02:35:17","2021-12-03 02:51:04");
INSERT INTO payouts VALUES("70","51","18","80","Guest","","480","0","Future","USD","2021-12-03 02:55:36","2021-12-03 02:55:36");
INSERT INTO payouts VALUES("73","52","18","81","Guest","","460","0","Completed","USD","2021-12-03 19:19:42","2021-12-03 19:22:16");
INSERT INTO payouts VALUES("74","53","2","83","Host","","380","0","Future","USD","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO payouts VALUES("75","54","17","79","Host","","440","0","Future","USD","2021-12-06 19:32:15","2021-12-06 19:32:15");
INSERT INTO payouts VALUES("76","54","17","79","Host","","440","0","Future","USD","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO payouts VALUES("77","56","17","86","Host","","380","0","Future","USD","2021-12-06 23:46:39","2021-12-06 23:46:39");
INSERT INTO payouts VALUES("78","56","17","86","Host","","380","0","Future","USD","2021-12-06 23:48:47","2021-12-06 23:48:47");
INSERT INTO payouts VALUES("79","59","1","70","Host","","5","0","Future","USD","2021-12-17 02:35:58","2021-12-17 02:35:58");
INSERT INTO payouts VALUES("80","61","14","46","Host","","23","0","Future","USD","2021-12-22 03:38:18","2021-12-22 03:38:18");
INSERT INTO payouts VALUES("81","62","23","89","Host","","24","0","Future","USD","2022-01-12 00:51:59","2022-01-12 00:51:59");





CREATE TABLE IF NOT EXISTS `penalty` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_type` enum('Host','Guest') COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `remaining_penalty` double NOT NULL DEFAULT 0,
  `reason` enum('cancelation','demurrage','violation_of_rules') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Completed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO penalty VALUES("1","19","70","1","Host","USD","10","0","cancelation","Completed","2021-11-11 03:20:59","2021-12-01 20:04:39");
INSERT INTO penalty VALUES("2","27","6","2","Host","USD","10","10","cancelation","Completed","2021-11-29 22:14:11","2021-11-30 00:14:18");
INSERT INTO penalty VALUES("3","28","6","2","Host","USD","10","10","cancelation","Completed","2021-11-30 00:29:53","2021-11-30 00:31:56");
INSERT INTO penalty VALUES("4","36","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 00:07:20","2021-12-02 00:42:19");
INSERT INTO penalty VALUES("5","37","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 00:45:21","2021-12-02 03:02:05");
INSERT INTO penalty VALUES("6","39","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 03:07:54","2021-12-02 19:23:23");
INSERT INTO penalty VALUES("7","44","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 21:14:27","2021-12-02 21:33:08");
INSERT INTO penalty VALUES("8","45","77","17","Host","USD","10","0","cancelation","Completed","2021-12-02 21:34:38","2021-12-02 21:37:41");
INSERT INTO penalty VALUES("9","46","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 21:42:19","2021-12-02 23:52:55");
INSERT INTO penalty VALUES("10","46","74","17","Host","USD","10","0","cancelation","Completed","2021-12-02 21:42:21","2021-12-02 23:53:09");
INSERT INTO penalty VALUES("11","47","77","17","Host","USD","5","0","cancelation","Completed","2021-12-02 23:55:08","2021-12-03 00:01:43");
INSERT INTO penalty VALUES("12","48","74","17","Host","USD","5","0","cancelation","Completed","2021-12-03 00:05:22","2021-12-03 01:03:29");
INSERT INTO penalty VALUES("13","49","77","17","Host","USD","5","0","cancelation","Completed","2021-12-03 01:07:05","2021-12-03 02:29:58");





CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permission_role VALUES("1","1");
INSERT INTO permission_role VALUES("2","1");
INSERT INTO permission_role VALUES("3","1");
INSERT INTO permission_role VALUES("4","1");
INSERT INTO permission_role VALUES("5","1");
INSERT INTO permission_role VALUES("6","1");
INSERT INTO permission_role VALUES("7","1");
INSERT INTO permission_role VALUES("8","1");
INSERT INTO permission_role VALUES("9","1");
INSERT INTO permission_role VALUES("10","1");
INSERT INTO permission_role VALUES("11","1");
INSERT INTO permission_role VALUES("12","1");
INSERT INTO permission_role VALUES("13","1");
INSERT INTO permission_role VALUES("14","1");
INSERT INTO permission_role VALUES("15","1");
INSERT INTO permission_role VALUES("16","1");
INSERT INTO permission_role VALUES("17","1");
INSERT INTO permission_role VALUES("18","1");
INSERT INTO permission_role VALUES("19","1");
INSERT INTO permission_role VALUES("20","1");
INSERT INTO permission_role VALUES("21","1");
INSERT INTO permission_role VALUES("22","1");
INSERT INTO permission_role VALUES("23","1");
INSERT INTO permission_role VALUES("24","1");
INSERT INTO permission_role VALUES("25","1");
INSERT INTO permission_role VALUES("26","1");
INSERT INTO permission_role VALUES("27","1");
INSERT INTO permission_role VALUES("28","1");
INSERT INTO permission_role VALUES("29","1");
INSERT INTO permission_role VALUES("30","1");
INSERT INTO permission_role VALUES("31","1");
INSERT INTO permission_role VALUES("32","1");
INSERT INTO permission_role VALUES("32","2");
INSERT INTO permission_role VALUES("33","1");
INSERT INTO permission_role VALUES("34","1");
INSERT INTO permission_role VALUES("35","1");
INSERT INTO permission_role VALUES("36","1");
INSERT INTO permission_role VALUES("37","1");
INSERT INTO permission_role VALUES("38","1");
INSERT INTO permission_role VALUES("39","1");
INSERT INTO permission_role VALUES("40","1");
INSERT INTO permission_role VALUES("41","1");
INSERT INTO permission_role VALUES("42","1");
INSERT INTO permission_role VALUES("51","1");
INSERT INTO permission_role VALUES("52","1");
INSERT INTO permission_role VALUES("53","1");
INSERT INTO permission_role VALUES("54","1");
INSERT INTO permission_role VALUES("55","1");
INSERT INTO permission_role VALUES("56","1");
INSERT INTO permission_role VALUES("57","1");





CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO permissions VALUES("1","manage_admin","Manage Admin","Manage Admin Users","","");
INSERT INTO permissions VALUES("2","customers","View Customers","View Customer","","");
INSERT INTO permissions VALUES("3","add_customer","Add Customer","Add Customer","","");
INSERT INTO permissions VALUES("4","edit_customer","Edit Customer","Edit Customer","","");
INSERT INTO permissions VALUES("5","properties","View Properties","View Properties","","");
INSERT INTO permissions VALUES("6","add_properties","Add Properties","Add Properties","","");
INSERT INTO permissions VALUES("7","edit_properties","Edit Properties","Edit Properties","","");
INSERT INTO permissions VALUES("8","delete_property","Delete Property","Delete Property","","");
INSERT INTO permissions VALUES("9","manage_bookings","Manage Bookings","Manage Bookings","","");
INSERT INTO permissions VALUES("10","manage_email_template","Manage Email Template","Manage Email Template","","");
INSERT INTO permissions VALUES("11","view_payouts","View Payouts","View Payouts","","");
INSERT INTO permissions VALUES("12","manage_amenities","Manage Amenities","Manage Amenities","","");
INSERT INTO permissions VALUES("13","manage_pages","Manage Pages","Manage Pages","","");
INSERT INTO permissions VALUES("14","manage_reviews","Manage Reviews","Manage Reviews","","");
INSERT INTO permissions VALUES("15","view_reports","View Reports","View Reports","","");
INSERT INTO permissions VALUES("16","general_setting","Settings","Settings","","");
INSERT INTO permissions VALUES("17","preference","Preference","Preference","","");
INSERT INTO permissions VALUES("18","manage_banners","Manage Banners","Manage Banners","","");
INSERT INTO permissions VALUES("19","starting_cities_settings","Starting Cities Settings","Starting Cities Settings","","");
INSERT INTO permissions VALUES("20","manage_property_type","Manage Property Type","Manage Property Type","","");
INSERT INTO permissions VALUES("21","space_type_setting","Space Type Setting","Space Type Setting","","");
INSERT INTO permissions VALUES("22","manage_bed_type","Manage Bed Type","Manage Bed Type","","");
INSERT INTO permissions VALUES("23","manage_currency","Manage Currency","Manage Currency","","");
INSERT INTO permissions VALUES("24","manage_country","Manage Country","Manage Country","","");
INSERT INTO permissions VALUES("25","manage_amenities_type","Manage Amenities Type","Manage Amenities Type","","");
INSERT INTO permissions VALUES("26","email_settings","Email Settings","Email Settings","","");
INSERT INTO permissions VALUES("27","manage_fees","Manage Fees","Manage Fees","","");
INSERT INTO permissions VALUES("28","manage_language","Manage Language","Manage Language","","");
INSERT INTO permissions VALUES("29","manage_metas","Manage Metas","Manage Metas","","");
INSERT INTO permissions VALUES("30","api_informations","Api Credentials","Api Credentials","","");
INSERT INTO permissions VALUES("31","payment_settings","Payment Settings","Payment Settings","","");
INSERT INTO permissions VALUES("32","social_links","Social Links","Social Links","","");
INSERT INTO permissions VALUES("33","manage_roles","Manage Roles","Manage Roles","","");
INSERT INTO permissions VALUES("34","database_backup","Database Backup","Database Backup","","");
INSERT INTO permissions VALUES("35","manage_sms","Manage SMS","Manage SMS","","");
INSERT INTO permissions VALUES("36","manage_messages","Manage Messages","Manage Messages","","");
INSERT INTO permissions VALUES("37","edit_messages","Edit Messages","Edit Messages","","");
INSERT INTO permissions VALUES("38","manage_testimonial","Manage Testimonial","Manage Testimonial","","");
INSERT INTO permissions VALUES("39","add_testimonial","Add Testimonial","Add Testimonial","","");
INSERT INTO permissions VALUES("40","edit_testimonial","Edit Testimonial","Edit Testimonial","","");
INSERT INTO permissions VALUES("41","delete_testimonial","Delete Testimonial","Delete Testimonial","","");
INSERT INTO permissions VALUES("42","manage_penalty","Penalty","Penalty","","");





CREATE TABLE IF NOT EXISTS `properties` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host_id` int(11) NOT NULL,
  `bedrooms` tinyint(4) DEFAULT NULL,
  `beds` tinyint(4) DEFAULT NULL,
  `bed_type` int(10) unsigned DEFAULT NULL,
  `bathrooms` double(8,2) DEFAULT NULL,
  `amenities` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_type` int(11) NOT NULL DEFAULT 0,
  `space_type` int(11) NOT NULL DEFAULT 0,
  `accommodates` tinyint(4) DEFAULT NULL,
  `booking_type` enum('instant','request') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `cancellation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Flexible',
  `status` enum('Unlisted','Listed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unlisted',
  `recomended` tinyint(4) DEFAULT NULL,
  `admin_approval` int(50) NOT NULL DEFAULT 0,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO properties VALUES("89","hermosa casa en cochabamba","hermosa-casa-en-cochabamba","","23","3","4","99","2.00","27,82,83,84,85,86,87,88,,29,173,174,175,176,177,178,179,,31,180,181,182,183,184,185,186,,14,40,41,42,43,44,45,46,,17,103,104,105,106,107,108,109,,24,117,118,119,120,121,122,123,","170","11","4","instant","Moderate","Listed","","1","","2021-12-27 20:10:54","2022-01-03 12:56:05");
INSERT INTO properties VALUES("90","habitaci??n individual in","habitacion-individual-in","","27","1","1","29","0.50","23,68,69,70,71,72,73,74,","93","11","1","instant","Flexible","Unlisted","","1","","2022-01-11 21:43:48","2022-01-11 21:49:13");
INSERT INTO properties VALUES("91","Toda la casa / apto. in","toda-la-casa-apto-in","","25","1","1","1","0.50","","1","1","1","request","Flexible","Unlisted","0","1","","2022-01-12 00:43:22","2022-01-19 20:32:27");





CREATE TABLE IF NOT EXISTS `property_address` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_address VALUES("1","1","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("2","2","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("3","3","Delhi Junction, Mori Gate, New Delhi, Delhi 110006, India","","28.6609677","77.2276704","New Delhi","Delhi","IN","110006");
INSERT INTO property_address VALUES("4","4","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("5","5","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("6","6","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","AF","10007");
INSERT INTO property_address VALUES("7","7","5th Ave, Anna Nagar, Chennai, Tamil Nadu 600040, India","","13.0849557","80.2101342","Chennai","Tamil Nadu","IN","600040");
INSERT INTO property_address VALUES("8","8","Raja Muthiah Rd","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("9","9","","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("10","10","A2 175, Hanifa Colony, bhel, Tiruchirappalli, Tamil Nadu 620020, India","","10.7904833","78.7046725","Tiruchirappalli","Tamil Nadu","IN","620020");
INSERT INTO property_address VALUES("11","11","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("12","12","W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("13","13","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("14","14","","","0","0","","","","");
INSERT INTO property_address VALUES("15","15","No. 766, I Floor, 100 feet road, Annanagar, Anna Nagar, Madurai, Tamil Nadu 625020, India","madurai","9.923559876114252","78.14115216452635","Madurai","Tamil Nadu","IN","625020");
INSERT INTO property_address VALUES("16","16","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","AF","600007");
INSERT INTO property_address VALUES("17","17","Raja Muthiah Rd","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("18","18","","","0","0","","","","");
INSERT INTO property_address VALUES("19","19","HXV7+F4H, Khattalwada, Wadgaon, Maharashtra 442305, India","","20.593684","78.96288","Wadgaon","Maharashtra","IN","442305");
INSERT INTO property_address VALUES("20","20","W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("21","21","","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("22","22","Raja Muthiah Rd","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("23","23","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("24","24","5th Ave, Anna Nagar, Chennai, Tamil Nadu 600040, India","","13.0849557","80.2101342","Chennai","Tamil Nadu","IN","600040");
INSERT INTO property_address VALUES("25","25","","","40.4167754","-3.7037902","Madrid","Comunidad de Madrid","ES","28013");
INSERT INTO property_address VALUES("26","26","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("27","27","","","51.5073509","-0.1277583","England","England","GB","SW1A 2DX");
INSERT INTO property_address VALUES("28","28","","","51.5073509","-0.1277583","England","England","GB","SW1A 2DX");
INSERT INTO property_address VALUES("29","29","","","40.4167754","-3.7037902","Madrid","Comunidad de Madrid","ES","28013");
INSERT INTO property_address VALUES("30","30","W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("31","31","","","51.5073509","-0.1277583","England","England","GB","SW1A 2DX");
INSERT INTO property_address VALUES("32","32","South Tottenham, London SW1A 2DX, UK","","51.5073509","-0.1277583","England","England","GB","SW1A 2DX");
INSERT INTO property_address VALUES("33","33","Estate Enighed","","37.09024","-95.712891","Independence","Kansas","US","67301");
INSERT INTO property_address VALUES("34","34","65 Front St W, Toronto, ON M5J 1E6, Canada","","43.64531969999999","-79.3804062","Toronto","Ontario","CA","M5J 1E6");
INSERT INTO property_address VALUES("35","35","Raja Muthiah Rd","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("36","36","","","40.4167754","-3.7037902","Madrid","Comunidad de Madrid","ES","28013");
INSERT INTO property_address VALUES("37","37","Paran?? 3745, Mart??nez, Provincia de Buenos Aires, Argentina","","-34.5075603","-58.52525079999999","Mart??nez","Provincia de Buenos Aires","AR","");
INSERT INTO property_address VALUES("38","38","","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("39","39","Thanjavur Tanjore - Old Bus Stand, S Rampart Rd, Rajakrisnapuram, Thanjavur, Tamil Nadu 613001, India","","10.7869994","79.13782739999999","Thanjavur","Tamil Nadu","IN","613001");
INSERT INTO property_address VALUES("40","40","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("41","41","254 Broadway, New York, NY 10007, USA","","40.7129032","-74.0063033","New York","New York","US","10007");
INSERT INTO property_address VALUES("42","42","2 Beach St, New York, NY 10013, USA","","40.7200964","-74.0059816","New York","New York","US","10013");
INSERT INTO property_address VALUES("43","43","150 Nassau St, New York, NY 10038, USA","","40.71146239999999","-74.0059409","New York","New York","US","10038");
INSERT INTO property_address VALUES("44","44","506 6th St, Brooklyn, NY 11215, USA","","40.6678362","-73.97912989999999","New York","New York","US","11215");
INSERT INTO property_address VALUES("45","45","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("46","46","452 Broadway, New York, NY 10013, USA","","40.720357","-74.0005647","New York","New York","US","10013");
INSERT INTO property_address VALUES("47","47","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("48","48","43 West 4th Street, New York, NY 10012, USA","","40.72951339999999","-73.9964609","New York","New York","US","10012");
INSERT INTO property_address VALUES("49","49","32 Hudson Yards, New York, NY 10001, USA","","40.7542629","-74.0023166","New York","New York","US","10001");
INSERT INTO property_address VALUES("50","50","254 Broadway, New York, NY 10007, USA","","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("51","51","110-140 King St, Sydney NSW 2000, Australia","","-33.8688197","151.2092955","Sydney","Sydney","AU","2000");
INSERT INTO property_address VALUES("52","52","4 Pl. de l\'H??tel de Ville, 75004 Paris, France","","48.856614","2.3522219","Paris","Paris","FR","75004");
INSERT INTO property_address VALUES("53","53","Ede ekene, 08002 Barcelona, Spain","","41.3850639","2.1734035","Barcelona","Barcelona","ES","08002");
INSERT INTO property_address VALUES("54","54","B5 7, 10178 Berlin, Germany","","52.52000659999999","13.404954","Berlin","Berlin","DE","10178");
INSERT INTO property_address VALUES("55","55","Budapest, Unnamed Road, 1013 Hungary","","47.497912","19.040235","Budapest","Budapest","HU","1013");
INSERT INTO property_address VALUES("56","56","Unnamed Road Singapore","","1.352083","103.819836","Singapore","Singapore","SG","");
INSERT INTO property_address VALUES("57","57","169, Block G, Seemapuri, New Delhi, Delhi 110011, India","","28.6139391","77.2090212","New Delhi","Delhi","IN","110011");
INSERT INTO property_address VALUES("58","58","169, Block G, Seemapuri, New Delhi, Delhi 110011, India","","28.6139391","77.2090212","New Delhi","Delhi","IN","110011");
INSERT INTO property_address VALUES("59","59","50 Raffles Pl, Singapore 048623","","1.2847487","103.8519923","Singapore","Singapore","SG","048623");
INSERT INTO property_address VALUES("60","60","Budapest, Unnamed Road, 1013 Hungary","","47.497912","19.040235","Budapest","Budapest","HU","1013");
INSERT INTO property_address VALUES("61","61","","","0","0","","","","");
INSERT INTO property_address VALUES("62","62","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("63","63","Unnamed Road Singapore","","1.352083","103.819836","Singapore","Singapore","SG","");
INSERT INTO property_address VALUES("64","64","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("65","65","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","AF","600007");
INSERT INTO property_address VALUES("66","66","Raja Muthiah Rd, Chinnaiyan Colony, Periyamet, Chennai, Tamil Nadu 600007, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600007");
INSERT INTO property_address VALUES("67","67","Rajapalayam ponnagaram, South Sammanthapuram, Rajapalayam, Tamil Nadu 626117, India","","9.451484299999999","77.55434249999999","RJPM","Tamil Nadu","IN","626117");
INSERT INTO property_address VALUES("68","68","Rajapalayam ponnagaram, South Sammanthapuram, Rajapalayam, Tamil Nadu 626117, India","","9.451484299999999","77.55434249999999","RJPM","Tamil Nadu","IN","626117");
INSERT INTO property_address VALUES("69","69","37MC+378, Chinnaiyan Colony, Poongavanapuram, Chennai, Tamil Nadu 600003, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600003");
INSERT INTO property_address VALUES("70","70","37MC+378, Chinnaiyan Colony, Poongavanapuram, Chennai, Tamil Nadu 600003, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600003");
INSERT INTO property_address VALUES("71","71","37MC+378, Chinnaiyan Colony, Poongavanapuram, Chennai, Tamil Nadu 600003, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600003");
INSERT INTO property_address VALUES("72","72","37MC+378, Chinnaiyan Colony, Poongavanapuram, Chennai, Tamil Nadu 600003, India","","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600003");
INSERT INTO property_address VALUES("73","73","2/2, 5th Cross Rd, Vinayaka Nagar, Jalakanteshwara Nagar, Shanti Nagar, Bengaluru, Karnataka 560030, India","2/2, 5th Cross Rd,","12.950494424940493","77.60189228666046","Bengaluru","Karnataka","IN","560030");
INSERT INTO property_address VALUES("74","74","Krantivira Sangolli Rayanna (Bengaluru), M.G. Railway Colony, Majestic, Bengaluru, Karnataka 560023, India","No 35,","12.980159913099108","77.5708035782882","Bengaluru","Karnataka","IN","560023");
INSERT INTO property_address VALUES("75","75","police station, 231, Near Alanhalli, Siddhartha Nagar, KSFC Layout, Lakshmipuram, Mysuru, Karnataka 570004, India","231","12.2958104","76.6393805","Mysuru","Karnataka","IN","570004");
INSERT INTO property_address VALUES("76","76","","","15.3023793","74.1269322","Rumbrem","Goa","IN","");
INSERT INTO property_address VALUES("77","77","74XF+PHQ, Bandoli, Goa 403706, India","74XF+PHQ","15.2993265","74.12399599999999","Bandoli","Goa","IN","403706");
INSERT INTO property_address VALUES("78","78","1142-1, Chamarajapura, Chamarajapuram Mohalla, Lakshmipuram, Mysuru, Karnataka 570004, India","1142-1, Chamarajapura,","12.296565155396461","76.64126877514647","Mysuru","Karnataka","IN","570004");
INSERT INTO property_address VALUES("79","79","254 Broadway, New York, NY 10007, USA","254 Broadway,","40.7127753","-74.0059728","New York","New York","US","10007");
INSERT INTO property_address VALUES("80","80","4 Pl. de l\'H??tel de Ville, 75004 Paris, France","4 Pl","48.856614","2.3522219","Paris","??le-de-France","FR","75004");
INSERT INTO property_address VALUES("81","81","37MC+378, Chinnaiyan Colony, Poongavanapuram, Chennai, Tamil Nadu 600003, India","37MC+378,","13.0826802","80.2707184","Chennai","Tamil Nadu","IN","600003");
INSERT INTO property_address VALUES("82","82","","","0","0","","","","");
INSERT INTO property_address VALUES("83","83","W4G9+3WJ, Rail Marutham Nagar, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India","","9.9252007","78.1197754","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("84","84","Prta del Sol, 7, 28013 Madrid, Spain","","40.4167754","-3.7037902","Madrid","Comunidad de Madrid","ES","28013");
INSERT INTO property_address VALUES("85","85","","","0","0","","","","");
INSERT INTO property_address VALUES("86","86","4462+RQJ, Nehru Nagar, TNHB Mig V Block, Avadi, Tamil Nadu 600071, India","7426+7W","13.112340621158667","80.10196157836914","Avadi","Tamil Nadu","IN","600071");
INSERT INTO property_address VALUES("87","87","156, Vakkil New St, near Bharath Petroleum, Simmakkal, Madurai Main, Madurai, Tamil Nadu 625001, India","Yanaikkal, Simmakkla","9.924101598687043","78.12243615134277","Madurai","Tamil Nadu","IN","625001");
INSERT INTO property_address VALUES("88","88","Prta del Sol, 7, 28013 Madrid, Spain","","40.4167754","-3.7037902","Madrid","Comunidad de Madrid","ES","28013");
INSERT INTO property_address VALUES("89","89","Av Circunvalacion 743, Bolivia","calle circunvajfksnhfisulghniulbgyb","-17.375015145219418","-66.103009320166","Cochabamba","Departamento de Cochabamba","BO","");
INSERT INTO property_address VALUES("90","90","Calle Qori sunqu Urb los ceibo","Calle Qori sunqu Urb los ceibo","-17.390285876698265","-66.14816665649414","Cochabamba","cercado","BO","00000");
INSERT INTO property_address VALUES("91","91","","","0","0","","","","");





CREATE TABLE IF NOT EXISTS `property_beds` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `bed_type_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `property_dates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `status` enum('Available','Not available') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `price` int(11) NOT NULL DEFAULT 0,
  `min_stay` tinyint(4) NOT NULL DEFAULT 0,
  `min_day` int(11) NOT NULL DEFAULT 0,
  `max_stay` int(11) NOT NULL DEFAULT 0,
  `max_day` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `color` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('calendar','normal') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1529 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_dates VALUES("1","4","Not available","20","0","0","0","0","2021-08-09","","normal","2021-08-09 05:57:24","2021-08-09 05:57:24");
INSERT INTO property_dates VALUES("2","16","Available","20","1","2","0","0","2021-08-11","","normal","2021-08-11 11:15:27","2021-08-11 11:15:27");
INSERT INTO property_dates VALUES("3","16","Not available","20","0","0","0","0","2021-08-12","","normal","2021-08-11 11:15:27","2021-08-11 11:16:43");
INSERT INTO property_dates VALUES("4","16","Not available","20","0","0","0","0","2021-08-13","","normal","2021-08-11 11:15:27","2021-08-11 11:16:43");
INSERT INTO property_dates VALUES("5","40","Available","32","0","0","0","0","2021-08-23","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("6","40","Available","32","0","0","0","0","2021-08-24","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("7","40","Available","32","0","0","0","0","2021-08-25","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("8","40","Available","32","0","0","0","0","2021-08-26","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("9","40","Available","32","0","0","0","0","2021-08-27","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("10","40","Available","32","0","0","0","0","2021-08-28","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("11","40","Available","32","0","0","0","0","2021-08-29","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("12","40","Available","32","0","0","0","0","2021-08-30","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("13","40","Available","32","0","0","0","0","2021-08-31","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("14","40","Available","32","0","0","0","0","2021-09-01","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("15","40","Available","32","0","0","0","0","2021-09-02","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("16","40","Available","32","0","0","0","0","2021-09-03","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("17","40","Available","32","0","0","0","0","2021-09-04","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("18","40","Available","32","0","0","0","0","2021-09-05","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("19","40","Available","32","0","0","0","0","2021-09-06","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("20","40","Available","32","0","0","0","0","2021-09-07","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("21","40","Available","32","0","0","0","0","2021-09-08","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("22","40","Available","32","0","0","0","0","2021-09-09","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("23","40","Available","32","0","0","0","0","2021-09-10","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("24","40","Available","32","0","0","0","0","2021-09-11","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("25","40","Available","32","0","0","0","0","2021-09-12","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("26","40","Available","32","0","0","0","0","2021-09-13","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("27","40","Available","32","0","0","0","0","2021-09-14","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("28","40","Available","32","0","0","0","0","2021-09-15","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("29","40","Available","32","0","0","0","0","2021-09-16","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("30","40","Available","32","0","0","0","0","2021-09-17","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("31","40","Available","32","0","0","0","0","2021-09-18","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("32","40","Available","32","0","0","0","0","2021-09-19","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("33","40","Available","32","0","0","0","0","2021-09-20","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("34","40","Available","32","0","0","0","0","2021-09-21","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("35","40","Available","32","0","0","0","0","2021-09-22","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("36","40","Available","32","0","0","0","0","2021-09-23","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("37","40","Available","32","0","0","0","0","2021-09-24","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("38","40","Available","32","0","0","0","0","2021-09-25","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("39","40","Available","32","0","0","0","0","2021-09-26","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("40","40","Available","32","0","0","0","0","2021-09-27","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("41","40","Available","32","0","0","0","0","2021-09-28","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("42","40","Available","32","0","0","0","0","2021-09-29","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("43","40","Available","32","0","0","0","0","2021-09-30","","normal","2021-08-23 12:02:05","2021-08-23 12:02:05");
INSERT INTO property_dates VALUES("44","41","Available","22","0","0","0","0","2021-08-23","","normal","2021-08-23 12:19:21","2021-08-23 12:19:21");
INSERT INTO property_dates VALUES("45","41","Available","22","0","0","0","0","2021-08-24","","normal","2021-08-23 12:19:21","2021-08-23 12:19:21");
INSERT INTO property_dates VALUES("46","41","Available","22","0","0","0","0","2021-08-25","","normal","2021-08-23 12:19:21","2021-08-23 12:19:21");
INSERT INTO property_dates VALUES("47","41","Available","22","0","0","0","0","2021-08-26","","normal","2021-08-23 12:19:21","2021-08-23 12:19:21");
INSERT INTO property_dates VALUES("48","41","Available","22","0","0","0","0","2021-08-27","","normal","2021-08-23 12:19:21","2021-08-23 12:19:21");
INSERT INTO property_dates VALUES("49","42","Available","37","1","7","0","0","2021-08-26","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("50","42","Available","37","1","7","0","0","2021-08-27","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("51","42","Available","37","1","7","0","0","2021-08-28","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("52","42","Available","37","1","7","0","0","2021-08-29","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("53","42","Available","37","1","7","0","0","2021-08-30","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("54","42","Available","37","1","7","0","0","2021-08-31","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("55","42","Available","37","1","7","0","0","2021-09-01","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("56","42","Available","37","1","7","0","0","2021-09-02","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("57","42","Available","37","1","7","0","0","2021-09-03","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("58","42","Available","37","1","7","0","0","2021-09-04","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("59","42","Available","37","1","7","0","0","2021-09-05","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("60","42","Available","37","1","7","0","0","2021-09-06","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("61","42","Available","37","1","7","0","0","2021-09-07","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("62","42","Available","37","1","7","0","0","2021-09-08","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("63","42","Available","37","1","7","0","0","2021-09-09","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("64","42","Available","37","1","7","0","0","2021-09-10","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("65","42","Available","37","1","7","0","0","2021-09-11","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("66","42","Available","37","1","7","0","0","2021-09-12","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("67","42","Available","37","1","7","0","0","2021-09-13","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("68","42","Available","37","1","7","0","0","2021-09-14","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("69","42","Available","37","1","7","0","0","2021-09-15","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("70","42","Available","37","1","7","0","0","2021-09-16","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("71","42","Available","37","1","7","0","0","2021-09-17","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("72","42","Available","37","1","7","0","0","2021-09-18","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("73","42","Available","37","1","7","0","0","2021-09-19","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("74","42","Available","37","1","7","0","0","2021-09-20","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("75","42","Available","37","1","7","0","0","2021-09-21","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("76","42","Available","37","1","7","0","0","2021-09-22","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("77","42","Available","37","1","7","0","0","2021-09-23","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("78","42","Available","37","1","7","0","0","2021-09-24","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("79","42","Available","37","1","7","0","0","2021-09-25","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("80","42","Available","37","1","7","0","0","2021-09-26","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("81","42","Available","37","1","7","0","0","2021-09-27","","normal","2021-08-23 12:31:56","2021-08-23 12:31:56");
INSERT INTO property_dates VALUES("82","43","Available","42","0","0","0","0","2021-08-23","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("83","43","Available","42","0","0","0","0","2021-08-24","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("84","43","Available","42","0","0","0","0","2021-08-25","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("85","43","Available","42","0","0","0","0","2021-08-26","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("86","43","Available","42","0","0","0","0","2021-08-27","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("87","43","Available","42","0","0","0","0","2021-08-28","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("88","43","Available","42","0","0","0","0","2021-08-29","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("89","43","Available","42","0","0","0","0","2021-08-30","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("90","43","Available","42","0","0","0","0","2021-08-31","","normal","2021-08-23 12:40:28","2021-08-23 12:40:28");
INSERT INTO property_dates VALUES("91","44","Available","25","0","0","0","0","2021-09-03","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("92","44","Available","25","0","0","0","0","2021-09-04","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("93","44","Available","25","0","0","0","0","2021-09-05","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("94","44","Available","25","0","0","0","0","2021-09-06","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("95","44","Available","25","0","0","0","0","2021-09-07","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("96","44","Available","25","0","0","0","0","2021-09-08","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("97","44","Available","25","0","0","0","0","2021-09-09","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("98","44","Available","25","0","0","0","0","2021-09-10","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("99","44","Available","25","0","0","0","0","2021-09-11","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("100","44","Available","25","0","0","0","0","2021-09-12","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("101","44","Available","25","0","0","0","0","2021-09-13","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("102","44","Available","25","0","0","0","0","2021-09-14","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("103","44","Available","25","0","0","0","0","2021-09-15","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("104","44","Available","25","0","0","0","0","2021-09-16","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("105","44","Available","25","0","0","0","0","2021-09-17","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("106","44","Available","25","0","0","0","0","2021-09-18","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("107","44","Available","25","0","0","0","0","2021-09-19","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("108","44","Available","25","0","0","0","0","2021-09-20","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("109","44","Available","25","0","0","0","0","2021-09-21","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("110","44","Available","25","0","0","0","0","2021-09-22","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("111","44","Available","25","0","0","0","0","2021-09-23","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("112","44","Available","25","0","0","0","0","2021-09-24","","normal","2021-08-23 12:45:36","2021-08-23 12:45:36");
INSERT INTO property_dates VALUES("113","44","Available","25","0","0","0","0","2021-09-25","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("114","44","Available","25","0","0","0","0","2021-09-26","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("115","44","Available","25","0","0","0","0","2021-09-27","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("116","44","Available","25","0","0","0","0","2021-09-28","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("117","44","Available","25","0","0","0","0","2021-09-29","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("118","44","Available","25","0","0","0","0","2021-09-30","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("119","44","Available","25","0","0","0","0","2021-10-01","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("120","44","Available","25","0","0","0","0","2021-10-02","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("121","44","Available","25","0","0","0","0","2021-10-03","","normal","2021-08-23 12:45:37","2021-08-23 12:45:37");
INSERT INTO property_dates VALUES("122","44","Available","25","0","0","0","0","2021-08-24","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("123","44","Available","25","0","0","0","0","2021-08-25","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("124","44","Available","25","0","0","0","0","2021-08-26","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("125","44","Available","25","0","0","0","0","2021-08-27","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("126","44","Available","25","0","0","0","0","2021-08-28","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("127","44","Available","25","0","0","0","0","2021-08-29","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("128","44","Available","25","0","0","0","0","2021-08-30","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("129","44","Available","25","0","0","0","0","2021-08-31","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("130","44","Available","25","0","0","0","0","2021-08-31","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("131","44","Available","25","0","0","0","0","2021-09-01","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("132","44","Available","25","0","0","0","0","2021-09-02","","normal","2021-08-23 12:50:59","2021-08-23 12:50:59");
INSERT INTO property_dates VALUES("133","45","Available","25","0","0","0","0","2021-11-01","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("134","45","Available","25","0","0","0","0","2021-11-02","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("135","45","Available","25","0","0","0","0","2021-11-03","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("136","45","Available","25","0","0","0","0","2021-11-04","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("137","45","Available","25","0","0","0","0","2021-11-05","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("138","45","Available","25","0","0","0","0","2021-11-06","","normal","2021-08-23 12:59:14","2021-08-23 12:59:14");
INSERT INTO property_dates VALUES("139","46","Available","24","0","0","0","0","2021-11-01","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("140","46","Available","24","0","0","0","0","2021-11-02","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("141","46","Available","24","0","0","0","0","2021-11-03","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("142","46","Available","24","0","0","0","0","2021-11-04","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("143","46","Available","24","0","0","0","0","2021-11-05","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("144","46","Available","24","0","0","0","0","2021-11-06","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("145","46","Available","24","0","0","0","0","2021-11-07","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("146","46","Available","24","0","0","0","0","2021-11-08","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("147","46","Available","24","0","0","0","0","2021-11-09","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("148","46","Available","24","0","0","0","0","2021-11-10","","normal","2021-08-23 13:13:30","2021-08-23 13:13:30");
INSERT INTO property_dates VALUES("149","47","Available","50","0","0","0","0","2021-09-07","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("150","47","Available","50","0","0","0","0","2021-09-08","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("151","47","Available","50","0","0","0","0","2021-09-09","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("152","47","Available","50","0","0","0","0","2021-09-10","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("153","47","Available","50","0","0","0","0","2021-09-11","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("154","47","Available","50","0","0","0","0","2021-09-12","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("155","47","Available","50","0","0","0","0","2021-09-13","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("156","47","Available","50","0","0","0","0","2021-09-14","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("157","47","Available","50","0","0","0","0","2021-09-15","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("158","47","Available","50","0","0","0","0","2021-09-16","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("159","47","Available","50","0","0","0","0","2021-09-17","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("160","47","Available","50","0","0","0","0","2021-09-18","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("161","47","Available","50","0","0","0","0","2021-09-19","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("162","47","Available","50","0","0","0","0","2021-09-20","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("163","47","Available","50","0","0","0","0","2021-09-21","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("164","47","Available","50","0","0","0","0","2021-09-22","","normal","2021-08-23 13:20:51","2021-08-23 13:20:51");
INSERT INTO property_dates VALUES("165","48","Available","20","0","0","0","0","2021-09-02","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("166","48","Available","20","0","0","0","0","2021-09-03","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("167","48","Available","20","0","0","0","0","2021-09-04","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("168","48","Available","20","0","0","0","0","2021-09-05","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("169","48","Available","20","0","0","0","0","2021-09-06","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("170","48","Available","20","0","0","0","0","2021-09-07","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("171","48","Available","20","0","0","0","0","2021-09-08","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("172","48","Available","20","0","0","0","0","2021-09-09","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("173","48","Available","20","0","0","0","0","2021-09-10","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("174","48","Available","20","0","0","0","0","2021-09-11","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("175","48","Available","20","0","0","0","0","2021-09-12","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("176","48","Available","20","0","0","0","0","2021-09-13","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("177","48","Available","20","0","0","0","0","2021-09-14","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("178","48","Available","20","0","0","0","0","2021-09-15","","normal","2021-08-23 13:34:47","2021-08-23 13:34:47");
INSERT INTO property_dates VALUES("179","49","Available","70","0","0","0","0","2021-09-12","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("180","49","Available","70","0","0","0","0","2021-09-13","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("181","49","Available","70","0","0","0","0","2021-09-14","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("182","49","Available","70","0","0","0","0","2021-09-15","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("183","49","Available","70","0","0","0","0","2021-09-16","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("184","49","Available","70","0","0","0","0","2021-09-17","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("185","49","Available","70","0","0","0","0","2021-09-18","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("186","49","Available","70","0","0","0","0","2021-09-19","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("187","49","Available","70","0","0","0","0","2021-09-20","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("188","49","Available","70","0","0","0","0","2021-09-21","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("189","49","Available","70","0","0","0","0","2021-09-22","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("190","49","Available","70","0","0","0","0","2021-09-23","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("191","49","Available","70","0","0","0","0","2021-09-24","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("192","49","Available","70","0","0","0","0","2021-09-25","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("193","49","Available","70","0","0","0","0","2021-09-26","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("194","49","Available","70","0","0","0","0","2021-09-27","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("195","49","Available","70","0","0","0","0","2021-09-28","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("196","49","Available","70","0","0","0","0","2021-09-29","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("197","49","Available","70","0","0","0","0","2021-09-30","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("198","49","Available","70","0","0","0","0","2021-10-01","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("199","49","Available","70","0","0","0","0","2021-10-02","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("200","49","Available","70","0","0","0","0","2021-10-03","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("201","49","Available","70","0","0","0","0","2021-10-04","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("202","49","Available","70","0","0","0","0","2021-10-05","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("203","49","Available","70","0","0","0","0","2021-10-06","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("204","49","Available","70","0","0","0","0","2021-10-07","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("205","49","Available","70","0","0","0","0","2021-10-08","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("206","49","Available","70","0","0","0","0","2021-10-09","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("207","49","Available","70","0","0","0","0","2021-10-10","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("208","49","Available","70","0","0","0","0","2021-10-11","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("209","49","Available","70","0","0","0","0","2021-10-12","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("210","49","Available","70","0","0","0","0","2021-10-13","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("211","49","Available","70","0","0","0","0","2021-10-14","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("212","49","Available","70","0","0","0","0","2021-10-15","","normal","2021-08-23 13:41:36","2021-08-23 13:41:36");
INSERT INTO property_dates VALUES("213","48","Available","20","0","0","0","0","2021-08-25","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("214","48","Available","20","0","0","0","0","2021-08-26","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("215","48","Available","20","0","0","0","0","2021-08-27","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("216","48","Available","20","0","0","0","0","2021-08-28","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("217","48","Available","20","0","0","0","0","2021-08-29","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("218","48","Available","20","0","0","0","0","2021-08-30","","normal","2021-08-23 13:45:08","2021-08-23 13:45:08");
INSERT INTO property_dates VALUES("219","47","Available","50","0","0","0","0","2021-08-24","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("220","47","Available","50","0","0","0","0","2021-08-25","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("221","47","Available","50","0","0","0","0","2021-08-26","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("222","47","Available","50","0","0","0","0","2021-08-27","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("223","47","Available","50","0","0","0","0","2021-08-28","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("224","47","Available","50","0","0","0","0","2021-08-29","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("225","47","Available","50","0","0","0","0","2021-08-30","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("226","47","Available","50","0","0","0","0","2021-08-31","","normal","2021-08-23 13:48:27","2021-08-23 13:48:27");
INSERT INTO property_dates VALUES("227","48","Available","20","0","0","0","0","2021-09-16","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("228","48","Available","20","0","0","0","0","2021-09-17","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("229","48","Available","20","0","0","0","0","2021-09-18","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("230","48","Available","20","0","0","0","0","2021-09-19","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("231","48","Available","20","0","0","0","0","2021-09-20","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("232","48","Available","20","0","0","0","0","2021-09-21","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("233","48","Available","20","0","0","0","0","2021-09-22","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("234","48","Available","20","0","0","0","0","2021-09-23","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("235","48","Available","20","0","0","0","0","2021-09-24","","normal","2021-08-23 13:50:20","2021-08-23 13:50:20");
INSERT INTO property_dates VALUES("236","46","Available","24","0","0","0","0","2021-09-04","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("237","46","Available","24","0","0","0","0","2021-09-05","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("238","46","Available","24","0","0","0","0","2021-09-06","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("239","46","Available","24","0","0","0","0","2021-09-07","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("240","46","Available","24","0","0","0","0","2021-09-08","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("241","46","Available","24","0","0","0","0","2021-09-09","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("242","46","Available","24","0","0","0","0","2021-09-10","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("243","46","Available","24","0","0","0","0","2021-09-11","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("244","46","Available","24","0","0","0","0","2021-09-12","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("245","46","Available","24","0","0","0","0","2021-09-13","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("246","46","Available","24","0","0","0","0","2021-09-14","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("247","46","Available","24","0","0","0","0","2021-09-15","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("248","46","Available","24","0","0","0","0","2021-09-16","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("249","46","Available","24","0","0","0","0","2021-09-17","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("250","46","Available","24","0","0","0","0","2021-09-18","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("251","46","Available","24","0","0","0","0","2021-09-19","","normal","2021-08-23 13:53:25","2021-08-23 13:53:25");
INSERT INTO property_dates VALUES("252","45","Available","25","0","0","0","0","2021-09-05","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("253","45","Available","25","0","0","0","0","2021-09-06","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("254","45","Available","25","0","0","0","0","2021-09-07","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("255","45","Available","25","0","0","0","0","2021-09-08","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("256","45","Available","25","0","0","0","0","2021-09-09","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("257","45","Available","25","0","0","0","0","2021-09-10","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("258","45","Available","25","0","0","0","0","2021-09-11","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("259","45","Available","25","0","0","0","0","2021-09-12","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("260","45","Available","25","0","0","0","0","2021-09-13","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("261","45","Available","25","0","0","0","0","2021-09-14","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("262","45","Available","25","0","0","0","0","2021-09-15","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("263","45","Available","25","0","0","0","0","2021-09-16","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("264","45","Available","25","0","0","0","0","2021-09-17","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("265","45","Available","25","0","0","0","0","2021-09-18","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("266","45","Available","25","0","0","0","0","2021-09-19","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("267","45","Available","25","0","0","0","0","2021-09-20","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("268","45","Available","25","0","0","0","0","2021-09-21","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("269","45","Available","25","0","0","0","0","2021-09-22","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("270","45","Available","25","0","0","0","0","2021-09-23","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("271","45","Available","25","0","0","0","0","2021-09-24","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("272","45","Available","25","0","0","0","0","2021-09-25","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("273","45","Available","25","0","0","0","0","2021-09-26","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("274","45","Available","25","0","0","0","0","2021-09-27","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("275","45","Available","25","0","0","0","0","2021-09-28","","normal","2021-08-23 13:55:15","2021-08-23 13:55:15");
INSERT INTO property_dates VALUES("276","45","Available","25","0","0","0","0","2021-09-02","","normal","2021-08-23 13:57:08","2021-08-23 13:57:08");
INSERT INTO property_dates VALUES("277","45","Available","25","0","0","0","0","2021-09-03","","normal","2021-08-23 13:57:08","2021-08-23 13:57:08");
INSERT INTO property_dates VALUES("278","45","Available","25","0","0","0","0","2021-09-04","","normal","2021-08-23 13:57:08","2021-08-23 13:57:08");
INSERT INTO property_dates VALUES("279","45","Available","25","0","0","0","0","2021-09-29","","normal","2021-08-23 13:57:08","2021-08-23 13:57:08");
INSERT INTO property_dates VALUES("280","45","Available","25","0","0","0","0","2021-09-30","","normal","2021-08-23 13:57:08","2021-08-23 13:57:08");
INSERT INTO property_dates VALUES("281","50","Available","15","0","0","0","0","2021-09-01","","normal","2021-08-23 14:03:01","2021-08-23 14:03:01");
INSERT INTO property_dates VALUES("282","50","Available","15","0","0","0","0","2021-09-02","","normal","2021-08-23 14:03:01","2021-08-23 14:03:01");
INSERT INTO property_dates VALUES("283","50","Available","15","0","0","0","0","2021-09-03","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("284","50","Available","15","0","0","0","0","2021-09-04","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("285","50","Available","15","0","0","0","0","2021-09-05","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("286","50","Available","15","0","0","0","0","2021-09-06","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("287","50","Available","15","0","0","0","0","2021-09-07","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("288","50","Available","15","0","0","0","0","2021-09-08","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("289","50","Available","15","0","0","0","0","2021-09-09","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("290","50","Available","15","0","0","0","0","2021-09-10","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("291","50","Available","15","0","0","0","0","2021-09-11","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("292","50","Available","15","0","0","0","0","2021-09-12","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("293","50","Available","15","0","0","0","0","2021-09-13","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("294","50","Available","15","0","0","0","0","2021-09-14","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("295","50","Available","15","0","0","0","0","2021-09-15","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("296","50","Available","15","0","0","0","0","2021-09-16","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("297","50","Available","15","0","0","0","0","2021-09-17","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("298","50","Available","15","0","0","0","0","2021-09-18","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("299","50","Available","15","0","0","0","0","2021-09-19","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("300","50","Available","15","0","0","0","0","2021-09-20","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("301","50","Available","15","0","0","0","0","2021-09-21","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("302","50","Available","15","0","0","0","0","2021-09-22","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("303","50","Available","15","0","0","0","0","2021-09-23","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("304","50","Available","15","0","0","0","0","2021-09-24","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("305","50","Available","15","0","0","0","0","2021-09-25","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("306","50","Available","15","0","0","0","0","2021-09-26","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("307","50","Available","15","0","0","0","0","2021-09-27","","normal","2021-08-23 14:03:02","2021-08-23 14:03:02");
INSERT INTO property_dates VALUES("308","51","Available","40","0","0","0","0","2021-09-04","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("309","51","Available","40","0","0","0","0","2021-09-05","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("310","51","Available","40","0","0","0","0","2021-09-06","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("311","51","Available","40","0","0","0","0","2021-09-07","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("312","51","Available","40","0","0","0","0","2021-09-08","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("313","51","Available","40","0","0","0","0","2021-09-09","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("314","51","Available","40","0","0","0","0","2021-09-10","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("315","51","Available","40","0","0","0","0","2021-09-11","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("316","51","Available","40","0","0","0","0","2021-09-12","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("317","51","Available","40","0","0","0","0","2021-09-13","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("318","51","Available","40","0","0","0","0","2021-09-14","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("319","51","Available","40","0","0","0","0","2021-09-15","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("320","51","Available","40","0","0","0","0","2021-09-16","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("321","51","Available","40","0","0","0","0","2021-09-17","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("322","51","Available","40","0","0","0","0","2021-09-18","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("323","51","Available","40","0","0","0","0","2021-09-19","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("324","51","Available","40","0","0","0","0","2021-09-20","","normal","2021-08-23 14:10:10","2021-08-23 14:10:10");
INSERT INTO property_dates VALUES("325","51","Available","40","0","0","0","0","2021-09-22","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("326","51","Available","40","0","0","0","0","2021-09-23","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("327","51","Available","40","0","0","0","0","2021-09-24","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("328","51","Available","40","0","0","0","0","2021-09-25","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("329","51","Available","40","0","0","0","0","2021-09-26","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("330","51","Available","40","0","0","0","0","2021-09-27","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("331","51","Available","40","0","0","0","0","2021-09-28","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("332","51","Available","40","0","0","0","0","2021-09-29","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("333","51","Available","40","0","0","0","0","2021-09-30","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("334","51","Available","40","0","0","0","0","2021-10-01","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("335","51","Available","40","0","0","0","0","2021-10-02","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("336","51","Available","40","0","0","0","0","2021-10-03","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("337","51","Available","40","0","0","0","0","2021-10-04","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("338","51","Available","40","0","0","0","0","2021-10-05","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("339","51","Available","40","0","0","0","0","2021-10-06","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("340","51","Available","40","0","0","0","0","2021-10-07","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("341","51","Available","40","0","0","0","0","2021-10-08","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("342","51","Available","40","0","0","0","0","2021-10-09","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("343","51","Available","40","0","0","0","0","2021-10-10","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("344","51","Available","40","0","0","0","0","2021-10-11","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("345","51","Available","40","0","0","0","0","2021-10-12","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("346","51","Available","40","0","0","0","0","2021-10-13","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("347","51","Available","40","0","0","0","0","2021-10-14","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("348","51","Available","40","0","0","0","0","2021-10-15","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("349","51","Available","40","0","0","0","0","2021-10-16","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("350","51","Available","40","0","0","0","0","2021-10-17","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("351","51","Available","40","0","0","0","0","2021-10-18","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("352","51","Available","40","0","0","0","0","2021-10-19","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("353","51","Available","40","0","0","0","0","2021-10-20","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("354","51","Available","40","0","0","0","0","2021-10-21","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("355","51","Available","40","0","0","0","0","2021-10-22","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("356","51","Available","40","0","0","0","0","2021-10-23","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("357","51","Available","40","0","0","0","0","2021-10-24","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("358","51","Available","40","0","0","0","0","2021-10-25","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("359","51","Available","40","0","0","0","0","2021-10-26","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("360","51","Available","40","0","0","0","0","2021-10-27","","normal","2021-08-23 14:13:28","2021-08-23 14:13:28");
INSERT INTO property_dates VALUES("361","52","Available","35","0","0","0","0","2021-11-01","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("362","52","Available","35","0","0","0","0","2021-11-02","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("363","52","Available","35","0","0","0","0","2021-11-03","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("364","52","Available","35","0","0","0","0","2021-11-04","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("365","52","Available","35","0","0","0","0","2021-11-05","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("366","52","Available","35","0","0","0","0","2021-11-06","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("367","52","Available","35","0","0","0","0","2021-11-07","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("368","52","Available","35","0","0","0","0","2021-11-08","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("369","52","Available","35","0","0","0","0","2021-11-09","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("370","52","Available","35","0","0","0","0","2021-11-10","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("371","52","Available","35","0","0","0","0","2021-11-11","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("372","52","Available","35","0","0","0","0","2021-11-12","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("373","52","Available","35","0","0","0","0","2021-11-13","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("374","52","Available","35","0","0","0","0","2021-11-14","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("375","52","Available","35","0","0","0","0","2021-11-15","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("376","52","Available","35","0","0","0","0","2021-11-16","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("377","52","Available","35","0","0","0","0","2021-11-17","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("378","52","Available","35","0","0","0","0","2021-11-18","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("379","52","Available","35","0","0","0","0","2021-11-19","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("380","52","Available","35","0","0","0","0","2021-11-20","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("381","52","Available","35","0","0","0","0","2021-11-21","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("382","52","Available","35","0","0","0","0","2021-11-22","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("383","52","Available","35","0","0","0","0","2021-11-23","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("384","52","Available","35","0","0","0","0","2021-11-24","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("385","52","Available","35","0","0","0","0","2021-11-25","","normal","2021-08-23 14:20:10","2021-08-23 14:20:10");
INSERT INTO property_dates VALUES("386","53","Available","47","0","0","0","0","2021-08-25","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("387","53","Available","47","0","0","0","0","2021-08-26","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("388","53","Available","47","0","0","0","0","2021-08-27","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("389","53","Available","47","0","0","0","0","2021-08-28","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("390","53","Available","47","0","0","0","0","2021-08-29","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("391","53","Available","47","0","0","0","0","2021-08-30","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("392","53","Available","47","0","0","0","0","2021-08-31","","normal","2021-08-23 14:51:44","2021-08-23 14:51:44");
INSERT INTO property_dates VALUES("393","54","Available","85","0","0","0","0","2021-08-25","","normal","2021-08-23 14:57:06","2021-08-23 14:57:06");
INSERT INTO property_dates VALUES("394","54","Available","85","0","0","0","0","2021-08-26","","normal","2021-08-23 14:57:06","2021-08-23 14:57:06");
INSERT INTO property_dates VALUES("395","54","Available","85","0","0","0","0","2021-08-27","","normal","2021-08-23 14:57:06","2021-08-23 14:57:06");
INSERT INTO property_dates VALUES("396","54","Available","85","0","0","0","0","2021-08-28","","normal","2021-08-23 14:57:06","2021-08-23 14:57:06");
INSERT INTO property_dates VALUES("397","55","Available","55","0","0","0","0","2021-10-02","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("398","55","Available","55","0","0","0","0","2021-10-03","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("399","55","Available","55","0","0","0","0","2021-10-04","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("400","55","Available","55","0","0","0","0","2021-10-05","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("401","55","Available","55","0","0","0","0","2021-10-06","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("402","55","Available","55","0","0","0","0","2021-10-07","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("403","55","Available","55","0","0","0","0","2021-10-08","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("404","55","Available","55","0","0","0","0","2021-10-09","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("405","55","Available","55","0","0","0","0","2021-10-10","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("406","55","Available","55","0","0","0","0","2021-10-11","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("407","55","Available","55","0","0","0","0","2021-10-12","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("408","55","Available","55","0","0","0","0","2021-10-13","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("409","55","Available","55","0","0","0","0","2021-10-14","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("410","55","Available","55","0","0","0","0","2021-10-15","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("411","55","Available","55","0","0","0","0","2021-10-16","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("412","55","Available","55","0","0","0","0","2021-10-17","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("413","55","Available","55","0","0","0","0","2021-10-18","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("414","55","Available","55","0","0","0","0","2021-10-19","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("415","55","Available","55","0","0","0","0","2021-10-20","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("416","55","Available","55","0","0","0","0","2021-10-21","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("417","55","Available","55","0","0","0","0","2021-10-22","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("418","55","Available","55","0","0","0","0","2021-10-23","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("419","55","Available","55","0","0","0","0","2021-10-24","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("420","55","Available","55","0","0","0","0","2021-10-25","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("421","55","Available","55","0","0","0","0","2021-10-26","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("422","55","Available","55","0","0","0","0","2021-10-27","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("423","55","Available","55","0","0","0","0","2021-10-28","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("424","55","Available","55","0","0","0","0","2021-10-29","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("425","55","Available","55","0","0","0","0","2021-10-30","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("426","55","Available","55","0","0","0","0","2021-10-31","","normal","2021-08-23 15:03:12","2021-08-23 15:03:12");
INSERT INTO property_dates VALUES("427","56","Available","70","0","0","0","0","2021-09-22","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("428","56","Available","70","0","0","0","0","2021-09-23","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("429","56","Available","70","0","0","0","0","2021-09-24","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("430","56","Available","70","0","0","0","0","2021-09-25","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("431","56","Available","70","0","0","0","0","2021-09-26","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("432","56","Available","70","0","0","0","0","2021-09-27","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("433","56","Available","70","0","0","0","0","2021-09-28","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("434","56","Available","70","0","0","0","0","2021-09-29","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("435","56","Available","70","0","0","0","0","2021-09-30","","normal","2021-08-23 15:10:39","2021-08-23 15:10:39");
INSERT INTO property_dates VALUES("436","57","Available","45","0","0","0","0","2021-10-07","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("437","57","Available","45","0","0","0","0","2021-10-08","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("438","57","Available","45","0","0","0","0","2021-10-09","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("439","57","Available","45","0","0","0","0","2021-10-10","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("440","57","Available","45","0","0","0","0","2021-10-11","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("441","57","Available","45","0","0","0","0","2021-10-12","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("442","57","Available","45","0","0","0","0","2021-10-13","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("443","57","Available","45","0","0","0","0","2021-10-14","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("444","57","Available","45","0","0","0","0","2021-10-15","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("445","57","Available","45","0","0","0","0","2021-10-16","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("446","57","Available","45","0","0","0","0","2021-10-17","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("447","57","Available","45","0","0","0","0","2021-10-18","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("448","57","Available","45","0","0","0","0","2021-10-19","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("449","57","Available","45","0","0","0","0","2021-10-20","","normal","2021-08-23 15:15:17","2021-08-23 15:15:17");
INSERT INTO property_dates VALUES("450","58","Available","25","0","0","0","0","2021-08-23","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("451","58","Available","25","0","0","0","0","2021-08-24","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("452","58","Available","25","0","0","0","0","2021-08-25","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("453","58","Available","25","0","0","0","0","2021-08-26","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("454","58","Available","25","0","0","0","0","2021-08-27","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("455","58","Available","25","0","0","0","0","2021-08-28","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("456","58","Available","25","0","0","0","0","2021-08-29","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("457","58","Available","25","0","0","0","0","2021-08-30","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("458","58","Available","25","0","0","0","0","2021-08-31","","normal","2021-08-23 15:20:43","2021-08-23 15:20:43");
INSERT INTO property_dates VALUES("459","59","Available","85","0","0","0","0","2021-09-17","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("460","59","Available","85","0","0","0","0","2021-09-18","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("461","59","Available","85","0","0","0","0","2021-09-19","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("462","59","Available","85","0","0","0","0","2021-09-20","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("463","59","Available","85","0","0","0","0","2021-09-21","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("464","59","Available","85","0","0","0","0","2021-09-22","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("465","59","Available","85","0","0","0","0","2021-09-23","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("466","59","Available","85","0","0","0","0","2021-09-24","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("467","59","Available","85","0","0","0","0","2021-09-25","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("468","59","Available","85","0","0","0","0","2021-09-26","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("469","59","Available","85","0","0","0","0","2021-09-27","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("470","59","Available","85","0","0","0","0","2021-09-28","","normal","2021-08-23 15:28:11","2021-08-23 15:28:11");
INSERT INTO property_dates VALUES("471","60","Available","35","0","0","0","0","2021-08-15","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("472","60","Available","35","0","0","0","0","2021-08-16","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("473","60","Available","35","0","0","0","0","2021-08-17","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("474","60","Available","35","0","0","0","0","2021-08-18","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("475","60","Available","35","0","0","0","0","2021-08-19","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("476","60","Available","35","0","0","0","0","2021-08-20","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("477","60","Available","35","0","0","0","0","2021-08-21","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("478","60","Available","35","0","0","0","0","2021-08-22","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("479","60","Available","35","0","0","0","0","2021-08-23","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("480","60","Available","35","0","0","0","0","2021-08-24","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("481","60","Available","35","0","0","0","0","2021-08-25","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("482","60","Available","35","0","0","0","0","2021-08-26","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("483","60","Available","35","0","0","0","0","2021-08-27","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("484","60","Available","35","0","0","0","0","2021-08-28","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("485","60","Available","35","0","0","0","0","2021-08-29","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("486","60","Available","35","0","0","0","0","2021-08-30","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("487","60","Available","35","0","0","0","0","2021-08-31","","normal","2021-08-24 05:25:26","2021-08-24 05:25:26");
INSERT INTO property_dates VALUES("488","59","Available","85","0","0","0","0","2021-08-25","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("489","59","Available","85","0","0","0","0","2021-08-26","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("490","59","Available","85","0","0","0","0","2021-08-27","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("491","59","Available","85","0","0","0","0","2021-08-28","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("492","59","Available","85","0","0","0","0","2021-08-29","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("493","59","Available","85","0","0","0","0","2021-08-30","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("494","59","Available","85","0","0","0","0","2021-08-31","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("495","59","Available","85","0","0","0","0","2021-09-01","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("496","59","Available","85","0","0","0","0","2021-09-02","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("497","59","Available","85","0","0","0","0","2021-09-03","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("498","59","Available","85","0","0","0","0","2021-09-04","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("499","59","Available","85","0","0","0","0","2021-09-05","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("500","59","Available","85","0","0","0","0","2021-09-06","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("501","59","Available","85","0","0","0","0","2021-09-07","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("502","59","Available","85","0","0","0","0","2021-09-08","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("503","59","Available","85","0","0","0","0","2021-09-09","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("504","59","Available","85","0","0","0","0","2021-09-10","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("505","59","Available","85","0","0","0","0","2021-09-11","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("506","59","Available","85","0","0","0","0","2021-09-12","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("507","59","Available","85","0","0","0","0","2021-09-13","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("508","59","Available","85","0","0","0","0","2021-09-14","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("509","59","Available","85","0","0","0","0","2021-09-15","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("510","59","Available","85","0","0","0","0","2021-09-16","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("511","59","Available","85","0","0","0","0","2021-09-29","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("512","59","Available","85","0","0","0","0","2021-09-30","","normal","2021-08-24 06:06:09","2021-08-24 06:06:09");
INSERT INTO property_dates VALUES("513","57","Available","45","0","0","0","0","2021-08-24","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("514","57","Available","45","0","0","0","0","2021-08-25","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("515","57","Available","45","0","0","0","0","2021-08-26","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("516","57","Available","45","0","0","0","0","2021-08-27","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("517","57","Available","45","0","0","0","0","2021-08-28","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("518","57","Available","45","0","0","0","0","2021-08-29","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("519","57","Available","45","0","0","0","0","2021-08-30","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("520","57","Available","45","0","0","0","0","2021-08-31","","normal","2021-08-24 06:11:54","2021-08-24 06:11:54");
INSERT INTO property_dates VALUES("521","57","Available","45","0","0","0","0","2021-08-01","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("522","57","Available","45","0","0","0","0","2021-08-02","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("523","57","Available","45","0","0","0","0","2021-08-03","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("524","57","Available","45","0","0","0","0","2021-08-04","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("525","57","Available","45","0","0","0","0","2021-08-05","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("526","57","Available","45","0","0","0","0","2021-08-06","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("527","57","Available","45","0","0","0","0","2021-08-07","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("528","57","Available","45","0","0","0","0","2021-08-08","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("529","57","Available","45","0","0","0","0","2021-08-09","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("530","57","Available","45","0","0","0","0","2021-08-10","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("531","57","Available","45","0","0","0","0","2021-08-11","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("532","57","Available","45","0","0","0","0","2021-08-12","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("533","57","Available","45","0","0","0","0","2021-08-13","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("534","57","Available","45","0","0","0","0","2021-08-14","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("535","57","Available","45","0","0","0","0","2021-08-15","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("536","57","Available","45","0","0","0","0","2021-08-16","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("537","57","Available","45","0","0","0","0","2021-08-17","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("538","57","Available","45","0","0","0","0","2021-08-18","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("539","57","Available","45","0","0","0","0","2021-08-19","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("540","57","Available","45","0","0","0","0","2021-08-20","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("541","57","Available","45","0","0","0","0","2021-08-21","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("542","57","Available","45","0","0","0","0","2021-08-22","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("543","57","Available","45","0","0","0","0","2021-08-23","","normal","2021-08-24 07:29:48","2021-08-24 07:29:48");
INSERT INTO property_dates VALUES("544","62","Available","100","1","2","0","0","2021-08-26","","normal","2021-08-24 12:54:21","2021-08-24 12:54:21");
INSERT INTO property_dates VALUES("545","58","Available","25","0","0","0","0","2021-09-01","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("546","58","Available","25","0","0","0","0","2021-09-02","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("547","58","Available","25","0","0","0","0","2021-09-03","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("548","58","Available","25","0","0","0","0","2021-09-04","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("549","58","Available","25","0","0","0","0","2021-09-05","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("550","58","Available","25","0","0","0","0","2021-09-06","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("551","58","Available","25","0","0","0","0","2021-09-07","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("552","58","Available","25","0","0","0","0","2021-09-08","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("553","58","Available","25","0","0","0","0","2021-09-09","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("554","58","Available","25","0","0","0","0","2021-09-10","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("555","58","Available","25","0","0","0","0","2021-09-11","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("556","58","Available","25","0","0","0","0","2021-09-12","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("557","58","Available","25","0","0","0","0","2021-09-13","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("558","58","Available","25","0","0","0","0","2021-09-14","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("559","58","Available","25","0","0","0","0","2021-09-15","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("560","58","Available","25","0","0","0","0","2021-09-16","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("561","58","Available","25","0","0","0","0","2021-09-17","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("562","58","Available","25","0","0","0","0","2021-09-18","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("563","58","Available","25","0","0","0","0","2021-09-19","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("564","58","Available","25","0","0","0","0","2021-09-20","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("565","58","Available","25","0","0","0","0","2021-09-21","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("566","58","Available","25","0","0","0","0","2021-09-22","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("567","58","Available","25","0","0","0","0","2021-09-23","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("568","58","Available","25","0","0","0","0","2021-09-24","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("569","58","Available","25","0","0","0","0","2021-09-25","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("570","58","Available","25","0","0","0","0","2021-09-26","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("571","58","Available","25","0","0","0","0","2021-09-27","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("572","58","Available","25","0","0","0","0","2021-09-28","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("573","58","Available","25","0","0","0","0","2021-09-29","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("574","58","Available","25","0","0","0","0","2021-09-30","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("575","58","Available","25","0","0","0","0","2021-10-01","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("576","58","Available","25","0","0","0","0","2021-10-02","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("577","58","Available","25","0","0","0","0","2021-10-03","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("578","58","Available","25","0","0","0","0","2021-10-04","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("579","58","Available","25","0","0","0","0","2021-10-05","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("580","58","Available","25","0","0","0","0","2021-10-06","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("581","58","Available","25","0","0","0","0","2021-10-07","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("582","58","Available","25","0","0","0","0","2021-10-08","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("583","58","Available","25","0","0","0","0","2021-10-09","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("584","58","Available","25","0","0","0","0","2021-10-10","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("585","58","Available","25","0","0","0","0","2021-10-11","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("586","58","Available","25","0","0","0","0","2021-10-12","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("587","58","Available","25","0","0","0","0","2021-10-13","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("588","58","Available","25","0","0","0","0","2021-10-14","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("589","58","Available","25","0","0","0","0","2021-10-15","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("590","58","Available","25","0","0","0","0","2021-10-16","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("591","58","Available","25","0","0","0","0","2021-10-17","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("592","58","Available","25","0","0","0","0","2021-10-18","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("593","58","Available","25","0","0","0","0","2021-10-19","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("594","58","Available","25","0","0","0","0","2021-10-20","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("595","58","Available","25","0","0","0","0","2021-10-21","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("596","58","Available","25","0","0","0","0","2021-10-22","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("597","58","Available","25","0","0","0","0","2021-10-23","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("598","58","Available","25","0","0","0","0","2021-10-24","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("599","58","Available","25","0","0","0","0","2021-10-25","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("600","58","Available","25","0","0","0","0","2021-10-26","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("601","58","Available","25","0","0","0","0","2021-10-27","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("602","58","Available","25","0","0","0","0","2021-10-28","","normal","2021-08-25 14:12:20","2021-08-25 14:12:20");
INSERT INTO property_dates VALUES("603","56","Available","70","0","0","0","0","2021-08-27","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("604","56","Available","70","0","0","0","0","2021-08-28","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("605","56","Available","70","0","0","0","0","2021-08-29","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("606","56","Available","70","0","0","0","0","2021-08-30","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("607","56","Available","70","0","0","0","0","2021-08-31","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("608","56","Available","70","0","0","0","0","2021-09-01","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("609","56","Available","70","0","0","0","0","2021-09-02","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("610","56","Available","70","0","0","0","0","2021-09-03","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("611","56","Available","70","0","0","0","0","2021-09-04","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("612","56","Available","70","0","0","0","0","2021-09-05","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("613","56","Available","70","0","0","0","0","2021-09-06","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("614","56","Available","70","0","0","0","0","2021-09-07","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("615","56","Available","70","0","0","0","0","2021-09-08","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("616","56","Available","70","0","0","0","0","2021-09-09","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("617","56","Available","70","0","0","0","0","2021-09-10","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("618","56","Available","70","0","0","0","0","2021-09-11","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("619","56","Available","70","0","0","0","0","2021-09-12","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("620","56","Available","70","0","0","0","0","2021-09-13","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("621","56","Available","70","0","0","0","0","2021-09-14","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("622","56","Available","70","0","0","0","0","2021-09-15","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("623","56","Available","70","0","0","0","0","2021-09-16","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("624","56","Available","70","0","0","0","0","2021-09-17","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("625","56","Available","70","0","0","0","0","2021-09-18","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("626","56","Available","70","0","0","0","0","2021-09-19","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("627","56","Available","70","0","0","0","0","2021-09-20","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("628","56","Available","70","0","0","0","0","2021-09-21","","normal","2021-08-25 14:22:45","2021-08-25 14:22:45");
INSERT INTO property_dates VALUES("629","55","Available","55","0","0","0","0","2021-09-04","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("630","55","Available","55","0","0","0","0","2021-09-05","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("631","55","Available","55","0","0","0","0","2021-09-06","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("632","55","Available","55","0","0","0","0","2021-09-07","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("633","55","Available","55","0","0","0","0","2021-09-08","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("634","55","Available","55","0","0","0","0","2021-09-09","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("635","55","Available","55","0","0","0","0","2021-09-10","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("636","55","Available","55","0","0","0","0","2021-09-11","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("637","55","Available","55","0","0","0","0","2021-09-12","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("638","55","Available","55","0","0","0","0","2021-09-13","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("639","55","Available","55","0","0","0","0","2021-09-14","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("640","55","Available","55","0","0","0","0","2021-09-15","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("641","55","Available","55","0","0","0","0","2021-09-16","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("642","55","Available","55","0","0","0","0","2021-09-17","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("643","55","Available","55","0","0","0","0","2021-09-18","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("644","55","Available","55","0","0","0","0","2021-09-19","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("645","55","Available","55","0","0","0","0","2021-09-20","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("646","55","Available","55","0","0","0","0","2021-09-21","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("647","55","Available","55","0","0","0","0","2021-09-22","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("648","55","Available","55","0","0","0","0","2021-09-23","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("649","55","Available","55","0","0","0","0","2021-09-24","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("650","55","Available","55","0","0","0","0","2021-09-25","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("651","55","Available","55","0","0","0","0","2021-09-26","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("652","55","Available","55","0","0","0","0","2021-09-27","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("653","55","Available","55","0","0","0","0","2021-09-28","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("654","55","Available","55","0","0","0","0","2021-09-29","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("655","55","Available","55","0","0","0","0","2021-09-30","","normal","2021-08-25 14:30:50","2021-08-25 14:30:50");
INSERT INTO property_dates VALUES("656","54","Available","85","0","0","0","0","2021-08-31","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("657","54","Available","85","0","0","0","0","2021-09-01","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("658","54","Available","85","0","0","0","0","2021-09-02","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("659","54","Available","85","0","0","0","0","2021-09-03","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("660","54","Available","85","0","0","0","0","2021-09-04","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("661","54","Available","85","0","0","0","0","2021-09-05","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("662","54","Available","85","0","0","0","0","2021-09-06","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("663","54","Available","85","0","0","0","0","2021-09-07","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("664","54","Available","85","0","0","0","0","2021-09-08","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("665","54","Available","85","0","0","0","0","2021-09-09","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("666","54","Available","85","0","0","0","0","2021-09-10","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("667","54","Available","85","0","0","0","0","2021-09-11","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("668","54","Available","85","0","0","0","0","2021-09-12","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("669","54","Available","85","0","0","0","0","2021-09-13","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("670","54","Available","85","0","0","0","0","2021-09-14","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("671","54","Available","85","0","0","0","0","2021-09-15","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("672","54","Available","85","0","0","0","0","2021-09-16","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("673","54","Available","85","0","0","0","0","2021-09-17","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("674","54","Available","85","0","0","0","0","2021-09-18","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("675","54","Available","85","0","0","0","0","2021-09-19","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("676","54","Available","85","0","0","0","0","2021-09-20","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("677","54","Available","85","0","0","0","0","2021-09-21","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("678","54","Available","85","0","0","0","0","2021-09-22","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("679","54","Available","85","0","0","0","0","2021-09-23","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("680","54","Available","85","0","0","0","0","2021-09-24","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("681","54","Available","85","0","0","0","0","2021-09-25","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("682","54","Available","85","0","0","0","0","2021-09-26","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("683","54","Available","85","0","0","0","0","2021-09-27","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("684","54","Available","85","0","0","0","0","2021-09-28","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("685","54","Available","85","0","0","0","0","2021-09-29","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("686","54","Available","85","0","0","0","0","2021-09-30","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("687","54","Available","85","0","0","0","0","2021-10-01","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("688","54","Available","85","0","0","0","0","2021-10-02","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("689","54","Available","85","0","0","0","0","2021-10-03","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("690","54","Available","85","0","0","0","0","2021-10-04","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("691","54","Available","85","0","0","0","0","2021-10-05","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("692","54","Available","85","0","0","0","0","2021-10-06","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("693","54","Available","85","0","0","0","0","2021-10-07","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("694","54","Available","85","0","0","0","0","2021-10-08","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("695","54","Available","85","0","0","0","0","2021-10-09","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("696","54","Available","85","0","0","0","0","2021-10-10","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("697","54","Available","85","0","0","0","0","2021-10-11","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("698","54","Available","85","0","0","0","0","2021-10-12","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("699","54","Available","85","0","0","0","0","2021-10-13","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("700","54","Available","85","0","0","0","0","2021-10-14","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("701","54","Available","85","0","0","0","0","2021-10-15","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("702","54","Available","85","0","0","0","0","2021-10-16","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("703","54","Available","85","0","0","0","0","2021-10-17","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("704","54","Available","85","0","0","0","0","2021-10-18","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("705","54","Available","85","0","0","0","0","2021-10-19","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("706","54","Available","85","0","0","0","0","2021-10-20","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("707","54","Available","85","0","0","0","0","2021-10-21","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("708","54","Available","85","0","0","0","0","2021-10-22","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("709","54","Available","85","0","0","0","0","2021-10-23","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("710","54","Available","85","0","0","0","0","2021-10-24","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("711","54","Available","85","0","0","0","0","2021-10-25","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("712","54","Available","85","0","0","0","0","2021-10-26","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("713","54","Available","85","0","0","0","0","2021-10-27","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("714","54","Available","85","0","0","0","0","2021-10-28","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("715","54","Available","85","0","0","0","0","2021-10-29","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("716","54","Available","85","0","0","0","0","2021-10-30","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("717","54","Available","85","0","0","0","0","2021-10-31","","normal","2021-08-25 14:36:27","2021-08-25 14:36:27");
INSERT INTO property_dates VALUES("718","53","Available","47","0","0","0","0","2021-09-01","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("719","53","Available","47","0","0","0","0","2021-09-02","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("720","53","Available","47","0","0","0","0","2021-09-03","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("721","53","Available","47","0","0","0","0","2021-09-04","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("722","53","Available","47","0","0","0","0","2021-09-05","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("723","53","Available","47","0","0","0","0","2021-09-06","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("724","53","Available","47","0","0","0","0","2021-09-07","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("725","53","Available","47","0","0","0","0","2021-09-08","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("726","53","Available","47","0","0","0","0","2021-09-09","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("727","53","Available","47","0","0","0","0","2021-09-10","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("728","53","Available","47","0","0","0","0","2021-09-11","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("729","53","Available","47","0","0","0","0","2021-09-12","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("730","53","Available","47","0","0","0","0","2021-09-13","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("731","53","Available","47","0","0","0","0","2021-09-14","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("732","53","Available","47","0","0","0","0","2021-09-15","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("733","53","Available","47","0","0","0","0","2021-09-16","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("734","53","Available","47","0","0","0","0","2021-09-17","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("735","53","Available","47","0","0","0","0","2021-09-18","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("736","53","Available","47","0","0","0","0","2021-09-19","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("737","53","Available","47","0","0","0","0","2021-09-20","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("738","53","Available","47","0","0","0","0","2021-09-21","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("739","53","Available","47","0","0","0","0","2021-09-22","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("740","53","Available","47","0","0","0","0","2021-09-23","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("741","53","Available","47","0","0","0","0","2021-09-24","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("742","53","Available","47","0","0","0","0","2021-09-25","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("743","53","Available","47","0","0","0","0","2021-09-26","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("744","53","Available","47","0","0","0","0","2021-09-27","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("745","53","Available","47","0","0","0","0","2021-09-28","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("746","53","Available","47","0","0","0","0","2021-09-29","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("747","53","Available","47","0","0","0","0","2021-09-30","","normal","2021-08-25 14:45:23","2021-08-25 14:45:23");
INSERT INTO property_dates VALUES("748","52","Available","35","0","0","0","0","2021-08-27","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("749","52","Available","35","0","0","0","0","2021-08-28","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("750","52","Available","35","0","0","0","0","2021-08-29","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("751","52","Available","35","0","0","0","0","2021-08-30","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("752","52","Not available","35","0","0","0","0","2021-08-31","","normal","2021-08-25 14:52:53","2021-08-31 09:00:44");
INSERT INTO property_dates VALUES("753","52","Available","35","0","0","0","0","2021-09-01","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("754","52","Available","35","0","0","0","0","2021-09-02","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("755","52","Available","35","0","0","0","0","2021-09-03","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("756","52","Available","35","0","0","0","0","2021-09-04","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("757","52","Available","35","0","0","0","0","2021-09-05","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("758","52","Available","35","0","0","0","0","2021-09-06","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("759","52","Available","35","0","0","0","0","2021-09-07","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("760","52","Available","35","0","0","0","0","2021-09-08","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("761","52","Available","35","0","0","0","0","2021-09-09","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("762","52","Available","35","0","0","0","0","2021-09-10","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("763","52","Available","35","0","0","0","0","2021-09-11","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("764","52","Available","35","0","0","0","0","2021-09-12","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("765","52","Available","35","0","0","0","0","2021-09-13","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("766","52","Available","35","0","0","0","0","2021-09-14","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("767","52","Available","35","0","0","0","0","2021-09-15","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("768","52","Available","35","0","0","0","0","2021-09-16","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("769","52","Available","35","0","0","0","0","2021-09-17","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("770","52","Available","35","0","0","0","0","2021-09-18","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("771","52","Available","35","0","0","0","0","2021-09-19","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("772","52","Available","35","0","0","0","0","2021-09-20","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("773","52","Available","35","0","0","0","0","2021-09-21","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("774","52","Available","35","0","0","0","0","2021-09-22","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("775","52","Available","35","0","0","0","0","2021-09-23","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("776","52","Available","35","0","0","0","0","2021-09-24","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("777","52","Available","35","0","0","0","0","2021-09-25","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("778","52","Available","35","0","0","0","0","2021-09-26","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("779","52","Available","35","0","0","0","0","2021-09-27","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("780","52","Available","35","0","0","0","0","2021-09-28","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("781","52","Available","35","0","0","0","0","2021-09-29","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("782","52","Available","35","0","0","0","0","2021-09-30","","normal","2021-08-25 14:52:53","2021-08-25 14:52:53");
INSERT INTO property_dates VALUES("783","51","Available","40","0","0","0","0","2021-08-31","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("784","51","Available","40","0","0","0","0","2021-09-01","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("785","51","Available","40","0","0","0","0","2021-09-02","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("786","51","Available","40","0","0","0","0","2021-09-03","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("787","51","Available","40","0","0","0","0","2021-09-21","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("788","51","Available","40","0","0","0","0","2021-10-28","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("789","51","Available","40","0","0","0","0","2021-10-29","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("790","51","Available","40","0","0","0","0","2021-10-30","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("791","51","Available","40","0","0","0","0","2021-10-31","","normal","2021-08-25 15:00:56","2021-08-25 15:00:56");
INSERT INTO property_dates VALUES("792","50","Available","15","0","0","0","0","2021-08-25","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("793","50","Available","15","0","0","0","0","2021-08-26","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("794","50","Available","15","0","0","0","0","2021-08-27","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("795","50","Available","15","0","0","0","0","2021-08-28","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("796","50","Available","15","0","0","0","0","2021-08-29","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("797","50","Available","15","0","0","0","0","2021-08-30","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("798","50","Available","15","0","0","0","0","2021-08-31","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("799","50","Available","15","0","0","0","0","2021-09-28","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("800","50","Available","15","0","0","0","0","2021-09-29","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("801","50","Available","15","0","0","0","0","2021-09-30","","normal","2021-08-25 15:05:30","2021-08-25 15:05:30");
INSERT INTO property_dates VALUES("802","49","Available","70","0","0","0","0","2021-09-01","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("803","49","Available","70","0","0","0","0","2021-09-02","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("804","49","Available","70","0","0","0","0","2021-09-03","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("805","49","Available","70","0","0","0","0","2021-09-04","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("806","49","Available","70","0","0","0","0","2021-09-05","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("807","49","Available","70","0","0","0","0","2021-09-06","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("808","49","Available","70","0","0","0","0","2021-09-07","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("809","49","Available","70","0","0","0","0","2021-09-08","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("810","49","Available","70","0","0","0","0","2021-09-09","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("811","49","Available","70","0","0","0","0","2021-09-10","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("812","49","Available","70","0","0","0","0","2021-09-11","","normal","2021-08-25 15:08:56","2021-08-25 15:08:56");
INSERT INTO property_dates VALUES("813","48","Available","20","0","0","0","0","2021-08-31","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("814","48","Available","20","0","0","0","0","2021-09-01","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("815","48","Available","20","0","0","0","0","2021-09-25","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("816","48","Available","20","0","0","0","0","2021-09-26","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("817","48","Available","20","0","0","0","0","2021-09-27","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("818","48","Available","20","0","0","0","0","2021-09-28","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("819","48","Available","20","0","0","0","0","2021-09-29","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("820","48","Available","20","0","0","0","0","2021-09-30","","normal","2021-08-25 15:12:17","2021-08-25 15:12:17");
INSERT INTO property_dates VALUES("821","47","Available","50","0","0","0","0","2021-09-01","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("822","47","Available","50","0","0","0","0","2021-09-02","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("823","47","Available","50","0","0","0","0","2021-09-03","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("824","47","Available","50","0","0","0","0","2021-09-04","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("825","47","Available","50","0","0","0","0","2021-09-05","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("826","47","Available","50","0","0","0","0","2021-09-06","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("827","47","Available","50","0","0","0","0","2021-09-23","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("828","47","Available","50","0","0","0","0","2021-09-24","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("829","47","Available","50","0","0","0","0","2021-09-25","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("830","47","Available","50","0","0","0","0","2021-09-26","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("831","47","Available","50","0","0","0","0","2021-09-27","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("832","47","Available","50","0","0","0","0","2021-09-28","","normal","2021-08-25 15:19:58","2021-08-25 15:19:58");
INSERT INTO property_dates VALUES("833","46","Available","24","0","0","0","0","2021-08-26","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("834","46","Available","24","0","0","0","0","2021-08-27","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("835","46","Available","24","0","0","0","0","2021-08-28","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("836","46","Available","24","0","0","0","0","2021-08-29","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("837","46","Available","24","0","0","0","0","2021-08-30","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("838","46","Available","24","0","0","0","0","2021-08-31","","normal","2021-08-25 15:27:08","2021-08-25 15:27:08");
INSERT INTO property_dates VALUES("839","45","Available","25","0","0","0","0","2021-08-25","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("840","45","Available","25","0","0","0","0","2021-08-26","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("841","45","Available","25","0","0","0","0","2021-08-27","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("842","45","Available","25","0","0","0","0","2021-08-28","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("843","45","Available","25","0","0","0","0","2021-08-29","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("844","45","Available","25","0","0","0","0","2021-08-30","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("845","45","Available","25","0","0","0","0","2021-08-31","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("846","45","Available","25","0","0","0","0","2021-09-01","","normal","2021-08-25 15:31:43","2021-08-25 15:31:43");
INSERT INTO property_dates VALUES("847","44","Available","25","0","0","0","0","2021-10-04","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("848","44","Available","25","0","0","0","0","2021-10-05","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("849","44","Available","25","0","0","0","0","2021-10-06","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("850","44","Available","25","0","0","0","0","2021-10-07","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("851","44","Available","25","0","0","0","0","2021-10-08","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("852","44","Available","25","0","0","0","0","2021-10-09","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("853","44","Available","25","0","0","0","0","2021-10-10","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("854","44","Available","25","0","0","0","0","2021-10-11","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("855","44","Available","25","0","0","0","0","2021-10-12","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("856","44","Available","25","0","0","0","0","2021-10-13","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("857","44","Available","25","0","0","0","0","2021-10-14","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("858","44","Available","25","0","0","0","0","2021-10-15","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("859","44","Available","25","0","0","0","0","2021-10-16","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("860","44","Available","25","0","0","0","0","2021-10-17","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("861","44","Available","25","0","0","0","0","2021-10-18","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("862","44","Available","25","0","0","0","0","2021-10-19","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("863","44","Available","25","0","0","0","0","2021-10-20","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("864","44","Available","25","0","0","0","0","2021-10-21","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("865","44","Available","25","0","0","0","0","2021-10-22","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("866","44","Available","25","0","0","0","0","2021-10-23","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("867","44","Available","25","0","0","0","0","2021-10-24","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("868","44","Available","25","0","0","0","0","2021-10-25","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("869","44","Available","25","0","0","0","0","2021-10-26","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("870","44","Available","25","0","0","0","0","2021-10-27","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("871","44","Available","25","0","0","0","0","2021-10-28","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("872","44","Available","25","0","0","0","0","2021-10-29","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("873","44","Available","25","0","0","0","0","2021-10-30","","normal","2021-08-25 15:38:23","2021-08-25 15:38:23");
INSERT INTO property_dates VALUES("874","43","Available","42","0","0","0","0","2021-09-02","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("875","43","Available","42","0","0","0","0","2021-09-03","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("876","43","Available","42","0","0","0","0","2021-09-04","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("877","43","Available","42","0","0","0","0","2021-09-05","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("878","43","Available","42","0","0","0","0","2021-09-06","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("879","43","Available","42","0","0","0","0","2021-09-07","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("880","43","Available","42","0","0","0","0","2021-09-08","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("881","43","Available","42","0","0","0","0","2021-09-09","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("882","43","Available","42","0","0","0","0","2021-09-10","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("883","43","Available","42","0","0","0","0","2021-09-11","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("884","43","Available","42","0","0","0","0","2021-09-12","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("885","43","Available","42","0","0","0","0","2021-09-13","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("886","43","Available","42","0","0","0","0","2021-09-14","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("887","43","Available","42","0","0","0","0","2021-09-15","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("888","43","Available","42","0","0","0","0","2021-09-16","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("889","43","Available","42","0","0","0","0","2021-09-17","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("890","43","Available","42","0","0","0","0","2021-09-18","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("891","43","Available","42","0","0","0","0","2021-09-19","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("892","43","Available","42","0","0","0","0","2021-09-20","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("893","43","Available","42","0","0","0","0","2021-09-21","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("894","43","Available","42","0","0","0","0","2021-09-22","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("895","43","Available","42","0","0","0","0","2021-09-23","","normal","2021-08-25 15:45:20","2021-08-25 15:45:20");
INSERT INTO property_dates VALUES("896","43","Available","42","0","0","0","0","2021-09-24","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("897","43","Available","42","0","0","0","0","2021-09-25","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("898","43","Available","42","0","0","0","0","2021-09-26","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("899","43","Available","42","0","0","0","0","2021-09-27","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("900","43","Available","42","0","0","0","0","2021-09-28","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("901","43","Available","42","0","0","0","0","2021-09-29","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("902","43","Available","42","0","0","0","0","2021-09-30","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("903","43","Available","42","0","0","0","0","2021-10-01","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("904","43","Available","42","0","0","0","0","2021-10-02","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("905","43","Available","42","0","0","0","0","2021-10-03","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("906","43","Available","42","0","0","0","0","2021-10-04","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("907","43","Available","42","0","0","0","0","2021-10-05","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("908","43","Available","42","0","0","0","0","2021-10-06","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("909","43","Available","42","0","0","0","0","2021-10-07","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("910","43","Available","42","0","0","0","0","2021-10-08","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("911","43","Available","42","0","0","0","0","2021-10-09","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("912","43","Available","42","0","0","0","0","2021-10-10","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("913","43","Available","42","0","0","0","0","2021-10-11","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("914","43","Available","42","0","0","0","0","2021-10-12","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("915","43","Available","42","0","0","0","0","2021-10-13","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("916","43","Available","42","0","0","0","0","2021-10-14","","normal","2021-08-25 15:45:21","2021-08-25 15:45:21");
INSERT INTO property_dates VALUES("917","41","Available","22","0","0","0","0","2021-08-28","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("918","41","Available","22","0","0","0","0","2021-08-29","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("919","41","Available","22","0","0","0","0","2021-08-30","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("920","41","Available","22","0","0","0","0","2021-08-31","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("921","41","Available","22","0","0","0","0","2021-09-01","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("922","41","Available","22","0","0","0","0","2021-09-02","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("923","41","Available","22","0","0","0","0","2021-09-03","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("924","41","Available","22","0","0","0","0","2021-09-04","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("925","41","Available","22","0","0","0","0","2021-09-05","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("926","41","Available","22","0","0","0","0","2021-09-06","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("927","41","Available","22","0","0","0","0","2021-09-07","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("928","41","Available","22","0","0","0","0","2021-09-08","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("929","41","Available","22","0","0","0","0","2021-09-09","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("930","41","Available","22","0","0","0","0","2021-09-10","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("931","41","Available","22","0","0","0","0","2021-09-11","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("932","41","Available","22","0","0","0","0","2021-09-12","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("933","41","Available","22","0","0","0","0","2021-09-13","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("934","41","Available","22","0","0","0","0","2021-09-14","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("935","41","Available","22","0","0","0","0","2021-09-15","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("936","41","Available","22","0","0","0","0","2021-09-16","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("937","41","Available","22","0","0","0","0","2021-09-17","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("938","41","Available","22","0","0","0","0","2021-09-18","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("939","41","Available","22","0","0","0","0","2021-09-19","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("940","41","Available","22","0","0","0","0","2021-09-20","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("941","41","Available","22","0","0","0","0","2021-09-21","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("942","41","Available","22","0","0","0","0","2021-09-22","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("943","41","Available","22","0","0","0","0","2021-09-23","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("944","41","Available","22","0","0","0","0","2021-09-24","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("945","41","Available","22","0","0","0","0","2021-09-25","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("946","41","Available","22","0","0","0","0","2021-09-26","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("947","41","Available","22","0","0","0","0","2021-09-27","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("948","41","Available","22","0","0","0","0","2021-09-28","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("949","41","Available","22","0","0","0","0","2021-09-29","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("950","41","Available","22","0","0","0","0","2021-09-30","","normal","2021-08-26 14:32:39","2021-08-26 14:32:39");
INSERT INTO property_dates VALUES("951","40","Available","32","0","0","0","0","2021-10-01","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("952","40","Available","32","0","0","0","0","2021-10-02","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("953","40","Available","32","0","0","0","0","2021-10-03","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("954","40","Available","32","0","0","0","0","2021-10-04","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("955","40","Available","32","0","0","0","0","2021-10-05","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("956","40","Available","32","0","0","0","0","2021-10-06","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("957","40","Available","32","0","0","0","0","2021-10-07","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("958","40","Available","32","0","0","0","0","2021-10-08","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("959","40","Available","32","0","0","0","0","2021-10-09","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("960","40","Available","32","0","0","0","0","2021-10-10","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("961","40","Available","32","0","0","0","0","2021-10-11","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("962","40","Available","32","0","0","0","0","2021-10-12","","normal","2021-08-26 14:38:23","2021-08-26 14:38:23");
INSERT INTO property_dates VALUES("963","63","Available","25","0","0","0","0","2021-09-05","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("964","63","Available","25","0","0","0","0","2021-09-06","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("965","63","Available","25","0","0","0","0","2021-09-07","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("966","63","Available","25","0","0","0","0","2021-09-08","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("967","63","Available","25","0","0","0","0","2021-09-09","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("968","63","Available","25","0","0","0","0","2021-09-10","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("969","63","Available","25","0","0","0","0","2021-09-11","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("970","63","Available","25","0","0","0","0","2021-09-12","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("971","63","Available","25","0","0","0","0","2021-09-13","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("972","63","Available","25","0","0","0","0","2021-09-14","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("973","63","Available","25","0","0","0","0","2021-09-15","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("974","63","Available","25","0","0","0","0","2021-09-16","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("975","63","Available","25","0","0","0","0","2021-09-17","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("976","63","Available","25","0","0","0","0","2021-09-18","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("977","63","Available","25","0","0","0","0","2021-09-19","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("978","63","Available","25","0","0","0","0","2021-09-20","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("979","63","Available","25","0","0","0","0","2021-09-21","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("980","63","Available","25","0","0","0","0","2021-09-22","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("981","63","Available","25","0","0","0","0","2021-09-23","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("982","63","Available","25","0","0","0","0","2021-09-24","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("983","63","Available","25","0","0","0","0","2021-09-25","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("984","63","Available","25","0","0","0","0","2021-09-26","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("985","63","Available","25","0","0","0","0","2021-09-27","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("986","63","Available","25","0","0","0","0","2021-09-28","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("987","63","Available","25","0","0","0","0","2021-09-29","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("988","63","Available","25","0","0","0","0","2021-09-30","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("989","63","Available","25","0","0","0","0","2021-10-01","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("990","63","Available","25","0","0","0","0","2021-10-02","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("991","63","Available","25","0","0","0","0","2021-10-03","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("992","63","Available","25","0","0","0","0","2021-10-04","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("993","63","Available","25","0","0","0","0","2021-10-05","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("994","63","Available","25","0","0","0","0","2021-10-06","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("995","63","Available","25","0","0","0","0","2021-10-07","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("996","63","Available","25","0","0","0","0","2021-10-08","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("997","63","Available","25","0","0","0","0","2021-10-09","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("998","63","Available","25","0","0","0","0","2021-10-10","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("999","63","Available","25","0","0","0","0","2021-10-11","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("1000","63","Available","25","0","0","0","0","2021-10-12","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("1001","63","Available","25","0","0","0","0","2021-10-13","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("1002","63","Available","25","0","0","0","0","2021-10-14","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("1003","63","Available","25","0","0","0","0","2021-10-15","","normal","2021-08-26 14:49:59","2021-08-26 14:49:59");
INSERT INTO property_dates VALUES("1004","60","Available","35","0","0","0","0","2021-09-01","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1005","60","Not available","35","0","0","0","0","2021-09-02","","normal","2021-08-26 14:56:36","2021-09-02 05:02:08");
INSERT INTO property_dates VALUES("1006","60","Available","35","0","0","0","0","2021-09-03","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1007","60","Available","35","0","0","0","0","2021-09-04","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1008","60","Available","35","0","0","0","0","2021-09-05","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1009","60","Available","35","0","0","0","0","2021-09-06","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1010","60","Available","35","0","0","0","0","2021-09-07","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1011","60","Available","35","0","0","0","0","2021-09-08","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1012","60","Available","35","0","0","0","0","2021-09-09","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1013","60","Available","35","0","0","0","0","2021-09-10","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1014","60","Available","35","0","0","0","0","2021-09-11","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1015","60","Available","35","0","0","0","0","2021-09-12","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1016","60","Available","35","0","0","0","0","2021-09-13","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1017","60","Available","35","0","0","0","0","2021-09-14","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1018","60","Available","35","0","0","0","0","2021-09-15","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1019","60","Available","35","0","0","0","0","2021-09-16","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1020","60","Available","35","0","0","0","0","2021-09-17","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1021","60","Available","35","0","0","0","0","2021-09-18","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1022","60","Available","35","0","0","0","0","2021-09-19","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1023","60","Available","35","0","0","0","0","2021-09-20","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1024","60","Available","35","0","0","0","0","2021-09-21","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1025","60","Available","35","0","0","0","0","2021-09-22","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1026","60","Available","35","0","0","0","0","2021-09-23","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1027","60","Available","35","0","0","0","0","2021-09-24","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1028","60","Available","35","0","0","0","0","2021-09-25","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1029","60","Available","35","0","0","0","0","2021-09-26","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1030","60","Available","35","0","0","0","0","2021-09-27","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1031","60","Available","35","0","0","0","0","2021-09-28","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1032","60","Available","35","0","0","0","0","2021-09-29","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1033","60","Available","35","0","0","0","0","2021-09-30","","normal","2021-08-26 14:56:36","2021-08-26 14:56:36");
INSERT INTO property_dates VALUES("1034","6","Available","50","0","0","0","0","2021-08-28","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1035","6","Available","50","0","0","0","0","2021-08-29","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1036","6","Available","50","0","0","0","0","2021-08-30","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1037","6","Available","50","0","0","0","0","2021-08-31","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1038","6","Available","50","0","0","0","0","2021-09-01","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1039","6","Available","50","0","0","0","0","2021-09-02","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1040","6","Available","50","0","0","0","0","2021-09-03","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1041","6","Available","50","0","0","0","0","2021-09-04","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1042","6","Available","50","0","0","0","0","2021-09-05","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1043","6","Available","50","0","0","0","0","2021-09-06","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1044","6","Available","50","0","0","0","0","2021-09-07","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1045","6","Available","50","0","0","0","0","2021-09-08","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1046","6","Available","50","0","0","0","0","2021-09-09","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1047","6","Available","50","0","0","0","0","2021-09-10","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1048","6","Available","50","0","0","0","0","2021-09-11","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1049","6","Available","50","0","0","0","0","2021-09-12","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1050","6","Available","50","0","0","0","0","2021-09-13","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1051","6","Available","50","0","0","0","0","2021-09-14","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1052","6","Available","50","0","0","0","0","2021-09-15","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1053","6","Available","50","0","0","0","0","2021-09-16","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1054","6","Available","50","0","0","0","0","2021-09-17","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1055","6","Available","50","0","0","0","0","2021-09-18","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1056","6","Available","50","0","0","0","0","2021-09-19","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1057","6","Available","50","0","0","0","0","2021-09-20","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1058","6","Available","50","0","0","0","0","2021-09-21","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1059","6","Available","50","0","0","0","0","2021-09-22","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1060","6","Available","50","0","0","0","0","2021-09-23","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1061","6","Available","50","0","0","0","0","2021-09-24","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1062","6","Available","50","0","0","0","0","2021-09-25","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1063","6","Available","50","0","0","0","0","2021-09-26","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1064","6","Available","50","0","0","0","0","2021-09-27","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1065","6","Available","50","0","0","0","0","2021-09-28","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1066","6","Available","50","0","0","0","0","2021-09-29","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1067","6","Available","50","0","0","0","0","2021-09-30","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1068","6","Available","50","0","0","0","0","2021-10-01","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1069","6","Available","50","0","0","0","0","2021-10-02","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1070","6","Available","50","0","0","0","0","2021-10-03","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1071","6","Available","50","0","0","0","0","2021-10-04","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1072","6","Available","50","0","0","0","0","2021-10-05","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1073","6","Available","50","0","0","0","0","2021-10-06","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1074","6","Available","50","0","0","0","0","2021-10-07","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1075","6","Available","50","0","0","0","0","2021-10-08","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1076","6","Available","50","0","0","0","0","2021-10-09","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1077","6","Available","50","0","0","0","0","2021-10-10","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1078","6","Available","50","0","0","0","0","2021-10-11","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1079","6","Available","50","0","0","0","0","2021-10-12","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1080","6","Available","50","0","0","0","0","2021-10-13","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1081","6","Available","50","0","0","0","0","2021-10-14","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1082","6","Available","50","0","0","0","0","2021-10-15","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1083","6","Available","50","0","0","0","0","2021-10-16","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1084","6","Available","50","0","0","0","0","2021-10-17","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1085","6","Available","50","0","0","0","0","2021-10-18","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1086","6","Available","50","0","0","0","0","2021-10-19","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1087","6","Available","50","0","0","0","0","2021-10-20","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1088","6","Available","50","0","0","0","0","2021-10-21","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1089","6","Available","50","0","0","0","0","2021-10-22","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1090","6","Available","50","0","0","0","0","2021-10-23","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1091","6","Available","50","0","0","0","0","2021-10-24","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1092","6","Available","50","0","0","0","0","2021-10-25","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1093","6","Available","50","0","0","0","0","2021-10-26","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1094","6","Available","50","0","0","0","0","2021-10-27","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1095","6","Available","50","0","0","0","0","2021-10-28","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1096","6","Available","50","0","0","0","0","2021-10-29","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1097","6","Available","50","0","0","0","0","2021-10-30","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1098","6","Available","50","0","0","0","0","2021-10-31","","normal","2021-08-27 07:17:17","2021-08-27 07:17:17");
INSERT INTO property_dates VALUES("1099","4","Available","35","0","0","0","0","2021-08-27","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1100","4","Available","35","0","0","0","0","2021-08-28","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1101","4","Available","35","0","0","0","0","2021-08-29","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1102","4","Available","35","0","0","0","0","2021-08-30","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1103","4","Available","35","0","0","0","0","2021-08-31","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1104","4","Available","35","0","0","0","0","2021-09-01","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1105","4","Available","35","0","0","0","0","2021-09-02","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1106","4","Available","35","0","0","0","0","2021-09-03","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1107","4","Available","35","0","0","0","0","2021-09-04","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1108","4","Available","35","0","0","0","0","2021-09-05","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1109","4","Available","35","0","0","0","0","2021-09-06","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1110","4","Available","35","0","0","0","0","2021-09-07","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1111","4","Available","35","0","0","0","0","2021-09-08","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1112","4","Available","35","0","0","0","0","2021-09-09","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1113","4","Available","35","0","0","0","0","2021-09-10","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1114","4","Available","35","0","0","0","0","2021-09-11","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1115","4","Available","35","0","0","0","0","2021-09-12","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1116","4","Available","35","0","0","0","0","2021-09-13","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1117","4","Available","35","0","0","0","0","2021-09-14","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1118","4","Available","35","0","0","0","0","2021-09-15","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1119","4","Available","35","0","0","0","0","2021-09-16","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1120","4","Available","35","0","0","0","0","2021-09-17","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1121","4","Available","35","0","0","0","0","2021-09-18","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1122","4","Available","35","0","0","0","0","2021-09-19","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1123","4","Available","35","0","0","0","0","2021-09-20","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1124","4","Available","35","0","0","0","0","2021-09-21","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1125","4","Available","35","0","0","0","0","2021-09-22","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1126","4","Available","35","0","0","0","0","2021-09-23","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1127","4","Available","35","0","0","0","0","2021-09-24","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1128","4","Available","35","0","0","0","0","2021-09-25","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1129","4","Available","35","0","0","0","0","2021-09-26","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1130","4","Available","35","0","0","0","0","2021-09-27","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1131","4","Available","35","0","0","0","0","2021-09-28","","normal","2021-08-27 07:30:24","2021-08-27 07:30:24");
INSERT INTO property_dates VALUES("1132","71","Available","15","1","2","0","0","2021-11-11","","normal","2021-11-10 19:38:43","2021-11-10 19:38:43");
INSERT INTO property_dates VALUES("1133","71","Available","15","1","2","0","0","2021-11-12","","normal","2021-11-10 19:42:36","2021-11-10 19:42:36");
INSERT INTO property_dates VALUES("1134","70","Not available","0","0","0","0","0","2021-11-15","","normal","2021-11-11 01:44:36","2021-11-11 01:44:36");
INSERT INTO property_dates VALUES("1136","6","Not available","10","0","0","0","0","2021-12-10","","normal","2021-11-26 01:13:46","2021-11-26 01:13:46");
INSERT INTO property_dates VALUES("1138","6","Not available","10","0","0","0","0","2021-12-20","","normal","2021-11-30 00:19:26","2021-11-30 00:19:26");
INSERT INTO property_dates VALUES("1139","73","Available","200","1","2","0","0","2021-12-02","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1140","73","Available","200","1","2","0","0","2021-12-03","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1141","73","Available","200","1","2","0","0","2021-12-04","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1142","73","Available","200","1","2","0","0","2021-12-05","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1143","73","Available","200","1","2","0","0","2021-12-06","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1144","73","Available","200","1","2","0","0","2021-12-07","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1145","73","Available","200","1","2","0","0","2021-12-08","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1146","73","Available","200","1","2","0","0","2021-12-09","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1147","73","Available","200","1","2","0","0","2021-12-10","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1148","73","Available","200","1","2","0","0","2021-12-11","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1149","73","Available","200","1","2","0","0","2021-12-12","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1150","73","Available","200","1","2","0","0","2021-12-13","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1151","73","Available","200","1","2","0","0","2021-12-14","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1152","73","Available","200","1","2","0","0","2021-12-15","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1153","73","Available","200","1","2","0","0","2021-12-16","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1154","73","Available","200","1","2","0","0","2021-12-17","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1155","73","Available","200","1","2","0","0","2021-12-18","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1156","73","Available","200","1","2","0","0","2021-12-19","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1157","73","Available","200","1","2","0","0","2021-12-20","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1158","73","Available","200","1","2","0","0","2021-12-21","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1159","73","Available","200","1","2","0","0","2021-12-22","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1160","73","Available","200","1","2","0","0","2021-12-23","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1161","73","Available","200","1","2","0","0","2021-12-24","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1162","73","Available","200","1","2","0","0","2021-12-25","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1163","73","Available","200","1","2","0","0","2021-12-26","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1164","73","Available","200","1","2","0","0","2021-12-27","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1165","73","Available","200","1","2","0","0","2021-12-28","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1166","73","Available","200","1","2","0","0","2021-12-29","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1167","73","Available","200","1","2","0","0","2021-12-30","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1168","73","Available","200","1","2","0","0","2021-12-31","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1175","73","Available","200","1","2","0","0","2022-01-07","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1176","73","Available","200","1","2","0","0","2022-01-08","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1177","73","Available","200","1","2","0","0","2022-01-09","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1178","73","Available","200","1","2","0","0","2022-01-10","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1179","73","Available","200","1","2","0","0","2022-01-11","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1180","73","Available","200","1","2","0","0","2022-01-12","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1181","73","Available","200","1","2","0","0","2022-01-13","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1182","73","Available","200","1","2","0","0","2022-01-14","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1183","73","Available","200","1","2","0","0","2022-01-15","","normal","2021-12-01 19:45:24","2021-12-01 19:45:24");
INSERT INTO property_dates VALUES("1184","74","Available","200","1","2","0","0","2021-12-02","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1185","74","Available","200","1","2","0","0","2021-12-03","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1186","74","Available","200","1","2","0","0","2021-12-04","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1187","74","Available","200","1","2","0","0","2021-12-05","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1188","74","Available","200","1","2","0","0","2021-12-06","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1189","74","Available","200","1","2","0","0","2021-12-07","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1190","74","Available","200","1","2","0","0","2021-12-08","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1191","74","Available","200","1","2","0","0","2021-12-09","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1192","74","Available","200","1","2","0","0","2021-12-10","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1193","74","Not available","200","1","2","0","0","2021-12-11","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1194","74","Not available","200","1","2","0","0","2021-12-12","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1195","74","Not available","200","1","2","0","0","2021-12-13","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1196","74","Not available","200","1","2","0","0","2021-12-14","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1197","74","Not available","200","1","2","0","0","2021-12-15","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1198","74","Not available","200","1","2","0","0","2021-12-16","","normal","2021-12-01 20:27:48","2021-12-03 00:03:25");
INSERT INTO property_dates VALUES("1199","74","Available","200","1","2","0","0","2021-12-17","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1200","74","Available","200","1","2","0","0","2021-12-18","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1201","74","Not available","200","1","2","0","0","2021-12-19","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1202","74","Not available","200","1","2","0","0","2021-12-20","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1203","74","Not available","200","1","2","0","0","2021-12-21","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1204","74","Not available","200","1","2","0","0","2021-12-22","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1205","74","Not available","200","1","2","0","0","2021-12-23","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1206","74","Not available","200","1","2","0","0","2021-12-24","","normal","2021-12-01 20:27:48","2021-12-02 00:43:54");
INSERT INTO property_dates VALUES("1207","74","Available","200","1","2","0","0","2021-12-25","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1208","74","Available","200","1","2","0","0","2021-12-26","","normal","2021-12-01 20:27:48","2021-12-01 20:27:48");
INSERT INTO property_dates VALUES("1209","74","Available","200","1","2","0","0","2021-12-27","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1210","74","Available","200","1","2","0","0","2021-12-28","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1211","74","Not available","200","1","2","0","0","2021-12-29","","normal","2021-12-01 20:27:49","2021-12-02 03:03:44");
INSERT INTO property_dates VALUES("1212","74","Not available","200","1","2","0","0","2021-12-30","","normal","2021-12-01 20:27:49","2021-12-02 03:03:44");
INSERT INTO property_dates VALUES("1213","74","Available","200","1","2","0","0","2021-12-31","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1214","74","Available","200","1","2","0","0","2022-01-01","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1215","74","Available","200","1","2","0","0","2022-01-02","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1216","74","Available","200","1","2","0","0","2022-01-03","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1217","74","Available","200","1","2","0","0","2022-01-04","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1218","74","Available","200","1","2","0","0","2022-01-05","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1219","74","Available","200","1","2","0","0","2022-01-06","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1220","74","Available","200","1","2","0","0","2022-01-07","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1221","74","Available","200","1","2","0","0","2022-01-08","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1222","74","Available","200","1","2","0","0","2022-01-09","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1223","74","Not available","200","1","2","0","0","2022-01-10","","normal","2021-12-01 20:27:49","2021-12-02 21:38:54");
INSERT INTO property_dates VALUES("1224","74","Not available","200","1","2","0","0","2022-01-11","","normal","2021-12-01 20:27:49","2021-12-02 21:38:54");
INSERT INTO property_dates VALUES("1225","74","Not available","200","1","2","0","0","2022-01-12","","normal","2021-12-01 20:27:49","2021-12-02 21:38:54");
INSERT INTO property_dates VALUES("1226","74","Not available","200","1","2","0","0","2022-01-13","","normal","2021-12-01 20:27:49","2021-12-02 21:38:54");
INSERT INTO property_dates VALUES("1227","74","Not available","200","1","2","0","0","2022-01-14","","normal","2021-12-01 20:27:49","2021-12-02 21:38:54");
INSERT INTO property_dates VALUES("1228","74","Available","200","1","2","0","0","2022-01-15","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1229","74","Available","200","1","2","0","0","2022-01-16","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1230","74","Available","200","1","2","0","0","2022-01-17","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1231","74","Available","200","1","2","0","0","2022-01-18","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1232","74","Available","200","1","2","0","0","2022-01-19","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1233","74","Available","200","1","2","0","0","2022-01-20","","normal","2021-12-01 20:27:49","2021-12-01 20:27:49");
INSERT INTO property_dates VALUES("1234","6","Available","10","1","2","0","0","2021-12-15","","normal","2021-12-01 21:07:47","2021-12-01 21:07:47");
INSERT INTO property_dates VALUES("1235","6","Available","10","1","2","1","5","2021-12-21","","normal","2021-12-01 21:11:16","2021-12-01 22:26:02");
INSERT INTO property_dates VALUES("1236","6","Available","10","1","2","1","3","2021-12-22","","normal","2021-12-01 21:51:28","2021-12-01 21:58:36");
INSERT INTO property_dates VALUES("1237","71","Available","15","1","2","1","3","2021-12-02","","normal","2021-12-01 22:33:34","2021-12-01 22:34:24");
INSERT INTO property_dates VALUES("1238","75","Available","100","1","1","0","0","2021-12-02","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1239","75","Available","100","1","1","0","0","2021-12-03","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1240","75","Available","100","1","1","0","0","2021-12-04","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1241","75","Available","100","1","1","0","0","2021-12-05","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1242","75","Available","100","1","1","0","0","2021-12-06","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1243","75","Available","100","1","1","0","0","2021-12-07","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1244","75","Available","100","1","1","0","0","2021-12-08","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1245","75","Available","100","1","1","0","0","2021-12-09","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1246","75","Available","100","1","1","0","0","2021-12-10","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1247","75","Available","100","1","1","0","0","2021-12-11","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1248","75","Available","100","1","1","0","0","2021-12-12","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1249","75","Available","100","1","1","0","0","2021-12-13","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1250","75","Available","100","1","1","0","0","2021-12-14","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1251","75","Available","100","1","1","0","0","2021-12-15","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1252","75","Available","100","1","1","0","0","2021-12-16","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1253","75","Available","100","1","1","0","0","2021-12-17","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1254","75","Available","100","1","1","0","0","2021-12-18","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1255","75","Available","100","1","1","0","0","2021-12-19","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1256","75","Available","100","1","1","0","0","2021-12-20","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1257","75","Available","100","1","1","0","0","2021-12-21","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1258","75","Available","100","1","1","0","0","2021-12-22","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1259","75","Available","100","1","1","0","0","2021-12-23","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1260","75","Available","100","1","1","0","0","2021-12-24","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1261","75","Available","100","1","1","0","0","2021-12-25","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1262","75","Available","100","1","1","0","0","2021-12-26","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1263","75","Available","100","1","1","0","0","2021-12-27","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1264","75","Available","100","1","1","0","0","2021-12-28","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1265","75","Available","100","1","1","0","0","2021-12-29","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1266","75","Available","100","1","1","0","0","2021-12-30","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1267","75","Available","100","1","1","0","0","2021-12-31","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1272","75","Available","100","1","1","0","0","2022-01-05","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1273","75","Available","100","1","1","0","0","2022-01-06","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1274","75","Available","100","1","1","0","0","2022-01-07","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1275","75","Available","100","1","1","0","0","2022-01-08","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1276","75","Available","100","1","1","0","0","2022-01-09","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1277","75","Available","100","1","1","0","0","2022-01-10","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1278","75","Available","100","1","1","0","0","2022-01-11","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1279","75","Available","100","1","1","0","0","2022-01-12","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1280","75","Available","100","1","1","0","0","2022-01-13","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1281","75","Available","100","1","1","0","0","2022-01-14","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1282","75","Available","100","1","1","0","0","2022-01-15","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1283","75","Available","100","1","1","0","0","2022-01-16","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1284","75","Available","100","1","1","0","0","2022-01-17","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1285","75","Available","100","1","1","0","0","2022-01-18","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1286","75","Available","100","1","1","0","0","2022-01-19","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1287","75","Available","100","1","1","0","0","2022-01-20","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1288","75","Available","100","1","1","0","0","2022-01-21","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1289","75","Available","100","1","1","0","0","2022-01-22","","normal","2021-12-01 23:35:03","2021-12-01 23:35:03");
INSERT INTO property_dates VALUES("1290","6","Not available","10","0","0","0","0","2021-12-02","","normal","2021-12-02 02:55:07","2021-12-02 02:55:07");
INSERT INTO property_dates VALUES("1291","77","Available","100","1","1","1","5","2021-12-03","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1292","77","Available","100","1","1","1","5","2021-12-04","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1293","77","Available","100","1","1","1","5","2021-12-05","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1294","77","Available","100","1","1","1","5","2021-12-06","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1295","77","Available","100","1","1","1","5","2021-12-07","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1296","77","Available","100","1","1","1","5","2021-12-08","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1297","77","Available","100","1","1","1","5","2021-12-09","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1298","77","Available","100","1","1","1","5","2021-12-10","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1299","77","Available","100","1","1","1","5","2021-12-11","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1300","77","Not available","100","1","1","1","5","2021-12-12","","normal","2021-12-02 19:09:21","2021-12-03 01:04:31");
INSERT INTO property_dates VALUES("1301","77","Not available","100","1","1","1","5","2021-12-13","","normal","2021-12-02 19:09:21","2021-12-03 01:04:31");
INSERT INTO property_dates VALUES("1302","77","Not available","100","1","1","1","5","2021-12-14","","normal","2021-12-02 19:09:21","2021-12-03 01:04:31");
INSERT INTO property_dates VALUES("1303","77","Not available","100","1","1","1","5","2021-12-15","","normal","2021-12-02 19:09:21","2021-12-03 01:04:31");
INSERT INTO property_dates VALUES("1304","77","Available","100","1","1","1","5","2021-12-16","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1305","77","Available","100","1","1","1","5","2021-12-17","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1306","77","Available","100","1","1","1","5","2021-12-18","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1307","77","Available","100","1","1","1","5","2021-12-19","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1308","77","Available","100","1","1","1","5","2021-12-20","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1309","77","Available","100","1","1","1","5","2021-12-21","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1310","77","Available","100","1","1","1","5","2021-12-22","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1311","77","Available","100","1","1","1","5","2021-12-23","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1316","77","Available","100","1","1","1","5","2021-12-28","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1317","77","Available","100","1","1","1","5","2021-12-29","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1318","77","Available","100","1","1","1","5","2021-12-30","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1319","77","Available","100","1","1","1","5","2021-12-31","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1320","77","Available","100","1","1","1","5","2022-01-01","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1321","77","Available","100","1","1","1","5","2022-01-02","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1322","77","Available","100","1","1","1","5","2022-01-03","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1323","77","Available","100","1","1","1","5","2022-01-04","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1324","77","Available","100","1","1","1","5","2022-01-05","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1325","77","Available","100","1","1","1","5","2022-01-06","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1326","77","Available","100","1","1","1","5","2022-01-07","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1327","77","Available","100","1","1","1","5","2022-01-08","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1328","77","Available","100","1","1","1","5","2022-01-09","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1329","77","Available","100","1","1","1","5","2022-01-10","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1330","77","Available","100","1","1","1","5","2022-01-11","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1331","77","Available","100","1","1","1","5","2022-01-12","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1332","77","Available","100","1","1","1","5","2022-01-13","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1333","77","Available","100","1","1","1","5","2022-01-14","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1334","77","Available","100","1","1","1","5","2022-01-15","","normal","2021-12-02 19:09:21","2021-12-02 19:11:54");
INSERT INTO property_dates VALUES("1335","78","Available","200","1","2","1","6","2021-12-04","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1336","78","Available","200","1","2","1","6","2021-12-05","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1337","78","Available","200","1","2","1","6","2021-12-06","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1338","78","Available","200","1","2","1","6","2021-12-07","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1339","78","Available","200","1","2","1","6","2021-12-08","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1340","78","Available","200","1","2","1","6","2021-12-09","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1341","78","Available","200","1","2","1","6","2021-12-10","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1348","78","Available","200","1","2","1","6","2021-12-17","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1349","78","Available","200","1","2","1","6","2021-12-18","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1350","78","Available","200","1","2","1","6","2021-12-19","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1351","78","Available","200","1","2","1","6","2021-12-20","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1352","78","Available","200","1","2","1","6","2021-12-21","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1353","78","Available","200","1","2","1","6","2021-12-22","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1354","78","Available","200","1","2","1","6","2021-12-23","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1355","78","Available","200","1","2","1","6","2021-12-24","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1356","78","Available","200","1","2","1","6","2021-12-25","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1357","78","Available","200","1","2","1","6","2021-12-26","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1358","78","Available","200","1","2","1","6","2021-12-27","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1359","78","Available","200","1","2","1","6","2021-12-28","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1360","78","Available","200","1","2","1","6","2021-12-29","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1361","78","Available","200","1","2","1","6","2021-12-30","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1362","78","Available","200","1","2","1","6","2021-12-31","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1363","78","Available","200","1","2","1","6","2022-01-01","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1364","78","Available","200","1","2","1","6","2022-01-02","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1365","78","Available","200","1","2","1","6","2022-01-03","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1366","78","Available","200","1","2","1","6","2022-01-04","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1367","78","Available","200","1","2","1","6","2022-01-05","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1368","78","Available","200","1","2","1","6","2022-01-06","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1369","78","Available","200","1","2","1","6","2022-01-07","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1370","78","Available","200","1","2","1","6","2022-01-08","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1371","78","Available","200","1","2","1","6","2022-01-09","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1372","78","Available","200","1","2","1","6","2022-01-10","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1373","78","Available","200","1","2","1","6","2022-01-11","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1374","78","Available","200","1","2","1","6","2022-01-12","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1375","78","Available","200","1","2","1","6","2022-01-13","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1376","78","Available","200","1","2","1","6","2022-01-14","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1377","78","Available","200","1","2","1","6","2022-01-15","","normal","2021-12-02 20:14:39","2021-12-02 20:14:39");
INSERT INTO property_dates VALUES("1378","79","Available","100","1","1","1","5","2021-12-04","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1379","79","Available","100","1","1","1","5","2021-12-05","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1380","79","Available","100","1","1","1","5","2021-12-06","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1385","79","Available","100","1","1","1","5","2021-12-11","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1386","79","Available","100","1","1","1","5","2021-12-12","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1387","79","Available","100","1","1","1","5","2021-12-13","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1388","79","Available","100","1","1","1","5","2021-12-14","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1389","79","Available","100","1","1","1","5","2021-12-15","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1390","79","Available","100","1","1","1","5","2021-12-16","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1391","79","Available","100","1","1","1","5","2021-12-17","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1392","79","Available","100","1","1","1","5","2021-12-18","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1393","79","Available","100","1","1","1","5","2021-12-19","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1394","79","Available","100","1","1","1","5","2021-12-20","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1395","79","Available","100","1","1","1","5","2021-12-21","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1396","79","Available","100","1","1","1","5","2021-12-22","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1397","79","Available","100","1","1","1","5","2021-12-23","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1398","79","Available","100","1","1","1","5","2021-12-24","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1399","79","Available","100","1","1","1","5","2021-12-25","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1400","79","Available","100","1","1","1","5","2021-12-26","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1401","79","Available","100","1","1","1","5","2021-12-27","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1402","79","Available","100","1","1","1","5","2021-12-28","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1403","79","Available","100","1","1","1","5","2021-12-29","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1404","79","Available","100","1","1","1","5","2021-12-30","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1405","79","Available","100","1","1","1","5","2021-12-31","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1406","79","Available","100","1","1","1","5","2022-01-01","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1407","79","Available","100","1","1","1","5","2022-01-02","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1408","79","Available","100","1","1","1","5","2022-01-03","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1409","79","Available","100","1","1","1","5","2022-01-04","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1410","79","Available","100","1","1","1","5","2022-01-05","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1411","79","Available","100","1","1","1","5","2022-01-06","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1412","79","Available","100","1","1","1","5","2022-01-07","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1413","79","Available","100","1","1","1","5","2022-01-08","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1414","79","Available","100","1","1","1","5","2022-01-09","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1415","79","Available","100","1","1","1","5","2022-01-10","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1416","79","Available","100","1","1","1","5","2022-01-11","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1417","79","Available","100","1","1","1","5","2022-01-12","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1418","79","Available","100","1","1","1","5","2022-01-13","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1419","79","Available","100","1","1","1","5","2022-01-14","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1420","79","Available","100","1","1","1","5","2022-01-15","","normal","2021-12-03 02:22:52","2021-12-03 02:22:52");
INSERT INTO property_dates VALUES("1421","71","Available","15","1","2","1","5","2021-12-03","","normal","2021-12-03 02:30:41","2021-12-03 02:50:45");
INSERT INTO property_dates VALUES("1422","80","Available","100","1","1","1","5","2021-12-03","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1423","80","Available","100","1","1","1","5","2021-12-04","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1424","80","Available","100","1","1","1","5","2021-12-05","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1425","80","Available","100","1","1","1","5","2021-12-06","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1426","80","Available","100","1","1","1","5","2021-12-07","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1431","80","Available","100","1","1","1","5","2021-12-12","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1432","80","Available","100","1","1","1","5","2021-12-13","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1433","80","Available","100","1","1","1","5","2021-12-14","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1434","80","Available","100","1","1","1","5","2021-12-15","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1435","80","Available","100","1","1","1","5","2021-12-16","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1436","80","Available","100","1","1","1","5","2021-12-17","","normal","2021-12-03 02:50:01","2021-12-03 02:50:01");
INSERT INTO property_dates VALUES("1437","80","Available","100","1","1","1","5","2021-12-18","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1438","80","Available","100","1","1","1","5","2021-12-19","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1439","80","Available","100","1","1","1","5","2021-12-20","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1440","80","Available","100","1","1","1","5","2021-12-21","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1441","80","Available","100","1","1","1","5","2021-12-22","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1442","80","Available","100","1","1","1","5","2021-12-23","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1443","80","Available","100","1","1","1","5","2021-12-24","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1444","80","Available","100","1","1","1","5","2021-12-25","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1445","80","Available","100","1","1","1","5","2021-12-26","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1446","80","Available","100","1","1","1","5","2021-12-27","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1447","80","Available","100","1","1","1","5","2021-12-28","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1448","80","Available","100","1","1","1","5","2021-12-29","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1449","80","Available","100","1","1","1","5","2021-12-30","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1450","80","Available","100","1","1","1","5","2021-12-31","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1451","80","Available","100","1","1","1","5","2022-01-01","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1452","80","Available","100","1","1","1","5","2022-01-02","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1453","80","Available","100","1","1","1","5","2022-01-03","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1454","80","Available","100","1","1","1","5","2022-01-04","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1455","80","Available","100","1","1","1","5","2022-01-05","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1456","80","Available","100","1","1","1","5","2022-01-06","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1457","80","Available","100","1","1","1","5","2022-01-07","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1458","80","Available","100","1","1","1","5","2022-01-08","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1459","80","Available","100","1","1","1","5","2022-01-09","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1460","80","Available","100","1","1","1","5","2022-01-10","","normal","2021-12-03 02:50:02","2021-12-03 02:50:02");
INSERT INTO property_dates VALUES("1461","81","Available","100","1","1","0","0","2021-12-04","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1462","81","Available","100","1","1","0","0","2021-12-05","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1463","81","Available","100","1","1","0","0","2021-12-06","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1464","81","Available","100","1","1","0","0","2021-12-07","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1465","81","Available","100","1","1","0","0","2021-12-08","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1466","81","Available","100","1","1","0","0","2021-12-09","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1467","81","Available","100","1","1","0","0","2021-12-10","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1472","81","Available","100","1","1","0","0","2021-12-15","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1473","81","Available","100","1","1","0","0","2021-12-16","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1474","81","Available","100","1","1","0","0","2021-12-17","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1475","81","Available","100","1","1","0","0","2021-12-18","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1476","81","Available","100","1","1","0","0","2021-12-19","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1477","81","Available","100","1","1","0","0","2021-12-20","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1478","81","Available","100","1","1","0","0","2021-12-21","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1479","81","Available","100","1","1","0","0","2021-12-22","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1480","81","Available","100","1","1","0","0","2021-12-23","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1481","81","Available","100","1","1","0","0","2021-12-24","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1482","81","Available","100","1","1","0","0","2021-12-25","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1483","81","Available","100","1","1","0","0","2021-12-26","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1484","81","Available","100","1","1","0","0","2021-12-27","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1485","81","Available","100","1","1","0","0","2021-12-28","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1486","81","Available","100","1","1","0","0","2021-12-29","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1487","81","Available","100","1","1","0","0","2021-12-30","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1488","81","Available","100","1","1","0","0","2021-12-31","","normal","2021-12-03 19:08:44","2021-12-03 19:08:44");
INSERT INTO property_dates VALUES("1489","83","Available","100","0","0","0","0","2021-12-12","","normal","2021-12-05 20:29:46","2021-12-05 20:29:46");
INSERT INTO property_dates VALUES("1490","83","Not available","100","0","0","0","0","2021-12-07","","normal","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO property_dates VALUES("1491","83","Not available","100","0","0","0","0","2021-12-08","","normal","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO property_dates VALUES("1492","83","Not available","100","0","0","0","0","2021-12-09","","normal","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO property_dates VALUES("1493","83","Not available","100","0","0","0","0","2021-12-10","","normal","2021-12-06 19:10:21","2021-12-06 19:10:21");
INSERT INTO property_dates VALUES("1494","79","Not available","100","0","0","0","0","2021-12-07","","normal","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO property_dates VALUES("1495","79","Not available","100","0","0","0","0","2021-12-08","","normal","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO property_dates VALUES("1496","79","Not available","100","0","0","0","0","2021-12-09","","normal","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO property_dates VALUES("1497","79","Not available","100","0","0","0","0","2021-12-10","","normal","2021-12-06 19:34:11","2021-12-06 19:34:11");
INSERT INTO property_dates VALUES("1498","86","Not available","100","1","2","1","7","2021-12-07","","normal","2021-12-06 23:28:43","2021-12-06 23:48:47");
INSERT INTO property_dates VALUES("1499","86","Not available","100","1","2","1","7","2021-12-08","","normal","2021-12-06 23:41:54","2021-12-06 23:48:47");
INSERT INTO property_dates VALUES("1500","86","Not available","100","1","2","1","7","2021-12-09","","normal","2021-12-06 23:41:54","2021-12-06 23:48:47");
INSERT INTO property_dates VALUES("1501","86","Available","100","1","2","1","5","2021-12-10","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1502","86","Available","100","1","2","1","5","2021-12-11","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1503","86","Available","100","1","2","1","5","2021-12-12","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1504","86","Available","100","1","2","1","5","2021-12-13","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1505","86","Available","100","1","2","1","5","2021-12-14","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1506","86","Available","100","1","2","1","5","2021-12-15","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1507","86","Available","100","1","2","1","5","2021-12-16","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1508","86","Available","100","1","2","1","5","2021-12-17","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1509","86","Available","100","1","2","1","5","2021-12-18","","normal","2021-12-06 23:41:54","2021-12-07 18:59:57");
INSERT INTO property_dates VALUES("1510","86","Available","100","1","2","1","7","2021-12-19","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1511","86","Available","100","1","2","1","7","2021-12-20","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1512","86","Available","100","1","2","1","7","2021-12-21","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1513","86","Available","100","1","2","1","7","2021-12-22","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1514","86","Available","100","1","2","1","7","2021-12-23","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1515","86","Available","100","1","2","1","7","2021-12-24","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1516","86","Available","100","1","2","1","7","2021-12-25","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1517","86","Available","100","1","2","1","7","2021-12-26","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1518","86","Available","100","1","2","1","7","2021-12-27","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1519","86","Available","100","1","2","1","7","2021-12-28","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1520","86","Available","100","1","2","1","7","2021-12-29","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1521","86","Available","100","1","2","1","7","2021-12-30","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1522","86","Available","100","1","2","1","7","2021-12-31","","normal","2021-12-06 23:41:54","2021-12-06 23:41:54");
INSERT INTO property_dates VALUES("1523","46","Not available","24","0","0","0","0","2021-12-22","","normal","2021-12-22 03:38:18","2021-12-22 03:38:18");
INSERT INTO property_dates VALUES("1524","89","Available","20","1","2","1","2","2021-12-28","","normal","2021-12-27 21:16:37","2021-12-27 21:16:37");
INSERT INTO property_dates VALUES("1525","89","Available","20","1","2","1","2","2021-12-29","","normal","2021-12-27 21:16:37","2021-12-27 21:16:37");
INSERT INTO property_dates VALUES("1526","89","Available","20","1","2","1","2","2021-12-30","","normal","2021-12-27 21:16:37","2021-12-27 21:16:37");
INSERT INTO property_dates VALUES("1527","89","Available","20","1","1","1","43","2021-12-27","","normal","2021-12-27 21:31:42","2021-12-27 21:31:42");
INSERT INTO property_dates VALUES("1528","89","Not available","20","0","0","0","0","2022-01-12","","normal","2022-01-12 00:51:59","2022-01-12 00:51:59");





CREATE TABLE IF NOT EXISTS `property_description` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_is_great_for` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_place` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guest_can_access` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interaction_guests` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_neighborhood` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `get_around` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_description VALUES("1","1","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","","","","","","","");
INSERT INTO property_description VALUES("2","2","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.","","","","","","","");
INSERT INTO property_description VALUES("3","3","desccc","","","","","","","");
INSERT INTO property_description VALUES("4","4","New York Shared room","","","","","","","");
INSERT INTO property_description VALUES("5","5","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.\n It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets.","","","","","","","");
INSERT INTO property_description VALUES("6","6","Unique stay","","lorem ipsum","","","","","");
INSERT INTO property_description VALUES("7","7","dssdsd s dsdsdsd","","","","","","","");
INSERT INTO property_description VALUES("8","8","","","","","","","","");
INSERT INTO property_description VALUES("9","9","","","","","","","","");
INSERT INTO property_description VALUES("10","10","Trichy apartment","","","","","","","");
INSERT INTO property_description VALUES("11","11","gh","","","","","","","");
INSERT INTO property_description VALUES("12","12","uiy","","","","","","","");
INSERT INTO property_description VALUES("13","13","dfsdf","","","","","","","");
INSERT INTO property_description VALUES("14","14","","","","","","","","");
INSERT INTO property_description VALUES("15","15","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but alsoLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also","Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also","Aldus PageMaker including versions of Lorem Ipsum.","1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.","but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the.");
INSERT INTO property_description VALUES("16","16","jkhj","","","","","","","");
INSERT INTO property_description VALUES("17","17","","","","","","","","");
INSERT INTO property_description VALUES("18","18","","","","","","","","");
INSERT INTO property_description VALUES("19","19","","","","","","","","");
INSERT INTO property_description VALUES("20","20","test","","","","","","","");
INSERT INTO property_description VALUES("21","21","","","","","","","","");
INSERT INTO property_description VALUES("22","22","","","","","","","","");
INSERT INTO property_description VALUES("23","23","sfd","","","","","","","");
INSERT INTO property_description VALUES("24","24","xcvxcvx","","","","","","","");
INSERT INTO property_description VALUES("25","25","hbjbjk","","","","","","","");
INSERT INTO property_description VALUES("26","26","hgh","","","","","","","");
INSERT INTO property_description VALUES("27","27","","","","","","","","");
INSERT INTO property_description VALUES("28","28","","","","","","","","");
INSERT INTO property_description VALUES("29","29","","","","","","","","");
INSERT INTO property_description VALUES("30","30","Asfsd","","","","","","","");
INSERT INTO property_description VALUES("31","31","","","","","","","","");
INSERT INTO property_description VALUES("32","32","xcvxcv","","","","","","","");
INSERT INTO property_description VALUES("33","33","","","","","","","","");
INSERT INTO property_description VALUES("34","34","dfgdf","","","","","","","");
INSERT INTO property_description VALUES("35","35","","","","","","","","");
INSERT INTO property_description VALUES("36","36","zcc","","","","","","","");
INSERT INTO property_description VALUES("37","37","asdasd","","","","","","","");
INSERT INTO property_description VALUES("38","38","gdfgd","","","","","","","");
INSERT INTO property_description VALUES("39","39","Private House","","","","","","","");
INSERT INTO property_description VALUES("40","40","Apartment House","","","","","","","");
INSERT INTO property_description VALUES("41","41","Private Room","","","","","","","");
INSERT INTO property_description VALUES("42","42","Bungalow","","","","","","","");
INSERT INTO property_description VALUES("43","43","Villa","","","","","","","");
INSERT INTO property_description VALUES("44","44","Boat House","","","","","","","");
INSERT INTO property_description VALUES("45","45","Tree House","","","","","","","");
INSERT INTO property_description VALUES("46","46","Tent House","","","","","","","");
INSERT INTO property_description VALUES("47","47","Island stay","","","","","","","");
INSERT INTO property_description VALUES("48","48","Hut house","","","","","","","");
INSERT INTO property_description VALUES("49","49","Castle","","","","","","","");
INSERT INTO property_description VALUES("50","50","Dorm","","","","","","","");
INSERT INTO property_description VALUES("51","51","Townhouse","","","","","","","");
INSERT INTO property_description VALUES("52","52","Private house","","","","","","","");
INSERT INTO property_description VALUES("53","53","Barcelona Villa","","","","","","","");
INSERT INTO property_description VALUES("54","54","Cave house","","","","","","","");
INSERT INTO property_description VALUES("55","55","Apartment","","","","","","","");
INSERT INTO property_description VALUES("56","56","Island Singapore","","","","","","","");
INSERT INTO property_description VALUES("57","57","Entire house in New Delhi","","","","","","","");
INSERT INTO property_description VALUES("58","58","Rooms in Delhi","","","","","","","");
INSERT INTO property_description VALUES("59","59","Cabin house","","","","","","","");
INSERT INTO property_description VALUES("60","60","Single room","","","","","","","");
INSERT INTO property_description VALUES("61","61","","","","","","","","");
INSERT INTO property_description VALUES("62","62","testing message","","","","","","","");
INSERT INTO property_description VALUES("63","63","new","","","","","","","");
INSERT INTO property_description VALUES("64","64","test","","","","","","","");
INSERT INTO property_description VALUES("65","65","hj","","","","","","","");
INSERT INTO property_description VALUES("66","66","aaaa","","","","","","","");
INSERT INTO property_description VALUES("67","67","dddd","","","","","","","");
INSERT INTO property_description VALUES("68","68","sdfsdf","","","","","","","");
INSERT INTO property_description VALUES("69","69","ghgh","","","","","","","");
INSERT INTO property_description VALUES("70","70","eng content","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).","It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).");
INSERT INTO property_description VALUES("71","71","test descc","","","","","","","");
INSERT INTO property_description VALUES("72","72","eng content","","eng about","","","","","");
INSERT INTO property_description VALUES("73","73","Best Accommodation With Beautiful View","","","","","","","");
INSERT INTO property_description VALUES("74","74","Best accommodation for your trip","","","","","","","");
INSERT INTO property_description VALUES("75","75","Best Accommodation for Your Holiday Trip","","","","","","","");
INSERT INTO property_description VALUES("76","76","","","","","","","","");
INSERT INTO property_description VALUES("77","77","Best Place In Goa with Beautiful View","","","","","","","");
INSERT INTO property_description VALUES("78","78","best accommodation for your trip","","","","","","","");
INSERT INTO property_description VALUES("79","79","Beautiful house for vacation trip","","","","","","","");
INSERT INTO property_description VALUES("80","80","best place for the holiday trip","","","","","","","");
INSERT INTO property_description VALUES("81","81","Pleasant home/apt in Chennai","","","","","","","");
INSERT INTO property_description VALUES("82","82","","","","","","","","");
INSERT INTO property_description VALUES("83","83","djshnf","","dfd","","","","","");
INSERT INTO property_description VALUES("84","84","asdfaf","","","","","","","");
INSERT INTO property_description VALUES("85","85","sfdsfsf","","","","","","","");
INSERT INTO property_description VALUES("86","86","Best place for a vacation trip","holiday trip","good place","good","good","best view","nice place to visit","nice place to visit");
INSERT INTO property_description VALUES("87","87","test","","","","","","","");
INSERT INTO property_description VALUES("88","88","ere","","","","","","","");
INSERT INTO property_description VALUES("89","89","cada de 4 cuarttosdjqe??ngydlvzchjsiocuiog??njifcoaei","hsfj??nhgacmgadfj??cghaj??h","jdviojgfuiacfhncshnuh","hnoj??huilgnuil","jkljkslvm{sjkl??bhjtkl??ghew??hciodsmjgklh","iouiouion??","hnjonphuionhjklbgyln","nhjknlhui??nhuilhnui??nhui");
INSERT INTO property_description VALUES("90","90","grevgbgckvhgeuysbg ugisdabodgyu","","","","","","","");
INSERT INTO property_description VALUES("91","91","hermosa casa","","","","","","","");





CREATE TABLE IF NOT EXISTS `property_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `property_fees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_fees VALUES("1","more_then_seven","5");
INSERT INTO property_fees VALUES("2","less_then_seven","10");
INSERT INTO property_fees VALUES("3","host_service_charge","5");
INSERT INTO property_fees VALUES("4","guest_service_charge","5");
INSERT INTO property_fees VALUES("5","cancel_limit","0");
INSERT INTO property_fees VALUES("6","currency","USD");
INSERT INTO property_fees VALUES("7","host_penalty","10");
INSERT INTO property_fees VALUES("8","iva_tax","13");
INSERT INTO property_fees VALUES("9","accomodation_tax","1");
INSERT INTO property_fees VALUES("10","flexible_day_before","1");
INSERT INTO property_fees VALUES("11","flexible_day_before_percentage","100");
INSERT INTO property_fees VALUES("12","flexible_day_after_percentage","0");
INSERT INTO property_fees VALUES("13","moderate_day_before","5");
INSERT INTO property_fees VALUES("14","moderate_day_before_percentage","100");
INSERT INTO property_fees VALUES("15","moderate_day_after_percentage","50");
INSERT INTO property_fees VALUES("16","strict_day_before","7");
INSERT INTO property_fees VALUES("17","strict_day_before_percentage","50");
INSERT INTO property_fees VALUES("18","strict_day_after_percentage","0");





CREATE TABLE IF NOT EXISTS `property_icalimports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `icalendar_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icalendar_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icalendar_last_sync` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `property_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(105) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_photo` int(11) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0,
  `type` enum('photo','video') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_photos VALUES("1","1","1625464337_img.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("2","6","1625484527_img2.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("3","5","1625484701_img3.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("4","4","1625484861_img4.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("16","5","1626870842_65e9fef6-1141-4e3c-bc9f-f0972b7033a2.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("17","5","1626870842_ethnotel-hotel-inside-view.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("18","5","1626870842_Hotel-ICON-1.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("19","5","1626870842_TWA-airport-hotel-room-1200x835.jpg","","0","5","photo");
INSERT INTO property_photos VALUES("20","10","1628173586_default-banner.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("24","10","1628228720_hosting-banner.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("26","10","1628230254_chicago-1578405673.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("27","10","1628231449_california-1578405673.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("28","10","1628232921_new-oleans-1578405674.jpg","","0","5","photo");
INSERT INTO property_photos VALUES("29","5","https://www.youtube.com/embed/uQ6xbsl6kSo","","0","1","video");
INSERT INTO property_photos VALUES("31","5","https://www.youtube.com/embed/as5v7lHQ5bY","","0","2","video");
INSERT INTO property_photos VALUES("42","15","https://www.youtube.com/embed/TaVDljl01d0","","0","2","video");
INSERT INTO property_photos VALUES("43","15","1628503917_best-weather-for-deer-hunting-hunter.jpg","","0","1","photo");
INSERT INTO property_photos VALUES("44","15","1628503988_kyle-glenn-xY4r7y-Cllo-unsplash.jpg","","1","2","photo");
INSERT INTO property_photos VALUES("45","13","1628508271_img.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("48","10","https://www.youtube.com/embed/TaVDljl01d0","","0","1","video");
INSERT INTO property_photos VALUES("49","40","1629719672_ny1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("50","41","1629721216_ny2.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("51","42","1629721749_ny3.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("52","43","1629722281_ny4.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("54","44","1629722998_ny5.jpg","","1","2","photo");
INSERT INTO property_photos VALUES("55","45","1629723435_ny6.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("56","46","1629724316_ny7.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("58","48","1629725388_ny9.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("59","49","1629726009_ny10.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("60","50","1629727321_ny11.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("61","51","1629727691_syd1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("64","53","1629728681_barce1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("65","54","1629730577_berlin1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("66","55","1629730932_budapest1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("67","56","1629731385_sing1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("68","57","1629731653_del1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("69","58","1629731972_del2.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("70","59","1629732358_sing2.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("71","60","1629782423_budapest2.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("72","59","1629785128_cabin-sing.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("73","57","1629785372_ndelhi2.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("74","57","1629785451_ndelhi3.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("75","62","https://www.youtube.com/embed/JZgdqhLV4i4","","0","1","video");
INSERT INTO property_photos VALUES("76","58","1629900495_del4.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("77","58","1629900709_del5.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("78","56","1629901154_new1.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("79","56","1629901165_new2.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("80","56","1629901327_new3.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("81","55","1629901789_new5.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("82","55","1629901812_new6.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("83","54","1629902137_new7.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("84","53","1629902630_1.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("85","53","1629902692_2.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("86","52","1629903108_3.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("87","52","1629903118_4.jpg","","1","3","photo");
INSERT INTO property_photos VALUES("88","52","1629903129_5.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("89","52","1629903140_6.jpg","","0","5","photo");
INSERT INTO property_photos VALUES("90","52","1629903359_7.jpg","","0","6","photo");
INSERT INTO property_photos VALUES("91","51","1629903550_8.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("92","50","1629903803_9.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("93","50","1629903899_10.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("94","49","1629904107_11.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("95","48","1629904309_12.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("96","47","1629904717_13.jpg","","1","2","photo");
INSERT INTO property_photos VALUES("97","47","1629904757_14.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("98","47","1629904975_15.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("99","46","1629905199_16.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("100","45","1629905461_17.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("101","45","1629905471_18.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("102","44","1629905851_19.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("103","44","1629905863_20.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("104","43","1629906270_21.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("105","43","1629906284_22.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("106","43","1629906295_23.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("107","42","1629988070_new8.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("108","41","1629988308_new9.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("109","41","1629988323_new10.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("110","40","1629988640_new11.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("111","40","1629988657_new12.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("112","40","1629988669_new13.jpg","","0","4","photo");
INSERT INTO property_photos VALUES("113","63","1629989324_new14.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("114","63","1629989349_new15.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("115","60","1629989737_new16.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("116","60","1629989756_new17.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("117","6","1630048529_new18.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("118","4","1630049374_new19.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("119","67","1631346829_1629728681_barce1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("120","68","1631347533_1629728681_barce1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("121","68","1631348225_1629728681_barce1.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("122","4","https://www.youtube.com/embed/OQ2448utWIE","","0","1","video");
INSERT INTO property_photos VALUES("123","70","1636187496_1629728681_barce1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("124","71","1636359373_Girls-whatsapp-Dp-123-1024x1024.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("125","72","1638343318_1629728681_barce1.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("126","73","1638425398_house-isolated-field.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("127","74","1638428191_empty-flat-interrior-with-elements-decoration.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("128","75","1638439317_house-isolated-field.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("129","77","1638509721_solar-panels-roof-modern-house-harvesting-renewable-energy-with-solar-cell-panels-exterior-design-3d-rendering_11zon.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("130","78","1638513793_modern-style-house-exterior-with-terrace.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("132","79","1638535729_solar-panels-roof-modern-house-harvesting-renewable-energy-with-solar-cell-panels-exterior-design-3d-rendering_11zon.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("133","80","1638537456_modern-style-house-exterior-with-terrace.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("134","80","1638537466_empty-flat-interrior-with-elements-decoration.jpg","","0","2","photo");
INSERT INTO property_photos VALUES("135","81","1638596256_beautiful-red-brick-house-with-decorative-lights_11zon.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("136","83","1638773517_beautiful-red-brick-house-with-decorative-lights_11zon.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("137","83","https://www.youtube.com/embed/I6UY","","0","1","video");
INSERT INTO property_photos VALUES("138","83","1638773594_Pi7compressedhouse-isolated-field(1).jpg","","0","2","photo");
INSERT INTO property_photos VALUES("139","83","1638773633_modern-style-house-exterior-with-terrace.jpg","","0","3","photo");
INSERT INTO property_photos VALUES("140","86","1638872074_beautiful-red-brick-house-with-decorative-lights_11zon.jpg","","1","1","photo");
INSERT INTO property_photos VALUES("141","89","1640639620_fotoprueba.jpg","","1","1","photo");





CREATE TABLE IF NOT EXISTS `property_price` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `cleaning_fee` int(11) NOT NULL DEFAULT 0,
  `guest_after` int(11) NOT NULL DEFAULT 0,
  `guest_fee` int(11) NOT NULL DEFAULT 0,
  `security_fee` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `weekend_price` int(11) NOT NULL DEFAULT 0,
  `weekly_discount` int(11) NOT NULL DEFAULT 0,
  `monthly_discount` int(11) NOT NULL DEFAULT 0,
  `currency_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_price VALUES("1","1","0","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("2","2","0","1","0","0","20","0","0","0","USD");
INSERT INTO property_price VALUES("3","3","0","1","0","0","30","0","0","0","USD");
INSERT INTO property_price VALUES("4","4","7","1","0","0","35","0","0","0","USD");
INSERT INTO property_price VALUES("5","5","0","1","0","0","15","0","0","0","USD");
INSERT INTO property_price VALUES("6","6","5","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("7","7","0","1","0","0","30","0","0","0","USD");
INSERT INTO property_price VALUES("8","8","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("9","9","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("10","10","0","1","0","0","12","0","0","0","USD");
INSERT INTO property_price VALUES("11","11","0","1","0","0","67","0","0","0","USD");
INSERT INTO property_price VALUES("12","12","0","1","0","20","10","15","10","20","USD");
INSERT INTO property_price VALUES("13","13","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("14","14","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("15","15","10","1","50","50","100","120","10","20","USD");
INSERT INTO property_price VALUES("16","16","0","1","0","0","20","0","0","0","USD");
INSERT INTO property_price VALUES("17","17","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("18","18","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("19","19","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("20","20","0","1","10","0","10","0","0","0","CNY");
INSERT INTO property_price VALUES("21","21","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("22","22","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("23","23","0","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("24","24","0","1","0","0","12","0","0","0","USD");
INSERT INTO property_price VALUES("25","25","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("26","26","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("27","27","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("28","28","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("29","29","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("30","30","0","1","0","0","10","0","0","0","GBP");
INSERT INTO property_price VALUES("31","31","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("32","32","0","1","0","0","12","0","0","0","USD");
INSERT INTO property_price VALUES("33","33","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("34","34","0","1","0","0","12","0","0","0","USD");
INSERT INTO property_price VALUES("35","35","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("36","36","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("37","37","0","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("38","38","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("39","39","5","2","5","10","25","5","2","5","USD");
INSERT INTO property_price VALUES("40","40","15","2","20","14","32","10","0","0","USD");
INSERT INTO property_price VALUES("41","41","5","1","0","0","22","0","0","0","USD");
INSERT INTO property_price VALUES("42","42","0","1","5","5","37","0","0","0","USD");
INSERT INTO property_price VALUES("43","43","15","1","0","0","42","5","0","0","USD");
INSERT INTO property_price VALUES("44","44","12","1","0","0","25","0","0","0","USD");
INSERT INTO property_price VALUES("45","45","0","1","0","0","25","5","2","7","USD");
INSERT INTO property_price VALUES("46","46","0","1","10","0","24","0","0","0","USD");
INSERT INTO property_price VALUES("47","47","5","1","0","12","50","3","0","0","USD");
INSERT INTO property_price VALUES("48","48","4","1","0","0","20","0","2","5","USD");
INSERT INTO property_price VALUES("49","49","0","2","5","4","70","0","10","15","USD");
INSERT INTO property_price VALUES("50","50","5","1","0","0","15","0","0","0","USD");
INSERT INTO property_price VALUES("51","51","0","2","12","0","40","0","0","0","USD");
INSERT INTO property_price VALUES("52","52","0","1","0","0","35","4","2","8","USD");
INSERT INTO property_price VALUES("53","53","0","1","0","10","47","0","4","7","USD");
INSERT INTO property_price VALUES("54","54","10","1","0","0","85","0","5","7","USD");
INSERT INTO property_price VALUES("55","55","2","1","3","5","55","5","3","7","USD");
INSERT INTO property_price VALUES("56","56","5","1","7","0","70","0","7","12","USD");
INSERT INTO property_price VALUES("57","57","5","1","7","0","45","0","2","5","USD");
INSERT INTO property_price VALUES("58","58","8","1","12","0","25","4","0","0","USD");
INSERT INTO property_price VALUES("59","59","5","1","5","7","85","3","2","7","USD");
INSERT INTO property_price VALUES("60","60","5","1","0","0","35","3","0","7","USD");
INSERT INTO property_price VALUES("61","61","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("62","62","0","1","20","0","100","0","0","0","USD");
INSERT INTO property_price VALUES("63","63","5","1","0","10","25","0","0","0","USD");
INSERT INTO property_price VALUES("64","64","0","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("65","65","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("66","66","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("67","67","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("68","68","0","1","0","0","10","0","0","0","USD");
INSERT INTO property_price VALUES("69","69","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("70","70","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("71","71","0","1","0","0","15","0","0","0","USD");
INSERT INTO property_price VALUES("72","72","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("73","73","10","2","100","100","200","250","0","0","USD");
INSERT INTO property_price VALUES("74","74","10","1","0","100","200","250","0","0","USD");
INSERT INTO property_price VALUES("75","75","5","1","50","50","100","0","0","0","USD");
INSERT INTO property_price VALUES("76","76","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("77","77","5","1","0","50","100","0","0","0","USD");
INSERT INTO property_price VALUES("78","78","10","1","0","100","200","0","0","0","USD");
INSERT INTO property_price VALUES("79","79","10","1","0","50","100","0","0","0","USD");
INSERT INTO property_price VALUES("80","80","10","1","0","50","100","0","0","0","USD");
INSERT INTO property_price VALUES("81","81","10","1","0","50","100","0","0","0","USD");
INSERT INTO property_price VALUES("82","82","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("83","83","0","1","0","0","100","0","5","10","USD");
INSERT INTO property_price VALUES("84","84","0","1","0","0","5","0","0","0","USD");
INSERT INTO property_price VALUES("85","85","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("86","86","0","1","0","0","100","0","0","0","USD");
INSERT INTO property_price VALUES("87","87","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("88","88","0","0","0","0","0","0","0","0","USD");
INSERT INTO property_price VALUES("89","89","5","1","5","0","20","100","0","0","USD");
INSERT INTO property_price VALUES("90","90","0","1","0","0","20","0","0","0","USD");
INSERT INTO property_price VALUES("91","91","0","0","0","0","0","0","0","0","USD");





CREATE TABLE IF NOT EXISTS `property_rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `property_steps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `basics` int(11) NOT NULL DEFAULT 0,
  `description` int(11) NOT NULL DEFAULT 0,
  `location` int(11) NOT NULL DEFAULT 0,
  `photos` int(11) NOT NULL DEFAULT 0,
  `pricing` int(11) NOT NULL DEFAULT 0,
  `booking` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_steps VALUES("1","1","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("2","2","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("3","3","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("4","4","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("5","5","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("6","6","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("7","7","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("8","8","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("9","9","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("10","10","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("11","11","1","1","1","0","1","0");
INSERT INTO property_steps VALUES("12","12","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("13","13","1","1","1","1","0","0");
INSERT INTO property_steps VALUES("14","14","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("15","15","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("16","16","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("17","17","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("18","18","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("19","19","0","0","1","0","1","1");
INSERT INTO property_steps VALUES("20","20","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("21","21","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("22","22","1","0","0","0","0","0");
INSERT INTO property_steps VALUES("23","23","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("24","24","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("25","25","1","1","0","0","0","0");
INSERT INTO property_steps VALUES("26","26","1","1","1","0","0","0");
INSERT INTO property_steps VALUES("27","27","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("28","28","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("29","29","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("30","30","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("31","31","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("32","32","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("33","33","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("34","34","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("35","35","1","0","0","0","0","0");
INSERT INTO property_steps VALUES("36","36","1","1","0","0","0","0");
INSERT INTO property_steps VALUES("37","37","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("38","38","1","1","0","0","0","0");
INSERT INTO property_steps VALUES("39","39","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("40","40","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("41","41","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("42","42","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("43","43","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("44","44","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("45","45","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("46","46","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("47","47","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("48","48","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("49","49","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("50","50","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("51","51","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("52","52","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("53","53","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("54","54","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("55","55","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("56","56","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("57","57","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("58","58","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("59","59","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("60","60","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("61","61","1","0","0","0","0","0");
INSERT INTO property_steps VALUES("62","62","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("63","63","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("64","64","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("65","65","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("66","66","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("67","67","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("68","68","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("69","69","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("70","70","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("71","71","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("72","72","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("73","73","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("74","74","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("75","75","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("76","76","0","0","0","0","0","0");
INSERT INTO property_steps VALUES("77","77","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("78","78","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("79","79","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("80","80","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("81","81","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("82","82","1","0","0","0","0","0");
INSERT INTO property_steps VALUES("83","83","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("84","84","1","1","1","0","1","0");
INSERT INTO property_steps VALUES("85","85","1","1","0","0","0","0");
INSERT INTO property_steps VALUES("86","86","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("87","87","1","1","1","0","0","0");
INSERT INTO property_steps VALUES("88","88","1","1","1","0","0","0");
INSERT INTO property_steps VALUES("89","89","1","1","1","1","1","1");
INSERT INTO property_steps VALUES("90","90","1","1","1","0","1","1");
INSERT INTO property_steps VALUES("91","91","1","1","0","0","0","0");





CREATE TABLE IF NOT EXISTS `property_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO property_type VALUES("1","1","Apartment","Apartment","Active","en","1");
INSERT INTO property_type VALUES("2","2","House","House","Active","en","1");
INSERT INTO property_type VALUES("3","3","Bed & Break Fast","Bed & Break Fast","Active","en","1");
INSERT INTO property_type VALUES("4","4","Loft","Loft","Active","en","1");
INSERT INTO property_type VALUES("5","5","Townhouse","Townhouse","Active","en","1");
INSERT INTO property_type VALUES("6","6","Condominium","Condominium","Active","en","1");
INSERT INTO property_type VALUES("7","7","Bungalow","Bungalow","Active","en","1");
INSERT INTO property_type VALUES("8","8","Cabin","Cabin","Active","en","1");
INSERT INTO property_type VALUES("9","9","Villa","Villa","Active","en","1");
INSERT INTO property_type VALUES("10","10","Castle","Castle","Active","en","1");
INSERT INTO property_type VALUES("11","11","Dorm","Dorm","Active","en","1");
INSERT INTO property_type VALUES("12","12","Treehouse","Treehouse","Active","en","1");
INSERT INTO property_type VALUES("13","13","Boat","Boat","Active","en","1");
INSERT INTO property_type VALUES("14","14","Plane","Plane","Active","en","1");
INSERT INTO property_type VALUES("15","15","Camper/RV","Camper/RV","Active","en","1");
INSERT INTO property_type VALUES("16","16","Lgloo","Lgloo","Active","en","1");
INSERT INTO property_type VALUES("19","19","Tipi","Tipi","Active","en","1");
INSERT INTO property_type VALUES("20","20","Cave","Cave","Active","en","1");
INSERT INTO property_type VALUES("21","21","Island","Island","Active","en","1");
INSERT INTO property_type VALUES("22","22","Chalet","Chalet","Active","en","1");
INSERT INTO property_type VALUES("23","23","Earth House","Earth House","Active","en","1");
INSERT INTO property_type VALUES("24","24","Hut","Hut","Active","en","1");
INSERT INTO property_type VALUES("25","25","Train","Train","Active","en","1");
INSERT INTO property_type VALUES("26","26","Tent","Tent","Active","en","1");
INSERT INTO property_type VALUES("27","27","Other","Other","Active","en","1");
INSERT INTO property_type VALUES("44","44","Lighthouse","Lighthouse","Active","en","1");
INSERT INTO property_type VALUES("45","44","????????z","??????????","Active","ar","2");
INSERT INTO property_type VALUES("46","44","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("47","44","","Body","Active","fr","4");
INSERT INTO property_type VALUES("48","44","","Body","Active","pt","5");
INSERT INTO property_type VALUES("49","44","","Body","Active","ru","6");
INSERT INTO property_type VALUES("50","44","","Body","Active","es","7");
INSERT INTO property_type VALUES("51","44","","Body","Active","tr","8");
INSERT INTO property_type VALUES("52","52","test","test desc","Active","en","1");
INSERT INTO property_type VALUES("53","52","????????????","????????????","Active","ar","2");
INSERT INTO property_type VALUES("54","52","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("55","52","test","test","Active","fr","4");
INSERT INTO property_type VALUES("56","52","teste","teste","Active","pt","5");
INSERT INTO property_type VALUES("57","52","???????????????? ??????????????","???????????????? ??????????????","Active","ru","6");
INSERT INTO property_type VALUES("58","52","prueba","prueba","Active","es","7");
INSERT INTO property_type VALUES("59","52","??l??ek","??l??ek","Active","tr","8");
INSERT INTO property_type VALUES("67","9","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("68","9","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("69","9","villa","villa","Active","fr","4");
INSERT INTO property_type VALUES("70","9","villa","villa","Active","pt","5");
INSERT INTO property_type VALUES("71","9","??????????","??????????","Active","ru","6");
INSERT INTO property_type VALUES("72","9","vila","vila","Active","es","7");
INSERT INTO property_type VALUES("73","9","villa","villa","Active","tr","8");
INSERT INTO property_type VALUES("74","12","?????? ????????","?????? ????????","Active","ar","2");
INSERT INTO property_type VALUES("75","12","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("76","12","cabane dans les arbres","cabane dans les arbres","Active","fr","4");
INSERT INTO property_type VALUES("77","12","casa da ??rvore","casa da ??rvore","Active","pt","5");
INSERT INTO property_type VALUES("78","12","?????? ???? ????????????","?????? ???? ????????????","Active","ru","6");
INSERT INTO property_type VALUES("79","12","casa del ??rbol","casa del ??rbol","Active","es","7");
INSERT INTO property_type VALUES("80","25","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("81","12","a??a?? ev","a??a?? ev","Active","tr","8");
INSERT INTO property_type VALUES("82","25","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("83","25","m??tro","m??tro","Active","fr","4");
INSERT INTO property_type VALUES("84","25","Comboio","Comboio","Active","pt","5");
INSERT INTO property_type VALUES("85","25","??????????????????????????","??????????????????????????","Active","ru","6");
INSERT INTO property_type VALUES("86","25","tren","tren","Active","es","7");
INSERT INTO property_type VALUES("87","25","tren","tren","Active","tr","8");
INSERT INTO property_type VALUES("88","5","???????? ????????","???????? ????????","Active","ar","2");
INSERT INTO property_type VALUES("89","5","????????????","????????????","Active","ch","3");
INSERT INTO property_type VALUES("90","5","maison de ville","maison de ville","Active","fr","4");
INSERT INTO property_type VALUES("91","5","kamienica","kamienica","Active","pt","5");
INSERT INTO property_type VALUES("92","5","????????????????","????????????????","Active","ru","6");
INSERT INTO property_type VALUES("93","5","casa adosada","casa adosada","Active","es","7");
INSERT INTO property_type VALUES("94","5","konak","konak","Active","tr","8");
INSERT INTO property_type VALUES("95","19","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("96","19","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("97","19","tipi","tipi","Active","fr","4");
INSERT INTO property_type VALUES("98","19","tipi","tipi","Active","pt","5");
INSERT INTO property_type VALUES("99","19","????????","????????","Active","ru","6");
INSERT INTO property_type VALUES("100","19","tipi","tipi","Active","es","7");
INSERT INTO property_type VALUES("101","19","tip","tip","Active","tr","8");
INSERT INTO property_type VALUES("102","1","??????","??????","Active","ar","2");
INSERT INTO property_type VALUES("103","1","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("104","1","b??timent de plusieurs chambres","b??timent de plusieurs chambres","Active","fr","4");
INSERT INTO property_type VALUES("105","1","apartamento","apartamento","Active","pt","5");
INSERT INTO property_type VALUES("106","1","????????????????","????????????????","Active","ru","6");
INSERT INTO property_type VALUES("107","1","Departamento","Departamento","Active","es","7");
INSERT INTO property_type VALUES("108","1","apartman","apartman","Active","tr","8");
INSERT INTO property_type VALUES("109","2","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("110","2","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("111","2","maison","maison","Active","fr","4");
INSERT INTO property_type VALUES("112","2","casa","casa","Active","pt","5");
INSERT INTO property_type VALUES("113","2","??????","??????","Active","ru","6");
INSERT INTO property_type VALUES("114","2","casa","casa","Active","es","7");
INSERT INTO property_type VALUES("115","2","ev","ev","Active","tr","8");
INSERT INTO property_type VALUES("116","26","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("117","26","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("118","26","Tente","Tente","Active","fr","4");
INSERT INTO property_type VALUES("119","26","tenda","tenda","Active","pt","5");
INSERT INTO property_type VALUES("120","26","??????????????","??????????????","Active","ru","6");
INSERT INTO property_type VALUES("121","26","carpa","carpa","Active","es","7");
INSERT INTO property_type VALUES("122","26","??ad??r","??ad??r","Active","tr","8");
INSERT INTO property_type VALUES("123","14","??????????","??????????","Active","ar","2");
INSERT INTO property_type VALUES("124","14","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("125","14","avion","avion","Active","fr","4");
INSERT INTO property_type VALUES("126","14","avi??o","avi??o","Active","pt","5");
INSERT INTO property_type VALUES("127","14","??????????????","??????????????","Active","ru","6");
INSERT INTO property_type VALUES("128","14","avi??n","avi??n","Active","es","7");
INSERT INTO property_type VALUES("129","14","u??ak","u??ak","Active","tr","8");
INSERT INTO property_type VALUES("130","27","??????","??????","Active","ar","2");
INSERT INTO property_type VALUES("131","27","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("132","27","autre","autre","Active","fr","4");
INSERT INTO property_type VALUES("133","27","de outros","de outros","Active","pt","5");
INSERT INTO property_type VALUES("134","27","????????????","????????????","Active","ru","6");
INSERT INTO property_type VALUES("135","27","otro","otro","Active","es","7");
INSERT INTO property_type VALUES("136","27","ba??ka","ba??ka","Active","tr","8");
INSERT INTO property_type VALUES("137","4","????????????","????????????","Active","ar","2");
INSERT INTO property_type VALUES("138","4","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("139","4","grenier","grenier","Active","fr","4");
INSERT INTO property_type VALUES("140","4","loft","loft","Active","pt","5");
INSERT INTO property_type VALUES("141","4","????????????","????????????","Active","ru","6");
INSERT INTO property_type VALUES("142","4","desv??n","desv??n","Active","es","7");
INSERT INTO property_type VALUES("143","4","??at?? kat??","??at?? kat??","Active","tr","8");
INSERT INTO property_type VALUES("144","16","???????????? ????????????","???????????? ????????????","Active","ar","2");
INSERT INTO property_type VALUES("145","16","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("146","16","Iglou","Iglou","Active","fr","4");
INSERT INTO property_type VALUES("147","16","iglu","iglu","Active","pt","5");
INSERT INTO property_type VALUES("148","16","????????","????????","Active","ru","6");
INSERT INTO property_type VALUES("149","16","igl??","igl??","Active","es","7");
INSERT INTO property_type VALUES("150","16","eskimo","eskimo","Active","tr","8");
INSERT INTO property_type VALUES("151","21","??????????","??????????","Active","ar","2");
INSERT INTO property_type VALUES("152","21","???","???","Active","ch","3");
INSERT INTO property_type VALUES("153","21","??le","??le","Active","fr","4");
INSERT INTO property_type VALUES("154","21","ilha","ilha","Active","pt","5");
INSERT INTO property_type VALUES("155","21","????????????","????????????","Active","ru","6");
INSERT INTO property_type VALUES("156","21","isla","isla","Active","es","7");
INSERT INTO property_type VALUES("157","21","Adalet","Adalet","Active","tr","8");
INSERT INTO property_type VALUES("158","24","??????","??????","Active","ar","2");
INSERT INTO property_type VALUES("159","24","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("160","24","cabane","cabane","Active","fr","4");
INSERT INTO property_type VALUES("161","24","cabana","cabana","Active","pt","5");
INSERT INTO property_type VALUES("162","24","????????????","????????????","Active","ru","6");
INSERT INTO property_type VALUES("163","24","caba??a","caba??a","Active","es","7");
INSERT INTO property_type VALUES("164","24","kul??be","kul??be","Active","tr","8");
INSERT INTO property_type VALUES("165","23","?????? ??????????","?????? ??????????","Active","ar","2");
INSERT INTO property_type VALUES("166","23","?????????","?????????","Active","ch","3");
INSERT INTO property_type VALUES("167","23","Maison de la Terre","Maison de la Terre","Active","fr","4");
INSERT INTO property_type VALUES("168","23","Casa da Terra","Casa da Terra","Active","pt","5");
INSERT INTO property_type VALUES("169","23","???????????????? ??????","???????????????? ??????","Active","ru","6");
INSERT INTO property_type VALUES("170","23","Casa de la tierra","Casa de la tierra","Active","es","7");
INSERT INTO property_type VALUES("171","23","toprak ev","toprak ev","Active","tr","8");
INSERT INTO property_type VALUES("172","11","????????????","????????????","Active","ar","2");
INSERT INTO property_type VALUES("173","11","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("174","11","dortoir","dortoir","Active","fr","4");
INSERT INTO property_type VALUES("175","11","dormit??rio","dormit??rio","Active","pt","5");
INSERT INTO property_type VALUES("176","11","??????????????????","??????????????????","Active","ru","6");
INSERT INTO property_type VALUES("177","11","residencia universitaria","residencia universitaria","Active","es","7");
INSERT INTO property_type VALUES("178","11","yurt","yurt","Active","tr","8");
INSERT INTO property_type VALUES("179","6","????????????","????????????","Active","ar","2");
INSERT INTO property_type VALUES("180","6","????????????","????????????","Active","ch","3");
INSERT INTO property_type VALUES("181","6","condominium","condominium","Active","fr","4");
INSERT INTO property_type VALUES("182","6","condom??nio","condom??nio","Active","pt","5");
INSERT INTO property_type VALUES("183","6","??????????????????????","??????????????????????","Active","ru","6");
INSERT INTO property_type VALUES("184","6","condominio","condominio","Active","es","7");
INSERT INTO property_type VALUES("185","6","kat m??lkiyeti","kat m??lkiyeti","Active","tr","8");
INSERT INTO property_type VALUES("186","22","??????????","??????????","Active","ar","2");
INSERT INTO property_type VALUES("187","22","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("188","22","Chalet","Chalet","Active","fr","4");
INSERT INTO property_type VALUES("189","22","Chal??","Chal??","Active","pt","5");
INSERT INTO property_type VALUES("190","22","????????","????????","Active","ru","6");
INSERT INTO property_type VALUES("191","22","chal??","chal??","Active","es","7");
INSERT INTO property_type VALUES("192","22","Da?? evi","Da?? evi","Active","tr","8");
INSERT INTO property_type VALUES("193","20","??????","??????","Active","ar","2");
INSERT INTO property_type VALUES("194","20","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("195","20","la grotte","la grotte","Active","fr","4");
INSERT INTO property_type VALUES("196","20","caverna","caverna","Active","pt","5");
INSERT INTO property_type VALUES("197","20","????????????","????????????","Active","ru","6");
INSERT INTO property_type VALUES("198","20","cueva","cueva","Active","es","7");
INSERT INTO property_type VALUES("199","20","ma??ara","ma??ara","Active","tr","8");
INSERT INTO property_type VALUES("200","10","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("201","10","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("202","10","ch??teau","ch??teau","Active","fr","4");
INSERT INTO property_type VALUES("203","10","castelo","castelo","Active","pt","5");
INSERT INTO property_type VALUES("204","10","??????????","??????????","Active","ru","6");
INSERT INTO property_type VALUES("205","10","castillo","castillo","Active","es","7");
INSERT INTO property_type VALUES("206","10","kale","kale","Active","tr","8");
INSERT INTO property_type VALUES("207","15","???????????? / ???????? ?????? ????????????","???????????? / ???????? ?????? ????????????","Active","ar","2");
INSERT INTO property_type VALUES("208","15","?????????/??????","?????????/??????","Active","ch","3");
INSERT INTO property_type VALUES("209","15","Camping-car / VR","Camping-car / VR","Active","fr","4");
INSERT INTO property_type VALUES("210","15","Caravana / RV","Caravana / RV","Active","pt","5");
INSERT INTO property_type VALUES("211","15","???????????? / ????????????","???????????? / ????????????","Active","ru","6");
INSERT INTO property_type VALUES("212","15","Camper / RV","Camper / RV","Active","es","7");
INSERT INTO property_type VALUES("213","15","karavan / karavan","karavan / karavan","Active","tr","8");
INSERT INTO property_type VALUES("214","8","??????????????","??????????????","Active","ar","2");
INSERT INTO property_type VALUES("215","8","???","???","Active","ch","3");
INSERT INTO property_type VALUES("216","8","cabine","cabine","Active","fr","4");
INSERT INTO property_type VALUES("217","8","cabine","cabine","Active","pt","5");
INSERT INTO property_type VALUES("218","8","?????????? ????????????????","?????????? ????????????????","Active","ru","6");
INSERT INTO property_type VALUES("219","8","cabina","cabina","Active","es","7");
INSERT INTO property_type VALUES("220","8","kabin","kabin","Active","tr","8");
INSERT INTO property_type VALUES("221","7","?????? ???? ???????? ????????","?????? ???? ???????? ????????","Active","ar","2");
INSERT INTO property_type VALUES("222","7","??????","??????","Active","ch","3");
INSERT INTO property_type VALUES("223","7","bungalow","bungalow","Active","fr","4");
INSERT INTO property_type VALUES("224","7","bangal??","bangal??","Active","pt","5");
INSERT INTO property_type VALUES("225","7","??????????????","??????????????","Active","ru","6");
INSERT INTO property_type VALUES("226","7","bungalow","bungalow","Active","es","7");
INSERT INTO property_type VALUES("227","7","tek katl?? ev","tek katl?? ev","Active","tr","8");
INSERT INTO property_type VALUES("228","13","????????","????????","Active","ar","2");
INSERT INTO property_type VALUES("229","13","???","???","Active","ch","3");
INSERT INTO property_type VALUES("230","13","bateau","bateau","Active","fr","4");
INSERT INTO property_type VALUES("231","13","barco","barco","Active","pt","5");
INSERT INTO property_type VALUES("232","13","??????????","??????????","Active","ru","6");
INSERT INTO property_type VALUES("233","13","barco","barco","Active","es","7");
INSERT INTO property_type VALUES("234","13","tekne","tekne","Active","tr","8");
INSERT INTO property_type VALUES("235","3","???????? ?? ????????","???????? ?? ????????","Active","ar","2");
INSERT INTO property_type VALUES("236","3","????????????","????????????","Active","ch","3");
INSERT INTO property_type VALUES("237","3","lit et petit-d??jeuner","lit et petit-d??jeuner","Active","fr","4");
INSERT INTO property_type VALUES("238","3","Cama e caf?? da manh??","Cama e caf?? da manh??","Active","pt","5");
INSERT INTO property_type VALUES("239","3","?????????????? ?? ??????????????","?????????????? ?? ??????????????","Active","ru","6");
INSERT INTO property_type VALUES("240","3","Cama y Desayuno","Cama y Desayuno","Active","es","7");
INSERT INTO property_type VALUES("241","3","Oda & Kahvalt??","Oda & Kahvalt??","Active","tr","8");
INSERT INTO property_type VALUES("242","242","Yurt","Yurt","Active","en","1");
INSERT INTO property_type VALUES("243","242","Yurt","Yurt","Active","pt","5");
INSERT INTO property_type VALUES("244","242","Yurta","Yurta","Active","es","7");





CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('unsolved','solved') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unsolved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;






CREATE TABLE IF NOT EXISTS `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `reviewer` enum('guest','host') COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_feedback` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `improve_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `accuracy` int(11) DEFAULT NULL,
  `accuracy_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` int(11) DEFAULT NULL,
  `location_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `communication` int(11) DEFAULT NULL,
  `communication_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkin` int(11) DEFAULT NULL,
  `checkin_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cleanliness` int(11) DEFAULT NULL,
  `cleanliness_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amenities` int(11) DEFAULT NULL,
  `amenities_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `value_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_rules` int(11) DEFAULT NULL,
  `recommend` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reviews VALUES("1","1","2","3","4","host","good","dfsdfsdfs fddsfdfdfdsfsdfs dsfsdf","","","5","","","","","5","","","","4","","","","","","5","","2021-08-12 14:21:11","2021-08-12 14:21:11");
INSERT INTO reviews VALUES("2","2","1","3","4","guest","Lorem Ipsum is simply dummy text of the printing and typesetting industry.","Lorem Ipsum is simply dummy text of the printing and typesetting industry.","","Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.","5","4","","5","","5","","2","","5","","3","","5","","","","2021-08-12 14:25:28","2021-08-12 14:25:41");
INSERT INTO reviews VALUES("3","2","1","4","4","guest","its awesome","its awesome","","nothing","5","5","","5","","5","","5","","5","","5","","5","","","","2021-08-25 10:19:17","2021-08-25 10:19:35");





CREATE TABLE IF NOT EXISTS `role_admin` (
  `admin_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`admin_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO role_admin VALUES("1","2");
INSERT INTO role_admin VALUES("3","1");
INSERT INTO role_admin VALUES("4","1");
INSERT INTO role_admin VALUES("5","1");





CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO roles VALUES("1","admin","Admin","Admin User","","");
INSERT INTO roles VALUES("2","invitado","Invitado","Acceso Controlado","2022-01-05 15:43:58","2022-01-05 15:43:58");





CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO rules VALUES("1","Suitable for children (2-12 years)","Active");
INSERT INTO rules VALUES("2","Suitable for infants (Under 2 years)","Active");
INSERT INTO rules VALUES("3","Suitable for pets","Active");
INSERT INTO rules VALUES("4","Smoking allowed","Active");
INSERT INTO rules VALUES("5","Events or parties allowed","Active");





CREATE TABLE IF NOT EXISTS `seo_metas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO seo_metas VALUES("1","/","Home | Rental  Marketplace Script","Rental marketplace to Add your listing & Earnasdfasdf","rental business");
INSERT INTO seo_metas VALUES("2","login","Log In","Log In","");
INSERT INTO seo_metas VALUES("3","register","Register","Register","");
INSERT INTO seo_metas VALUES("4","newest","Newest Photos","Newest Photos","");
INSERT INTO seo_metas VALUES("5","forgot_password","Forgot Password","Forgot Password","");
INSERT INTO seo_metas VALUES("6","dashboard","Feeds","Feeds","");
INSERT INTO seo_metas VALUES("7","uploads","Uploads","Uploads","");
INSERT INTO seo_metas VALUES("8","notification","Notification","Notification","");
INSERT INTO seo_metas VALUES("9","profile","Profile","Profile","");
INSERT INTO seo_metas VALUES("10","profile/{id}","Profile","Profile","");
INSERT INTO seo_metas VALUES("11","manage-photos","Manage Photos","Manage Photos","");
INSERT INTO seo_metas VALUES("12","earning","Earning","Earning","");
INSERT INTO seo_metas VALUES("13","purchase","Purchase","Purchase","");
INSERT INTO seo_metas VALUES("14","settings","Settings","Settings","");
INSERT INTO seo_metas VALUES("15","settings/account","Settings","Settings","");
INSERT INTO seo_metas VALUES("16","settings/payment","Settings","Settings","");
INSERT INTO seo_metas VALUES("17","photo/single/{id}","Photo Single","Photo Single","");
INSERT INTO seo_metas VALUES("18","payments/success","Payment Success","Payment Success","");
INSERT INTO seo_metas VALUES("19","payments/cancel","Payment Cancel","Payment Cancel","");
INSERT INTO seo_metas VALUES("20","profile-uploads/{type}","Profile Uploads","Profile Uploads","");
INSERT INTO seo_metas VALUES("21","photo-details/{id}","Photo Details","Photo Details","");
INSERT INTO seo_metas VALUES("22","withdraws","Withdraws","Withdraws","");
INSERT INTO seo_metas VALUES("23","photos/download/{id}","Photos Download","Photos Download","");
INSERT INTO seo_metas VALUES("24","users/reset_password/{secret?}","Reset Password","Reset Password","");
INSERT INTO seo_metas VALUES("25","search/{word}","Search Result","Search Result","");
INSERT INTO seo_metas VALUES("26","search/user/{word}","Search User Result","Search User Result","");
INSERT INTO seo_metas VALUES("27","signup","Signup","Signup","");
INSERT INTO seo_metas VALUES("28","property/create","Create New Property","Create New Property","");
INSERT INTO seo_metas VALUES("29","listing/{id}/{step}","Property Listing","Property Listing","");
INSERT INTO seo_metas VALUES("30","properties","Properties","Properties","");
INSERT INTO seo_metas VALUES("31","my_bookings","My Bookings","My Bookings","");
INSERT INTO seo_metas VALUES("32","trips/active","Your Trips","Your Trips","");
INSERT INTO seo_metas VALUES("33","users/profile","Edit Profile","Edit Profile","");
INSERT INTO seo_metas VALUES("34","users/account_preferences","Account Preferences","Account Preferences","");
INSERT INTO seo_metas VALUES("35","users/transaction_history","Transaction History","Transaction History","");
INSERT INTO seo_metas VALUES("36","users/security","Security","Security","");
INSERT INTO seo_metas VALUES("37","search","Search","Search","");
INSERT INTO seo_metas VALUES("38","inbox","Inbox","Inbox","");
INSERT INTO seo_metas VALUES("39","users/profile/media","Profile Photo","Profile Photo","");
INSERT INTO seo_metas VALUES("40","booking/requested","Payment Completed","Payment Completed","");





CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO settings VALUES("1","name","Llega A casa","general");
INSERT INTO settings VALUES("2","logo","1641565961_logo.jpg","general");
INSERT INTO settings VALUES("3","favicon","1641565961_favicon.jpg","general");
INSERT INTO settings VALUES("4","head_code","","general");
INSERT INTO settings VALUES("5","default_currency","1","general");
INSERT INTO settings VALUES("6","default_language","7","general");
INSERT INTO settings VALUES("7","email_logo","email_logo.png","general");
INSERT INTO settings VALUES("8","username","rigoleto_p_api1.hotmail.com","PayPal");
INSERT INTO settings VALUES("9","password","N78CDQTSCFG3E5HG","PayPal");
INSERT INTO settings VALUES("10","signature","AXxuURY3uw-NpzpA9cRoMJ-cBYoPAVQ7ZsPRQ1zNjkSceTLUjzn6s7LI","PayPal");
INSERT INTO settings VALUES("11","mode","live","PayPal");
INSERT INTO settings VALUES("12","paypal_status","1","PayPal");
INSERT INTO settings VALUES("13","publishable","pk_test_51JP1GISHoGAoXlO0cI5iJMhY0Xp5pm5MM5L6lUrepGpReDkawvYcpsjkgJqUFNk8wVoZpE2Z66GMmPHMH1Dn9UxW00UYyHa3Ad","Stripe");
INSERT INTO settings VALUES("14","secret","sk_test_51JP1GISHoGAoXlO0lSzTJ7XRFfdCindE0ZrMwJp2sYJ97HzCN4GCvMgTFp1o970830RqOuAKBdW5KdPL4wXlwBfc00GSuKGYO0","Stripe");
INSERT INTO settings VALUES("15","stripe_status","1","Stripe");
INSERT INTO settings VALUES("16","driver","smtp","email");
INSERT INTO settings VALUES("17","host","mocha3022.mochahost.com","email");
INSERT INTO settings VALUES("18","port","465","email");
INSERT INTO settings VALUES("19","from_address","info@llegacasa.com","email");
INSERT INTO settings VALUES("20","from_name","Llega a casa","email");
INSERT INTO settings VALUES("21","encryption","SSL","email");
INSERT INTO settings VALUES("22","username","info@llegacasa.com","email");
INSERT INTO settings VALUES("23","password","Navidadvero2018","email");
INSERT INTO settings VALUES("24","facebook","https://www.facebook.com/profile.php?id=100076734863804","join_us");
INSERT INTO settings VALUES("25","google_plus","#","join_us");
INSERT INTO settings VALUES("26","twitter","#","join_us");
INSERT INTO settings VALUES("27","linkedin","#","join_us");
INSERT INTO settings VALUES("28","pinterest","#","join_us");
INSERT INTO settings VALUES("29","youtube","#","join_us");
INSERT INTO settings VALUES("30","instagram","#","join_us");
INSERT INTO settings VALUES("31","key","AIzaSyAUYIaL0SLglnBoHXwGhpP2k-hHms8xfK0","googleMap");
INSERT INTO settings VALUES("32","client_id","673970283138-om7qt5erh1bd3a92ftcvt4pv2tg4mhlj.apps.googleusercontent.com","google");
INSERT INTO settings VALUES("33","client_secret","B8SZ7qyNwoGkRlSlXZpZWIjy","google");
INSERT INTO settings VALUES("34","client_id","976822313237542","facebook");
INSERT INTO settings VALUES("35","client_secret","198bc8d8e7df14a20940ab7ac79160fd","facebook");
INSERT INTO settings VALUES("36","email_status","1","email");
INSERT INTO settings VALUES("37","row_per_page","25","preferences");
INSERT INTO settings VALUES("38","date_separator","-","preferences");
INSERT INTO settings VALUES("39","date_format","1","preferences");
INSERT INTO settings VALUES("40","dflt_timezone","Atlantic/Bermuda","preferences");
INSERT INTO settings VALUES("41","money_format","before","preferences");
INSERT INTO settings VALUES("42","date_format_type","dd-mm-yyyy","preferences");
INSERT INTO settings VALUES("43","front_date_format_type","dd-mm-yy","preferences");
INSERT INTO settings VALUES("44","search_date_format_type","d-m-yy","preferences");
INSERT INTO settings VALUES("45","auto_approval","no","general");
INSERT INTO settings VALUES("46","light_logo","1641565961_light_logo.jpg","general");
INSERT INTO settings VALUES("47","colorpicker","#ed3615","general");
INSERT INTO settings VALUES("48","user_login_img","1635916380_user_login_img.jpg","general");
INSERT INTO settings VALUES("49","admin_login_img","1635916462_admin_login_img.png","general");
INSERT INTO settings VALUES("50","list_your_space","1635921594_list_your_space.jpg","general");
INSERT INTO settings VALUES("51","description_img","1635920925_description_img.jpg","general");
INSERT INTO settings VALUES("52","hosting_third_img","1635920977_hosting_third_img.jpg","general");
INSERT INTO settings VALUES("53","hosting_fourth_img","1635921016_hosting_fourth_img.jpg","general");
INSERT INTO settings VALUES("54","hosting_fifth_img","1635921121_hosting_fifth_img.jpg","general");
INSERT INTO settings VALUES("55","hosting_sixth_img","1635921178_hosting_sixth_img.jpg","general");
INSERT INTO settings VALUES("56","hosting_seventh_img","1635921220_hosting_seventh_img.jpg","general");
INSERT INTO settings VALUES("57","hosting_eighth_img","1635921270_hosting_eighth_img.jpg","general");
INSERT INTO settings VALUES("58","hosting_ninth_img","1635921373_hosting_ninth_img.jpg","general");
INSERT INTO settings VALUES("59","try_hosting_img","1635917422_try_hosting_img.jpg","general");
INSERT INTO settings VALUES("60","invoice_description","Llega A casa","general");
INSERT INTO settings VALUES("61","recaptcha_site_key","6Lc2fYkdAAAAAJz7hw6enl07t7i2nWDO_4nZlw3M","google");
INSERT INTO settings VALUES("62","recaptcha_secret_key","6Lc2fYkdAAAAAAG7cWu_oJp059KLoeP_Ol4Iqi5p","google");
INSERT INTO settings VALUES("63","guest_payment_expiration_time","1","general");
INSERT INTO settings VALUES("64","enable_captcha","no","general");
INSERT INTO settings VALUES("65","razorpay_key","rzp_test_CFuxKXKEXHgUGM","Razorpay");
INSERT INTO settings VALUES("66","razorpay_secret","VYW1zvdW8eF0vjAY2ybyE2y4","Razorpay");
INSERT INTO settings VALUES("67","razorpay_status","0","Razorpay");





CREATE TABLE IF NOT EXISTS `space_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `temp_id` int(25) DEFAULT NULL,
  `name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_id` int(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO space_type VALUES("1","1","Entire home/apt","Entire home/apt","Active","en","1");
INSERT INTO space_type VALUES("2","2","Private room","Private room","Active","en","1");
INSERT INTO space_type VALUES("3","3","Shared room","Shared room","Active","en","1");
INSERT INTO space_type VALUES("4","4","Unique stays","Unique stays","Active","en","1");
INSERT INTO space_type VALUES("5","5","single room","single room","Active","en","1");
INSERT INTO space_type VALUES("6","5","???????? ??????????","???????? ??????????","Active","ar","2");
INSERT INTO space_type VALUES("7","5","?????????","?????????","Active","ch","3");
INSERT INTO space_type VALUES("8","5","chambre simple","chambre simple","Active","fr","4");
INSERT INTO space_type VALUES("9","5","quarto de solteiro","quarto de solteiro","Active","pt","5");
INSERT INTO space_type VALUES("10","5","?????????????????????? ??????????","?????????????????????? ??????????","Active","ru","6");
INSERT INTO space_type VALUES("11","5","habitaci??n individual","habitaci??n individual","Active","es","7");
INSERT INTO space_type VALUES("12","5","tek oda","tek oda","Active","tr","8");
INSERT INTO space_type VALUES("13","4","?????????? ??????????","?????????? ??????????","Active","ar","2");
INSERT INTO space_type VALUES("14","4","???????????????","???????????????","Active","ch","3");
INSERT INTO space_type VALUES("15","4","Des s??jours uniques","Des s??jours uniques","Active","fr","4");
INSERT INTO space_type VALUES("16","4","Estadias ??nicas","Estadias ??nicas","Active","pt","5");
INSERT INTO space_type VALUES("17","4","???????????????????? ????????????????????","???????????????????? ????????????????????","Active","ru","6");
INSERT INTO space_type VALUES("18","4","Estancias ??nicas","Estancias ??nicas","Active","es","7");
INSERT INTO space_type VALUES("19","4","E??siz konaklamalar","E??siz konaklamalar","Active","tr","8");
INSERT INTO space_type VALUES("20","3","???????? ????????????","???????? ????????????","Active","ar","2");
INSERT INTO space_type VALUES("21","3","????????????","????????????","Active","ch","3");
INSERT INTO space_type VALUES("22","3","pi??ce partag??e","pi??ce partag??e","Active","fr","4");
INSERT INTO space_type VALUES("23","3","quarto compartilhado","quarto compartilhado","Active","pt","5");
INSERT INTO space_type VALUES("24","3","?????????? ??????????????","?????????? ??????????????","Active","ru","6");
INSERT INTO space_type VALUES("25","3","habitaci??n compartida","habitaci??n compartida","Active","es","7");
INSERT INTO space_type VALUES("26","3","payla????lan oda","payla????lan oda","Active","tr","8");
INSERT INTO space_type VALUES("27","2","???????? ????????","???????? ????????","Active","ar","2");
INSERT INTO space_type VALUES("28","2","????????????","????????????","Active","ch","3");
INSERT INTO space_type VALUES("29","2","Chambre priv??e","Chambre priv??e","Active","fr","4");
INSERT INTO space_type VALUES("30","2","Sala privada","Sala privada","Active","pt","5");
INSERT INTO space_type VALUES("31","2","?????????????????? ??????????????","?????????????????? ??????????????","Active","ru","6");
INSERT INTO space_type VALUES("32","2","Habitaci??n privada","Habitaci??n privada","Active","es","7");
INSERT INTO space_type VALUES("33","2","??zel oda","??zel oda","Active","tr","8");
INSERT INTO space_type VALUES("34","1","???????????? / ?????????? ??????????????","???????????? / ?????????? ??????????????","Active","ar","2");
INSERT INTO space_type VALUES("35","1","????????????/??????","????????????/??????","Active","ch","3");
INSERT INTO space_type VALUES("36","1","Maison/appartement entier","Maison/appartement entier","Active","fr","4");
INSERT INTO space_type VALUES("37","1","Casa / apto inteiro","Casa / apto inteiro","Active","pt","5");
INSERT INTO space_type VALUES("38","1","?????? / ???????????????? ??????????????","?????? / ???????????????? ??????????????","Active","ru","6");
INSERT INTO space_type VALUES("39","1","Toda la casa / apto.","Toda la casa / apto.","Active","es","7");
INSERT INTO space_type VALUES("40","1","T??m ev/daire","T??m ev/daire","Active","tr","8");





CREATE TABLE IF NOT EXISTS `starting_cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO starting_cities VALUES("1","New York","starting_city_1.jpg","Active");
INSERT INTO starting_cities VALUES("2","Sydney","starting_city_2.jpg","Active");
INSERT INTO starting_cities VALUES("3","Paris","starting_city_3.jpg","Active");
INSERT INTO starting_cities VALUES("4","Barcelona","starting_city_4.jpg","Active");
INSERT INTO starting_cities VALUES("5","Berlin","starting_city_5.jpg","Active");
INSERT INTO starting_cities VALUES("6","Budapest","starting_city_6.jpg","Active");
INSERT INTO starting_cities VALUES("7","Singapore","starting_city_1627625434.jpg","Active");
INSERT INTO starting_cities VALUES("8","New Delhi","starting_city_1627625602.jpg","Active");





CREATE TABLE IF NOT EXISTS `sv_doc_verification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) DEFAULT NULL,
  `doc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO sv_doc_verification VALUES("9","1","1629203998.original.jpg","image/jpeg","2021-08-17 12:39:58");
INSERT INTO sv_doc_verification VALUES("10","1","1629203999.default-profile.png","image/png","2021-08-17 12:39:59");
INSERT INTO sv_doc_verification VALUES("11","2","1629204085.4262156.jpg","image/jpeg","2021-08-17 12:41:25");
INSERT INTO sv_doc_verification VALUES("12","16","1630561999.driving-license.jpg","image/jpeg","2021-09-02 05:53:19");
INSERT INTO sv_doc_verification VALUES("13","23","1641397924.Pieza1 milcar.JPG","image/jpeg","2022-01-05 15:52:04");





CREATE TABLE IF NOT EXISTS `sv_property_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `about_place` text DEFAULT NULL,
  `place_is_great_for` text DEFAULT NULL,
  `guest_can_access` text DEFAULT NULL,
  `interaction_guests` text DEFAULT NULL,
  `other` text DEFAULT NULL,
  `about_neighborhood` text DEFAULT NULL,
  `get_around` text DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=COMPACT;

INSERT INTO sv_property_meta VALUES("1","70","single room in Chennai arabic","arabic content","ar about place","ar place is great for","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("2","70","dfdfd","fdfdf","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("3","70","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("4","70","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("5","70","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("6","70","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("7","70","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("8","71","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("9","71","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("10","71","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("11","71","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("12","71","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("13","71","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("14","71","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("15","6","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("16","6","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("17","6","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("18","6","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("19","6","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("20","6","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("21","6","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("22","72","single room in Chennai arabic","ar cotent","ar about","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("23","72","single room in Chennai ch","ch content","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("24","72","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("25","72","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("26","72","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("27","72","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("28","72","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("29","73","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("30","73","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("31","73","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("32","73","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("33","73","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("34","73","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("35","73","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("36","74","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("37","74","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("38","74","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("39","74","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("40","74","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("41","74","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("42","74","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("43","75","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("44","75","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("45","75","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("46","75","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("47","75","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("48","75","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("49","75","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("50","77","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("51","77","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("52","77","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("53","77","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("54","77","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("55","77","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("56","77","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("57","78","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("58","78","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("59","78","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("60","78","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("61","78","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("62","78","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("63","78","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("64","79","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("65","79","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("66","79","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("67","79","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("68","79","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("69","79","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("70","79","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("71","80","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("72","80","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("73","80","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("74","80","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("75","80","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("76","80","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("77","80","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("78","81","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("79","81","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("80","81","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("81","81","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("82","81","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("83","81","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("84","81","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("85","83","Estancias ??nicas ???? ??????????????","Estancias ??nicas ???? ??????????????","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("86","83","Estancias ??nicas ????????????","Estancias ??nicas ????????????","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("87","83","Estancias ??nicas ?? Madurai","Estancias ??nicas ?? Madurai","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("88","83","Estancias ??nicas em Madurai","Estancias ??nicas em Madurai","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("89","83","Estancias ??nicas ?? ??????????????","Estancias ??nicas ?? ??????????????","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("90","83","Estancias ??nicas en Madurai","Estancias ??nicas en Madurai","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("91","83","Madurai\'deki Estancias ??nicas","Madurai\'deki Estancias ??nicas","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("92","85","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("93","85","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("94","85","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("95","85","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("96","85","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("97","85","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("98","85","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("99","84","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("100","84","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("101","84","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("102","84","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("103","84","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("104","84","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("105","84","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("106","86","?????? ???? ????????????","???????? ???????? ?????????? ????????","???????? ??????","???????? ??????","???????? ??????","???????? ??????","???????? ??????","???????? ??????","???????? ??????","ar","2");
INSERT INTO sv_property_meta VALUES("107","86","??????????????????","???????????????????????????","?????????","?????????","?????????","?????????","?????????","?????????","?????????","ch","3");
INSERT INTO sv_property_meta VALUES("108","86","Appartement ?? Chennai","Meilleur endroit pour un voyage de vacances","bon endroit","bon endroit","bon endroit","bon endroit","bon endroit","bon endroit","bon endroit","fr","4");
INSERT INTO sv_property_meta VALUES("109","86","Apartamento em Chennai","Melhor lugar para uma viagem de f??rias","bom lugar","bom lugar","bom lugar","bom lugar","bom lugar","bom lugar","bom lugar","pt","5");
INSERT INTO sv_property_meta VALUES("110","86","???????????????? ?? ????????????","???????????? ?????????? ?????? ??????????????","?????????????? ??????????","?????????????? ??????????","?????????????? ??????????","?????????????? ??????????","?????????????? ??????????","?????????????? ??????????","?????????????? ??????????","ru","6");
INSERT INTO sv_property_meta VALUES("111","86","Apartamento en Chennai","El mejor lugar para un viaje de vacaciones.","buen lugar","buen lugar","buen lugar","buen lugar","buen lugar","buen lugar","buen lugar","es","7");
INSERT INTO sv_property_meta VALUES("112","86","Chennai\'de daire","Bir tatil gezisi i??in en iyi yer","g??zel yer","g??zel yer","g??zel yer","g??zel yer","g??zel yer","g??zel yer","g??zel yer","tr","8");
INSERT INTO sv_property_meta VALUES("113","87","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("114","87","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("115","87","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("116","87","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("117","87","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("118","87","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("119","87","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("120","88","","","","","","","","","","ar","2");
INSERT INTO sv_property_meta VALUES("121","88","","","","","","","","","","ch","3");
INSERT INTO sv_property_meta VALUES("122","88","","","","","","","","","","fr","4");
INSERT INTO sv_property_meta VALUES("123","88","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("124","88","","","","","","","","","","ru","6");
INSERT INTO sv_property_meta VALUES("125","88","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("126","88","","","","","","","","","","tr","8");
INSERT INTO sv_property_meta VALUES("127","89","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("128","89","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("129","90","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("130","90","","","","","","","","","","es","7");
INSERT INTO sv_property_meta VALUES("131","91","","","","","","","","","","pt","5");
INSERT INTO sv_property_meta VALUES("132","91","","","","","","","","","","es","7");





CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` int(11) NOT NULL,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO testimonials VALUES("1","John Doe","Traveller","testimonial_1.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit","5","Active","","");
INSERT INTO testimonials VALUES("2","Adam Smith","Traveller","testimonial_2.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit","5","Active","","");
INSERT INTO testimonials VALUES("3","Alysa","Photographer","testimonial_3.jpg","Lorem ipsum dolor sit amet, consectetur adipiscing elit","5","Active","","");





CREATE TABLE IF NOT EXISTS `timezone` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO timezone VALUES("1","(GMT-11:00) International Date Line West","Pacific/Kwajalein");
INSERT INTO timezone VALUES("2","(GMT-11:00) Midway Island","Pacific/Midway");
INSERT INTO timezone VALUES("3","(GMT-11:00) Samoa","Pacific/Samoa");
INSERT INTO timezone VALUES("4","(GMT-10:00) Hawaii","Pacific/Honolulu");
INSERT INTO timezone VALUES("5","(GMT-10:00) Pacific/Honolulu","Pacific/Honolulu");
INSERT INTO timezone VALUES("6","(GMT-09:00) Alaska","US/Alaska");
INSERT INTO timezone VALUES("7","(GMT-08:00) America/Los_Angeles","America/Los_Angeles");
INSERT INTO timezone VALUES("8","(GMT-08:00) Pacific Time (US &amp; Canada)","America/Los_Angeles");
INSERT INTO timezone VALUES("9","(GMT-08:00) Tijuana","America/Tijuana");
INSERT INTO timezone VALUES("10","(GMT-07:00) America/Denver","America/Denver");
INSERT INTO timezone VALUES("11","(GMT-07:00) America/Phoenix","America/Phoenix");
INSERT INTO timezone VALUES("12","(GMT-07:00) Arizona","US/Arizona");
INSERT INTO timezone VALUES("13","(GMT-07:00) Chihuahua","America/Chihuahua");
INSERT INTO timezone VALUES("14","(GMT-07:00) Mazatlan","America/Mazatlan");
INSERT INTO timezone VALUES("15","(GMT-07:00) Mountain Time (US &amp; Canada)","US/Mountain");
INSERT INTO timezone VALUES("16","(GMT-06:00) America/Chicago","America/Chicago");
INSERT INTO timezone VALUES("17","(GMT-06:00) America/Mexico_City","America/Mexico_City");
INSERT INTO timezone VALUES("18","(GMT-06:00) Central America","America/Managua");
INSERT INTO timezone VALUES("19","(GMT-06:00) Central Time (US &amp; Canada)","US/Central");
INSERT INTO timezone VALUES("20","(GMT-06:00) Guadalajara","America/Mexico_City");
INSERT INTO timezone VALUES("21","(GMT-06:00) Mexico City","America/Mexico_City");
INSERT INTO timezone VALUES("22","(GMT-06:00) Monterrey","America/Monterrey");
INSERT INTO timezone VALUES("23","(GMT-06:00) Saskatchewan","Canada/Saskatchewan");
INSERT INTO timezone VALUES("24","(GMT-05:00) America/Nassau","America/Nassau");
INSERT INTO timezone VALUES("25","(GMT-05:00) America/New_York","America/New_York");
INSERT INTO timezone VALUES("26","(GMT-05:00) America/Port-au-Prince","America/Port-au-Prince");
INSERT INTO timezone VALUES("27","(GMT-05:00) America/Toronto","America/Toronto");
INSERT INTO timezone VALUES("28","(GMT-05:00) Bogota","America/Bogota");
INSERT INTO timezone VALUES("29","(GMT-05:00) Eastern Time (US &amp; Canada)","US/Eastern");
INSERT INTO timezone VALUES("30","(GMT-05:00) Indiana (East)","US/East-Indiana");
INSERT INTO timezone VALUES("31","(GMT-05:00) Lima","America/Lima");
INSERT INTO timezone VALUES("32","(GMT-05:00) Quito","America/Bogota");
INSERT INTO timezone VALUES("33","(GMT-04:30) Caracas","America/Caracas");
INSERT INTO timezone VALUES("34","(GMT-04:00) Atlantic Time (Canada)","Canada/Atlantic");
INSERT INTO timezone VALUES("35","(GMT-04:00) Georgetown","America/Argentina/Buenos_Aires");
INSERT INTO timezone VALUES("36","(GMT-04:00) La Paz","America/La_Paz");
INSERT INTO timezone VALUES("37","(GMT-03:30) Newfoundland","Canada/Newfoundland");
INSERT INTO timezone VALUES("38","(GMT-03:00) America/Argentina/Buenos_Aires","America/Argentina/Buenos_Aires");
INSERT INTO timezone VALUES("39","(GMT-03:00) America/Cordoba","America/Cordoba");
INSERT INTO timezone VALUES("40","(GMT-03:00) America/Fortaleza","America/Fortaleza");
INSERT INTO timezone VALUES("41","(GMT-03:00) America/Montevideo","America/Montevideo");
INSERT INTO timezone VALUES("42","(GMT-03:00) America/Santiago","America/Santiago");
INSERT INTO timezone VALUES("43","(GMT-03:00) America/Sao_Paulo","America/Sao_Paulo");
INSERT INTO timezone VALUES("44","(GMT-03:00) Brasilia","America/Sao_Paulo");
INSERT INTO timezone VALUES("45","(GMT-03:00) Buenos Aires","America/Argentina/Buenos_Aires");
INSERT INTO timezone VALUES("46","(GMT-03:00) Greenland","America/Godthab");
INSERT INTO timezone VALUES("47","(GMT-03:00) Santiago","America/Santiago");
INSERT INTO timezone VALUES("48","(GMT-02:00) Mid-Atlantic","America/Noronha");
INSERT INTO timezone VALUES("49","(GMT-01:00) Azores","Atlantic/Azores");
INSERT INTO timezone VALUES("50","(GMT-01:00) Cape Verde Is.","Atlantic/Cape_Verde");
INSERT INTO timezone VALUES("51","(GMT+00:00) Africa/Casablanca","Africa/Casablanca");
INSERT INTO timezone VALUES("52","(GMT+00:00) Atlantic/Canary","Atlantic/Canary");
INSERT INTO timezone VALUES("53","(GMT+00:00) Atlantic/Reykjavik","Atlantic/Reykjavik");
INSERT INTO timezone VALUES("54","(GMT+00:00) Casablanca","Africa/Casablanca");
INSERT INTO timezone VALUES("55","(GMT+00:00) Dublin","Etc/Greenwich");
INSERT INTO timezone VALUES("56","(GMT+00:00) Edinburgh","Europe/London");
INSERT INTO timezone VALUES("57","(GMT+00:00) Europe/Dublin","Europe/Dublin");
INSERT INTO timezone VALUES("58","(GMT+00:00) Europe/Lisbon","Europe/Lisbon");
INSERT INTO timezone VALUES("59","(GMT+00:00) Europe/London","Europe/London");
INSERT INTO timezone VALUES("60","(GMT+00:00) Lisbon","Europe/Lisbon");
INSERT INTO timezone VALUES("61","(GMT+00:00) London","Europe/London");
INSERT INTO timezone VALUES("62","(GMT+00:00) Monrovia","Africa/Monrovia");
INSERT INTO timezone VALUES("63","(GMT+00:00) UTC","UTC");
INSERT INTO timezone VALUES("64","(GMT+01:00) Amsterdam","Europe/Amsterdam");
INSERT INTO timezone VALUES("65","(GMT+01:00) Belgrade","Europe/Belgrade");
INSERT INTO timezone VALUES("66","(GMT+01:00) Berlin","Europe/Berlin");
INSERT INTO timezone VALUES("67","(GMT+01:00) Bern","Europe/Berlin");
INSERT INTO timezone VALUES("68","(GMT+01:00) Bratislava","Europe/Bratislava");
INSERT INTO timezone VALUES("69","(GMT+01:00) Brussels","Europe/Brussels");
INSERT INTO timezone VALUES("70","(GMT+01:00) Budapest","Europe/Budapest");
INSERT INTO timezone VALUES("71","(GMT+01:00) Copenhagen","Europe/Copenhagen");
INSERT INTO timezone VALUES("72","(GMT+01:00) Europe/Amsterdam","Europe/Amsterdam");
INSERT INTO timezone VALUES("73","(GMT+01:00) Europe/Belgrade","Europe/Belgrade");
INSERT INTO timezone VALUES("74","(GMT+01:00) Europe/Berlin","Europe/Berlin");
INSERT INTO timezone VALUES("75","(GMT+01:00) Europe/Bratislava","Europe/Bratislava");
INSERT INTO timezone VALUES("76","(GMT+01:00) Europe/Brussels","Europe/Brussels");
INSERT INTO timezone VALUES("77","(GMT+01:00) Europe/Budapest","Europe/Budapest");
INSERT INTO timezone VALUES("78","(GMT+01:00) Europe/Copenhagen","Europe/Copenhagen");
INSERT INTO timezone VALUES("79","(GMT+01:00) Europe/Ljubljana","Europe/Ljubljana");
INSERT INTO timezone VALUES("80","(GMT+01:00) Europe/Madrid","Europe/Madrid");
INSERT INTO timezone VALUES("81","(GMT+01:00) Europe/Monaco","Europe/Monaco");
INSERT INTO timezone VALUES("82","(GMT+01:00) Europe/Oslo","Europe/Oslo");
INSERT INTO timezone VALUES("83","(GMT+01:00) Europe/Paris","Europe/Paris");
INSERT INTO timezone VALUES("84","(GMT+01:00) Europe/Podgorica","Europe/Podgorica");
INSERT INTO timezone VALUES("85","(GMT+01:00) Europe/Prague","Europe/Prague");
INSERT INTO timezone VALUES("86","(GMT+01:00) Europe/Rome","Europe/Rome");
INSERT INTO timezone VALUES("87","(GMT+01:00) Europe/Stockholm","Europe/Stockholm");
INSERT INTO timezone VALUES("88","(GMT+01:00) Europe/Tirane","Europe/Tirane");
INSERT INTO timezone VALUES("89","(GMT+01:00) Europe/Vienna","Europe/Vienna");
INSERT INTO timezone VALUES("90","(GMT+01:00) Europe/Warsaw","Europe/Warsaw");
INSERT INTO timezone VALUES("91","(GMT+01:00) Europe/Zagreb","Europe/Zagreb");
INSERT INTO timezone VALUES("92","(GMT+01:00) Europe/Zurich","Europe/Zurich");
INSERT INTO timezone VALUES("93","(GMT+01:00) Ljubljana","Europe/Ljubljana");
INSERT INTO timezone VALUES("94","(GMT+01:00) Madrid","Europe/Madrid");
INSERT INTO timezone VALUES("95","(GMT+01:00) Paris","Europe/Paris");
INSERT INTO timezone VALUES("96","(GMT+01:00) Prague","Europe/Prague");
INSERT INTO timezone VALUES("97","(GMT+01:00) Rome","Europe/Rome");
INSERT INTO timezone VALUES("98","(GMT+01:00) Sarajevo","Europe/Sarajevo");
INSERT INTO timezone VALUES("99","(GMT+01:00) Skopje","Europe/Skopje");
INSERT INTO timezone VALUES("100","(GMT+01:00) Stockholm","Europe/Stockholm");
INSERT INTO timezone VALUES("101","(GMT+01:00) Vienna","Europe/Vienna");
INSERT INTO timezone VALUES("102","(GMT+01:00) Warsaw","Europe/Warsaw");
INSERT INTO timezone VALUES("103","(GMT+01:00) West Central Africa","Africa/Lagos");
INSERT INTO timezone VALUES("104","(GMT+01:00) Zagreb","Europe/Zagreb");
INSERT INTO timezone VALUES("105","(GMT+02:00) Asia/Beirut","Asia/Beirut");
INSERT INTO timezone VALUES("106","(GMT+02:00) Asia/Jerusalem","Asia/Jerusalem");
INSERT INTO timezone VALUES("107","(GMT+02:00) Asia/Nicosia","Asia/Nicosia");
INSERT INTO timezone VALUES("108","(GMT+02:00) Athens","Europe/Athens");
INSERT INTO timezone VALUES("109","(GMT+02:00) Bucharest","Europe/Bucharest");
INSERT INTO timezone VALUES("110","(GMT+02:00) Cairo","Africa/Cairo");
INSERT INTO timezone VALUES("111","(GMT+02:00) Europe/Athens","Europe/Athens");
INSERT INTO timezone VALUES("112","(GMT+02:00) Europe/Helsinki","Europe/Helsinki");
INSERT INTO timezone VALUES("113","(GMT+02:00) Europe/Istanbul","Europe/Istanbul");
INSERT INTO timezone VALUES("114","(GMT+02:00) Europe/Riga","Europe/Riga");
INSERT INTO timezone VALUES("115","(GMT+02:00) Europe/Sofia","Europe/Sofia");
INSERT INTO timezone VALUES("116","(GMT+02:00) Harare","Africa/Harare");
INSERT INTO timezone VALUES("117","(GMT+02:00) Helsinki","Europe/Helsinki");
INSERT INTO timezone VALUES("118","(GMT+02:00) Istanbul","Europe/Istanbul");
INSERT INTO timezone VALUES("119","(GMT+02:00) Jerusalem","Asia/Jerusalem");
INSERT INTO timezone VALUES("120","(GMT+02:00) Kyiv","Europe/Helsinki");
INSERT INTO timezone VALUES("121","(GMT+02:00) Pretoria","Africa/Johannesburg");
INSERT INTO timezone VALUES("122","(GMT+02:00) Riga","Europe/Riga");
INSERT INTO timezone VALUES("123","(GMT+02:00) Sofia","Europe/Sofia");
INSERT INTO timezone VALUES("124","(GMT+02:00) Tallinn","Europe/Tallinn");
INSERT INTO timezone VALUES("125","(GMT+02:00) Vilnius","Europe/Vilnius");
INSERT INTO timezone VALUES("126","(GMT+03:00) Baghdad","Asia/Baghdad");
INSERT INTO timezone VALUES("127","(GMT+03:00) Europe/Minsk","Europe/Minsk");
INSERT INTO timezone VALUES("128","(GMT+03:00) Europe/Moscow","Europe/Moscow");
INSERT INTO timezone VALUES("129","(GMT+03:00) Kuwait","Asia/Kuwait");
INSERT INTO timezone VALUES("130","(GMT+03:00) Minsk","Europe/Minsk");
INSERT INTO timezone VALUES("131","(GMT+03:00) Moscow","Europe/Moscow");
INSERT INTO timezone VALUES("132","(GMT+03:00) Nairobi","Africa/Nairobi");
INSERT INTO timezone VALUES("133","(GMT+03:00) Riyadh","Asia/Riyadh");
INSERT INTO timezone VALUES("134","(GMT+03:00) St. Petersburg","Europe/Moscow");
INSERT INTO timezone VALUES("135","(GMT+03:00) Volgograd","Europe/Volgograd");
INSERT INTO timezone VALUES("136","(GMT+03:30) Tehran","Asia/Tehran");
INSERT INTO timezone VALUES("137","(GMT+04:00) Abu Dhabi","Asia/Muscat");
INSERT INTO timezone VALUES("138","(GMT+04:00) Asia/Dubai","Asia/Dubai");
INSERT INTO timezone VALUES("139","(GMT+04:00) Asia/Tbilisi","Asia/Tbilisi");
INSERT INTO timezone VALUES("140","(GMT+04:00) Baku","Asia/Baku");
INSERT INTO timezone VALUES("141","(GMT+04:00) Muscat","Asia/Muscat");
INSERT INTO timezone VALUES("142","(GMT+04:00) Tbilisi","Asia/Tbilisi");
INSERT INTO timezone VALUES("143","(GMT+04:00) Yerevan","Asia/Yerevan");
INSERT INTO timezone VALUES("144","(GMT+04:30) Kabul","Asia/Kabul");
INSERT INTO timezone VALUES("145","(GMT+05:00) Ekaterinburg","Asia/Yekaterinburg");
INSERT INTO timezone VALUES("146","(GMT+05:00) Indian/Maldives","Indian/Maldives");
INSERT INTO timezone VALUES("147","(GMT+05:00) Islamabad","Asia/Karachi");
INSERT INTO timezone VALUES("148","(GMT+05:00) Karachi","Asia/Karachi");
INSERT INTO timezone VALUES("149","(GMT+05:00) Tashkent","Asia/Tashkent");
INSERT INTO timezone VALUES("150","(GMT+05:30) Asia/Calcutta","Asia/Calcutta");
INSERT INTO timezone VALUES("151","(GMT+05:30) Asia/Colombo","Asia/Colombo");
INSERT INTO timezone VALUES("152","(GMT+05:30) Chennai","Asia/Calcutta");
INSERT INTO timezone VALUES("153","(GMT+05:30) Kolkata","Asia/Kolkata");
INSERT INTO timezone VALUES("154","(GMT+05:30) Mumbai","Asia/Calcutta");
INSERT INTO timezone VALUES("155","(GMT+05:30) New Delhi","Asia/Calcutta");
INSERT INTO timezone VALUES("156","(GMT+05:30) Sri Jayawardenepura","Asia/Calcutta");
INSERT INTO timezone VALUES("157","(GMT+05:45) Kathmandu","Asia/Katmandu");
INSERT INTO timezone VALUES("158","(GMT+06:00) Almaty","Asia/Almaty");
INSERT INTO timezone VALUES("159","(GMT+06:00) Astana","Asia/Dhaka");
INSERT INTO timezone VALUES("160","(GMT+06:00) Dhaka","Asia/Dhaka");
INSERT INTO timezone VALUES("161","(GMT+06:00) Novosibirsk","Asia/Novosibirsk");
INSERT INTO timezone VALUES("162","(GMT+06:00) Urumqi","Asia/Urumqi");
INSERT INTO timezone VALUES("163","(GMT+06:30) Rangoon","Asia/Rangoon");
INSERT INTO timezone VALUES("164","(GMT+07:00) Asia/Bangkok","Asia/Bangkok");
INSERT INTO timezone VALUES("165","(GMT+07:00) Asia/Jakarta","Asia/Jakarta");
INSERT INTO timezone VALUES("166","(GMT+07:00) Bangkok","Asia/Bangkok");
INSERT INTO timezone VALUES("167","(GMT+07:00) Hanoi","Asia/Bangkok");
INSERT INTO timezone VALUES("168","(GMT+07:00) Jakarta","Asia/Jakarta");
INSERT INTO timezone VALUES("169","(GMT+07:00) Krasnoyarsk","Asia/Krasnoyarsk");
INSERT INTO timezone VALUES("170","(GMT+08:00) Asia/Chongqing","Asia/Chongqing");
INSERT INTO timezone VALUES("171","(GMT+08:00) Asia/Hong_Kong","Asia/Hong_Kong");
INSERT INTO timezone VALUES("172","(GMT+08:00) Asia/Kuala_Lumpur","Asia/Kuala_Lumpur");
INSERT INTO timezone VALUES("173","(GMT+08:00) Asia/Macau","Asia/Macau");
INSERT INTO timezone VALUES("174","(GMT+08:00) Asia/Makassar","Asia/Makassar");
INSERT INTO timezone VALUES("175","(GMT+08:00) Asia/Shanghai","Asia/Shanghai");
INSERT INTO timezone VALUES("176","(GMT+08:00) Asia/Taipei","Asia/Taipei");
INSERT INTO timezone VALUES("177","(GMT+08:00) Beijing","Asia/Hong_Kong");
INSERT INTO timezone VALUES("178","(GMT+08:00) Chongqing","Asia/Chongqing");
INSERT INTO timezone VALUES("179","(GMT+08:00) Hong Kong","Asia/Hong_Kong");
INSERT INTO timezone VALUES("180","(GMT+08:00) Irkutsk","Asia/Irkutsk");
INSERT INTO timezone VALUES("181","(GMT+08:00) Kuala Lumpur","Asia/Kuala_Lumpur");
INSERT INTO timezone VALUES("182","(GMT+08:00) Perth","Australia/Perth");
INSERT INTO timezone VALUES("183","(GMT+08:00) Singapore","Asia/Singapore");
INSERT INTO timezone VALUES("184","(GMT+08:00) Taipei","Asia/Taipei");
INSERT INTO timezone VALUES("185","(GMT+08:00) Ulaan Bataar","Asia/Ulan_Bator");
INSERT INTO timezone VALUES("186","(GMT+09:00) Asia/Seoul","Asia/Seoul");
INSERT INTO timezone VALUES("187","(GMT+09:00) Asia/Tokyo","Asia/Tokyo");
INSERT INTO timezone VALUES("188","(GMT+09:00) Osaka","Asia/Tokyo");
INSERT INTO timezone VALUES("189","(GMT+09:00) Sapporo","Asia/Tokyo");
INSERT INTO timezone VALUES("190","(GMT+09:00) Seoul","Asia/Seoul");
INSERT INTO timezone VALUES("191","(GMT+09:00) Tokyo","Asia/Tokyo");
INSERT INTO timezone VALUES("192","(GMT+09:00) Yakutsk","Asia/Yakutsk");
INSERT INTO timezone VALUES("193","(GMT+09:30) Adelaide","Australia/Adelaide");
INSERT INTO timezone VALUES("194","(GMT+09:30) Darwin","Australia/Darwin");
INSERT INTO timezone VALUES("195","(GMT+10:00) Australia/Brisbane","Australia/Brisbane");
INSERT INTO timezone VALUES("196","(GMT+10:00) Australia/Hobart","Australia/Hobart");
INSERT INTO timezone VALUES("197","(GMT+10:00) Australia/Melbourne","Australia/Melbourne");
INSERT INTO timezone VALUES("198","(GMT+10:00) Australia/Sydney","Australia/Sydney");
INSERT INTO timezone VALUES("199","(GMT+10:00) Brisbane","Australia/Brisbane");
INSERT INTO timezone VALUES("200","(GMT+10:00) Canberra","Australia/Canberra");
INSERT INTO timezone VALUES("201","(GMT+10:00) Guam","Pacific/Guam");
INSERT INTO timezone VALUES("202","(GMT+10:00) Hobart","Australia/Hobart");
INSERT INTO timezone VALUES("203","(GMT+10:00) Magadan","Asia/Magadan");
INSERT INTO timezone VALUES("204","(GMT+10:00) Melbourne","Australia/Melbourne");
INSERT INTO timezone VALUES("205","(GMT+10:00) Port Moresby","Pacific/Port_Moresby");
INSERT INTO timezone VALUES("206","(GMT+10:00) Solomon Is.","Asia/Magadan");
INSERT INTO timezone VALUES("207","(GMT+10:00) Sydney","Australia/Sydney");
INSERT INTO timezone VALUES("208","(GMT+10:00) Vladivostok","Asia/Vladivostok");
INSERT INTO timezone VALUES("209","(GMT+11:00) New Caledonia","Asia/Magadan");
INSERT INTO timezone VALUES("210","(GMT+12:00) Auckland","Pacific/Auckland");
INSERT INTO timezone VALUES("211","(GMT+12:00) Fiji","Pacific/Fiji");
INSERT INTO timezone VALUES("212","(GMT+12:00) Kamchatka","Asia/Kamchatka");
INSERT INTO timezone VALUES("213","(GMT+12:00) Marshall Is.","Pacific/Fiji");
INSERT INTO timezone VALUES("214","(GMT+12:00) Pacific/Auckland","Pacific/Auckland");
INSERT INTO timezone VALUES("215","(GMT+12:00) Wellington","Pacific/Auckland");
INSERT INTO timezone VALUES("216","(GMT+13:00) Nuku&#39;alofa","Pacific/Tongatapu");





CREATE TABLE IF NOT EXISTS `user_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO user_details VALUES("1","3","date_of_birth","2000-2-3");
INSERT INTO user_details VALUES("2","4","","");
INSERT INTO user_details VALUES("3","5","","");
INSERT INTO user_details VALUES("4","1","live","Chennai");
INSERT INTO user_details VALUES("5","1","about","desccccccccc");
INSERT INTO user_details VALUES("6","6","","");
INSERT INTO user_details VALUES("7","7","","");
INSERT INTO user_details VALUES("8","8","","");
INSERT INTO user_details VALUES("9","9","","");
INSERT INTO user_details VALUES("10","10","","");
INSERT INTO user_details VALUES("11","11","","");
INSERT INTO user_details VALUES("12","12","","");
INSERT INTO user_details VALUES("13","13","","");
INSERT INTO user_details VALUES("14","16","","");
INSERT INTO user_details VALUES("15","17","","");
INSERT INTO user_details VALUES("16","18","","");
INSERT INTO user_details VALUES("17","19","","");
INSERT INTO user_details VALUES("18","20","","");
INSERT INTO user_details VALUES("19","16","","");
INSERT INTO user_details VALUES("20","17","","");
INSERT INTO user_details VALUES("21","18","","");
INSERT INTO user_details VALUES("22","19","","");
INSERT INTO user_details VALUES("23","20","","");
INSERT INTO user_details VALUES("24","21","","");
INSERT INTO user_details VALUES("25","22","","");
INSERT INTO user_details VALUES("26","23","","");
INSERT INTO user_details VALUES("27","24","","");
INSERT INTO user_details VALUES("28","25","","");
INSERT INTO user_details VALUES("29","25","gender","Male");
INSERT INTO user_details VALUES("30","25","live","cochabamba, Bolivia");
INSERT INTO user_details VALUES("31","26","","");
INSERT INTO user_details VALUES("32","27","","");
INSERT INTO user_details VALUES("33","28","","");





CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `formatted_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_code` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_country` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` double NOT NULL DEFAULT 0,
  `status` enum('Active','Inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES("23","Alejandro","del Villar","rigoleto.p@gmail.com","79323344","+59179323344","591","bo","$2y$10$NGm0k0JxcG41hFsWnYqcWuuL3gEt29AfDXgHfDwujQ8J89SI3Q.wq","","0","Active","","ayhifoudhbrBNNvMa4LQ09GcTvzbCwj8JASfH9vtsSG5lbXF9tCE6QRrCAxB","2021-12-27 16:35:35","2021-12-27 16:35:35");
INSERT INTO users VALUES("24","prueba","prueba","ovis30@hotmail.com","70715430","+59170715430","591","bo","$2y$10$nlWoMcOLVgcaFN2TGHb1.etn9//2xSqtUJT8ILj0whpbg9zf2TBEu","","0","Active","","","2021-12-27 21:38:32","2021-12-27 21:38:32");
INSERT INTO users VALUES("25","Daniel","Cruz","danielcruzmichel@outlook.com","78921103","+59178921103","591","bo","$2y$10$3/nRLqyjuBfiN5BweXFmBelu1Q0j08cXuOq5r.yEymC8wQcI759y2","","0","Active","","","2021-12-28 13:01:24","2022-01-12 00:41:13");
INSERT INTO users VALUES("26","Erick","Sanabria","dr.erick.sanabria@gmail.com","79956670","+59179956670","591","bo","$2y$10$j.8jweA.DVfsLwkbhFvcb.pnS1o1GeNbnczd4s0AL/NV8f1hCqLmK","","0","Active","","","2021-12-28 15:21:57","2021-12-28 15:21:57");
INSERT INTO users VALUES("27","prueba1","prueba1|","prueba@gmail.com","","","591","bo","$2y$10$.jAJ57BkHAjte0XBLXHPnuRWSIfIAPbvNqBx6UVDFRYnBOjSuW15C","","0","Active","","","2022-01-11 21:42:58","2022-01-11 21:42:58");
INSERT INTO users VALUES("28","Peggy","Al??","Peggysan555@gmail.com","70170646","+59170170646","591","bo","$2y$10$duUCs6kDWlEySOsddhQhx.rAoiUKr1Z5MomAJ64KgBdAIZT3F9ccO","","0","Active","","","2022-02-09 01:03:44","2022-02-09 01:03:44");





CREATE TABLE IF NOT EXISTS `users_verification` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `email` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `facebook` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `google` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `linkedin` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `phone` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `document` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'no',
  `fb_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason_for_disapprove` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users_verification VALUES("1","1","yes","no","no","no","no","no","","","","testttt");
INSERT INTO users_verification VALUES("2","2","yes","no","no","no","no","yes","","","","");
INSERT INTO users_verification VALUES("3","3","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("4","4","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("5","5","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("6","6","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("7","7","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("8","8","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("9","9","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("10","10","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("11","11","yes","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("12","12","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("13","13","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("14","14","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("15","15","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("16","16","no","no","no","no","no","yes","","","","");
INSERT INTO users_verification VALUES("17","17","yes","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("18","18","yes","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("19","19","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("20","20","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("21","16","no","no","no","no","no","yes","","","","");
INSERT INTO users_verification VALUES("22","17","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("23","18","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("24","19","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("25","20","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("26","21","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("27","22","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("28","23","yes","no","no","no","no","yes","","","","");
INSERT INTO users_verification VALUES("29","24","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("30","25","yes","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("31","26","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("32","27","no","no","no","no","no","no","","","","");
INSERT INTO users_verification VALUES("33","28","no","no","no","no","no","no","","","","");





CREATE TABLE IF NOT EXISTS `wallets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO wallets VALUES("1","1","1","73.00","1","2021-07-04 20:14:49","2022-01-11 21:26:21");
INSERT INTO wallets VALUES("2","2","1","1640.00","1","2021-07-05 01:20:37","2021-12-06 19:10:21");
INSERT INTO wallets VALUES("3","3","1","0.00","1","2021-07-20 01:49:23","2021-07-20 01:49:23");
INSERT INTO wallets VALUES("4","4","1","0.00","1","2021-07-31 07:40:33","2021-07-31 07:40:33");
INSERT INTO wallets VALUES("5","5","1","0.00","1","2021-07-31 07:42:23","2021-07-31 07:42:23");
INSERT INTO wallets VALUES("6","6","1","0.00","1","2021-08-17 06:44:03","2021-08-17 06:44:03");
INSERT INTO wallets VALUES("7","7","1","0.00","1","2021-08-17 06:46:11","2021-08-17 06:46:11");
INSERT INTO wallets VALUES("8","8","1","0.00","1","2021-08-17 07:08:39","2021-08-17 07:08:39");
INSERT INTO wallets VALUES("9","9","1","0.00","1","2021-08-17 07:21:11","2021-08-17 07:21:11");
INSERT INTO wallets VALUES("10","10","1","0.00","1","2021-08-17 07:25:03","2021-08-17 07:25:03");
INSERT INTO wallets VALUES("11","11","1","0.00","1","2021-08-17 07:40:33","2021-08-17 07:40:33");
INSERT INTO wallets VALUES("12","12","1","0.00","1","2021-08-17 07:42:20","2021-08-17 07:42:20");
INSERT INTO wallets VALUES("13","13","1","0.00","1","2021-08-17 09:07:47","2021-08-17 09:07:47");
INSERT INTO wallets VALUES("14","14","1","58.00","1","2021-08-23 11:41:47","2021-12-22 03:38:18");
INSERT INTO wallets VALUES("15","15","1","40.00","1","2021-08-23 11:46:59","2021-09-02 05:02:08");
INSERT INTO wallets VALUES("16","16","1","0.00","1","2021-08-26 06:17:15","2021-08-26 06:17:15");
INSERT INTO wallets VALUES("17","17","1","1245.00","1","2021-08-26 06:18:27","2021-12-06 23:48:47");
INSERT INTO wallets VALUES("18","18","1","7215.00","1","2021-08-26 06:19:59","2021-12-03 19:22:16");
INSERT INTO wallets VALUES("19","19","1","0.00","1","2021-08-26 06:20:15","2021-08-26 06:20:15");
INSERT INTO wallets VALUES("20","20","1","0.00","1","2021-08-26 06:20:27","2021-08-26 06:20:27");
INSERT INTO wallets VALUES("21","16","13","0.00","1","2021-09-02 05:51:41","2021-09-02 05:51:41");
INSERT INTO wallets VALUES("22","17","1","1245.00","1","2021-12-01 20:13:56","2021-12-06 23:48:47");
INSERT INTO wallets VALUES("23","18","1","7215.00","1","2021-12-01 20:15:40","2021-12-03 19:22:16");
INSERT INTO wallets VALUES("24","19","1","0.00","1","2021-12-17 03:02:13","2021-12-17 03:02:13");
INSERT INTO wallets VALUES("25","20","1","0.00","1","2021-12-23 21:20:57","2021-12-23 21:20:57");
INSERT INTO wallets VALUES("26","21","1","0.00","1","2021-12-23 21:22:10","2021-12-23 21:22:10");
INSERT INTO wallets VALUES("27","22","1","0.00","1","2021-12-27 16:29:15","2021-12-27 16:29:15");
INSERT INTO wallets VALUES("28","23","1","24.00","1","2021-12-27 16:35:35","2022-01-12 00:51:59");
INSERT INTO wallets VALUES("29","24","1","0.00","1","2021-12-27 21:38:32","2021-12-27 21:38:32");
INSERT INTO wallets VALUES("30","25","1","0.00","1","2021-12-28 13:01:24","2021-12-28 13:01:24");
INSERT INTO wallets VALUES("31","26","1","0.00","1","2021-12-28 15:21:57","2021-12-28 15:21:57");
INSERT INTO wallets VALUES("32","27","1","0.00","1","2022-01-11 21:42:58","2022-01-11 21:42:58");
INSERT INTO wallets VALUES("33","28","1","0.00","1","2022-02-09 01:03:45","2022-02-09 01:03:45");





CREATE TABLE IF NOT EXISTS `wishlist` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `propertyid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO wishlist VALUES("39","1","11","0");
INSERT INTO wishlist VALUES("41","1","7","0");
INSERT INTO wishlist VALUES("51","1","5","1");
INSERT INTO wishlist VALUES("52","1","10","0");
INSERT INTO wishlist VALUES("53","1","15","1");
INSERT INTO wishlist VALUES("55","1","6","0");
INSERT INTO wishlist VALUES("56","2","20","1");
INSERT INTO wishlist VALUES("57","15","55","1");
INSERT INTO wishlist VALUES("64","2","53","0");
INSERT INTO wishlist VALUES("71","17","83","0");
INSERT INTO wishlist VALUES("75","18","79","0");
INSERT INTO wishlist VALUES("76","2","4","1");
INSERT INTO wishlist VALUES("80","17","86","0");
INSERT INTO wishlist VALUES("81","23","89","1");





CREATE TABLE IF NOT EXISTS `withdrawals` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `payout_id` int(11) DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `payment_method_id` int(11) DEFAULT NULL,
  `uuid` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(8,2) DEFAULT NULL,
  `amount` decimal(8,2) DEFAULT NULL,
  `payment_method_info` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('Pending','Success','Refund','Blocked') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO withdrawals VALUES("1","1","1","1","1","6113aed3a088d","0.00","10.00","","info@sangvish.com","","","","Success","2021-08-11 11:04:51","2022-01-11 21:26:21");
INSERT INTO withdrawals VALUES("2","23","4","1","4","6201b8ab858bd","24.00","","","rigoleto.p@gmail.com","1500472371","Banco nacional de bolivia","BNBOBOLXXX","Pending","2022-02-08 00:26:19","2022-02-08 00:26:19");



