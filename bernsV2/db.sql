CREATE TABLE `elever` (
  `id` int(11) NOT NULL,
  `firstname` varchar(1024) NOT NULL,
  `lastname` varchar(1024) NOT NULL,
  `birth` date NOT NULL,
  `country` varchar(35) NOT NULL,
  `number` int(11) NOT NULL,
  `special` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', '{"normal" : 1}'),
(2, 'Administrator', '{"admin" : 1}'),
(3, 'Country Editor', '{"editor" : 1}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(1, 'LiorSh121', 'f107907868687833a5934bf68b6962646ddeeb37f9a2d03940299e1b04bb5271', 'ì×D¥\0`ïNç2þ£úÖ\nÀ, ¿_ô,Úàºgëuò', 'Lior Edelberg Shabat', '2016-09-28 20:04:48', 1),
(2, 'LineaJø250', '7d5f49c8f9306f2794b0033fb4fd09b30acae7a80a6e8dac949f1f35995137d8', ']ñdOa(!nµÞÌÍH5GrA6B4È', 'Linea Bruun Jørgensen', '2016-09-28 20:05:32', 1),
(3, 'LivPe290', 'cf1f2a4fa19c3b20e76b235f6ffec8ec3740883c90e4ad4909c1937835204822', 'àTXD`Ùfã\Z\'q!4÷¢qahê¸µb½euß', 'Liv Schmidt Petersen', '2016-09-28 20:03:33', 1),
(4, 'LotteSø301', '81e08d9c415f7039bac76deacb49f0fdcd37794f9b76dd4384e6dbc5ee7e8512', 'ª»³*ñª0,=©yÕ>¿Ññ­{ÄÎc.²h8\r', 'Lotte Bunkenborg Sørensen', '2016-09-28 20:01:50', 1),
(5, 'LouiseNi278', '916baeda0d2bcb13382b64790ae8d158b28400048d5d01a993375ced96575f0c', 'Cä>\ZÇÅO0á5ð¤ÙUMÖ­ò\0ä+j5¬«E¢\'', 'Louise Dybro Nielsen', '2016-09-28 20:01:36', 1),
(6, 'LouiseJø251', '5f942f1c7fb0ccac50ee7792b61a1d6c315154a3937bf477883708a4e6a4cbc3', 'ª(Jèý zÇUww¶8_4Ál"N\n±', 'Louise Jørgensen', '2016-09-28 20:01:15', 1),
(7, 'AndersBr15', '7d6ef7f16a7f7707e9d6e062f18f4f75dd1c0137a28344d72a4132036f911f8a', 'í{ãì?ÁâÛTcÚX>vqä®4mrÓuï/', 'Anders Hinding Bruun-Petersen', '2016-09-27 20:21:31', 1),
(8, 'CamillaWi311', '4f9fb6bab04e938316aa8efb71efdcf87790904f68d1de2edc64b1009951832f', '©Äî­øû`~¡GË 8]Þ¼TÕN1', 'Camilla Lind Wiedicke', '2016-09-27 20:24:44', 1),
(9, 'DitteSt300', '7d2e4d1e13c8d43252417ddf64dae4a8290261880f2a69554878958d6df04236', 'H±xÒ°ª{ê}µt>K£0çï ®ßÄ?&sÐ|~', 'Ditte Wieland Steffensen', '2016-09-28 14:26:50', 1),
(10, 'EmmaTr308', '7a8b05fd8bcc16117934c2ed0c7146f477e83c96cd0ab0ff0aebef8a00b5ad97', 'zþóÞà/x%3×sã]Ý15»½0¡Qy·ôC', 'Emma Cordelia Kirstein Harboe Tranberg', '2016-09-28 14:27:17', 1),
(11, 'JohanMu77', '87385b3a875c5c87adf4efccf380296b947188399349062e37fff7d0886b673b', '<îüù§ÎQk0ÀÃË æàQ!p¾-7ÂUÕK~', 'Johan Redder Mussmann', '2016-09-28 14:28:54', 1),
(12, 'KristianLa61', '7fe34e446499cd0d2f7550b2b757dcbe509035937107edcf94f1258a094086ff', '~¿àÄÀÛ$UbI8¹;êÄJ½ /\\[·Æ', 'Kristian Nørgård Larsen', '2016-09-28 14:29:20', 1),
(13, 'KristofferDe21', '1bb88684ae9d52f1af4ec88ada0a04850497554e490b90aecdbd6bb20a524993', '¥4ÆEÑÌ«æ#T\n#ØDO.Qðú?ÞºèÀÿþÊ}u', 'Kristoffer Frahm Desmareth', '2016-09-28 14:29:55', 1),
(14, 'LineMo273', 'ad6a17a918ea8cb361d647aadbfcd395d57b276a02fb6314b2d42d9ac5f91af2', '&øJ|°5HÇ`ËÇUî"idÅß²§Oyï', 'Line Bremer Mortensen', '2016-09-28 14:31:01', 1),
(15, 'LouiseMa267', '39195d42e33c40d5ffd9d625f3d72d526a7d39a9ce7bc26511433041ab75eeb1', '­S%Î#øî¿þ·+1§_Ø¼c2|k×\\v	/', 'Louise Maegaard', '2016-09-28 14:31:24', 1),
(16, 'MaiRe296', '99489d5700b3cf28b035a78fb91c2930c550b5fb79becef8dd8622f8ed01c454', ')¬Eçð]ç¡[âtÝ"ÅÂ¡Z_å e:§Ê1', 'Mai Heilmann Reches', '2016-09-28 14:31:52', 1),
(17, 'MarieNi279', '24ec1fd6b81e423d4be8a6d575292b2655aa362a492cfb7ebbc8787513aa67ee', '3¤Åf4uû¬¤Öj»oLù-Æ_ÀsÕU®', 'Marie Kæseler Nielsen', '2016-09-28 14:32:25', 1),
(18, 'MathiasDa17', 'b8da38f52760a9823046d44510f0348c77b8bebbc638f779d7189c37f2a2112c', '¿¬åe²ðëë¬(r:«T\'W2AX:¶£Mêøl', 'Mathias Damgaard', '2016-09-28 14:35:49', 1),
(19, 'MathiasHa35', 'ed1c841597303337da02644b3e102a2dd0ae4e058013650163f20d1a3e2802d1', 'ì\0ÛÒÙÆ(¿î½ú½2@Ôrî¬YO«bîÖ', 'Mathias Sillerslev Haurum', '2016-09-28 14:36:10', 1),
(20, 'MetteBr208', 'f29708fb83ebd4420d50a6d38dd729a6a8aea15d8e956c94d48164a7efffad73', 'ÒÙwøiÝ|³ÔLCC©å®É\0jr\r_÷Àë', 'Mette Hinding Bruun-Petersen', '2016-09-28 14:36:34', 1),
(21, 'MichelLu68', 'f51645105d687e059212cc0017e59dc131eb59b5434ff6b524fe7d2e3b0e3f3f', 'm½¯ò¬=ÿ?\0`d. 4¤BaüD7,Ñ', 'Michel Lukondji', '2016-09-28 14:36:50', 1),
(22, 'MikkelNi79', 'edf83a909f8c831d7ef7a8d61aa7c47f26bc4a7282883cad7712672a243c1fea', 'Î$0\\<\'È\r"¯½+§¿\0m½³\Za:Óg+\rÛ"1', 'Mikkel Grønhøj Nielsen', '2016-09-28 14:37:06', 1),
(23, 'OliverHa33', '42510f61bbf77bbf0be7ee989dd88053ca656384976df286eef7114e27818527', '-M(È©öm¼#\nS\nDv¡äHDz]L)Sè!', 'Oliver Østergaard Hansen', '2016-09-28 14:37:24', 1),
(24, 'RuneLa60', 'e381f103f883b9ec0bcc0558c4a1d59c3481f417054c8ec7c3d63427cced503b', 'âyê\0Ý7n>1?D=oÊ½j o·¨â6¡N', 'Rune Solgaard Larsen', '2016-09-28 14:37:43', 1),
(25, 'SimonDa18', 'ab7bae3eabf8b7b22b16ff4b1be9dce106342290ccee5b840022a90b4ec8ef8d', '¸	M«÷ïÁýmìÖùO	õd¼#¼>ëPR-iÚ', 'Simon Johansen Damm', '2016-09-28 14:38:25', 1),
(26, 'StineMo274', 'd014f845ca562c177b9984fc02931dc1bf3a04baf5dda4daa5f289158384d5f4', 'âZ¬=WÄrZÕï¿	ÿÐIô(n­;TT³£lZ', 'Stine Abild Mortensen', '2016-09-28 14:38:42', 1),
(27, 'ThorsteinPe85', 'a44c7a419ba84eafd847b52437b690dff2c15ccb14dd1901b4e5701c52137e65', 'ì\\C4VÐ½}ÚøM_D×N»G³c&ÒðÄþJö', 'Thorstein Godske Pedersen', '2016-09-28 14:39:05', 1),
(28, 'AlbertJa119', 'f39078a7da2fb657ea45095f996d679c3692fb3f0f8c9e67f898a7d6a536eb40', 'Ê§ª\r4íF:ý9ß=óÎº"4Á\\©qÐëäV|õ', 'Albert Lacuhr Jacobsen', '2016-09-28 14:39:21', 1),
(29, 'AlberteEm215', '699dbfac6b5f0bfb61744721b129875d2017fd00cbef203e666fd284a6d35db1', '[¡ÿ°$4!Èß«N¢£6ñiyàäÀ', 'Alberte Marie Knigge Emgren', '2016-09-28 14:41:53', 1),
(30, 'AlberteVa309', '6e600f2d0bc814e6e5e169b3375d511e85a618ed037018d597bb4d7068303c73', '³ÂtuB(]L­Ï_;Ê[¥Ð5ðÑA¦ú', 'Alberte Skov Valentin', '2016-09-28 14:42:25', 1),
(31, 'AlfredSk99', 'd2fa211431e700d45464b7941ad4cfc0c28fd1cc2c184e78484f0b656be1f931', 'Å2ùèPÄóÝÉßÅü°;½¢§å]ÑãÃ¥cz', 'Alfred Andersen Skræp', '2016-09-28 14:43:02', 1),
(32, 'AllanCo16', '7720624cf842274a29655cded163f12eb0c7203369d15a45b8047bbabe25b0ba', 'aWèK.=ræÞ|:b\nåXÓÎc¥faé("UJ', 'Allan Colic', '2016-09-28 14:43:18', 1),
(33, 'AmalieJe242', '153754415ef1e88c04d5fadcbd71b5df1e24e30a21b3e07f223494f2e7e75279', ',VzLµ5×ãÇõÊ èöö±¨Ì0a¹çh_', 'Amalie Biesbjerg Jensen', '2016-09-28 14:43:40', 1),
(34, 'AmalieJa237', 'f831725c4d2f5753afe76ea4a1ff37ea595c206be28082c38b31fce242203129', 'i­ÞÔCÉ@@¶ë³3§¯$À®*lÅ ', 'Amalie Kofoed Jacobsen', '2016-09-28 14:43:59', 1),
(35, 'AmaliePe287', 'c9573d1cfd5ea46cb8a4aa3244fa43a0f54956643beaebd0db2e4fa7c6cfc7b0', 'R¡Î\\e5ÙxY8ªN=â^8Ùæxõfã', 'Amalie Pedersen', '2016-09-28 14:45:28', 1),
(36, 'AmandaJø249', 'f1388f969d428b8bfc1a96fa821b1a0c5058f1af1de2beb4f3780b154d115d37', 'hwÂ"C@sç»;G\n0LÅ$«¡@¯Fój×F', 'Amanda Jørgensen', '2016-09-28 14:45:44', 1),
(37, 'AmeliaNu283', '7893541f359ec4ecfba0e82bb97d73110c913b6acc386c57150b95b61895737e', '(oÖ2£`½W}Î&OÄ+­.K[Vx¼j', 'Amelia Isilda Nunes', '2016-09-28 14:46:51', 1),
(38, 'AndersFr28', 'd31ee9a1eaccd794e0b4c34813747ef5f332fc39875f0a135e5be7deaf4ff8de', '¥<µìwí)g¶GÌTRB×§Ù7}ìù°s', 'Anders Dam Frandsen', '2016-09-28 14:47:11', 1),
(39, 'AndersHo37', '9ebabe9f1bcbc10b44d4d1cf239a87105c639118a27f27a23565d34f4b8d5139', 'lÌ+\'Ywðp¶çméwQS0ý/jËìô', 'Anders Lund Holgersen', '2016-09-28 14:47:26', 1),
(40, 'AndreasHo39', '656ad7092d978ab48528bfa1b8a3e36f517d062b63c345e828b058ac7e337c13', 'ÜÖj6Î\r\Zþ|Ë>Ê`¤Ú/sGc`T=fëü', 'Andreas Hougaard', '2016-09-28 14:47:49', 1),
(41, 'AndreasHa32', '47f7ca59001fbd183df7f219fb5bc4fcadd3c429515cc31c971b5fe514befce7', 'V¼Q°íbõªWx×"I[éâ¸8zJxa4Ãímô', 'Andreas Hougaard Hansen', '2016-09-28 14:48:08', 1),
(42, 'AndreasJe44', 'a82f7f240d161482578d90d418328d7ca4aff7145fad782d6a8929bf5981267b', ' ¼õüþ\'#Rþ$ÖZ÷­µ\'%Hù#*0\\Ú³', 'Andreas Kildegaard Jeppesen', '2016-09-28 14:48:27', 1),
(43, 'AnnaSk299', '224d8daf960763269eb0b59b8f5d1f575dc3c4d934f50ba216c2b934802eeb89', '%¼ÐvW@yRjáò¹ o¥6ÿçF]¸Y¾ÿnª0?p', 'Anna Kathrine Skjøth', '2016-09-28 14:48:53', 1),
(44, 'AnnaLa259', '64ff925489a89dc6b6dd347a2e354d7018d7ea9955ca7b0c2cae84c2d8165cc3', '§4¼´l\0[A¹Êßø0ëõÄ"<O{O×öD¯', 'Anna Runge Larsen', '2016-09-28 14:49:11', 1),
(45, 'AnnaCh318', 'c72871531a5abc1b49383197f6ca505b44289984a66b00cf5fd63ea48fc8ee2c', '0&U¥ÄÄv-y¢ûÙo Wâ«½Ðù	\'é"e¸', 'Anna Sofie Christensen', '2016-09-28 14:49:28', 1),
(46, 'AsgerAn4', 'ba884e830d8f26b31675900c767e27e948e1f82a63edb79174835ad7cc289c9f', '¿|õàE½()ZDÉ÷N¾UvÀní§EÎXÕt', 'Asger Schaumann Mundt Andersen', '2016-09-28 14:49:47', 1),
(47, 'AstaAa320', '47580951cf3656dfbd2566abd5777b97c6e62dad5b0a9c86a947590085941f82', 'Î9VÇHèRûýÇÇù¨·XY°rÒtÛmtµý', 'Asta Fonager Aagaard', '2016-09-28 14:50:05', 1),
(48, 'AstridLo262', '1f20c50662ce2359707f3b5d60aa0ce1ac06b2f2a8222a6a50cf1148107355b2', '×^àÃÐ.¿æ"g5ZÍÛ\r~/,Fg^¡·Ú', 'Astrid Skriver Lorentzen', '2016-09-28 14:51:14', 1),
(49, 'BenjaminDa115', '0b71c19dad62eae2408b475cd756da0dbc65203cf99681a7d2ad386205b84be1', '/J.ã\' ¾ò}ëýÜ\0t³NÁÖs*\0º}=Rí', 'Benjamin Jan Danser', '2016-09-28 14:51:32', 1),
(50, 'BenjaminAn6', '932026f0af1d51003301504774a57d9289a7b474677c9cc1e6b56e35d83b0dbb', 'jSU\nÓiQ¦wÈçÙûD·ì_ðzè¥îã_k$¿', 'Benjamin Mads Andresen', '2016-09-28 14:53:10', 1),
(51, 'CamillaVe310', '8c45d43af9f39d758b9d77fe95bffd9e95aab1a5b5c7c9690e8b44e1b8e57d1d', '¸páªco~lh!ðþÂÂ7¿_4`ôKhr Â¦ ', 'Camilla Lomborg Vestergaard', '2016-09-28 14:53:31', 1),
(52, 'CarolineAn203', '3f86b0c4494c7f52c7a2a92cfd40621b03adc9c485fecd20e6b9bc5dffadec09', 'À¯[çTJ¿7\'#hkïöÈ¾Öw¤m{È` ÷ûê', 'Caroline Biesbjerg Andersen', '2016-09-28 15:01:43', 1),
(53, 'CarolineJü248', 'e72058a74ccb00dc7229477af92028e4f06d661b114923f57c54ca7f80afc0cb', 'Ò	êK<yX_×¾7ô:Ê2¼A·èP.', 'Caroline Krog Jürgensen', '2016-09-28 15:02:02', 1),
(54, 'CarolineMo275', 'e42c0152cd44d55968b2aa3cf0c9946617e05280d27637ba6a44e0e5989f5f86', '¸ÛTzÎº£ÉGÑ[%!»ÑØ¬$pA·ñoZÌ', 'Caroline Mouret', '2016-09-28 15:02:16', 1),
(55, 'CecilieNi282', '9c8fb36c2e1ff4eb0749e156f1e358327a9e48e0fbf01436e53465ec8b889cd9', 'KÒÙL?3ûU*Ë{);,Ù\ZPà½çVe-Zw²2', 'Cecilie Frisesdahl Sand Nikolaisen', '2016-09-28 19:12:18', 1),
(56, 'AnnaAn323', 'a9b990ab0b5307c7039354a79baedd9c126eb02ba493a4454e1175744895238d', '1,8ZJ]+kwyCnÂÑ\\P²:7,E,¡ÜÔ|ª', 'Anna Andersen', '2016-09-28 19:15:54', 1),
(57, 'MagnusHa125', '5e78087bf7a3b3f400c6dc907aed0e785891479d5894c0d73a125ddad7f789bc', 'b)ßðêiÿ"T"ÊUo6nv%M?ML+6', 'Magnus Riis Havemann', '2016-09-28 19:16:40', 1),
(58, 'CecilieHa229', '8256fed7ddc7ca66ac70a670535d0361aa20cf01003ef7dd655a41a3be6321bf', 'ÐË;>Üû¢@põ\r))\rWmIøþ&Øê>ñçLÆ', 'Cecilie Gaarde Hansen', '2016-09-28 19:17:06', 1),
(59, 'JacobHo124', '49518cc2673f9d4bbaacbfea988189a032bccd9aba724a267ae8c89f26afc44d', 'að¦Ç5?ê«`Â%·£,Å§ª\'ªÀÿôÚ', 'Jacob Siger Holm', '2016-09-28 19:17:11', 1),
(60, 'CeciliePi291', '5765e8bd7c151ceeeaf0dc246245650c075358f3730f59de9ff9a3d4dbea504d', 'ïdðÃà¦^ñvþmÈÛÌÕ_Bf5Û:ö', 'Cecilie Krogh Pindstrup', '2016-09-28 19:17:23', 1),
(61, 'CecilieMi272', 'd89fc3bd6f98b863b4cc72e462fde73817723eb9ec9a916c6251be61dcffc8b1', '}H_í³_R©ü©3½¥¡ø9½@Ä', 'Cecilie Mønsted Mikkelsen', '2016-09-28 19:17:43', 1),
(62, 'ZachariasSø102', '143ce22f7d3e3b6202d080d92a993cda553851e2717340835e63a3ec3503dfd1', 'ÏRð§Euðý×+LÜ*ª .àû!<]×{\ZAfmP', 'Zacharias	 Kuno Søberg', '2016-09-28 19:17:55', 1),
(63, 'CharlotteBi206', '7fa2fd67e3e29e3d13b8a700e31810685995d54682751292a23aaafd15914001', 'î·=)RgÏÖPñãÛ°7ÉnêhÑ/>¯@', 'Charlotte Bisgaard', '2016-09-28 19:17:58', 1),
(64, 'WilliamFi27', '26d1bea822c2886123df7c80d2212624852456d7d7742867cfdbe809930f6def', '{Ç[£]ðýåW«<P©í!èïc£&£ZIûUi', 'William Kjeldstrøm Fischer', '2016-09-28 19:18:20', 1),
(65, 'ChristianSt116', 'f030caebb8e1faee0acd9f261e45618e03def79bdf6c4f21afba0295148caa3f', 'wMá×f>b2¹^UáªäÇ£ë:¾êB³', 'Christian Aksel Lindemann Stender', '2016-09-28 19:18:37', 1),
(66, 'VictoriaHa223', '89c902990b843f80a946e22cec1b1a6394881857495cc6306f67743fa553425b', 'E·Gù¹ö´£sÊÀvPÙófyâGÂÿºÈæ>', 'Victoria Schmidt Hansen', '2016-09-28 19:18:48', 1),
(67, 'ChristianJe46', '6c5d2fda59989a54a61fe7f8e78b87eb2bb3ec0ad947c895032304e56392a882', '´ÊvFGÈ¨¯ÐgG^ÊRô± @÷¢ø``àkö', 'Christian Højvang Jessen', '2016-09-28 19:18:54', 1),
(68, 'VictorTr107', '2c8292151f2684e122d3369a2cc609987ada4fba4c54be0ca10708b39a6be517', ']v¹ü*äW:Huók\0½ÿmúPÌfÙt<Íg', 'Victor Hvid Troelsen', '2016-09-28 19:19:11', 1),
(69, 'ChristineRa295', '44e3a5e9bf1f5bb7a9aff0ef928c4c0ba50d852bd592c444e56f7a8053ed7cdf', 'O5²aªs<LÅs¹Ë4ÌÎå	¼»x¹=p', 'Christine Maraea Schmidt Morth Rasmussen', '2016-09-28 19:19:14', 1),
(70, 'ChristineKo255', '9d1c50049f50ab1f4e6efea710732507ee7d66b67abd2745e33482b5f5115b21', 'écøãÞçÓX­fV°BcÑÍ¾Ìð¿åCÓµ', 'Christine Schack Kock', '2016-09-28 19:19:51', 1),
(71, 'VictorJe42', '39152667269abd2b919949d9ed8c5331e8a125160b3e1ab1d58facba3e0c1778', 'Qmz&*×cÏ>{|¸u\r4$rê|rÓ)oöç¥', 'Victor Greve Jensen', '2016-09-28 19:20:07', 1),
(72, 'ClaraNu284', 'ed20eded431277ab18b1b03c5ea5957ca4fadf4014390fec2270f5dd95c0f759', '$\0Õ¤K;ÈÙÔ9öfÄ?waD\'b|ÎÀÙ', 'Clara Helene Nunes', '2016-09-28 19:20:26', 1),
(73, 'ViVo110', '8a65850162da9d28637535306b0a472114042fa9a4c5338193d98d66ab5fbc21', 'e!¬?¥·sN³¬ýÍ9eêFÆÐ3°gJ', 'Vi Vu Allan Vo', '2016-09-28 19:21:12', 1),
(74, 'CæcilieJo247', '16328fa57333aba2821a285428d68b54b8fe7a6124f7e1cb1bcb2855d6449337', '¦\\ß{6\0öGçSîsK0R¬ÛÁ°êýF×!Á¥', 'Cæcilie Buchholt Johansen', '2016-09-28 19:21:25', 1),
(75, 'TobiasMa72', '0a01c5e9eb0ce80001f0d69fec4b30da0a68fb4c68e54651babdb5336f97df51', 'ñh=²+\'®\0r^ä±î¬~\nÔö¶\\R1½vº\n', 'Tobias Vatnamo Madsen', '2016-09-28 19:21:55', 1),
(76, 'TildeSi297', '909b710440fbe11a4d92a2550f17c10523e24985795ad9994be3da1121b8d376', '#t7èP)êq¿î@\rÇ\Zh}QH}\Z<ÍDW5¤', 'Tilde Sofia Cordes Simonsen', '2016-09-28 19:22:54', 1),
(77, 'TildeJe239', '04da088e7f57f2788900014ebf45f58010d000319e78c02089cb27395c798fbd', '.±,/]>6õª5j÷Y®OI-H%ÿÕæþZð', 'Tilde Jensen', '2016-09-28 19:24:01', 1),
(78, 'DanielJo47', 'db701b4ecd2e16e91d1282e698b1a45d35e50e2e91ab4499c797066bc7142d4b', 'ë:o#ODjZTeK)õkÌÅÝtýBúÕ¤Ê^o%', 'Daniel Holm Johansen', '2016-09-28 19:24:06', 1),
(79, 'EmilPe84', '3001d706ad2cf6d31be39e138131a9d2344ef74ec5ea9a0fc082552083b4a914', 'Ê<6]ÌëRÙ\0ÒRZÈÎ¿>dù»¥@ZÄ:¾', 'Emil Grønnegaard Pedersen', '2016-09-28 19:24:22', 1),
(80, 'ThorPe86', '382f62db91d4237f347251cf147cf30ce3a4286fa86cc6e694ebababe4ddc37f', '$SDYÓâY|ðoÐÊ~eq§ÔG¥¦3ÆÉ/ý', 'Thor Nilsson Pedersen', '2016-09-28 19:24:24', 1),
(81, 'EmilHe36', '961859c3050f7eb7ab33d9de38f916325c0684402f3ead215b3cdc92f5ae548d', '\\yØ`^WòÁÞ]ÇCâåwäÛ@|Íè#Úº', 'Emil Hedemann', '2016-09-28 19:24:38', 1),
(82, 'EmilHa31', 'e7a25df545521ae8f4e9b368edd57011d0bc7ce8322c9e617ac75b4180416487', 'p÷¶öâ{oNìÀ=Pr\\ÓýGè×é¡kØ¨(\'¾', 'Emil Lukas Kjærby Hansen', '2016-09-28 19:24:56', 1),
(83, 'EmmaHa226', 'b3d36d0a2128e2eba7dd8ff0163587c3ba86f9f80b391997eb27b38a42475b02', 'Éû¸ì;"?w×¼hà¢0³g\'"*D}Q÷ï<^g*', 'Emma Bjørg Grosen Hansen', '2016-09-28 19:25:13', 1),
(84, 'ThereseGe221', 'dab221c73f1e36308519b70101119d11c1bf6c4420d8000f080ca7850b31545c', '®â]¯|5©bó\nÿà½Ä<-µ¦¾éD©!', 'Therese Jetsmark Geiker', '2016-09-28 19:25:25', 1),
(85, 'TheresaTo307', '6cc566fa64862d2184b7a195e7096150585d0e51c4075fedc962882e4f3d78e7', 'yý~Õ2Ï¡TjT ,hp%\')Òîûàp_Õze/', 'Theresa Bøg Tolberg', '2016-09-28 19:25:55', 1),
(86, 'EmmaJo246', '92023323873d83a4e652e3f58fa5f900f8a160bbf4799eb6010b57eefc68b608', 'ÐÝÇÓU¢ò³Ôì¡¿¯s^øS§ï°k#{ó5Ï', 'Emma Desmareth Johansen', '2016-09-28 19:26:41', 1),
(87, 'TerazaFe218', '3bcf68b783725b05c17317b22bf067c4f1069869571055a804065cd17da2338d', '~ÔÒ¨Î)[3$°ÇÄl»ú:g>@Uªãl5', 'Teraza Balle Ferguson', '2016-09-28 19:26:44', 1),
(88, 'EmmaHa224', '5c8e334aaf4e3be54e612b7de532adbd2b928b6965972179b85ca724c434bc14', 'Å{Ý-°y8Aw¯$iÞ®¾^OJ`")º5', 'Emma Floutrup Hansen', '2016-09-28 19:26:57', 1),
(89, 'SørenLa57', '0e5dac4341d3cb066692959a644f2eeb5a43e85d936796919a1935039742eec9', 'âj*zbù°zØ¡Àç\\Dwzn¸x=ksâ?', 'Søren Birch Larsen', '2016-09-28 19:27:09', 1),
(90, 'EmmaPe285', '06869f9b1e30c3d601ccf8d5b9f71c84881cf9386f4d9c56ead79c1f1d398e13', ']Á>pT$yOôR©DÖC[%ê:óH\\i6©¿', 'Emma Kjær Pedersen', '2016-09-28 19:27:15', 1),
(91, 'EmmaLa260', '542998ffca21e65c092e65f020ef8515824debde8bc99448c59d792887f2d5ac', 'UGi±tËoölZßÁ=Ô\ZÞÂþ1ò½', 'Emma Kärkkäinen Larsen', '2016-09-28 19:27:32', 1),
(92, 'StineCl213', '6604af5858a69aa6d8ed55afe05e90c902c6ef23f202b924e2fbc0c58153156f', 'ùEà¬¥Âã×ÛDã¸ß«\'Ïþ}eÈîÀÿõ[è', 'Stine Bagger Clausen', '2016-09-28 19:28:32', 1),
(93, 'SophiePo292', '79685903219b8005635809ad5543a91d293d9e663e3691cda390063f694c512c', 'AÎlkÐð ÞÊ\Z¼*È\nft´©dÃX_2*,û', 'Sophie Maria Poulsen', '2016-09-28 19:28:53', 1),
(94, 'SofieNi281', '6dc5dd4e810662fcb4b2d0eba4ab931b9558690fbfdc8a69410c3f6b4c4903c2', 'Ò;1úÝ_ò´`åNÛ´ÚÇ=R¡¯?Îåµwx´a', 'Sofie Skovgaard Beck Nielsen', '2016-09-28 19:29:22', 1),
(95, 'SofieSv322', '8a707c105c717263bad10b47162547f32580e9ab2bce761c68bda18d220c42f7', ';oã²}?üéI p4	Ç6ìºÉ¹\09Ó8uºÿd', 'Sofie Salgård Svinding', '2016-09-28 19:30:06', 1),
(96, 'SofieAl202', '3eecc48be699c9e91718d0ef8ff2bbfbfafdff1f2bd5d6c00ec9b172239ab68a', 'n1CÎ¨°À¼Ê\ZúÜ91à~°ö#:w\0ßÃ¡^', 'Sofie Alstrup', '2016-09-28 19:34:59', 1),
(97, 'SimoneBo207', 'caa9d4458432a1cc17bbfd323fbddca6e697a757577b924ec8c1594a11793d95', 'Håyfq5§ÎÈ²%Õ»i¯è·¿zäÐ àª¯Ã', 'Simone Kidholm Boysen', '2016-09-28 19:35:22', 1),
(98, 'SimonRi94', 'ce8546184d460c6eda79dc87c7385a2610636750177eb11b3b6a5b6cec804f85', 'æåµúÂ§6õKîÎ\Z{"£;°ÃÇ\\OÅ:ì', 'Simon Stærk Riber', '2016-09-28 19:35:42', 1),
(99, 'SimonJe45', '510effaf897fcff263097c427f2c8455c6caafbce3743c65e20931cc9acc237a', 'ßêGo°øþïzªK¦´5ë]l8}$MX6Î%', 'Simon Jeppesen', '2016-09-28 19:36:08', 1),
(100, 'SigneAa313', 'c10d63b4f1b5990444cc7db5ab94c1969c3aba6ac51b0e6c5d241004485085ca', '¬t5QÂyUkz)ºvdr«9K&xÉÇäy', 'Signe Lei Aagaard', '2016-09-28 19:36:34', 1),
(101, 'SigneJe238', '6d96745331645d9a6f6db5f8599433ab8732abaeac6c98a2fd5a5ba9154bab39', '{óÒÐVÇ}ç}Épzð_c§Ñÿés\r', 'Signe Lydersen Schjødt Jensen', '2016-09-28 19:37:02', 1),
(102, 'SifFl317', '31e5386a370f78148b9714558d32a10ce060fb41281f8faeec5ccdc28a1b683b', 'm[vë97Ñä\\QùáÚæ¯Ëän#hû', 'Sif Amalie Lumbye Floor', '2016-09-28 19:37:33', 1),
(103, 'SibelSi298', 'a6b82a6f6d62d04807651d8395703d109a1e9244471170beb8e217d900fa3bb5', 'gÉú&öã:àÞÖLc|Y7ec1ÎNCóî>°', 'Sibel Hüttel Yavuz Simonsen', '2016-09-28 19:37:58', 1),
(104, 'SebastianBa120', '87501b81194aa32ad552845759198457726897ae9a0f573d544e1b545e356b45', 'Ä½Äd\0PUE8´[¬úÙ`PNAG¸Òí\\o½', 'Sebastian Barnewitz', '2016-09-28 19:38:32', 1),
(105, 'SebastianAn5', 'fe09b3723aedcfcc1054622ec52579ce820bea0994f8fa9911876364ea9a2ba2', 'Öûov{ÐYJýi\'@ÿyç9eðE{láM>ñ¿ç»', 'Sebastian Andersen', '2016-09-28 19:38:57', 1),
(106, 'SarahCh211', 'cd76b0f8f0dfce4b743b12643b450ff186721e5f14497cb84091e00e8c5caf62', '=ÃÒ»Õ²çìTx$\ryÒÌïÐÁâ¼@g]A1\r¤ª\rÙ', 'Sarah Juul Christiansen', '2016-09-28 19:39:19', 1),
(107, 'SarahCa321', '4408e94ab8c1ed6958dd9ff389d70ed265297ecc2cc27ab7545b4afb9472f89c', 'Þ¦Å%¬"Wú1¾Ð¦ç(,g|F¤é?ïõ;<', 'Sarah Carlsson', '2016-09-28 19:39:37', 1),
(108, 'SanderDy25', 'a2c858cb09f4e7831736f52dc3572e06602d5f6a32a12515031e1e44d5621e22', 'I\Z!¿ªáÚßRr(	;¶?#¸<}3\rk`³h', 'Sander Schrøder Dyvekær', '2016-09-28 19:39:54', 1),
(109, 'SabineNi280', '0d0906294ead5f22f33d6e0e1199e491d562a5b4117371831804ba665096ddc0', '¢¿ÏÒÆ½¦;Ð\\ÄÀÿwOÔ\náû¬\'vì¿ý¦h', 'Sabine Storm Nielsen', '2016-09-28 19:40:13', 1),
(110, 'RobertRa97', 'a45a90bb041500ced6cffc9725721ffa3d8409482eab3af67b0254fed53d302d', ' ÷ê7\\»5äÈÌk¯}\rC¾=×Ä1Ø4cã\r', 'Robert Hjemdal Raahauge', '2016-09-28 19:40:32', 1),
(111, 'RikkeHa225', '84734557d46cb343d4c3bba5c0cff23ebb46748281f7697a97e8c5e8f7a8a0fb', '+5º,]¡ÉWe\Zò»\'ïÊ\ng"Û¾©0Ë\'', 'Rikke Uller Hansen', '2016-09-28 19:40:48', 1),
(112, 'RikkeFl219', '8852ee6c94cb39a606e0e04540038cf9098938c931c2376a711948b5b9430c23', 'äéÎ¨R+4$Î®¯¨î¹Ñ¾-½C', 'Rikke Flensburg', '2016-09-28 19:41:05', 1),
(113, 'RasmusBe9', '2aa5497900427fb0dcf861a5b100517272ce6cdf1e2a0c523c8059e03d7275dd', 'mró%3ø¾=sÎíjO2£ÞzÙ:', 'Rasmus Sander Berggreen', '2016-09-28 19:41:27', 1),
(114, 'RasmusDe20', 'f09aa6a4ee31f98a2ee19917488178c9dc729968f116c2b8c2d10b6a099d4806', 'ÂôÓ÷0¦[m7ý\\&È±¶d\npI0²Òç\'©ðz', 'Rasmus Lollesgaard Dencker-Jensen', '2016-09-28 19:41:50', 1),
(115, 'RasmusJa41', '89e094ea08ad924dc87442a544cbd9ee1dae8285d41bfc7736df9a8782e09259', 'åt}BYbëeHj¶¯é¾%c/i¶\0OÏ	', 'Rasmus Holm Jakobsen', '2016-09-28 19:42:12', 1),
(116, 'PeterTr106', 'e00d48aea196cb8d8013d4a2795c3097d0ff6b47623063f47642dea391d58032', 'ÖËPÕn%¹ÜPÓ\n¬Tü¨ß\rO¡à+°S¬9', 'Peter Jøker Trachsel', '2016-09-28 19:42:29', 1),
(117, 'OliverBr14', 'ec6e11c3f391450901d14f15accef7e783e6e47a334d7c04a43fb7d07c86e705', 'JGgªôò|ç9_5x6 s;¥Ôæé­Ð¸j', 'Oliver Andreas	 Nørgaard Bruun', '2016-09-28 19:43:01', 1),
(118, 'NoahFa26', '67ceb5e104a5bfa359f9faf22b4a8f19a97e0550e5851778f705e82710c9025b', '3.¿HAÎáÉ\rýËPdQqÚJ$ !±s^i1«0í8', 'Noah Schak Farlot', '2016-09-28 19:43:34', 1),
(119, 'NinaSø303', '946a28f0b5ed293773e3e84f49b21b555fe3485be5facc4745255490020653d9', '\0¨j£6ÆÈ«6¶ÍOÌ£f7ÅbiÃpbN', 'Nina	Skytte Sørensen', '2016-09-28 19:44:00', 1),
(120, 'NikolineHa227', '56fa69b437fd8ac69879876be31f9214f7c06940bfda0d0f683d5186e0873aac', 'â:ëÙbÕ­Wõõ¯=1;Ei¸,ÿ¶vðºêáî', 'Nikoline Victoria Hansen', '2016-09-28 19:44:28', 1),
(121, 'NikolineMa269', '227452769917c9a475174d49dfc9661b81363335dab98198cd8eb727112bcd2f', 'å Tw°óÄ½{µ\nFT	)ÃÓ{Æ/0ªiP', 'Nikoline Pors Mathiesen', '2016-09-28 19:44:43', 1),
(122, 'NikolajMa71', 'b7a5cab1356c785b3c9d5d71f9598e4791057c2943bc0aa8fc77c002fcc61d2d', 'FØ:ú9ÊØPUSVnä×¸Àüýo;W]¯Ùàq', 'Nikolaj Arild Madsen', '2016-09-28 19:44:59', 1),
(123, 'NikolaiOl82', '322a1da3d7d56e5e44a1e706a0c9b24a42a974f9b7a999b136805d7bb7c66f27', '´çmþù«pp=¹\\ÔþRè¨kJØØfÛtÉk', 'Nikolai Vaabengaard Olsen', '2016-09-28 19:45:23', 1),
(124, 'NicolineAh201', '0c9ff4b9187c7eb00183e8dc7125b7194256801851cad747580deead10270592', ';ï¹Áä°x1»õ\0ýÝFm½òvÂnð!%', 'Nicoline Trend Ahrentsen', '2016-09-28 19:46:02', 1),
(125, 'NicolineFe217', '199fd2962eafcfe2f742812a9b78cbc8bfdd030bd9e59b91b759f1b8d6a742ed', '&0ØæALæÎÛE!j­Î[qêãØr&ÿ\0©«¹', 'Nicoline Fejer', '2016-09-28 19:46:21', 1),
(126, 'NicolaiLa62', '0066d575e316b51e5b38f7d4387e96112d2c6e0d08a1a7094304ffaac2b54897', 'Øþd"¤npRW¥ÑÀÂÍ^éÛÕªy«\\«qw¦ß', 'Nicolai Larsen-Ledet', '2016-09-28 19:46:41', 1),
(127, 'NickiJe43', '98665dd639579c6beff116a25bd62d9427fd44c786350351bae85551e1116490', '?Rä¦å[Z¡¬MnRùëÅ0E@æüØ{s®~U(3vE', 'Nicki Jensen', '2016-09-28 19:46:58', 1),
(128, 'NannaMi271', '7bc88219bdb4ef6e20226cd00c5efb7b3809c8037627d5e11e769ca912ed0624', 'k©1Æj¡ñGÃ@7é¤£7ñBêðS»3O', 'Nanna Winther Midtgaard', '2016-09-28 19:47:18', 1),
(129, 'MortenMa70', 'fb1ab427684b926887a02acc25e5b5c3053e84f97e9d2c0dca8aee75c6303e0f', '_1­d\\±ôÇTá-Ã]n­;:#Ë®pèPü', 'Morten Bastian Madelung', '2016-09-28 19:47:38', 1),
(130, 'MoniqueDa214', '2c1dda8cc362bc466157e0a9efc0e4e48c9f664da8267a5ce46f4ab8b7e240b1', 'mSt¸,5tê·IhºÒÄ\\M²1\\ t0ûÖá.', 'Monique Vang Damm', '2016-09-28 19:48:12', 1),
(131, 'MinnaJu315', 'a448314601db56f0a0b7595399d683ad026e367e974fad4ce03becbde30369e2', 'ÛÇ½ïV=YIk/â»Aºs¾åªØ¥L@½', 'Minna Juul', '2016-09-28 19:48:29', 1),
(132, 'MilleHa230', '78410284b3a51efe23d43d0f95da4fa28cc66909958c48e94cc2b6c7de8003d7', '_Nå\\¹áª5Iðà+mÀÐtl2 SYÜ', 'Mille	Bader Havkrog', '2016-09-28 19:48:46', 1),
(133, 'MikkelKø54', 'c457db4c988500847fb572bbf7398f23ce58fe5ee76f6c9d83e52f5362f96e72', '¥¹uE9¸µÁá6<*"0ªþ_¤ËÛG½7­', 'Mikkel Kønigsfeldt', '2016-09-28 19:49:01', 1),
(134, 'MikkelRa113', '09f823a7e8fc6737c32f0eb3877462b123253afe75dbf89cb80f06a1640ac743', 'Áx#.ÛFè×ïPÅ3ú\\paQIÂámRNí%', 'Mikkel Kaas Rasmussen', '2016-09-28 19:49:17', 1),
(135, 'MikeWe111', '483947854be2e681319be95d0324c4b5da6aaf971285ab9e5ac73d841a64c448', '!¶z%zµáÛ`UÆÔ+óÄq)æxMæ³~Ê:)Ø', 'Mike Jens Westergaard', '2016-09-28 19:49:34', 1),
(136, 'MieKo254', 'a968a967f17eeada6bfaa59c11a6d3cf97e817c3656f031fa24af5b629c5e32c', 'L¬¦U>AéM¸êk¦c¨IÝ§+¿ÈÕ«CÅ', 'Mie Sofie Grønlund Koch', '2016-09-28 19:49:56', 1),
(137, 'MettePe286', 'eafaea33eb6466a4e90ffe9d93876802289ef16d909c257537c090970bc06ec9', '«lËFbõQ×IÍA \'h·_¯Àz#2àKÆ', 'Mette Amalie Pedersen', '2016-09-28 19:50:18', 1),
(138, 'MelissaSø304', 'd40481573e037735c19f335cf23f4e301b5aee101cac318b95a6f3914cc396e8', '½)7;1æ]á5SÐ¬yÜèåiPz}´B3à|¹d', 'Melissa Damsgaard Sørensen', '2016-09-28 19:50:42', 1),
(139, 'MattiAn3', '110437ebb0e452d1017a000cefb5e8ac7a0c97f8a30e2abb8b53bce1db3146c9', '\nR`Ê[®ÿPEGê5øîÍu\0RDí	ÿcz', 'Matti Sander Nørskov Andersen', '2016-09-28 19:51:11', 1),
(140, 'MathildeKr257', 'a1299395b3822b73aa6757b3df1eafed1cd440828dfd1620fd9ec101668be6c5', '-R¿ s³\n;àEN7árÿ<+NG,', 'Mathilde Rafner Kristiansen', '2016-09-28 19:51:28', 1),
(141, 'MathildeEn216', '79e4dd98dd847e6f8249e0ddd2b69ee5f06f996c89ae129d10d06086b9d59e71', '8·û¯\Z)C¥íôWÌzS#\04¿µ{¨Ëø', 'Mathilde Brunhøj Engstrøm', '2016-09-28 19:51:47', 1),
(142, 'MathildeBi205', 'a3fe0b456ad27423faf040bdbea52af0b087bca894c16f882d0d77d94b2a0ed9', 'ìÉªO½áÕþ!±qÊøÐIô|>à+O;[ÃÓm', 'Mathilde Bisbjerg', '2016-09-28 19:52:03', 1),
(143, 'MathiasSz101', '91b71317fe42e58b0183a2606747923ce7687d52dc681f0858f1ab77eb9dddc9', '±×EñB¿ÐíÕ6øô/µÅnçC±\rlPh\Zz0', 'Mathias Skjerbæk Szast', '2016-09-28 19:53:04', 1),
(144, 'MathiasLe66', 'c3cd855673a6aeb572f6723026d69a70ddcfe69332ba75088c4d420f63f98cc6', '½ÐÕ!nbE_äw/Ê(jÕ¡¼Àx', 'Mathias Dreyer Lex', '2016-09-28 19:53:24', 1),
(145, 'MathiasKn51', '45867ae9d4edb31aba38c78fc9036f4b4d5fffb0a37cd31dfcd1766acea91923', '@ÄØH°-þNÞÁW>pÕ¸ûzîXE;Ig', 'Mathias Alkjærsig Knudsen', '2016-09-28 19:53:44', 1),
(146, 'MartineFr316', '61639b3a152ec74a6b1aff384ede61d9b5173a22fe701b38285740e427effb51', 'q	i²#~covSCùá0ÑfÅºâ1ºÚZ', 'Martine Josephine Sloth Frederiksen', '2016-09-28 19:54:03', 1),
(147, 'MartineGr222', '5fd59ba392a563a0b0c36998d08f5ed69443de0e8a22d39489f6f2223b750899', '÷±\n3Íì-Çì *åsIb<~vÒ.¾U%0°â4¤5×', 'Martine Christiansen Grave', '2016-09-28 19:54:33', 1),
(148, 'MartinMi75', 'c280bd6a59c81e0dc927b86c5b95f51424d589c64ceff7aef74ce73bcd64810e', ':+÷èµÄ¬>½ÑÁ*Û-MBN»/Y+ÑÕs:ÞÑ,"', 'Martin Slot Urup Mikkelsen', '2016-09-28 19:54:51', 1),
(149, 'MarthaKr256', 'e217da75f199c9e5b68a8e701c8a0fe024c157d72e2b04f699770b65363eb3c4', 'pB[´ä°Ö¤	ÀfÂ«ËË`½OË*¸S9j', 'Martha Juul Kristensen', '2016-09-28 19:55:13', 1),
(150, 'MarkBø118', 'de9b7f6bb93373327c3c9d36e7617861afa610426386a3e8df63ac4f84001a99', '½öò6ÐLëÿKå)3¶\0ñ:ò<Z¯Sü^Dÿ´ã6·', 'Mark Bøgelund', '2016-09-28 19:55:33', 1),
(151, 'MarieWi312', 'bd61d179369140e371d5addcc8a07778336da2f596b37063dab257349b7274e4', '_LÀä	«ÛÃÐÝsAÁÌ\nws)ïÉ|2B', 'Marie Paludan Wind', '2016-09-28 19:55:54', 1),
(152, 'MarcusBe8', '77e752428caf5f8a4eb6f1b5f1aea6b790de1a122446843b7cdf44793a8908e7', '­òD~JõÒÿ3÷ÇÓ·N\n($»Ä«p\n§', 'Marcus Nyberg Bech', '2016-09-28 19:56:10', 1),
(153, 'MarcusZe114', '0d72dfdc6db0e23036a54277032652d0123e1b1131896a46bf4d787080d9dde9', 'üÙ/Ûs!³¿7©§|)Â§±ªÁrA=2É[}', 'Marcus Kirkeløkke Zenker', '2016-09-28 19:56:24', 1),
(154, 'MaltheAa112', '06444a45b284bc28a4fabc6866fb342a7d2e9d31cce06ed0f66d1d1a1dfdc8fa', 'ºSÆ*É»àr#gËTk> úDMv\'Æ¿|¸çìóð', 'Malthe Albrechtsen Aaen', '2016-09-28 19:56:42', 1),
(155, 'MaltheAh2', '0bb39c2b7abbaf907ec163a05a2bdd3453ded22be38dd45e6ec662a340a1783c', 'dQ­ui¶\Z£¯:,ûn$¬,4ùö,9ØoÂ¦©;±Â', 'Malthe Ahlstrøm', '2016-09-28 19:57:19', 1),
(156, 'MajaHa231', 'f052556195e6ad9405293ad679262940b6431a238bf744fde33e9c4718236b92', 'ÚÉûÿcþ]ö\06ÔCøYÖu±ÝjzºURvÖD', 'Maja Weinrich Havlit', '2016-09-28 19:57:58', 1),
(157, 'MagnusRu95', '35ca2fdf19eb5d2edbdb26b56165c54c9d261e632912005a91e118eb1741c621', 'ÁÕ»9º0¾.þ?Ø>tþs£RbØý\rë\Z&Ç»', 'Magnus Rundstrøm', '2016-09-28 19:58:11', 1),
(158, 'MagnusQu91', 'ba20027371b2a94d3d2bcb39a10d6c19a54ef0c7f582ecc3d1c518bb5a41aa11', 'eëU[4ýÀØX~àb¶0Vl0pqAAËâÛI', 'Magnus Quist', '2016-09-28 19:58:27', 2),
(159, 'MagnusHa34', '1dcba097e0ac3078420cb7c2d297ba8be7bea7e6e446854e130371814a419b79', '\n2¸]õâùhG&­iZT})$.dÂ', 'Magnus Bæk Hartung', '2016-09-28 19:58:41', 1),
(160, 'MadsNi78', '4b12927a661eb0b65a86a8451843b2521aabae2b553ec7f54d524b3abe0cff1d', '~ÁJ¸\'ù¢u{¿¦K3öéðV&Õ».îaQÈÝ#<\'', 'Mads Victor Nielsen', '2016-09-28 19:58:56', 1),
(161, 'MadsMa74', '640f6a22f070bbbbe5d780d1ada1e1299ab5962b48ec94177f075d1eb9d6d5ed', 'ùáÛµIa>"ü?óú¢~³ü8øû¼<', 'Mads Mathiesen', '2016-09-28 19:59:14', 1),
(162, 'MadsSø103', '98468bb1015f05a845b743c0e002ab33b2bcb960bb6f117949b6ed5237ddf2f0', 'ùK\ruÖÈz@uüÅ"5eI½w÷Þ¢åÑj5w<', 'Mads Juulsgaard Sørensen', '2016-09-28 19:59:31', 1),
(163, 'LærkeTo306', '25b6f32c760ac90ea55ad643699f96424d92a8891c464abfd768974cf4d0a3ba', '£7jÊ8ý/iuÙ]Ïr¶]5}á¿õ', 'Lærke Stræde Bladt Toftgaard', '2016-09-28 20:00:11', 1),
(164, 'LærkeJe244', 'a4df788b16d2768ebe1704d4a3067ecc3dc4db3da547a5ed275fbfffcaaa5be0', 'òYóLIuÝ;$¹Íñ¾H=»ÞkâüÞq', 'Lærke Sandholdt Jensen', '2016-09-28 20:00:27', 1),
(165, 'LykkeCh212', '24bdb560f211e7577c54d69a4e4b47eab20a62dc36176314cfc05506412aba23', 'Û=,§6EmM|\0×?ä ),Í/÷i7v±', 'Lykke Nørgaard Christoffersen', '2016-09-28 20:00:42', 1),
(166, 'LucasAu7', '8af3212d799dc612134bb12cbbaedfda3a72a2cd5b76cc0af35b000f55f6e577', 'ËÝñÅÀ¦\rb,9nËþ¡gz2m-ÃVR', 'Lucas Demant Augustinus', '2016-09-28 20:01:00', 1),
(167, 'LineJe245', 'e730316849ec10d926652409204ab2768f3fb0b3ebb6fd9675ac2556fc5afbd6', 'xÕ"\0\'ÕVî|4´X<u-ZÔoÑmýGMÊù\nóz', 'Line Mia Jensen', '2016-09-28 20:07:09', 1),
(168, 'LineLy263', '18579b6300d83b7de72b9d4263e017f5a967c172af8ba2af24e85518e864af1f', ')öÑf%ÁH¯h¥¤ÕdéáÉ%Úfã¿ÌÕÐ!', 'Line Kallesøe Lyck', '2016-09-28 20:07:27', 1),
(169, 'LineHo234', '40af30bcd7f48c40e13317dd4e88daa3dfa47476d8ad6a9a3ce17abba6d1428c', '×b!´SK«qÈd.ò¬ÛMÖ§Î', 'Line Holm', '2016-09-28 20:07:43', 1),
(170, 'LeaMa268', '6bfd47dac51873ea106f7211b35a6a00e7e550b14371c28f532031f259bbae48', 'm.*Àæ¯Àp÷94Úúid Z#	÷D\0\0\n¾', 'Lea Mahato', '2016-09-28 20:07:55', 1),
(171, 'LauraBe204', 'f3d6df08be1f5dc40b65ef62ef17d9653c4b80e2563d54acc1bdcb94e7d74efc', 'Ejí%]q8KØHOµ>J\'¿å¬âÜ¹²', 'Laura Kjøller Bech', '2016-09-28 20:08:12', 1),
(172, 'LasseHo38', 'c879a82cfb854efe1b294d2e9fa4b948d010b01a0ae751fb1bfe1bc0b970732b', 'ÏÞÒuÃEnG(Ôºo,GÓÂ©w7îr', 'Lasse Hedemann Hougaard', '2016-09-28 20:08:28', 1),
(173, 'KristianLa55', '5c1b2f1624e5f22f79a18467e0df464ed83d96b2f2b4a33609b72e5ac3afd3a3', 'ã÷\0B½[Óè´ÚFWOôèÊpäh£\r\'&', 'Kristian Toft Langæble', '2016-09-28 20:08:45', 1),
(174, 'KristianLy69', '65e3868bf33d3209c8358d8f1e683701abc912c50e3c47fb03d6b72e9df4b6fa', '´bÇlcÞè>*¹S5¯ Än{ï_@q', 'Kristian Bank Lynggaard', '2016-09-28 20:09:13', 1),
(175, 'KirstineKn253', 'f002fa5d5cc7a1c0ef728fd3f286add1b9d26ed3e617804942add5fb0763805f', 'à½L¨Ï¾íìXÅKØÿÎÙÌÛ3®!Ã¢&MÓM²@', 'Kirstine Knold', '2016-09-28 20:12:04', 1),
(176, 'KimLa63', 'd0ab5b8a1e1cd1a3b0705e268d9f6d5ac50aae0c52038d5c38e19700219d7a3e', 'qP8,pú yqÊrvÚ¥àHµõ^#Eå%ho', 'Kim Jong Engsted Lassen', '2016-09-28 20:12:28', 1),
(177, 'KatrineMa266', '50eb9e547ec30eeacb3f5df1f5001018f518b33300e814a96421fec417a3177a', 'cY\ZøÜÝ_Ò8-Þ"iWúBBºò>e|§R$Ý', 'Katrine Tetzschner Madsen', '2016-09-28 20:12:40', 1),
(178, 'KarolineHa319', '58ed45807176cf15044bd0b21176cd522554d5522c769a46d854b25edf482b92', '¸?_D^cUåµZ·l¿SNç|ä"^%', 'Karoline Sofie Juul Hansen', '2016-09-28 20:12:58', 1),
(179, 'KalleDu22', '0f8d5b9e2fd54c5c1a6739979e47be0b104a29ca7ce303934037d73d7bc30c06', '®ÅÚXâhÈÁIÁÚº\'ÌÆ1rzm|È', 'Kalle Engelsted Due', '2016-09-28 20:13:13', 1),
(180, 'KaisaHa228', 'd603c0c6ba087df24bf04624f3cd9010dbc77633843f25db6e63fd27475db74b', 'u\Z\rx\0ðL×Ú#)";\r÷ÖPãö-¸', 'Kaisa Amalie Cock Hansen', '2016-09-28 20:13:42', 1),
(181, 'JulieHø236', 'f2e96b32658f818b0b18df5a33dd2242e89e73f923478da223737abc3405b330', 'í³Kalã¯±æ¨þ|¿eóå¨ë³ôõAÕQØ', 'Julie Høegh-Jørgensen', '2016-09-28 20:13:57', 1),
(182, 'JulieJe241', 'dd3b5e0f3f744136fbacb46a09e566fa629c2a9151373a6d868a51180625af9d', 'q("2+;ø7=^izÉ!ìÝXfKÖÄOÂw', 'Julie	Hildebrandt Jensen', '2016-09-28 20:14:09', 1),
(183, 'JostTø108', '56b6799138855b85221a32ebb6756cf34343cc2e9b8c36c9ff0f2217308f48c2', 'RªFvËüvµqüÂôÿÉZ1Î-¥ùîxxß', 'Jost	Bech Tøndering', '2016-09-28 20:14:29', 1),
(184, 'JosephineMe270', '4cdae79eb3bff4562a5eb4bedb93ab435f31e9451f98f9cfc21d44635a513d7f', 'û×Wâ\nÜV,e+Üü)3\rùûHí§Èôö&vå', 'Josephine Kirstine Emborg Mejer', '2016-09-28 20:14:52', 1),
(185, 'JosefineSø302', 'bf113d76ff0ea5ea7a53d923a45020c7b5c06f88b6b37f7be36bc80d69cbfbf2', '°3zt\\=62?ê©HÖKoÉ°åéëhm&v', 'Josefine Holm Sørensen', '2016-09-28 20:15:11', 1),
(186, 'JonasVi109', 'd6921f009f6a55023eb4adf0a76cfff6e40c2726c8ab72b188ea89eb8ed7eae2', 'Ýdfìã;y¯Ù4Q÷§¿CmN@èûËÜMæê', 'Jonas Sandberg Vilhelmsen', '2016-09-28 20:15:25', 1),
(187, 'JonasNy81', '53a79824bde56725f9207a753f5b6514ee2c2650c375d4d0b2449ebcb309f9ad', 'ûÞXÏ\'1ï.YüH{ßNûyæÔ9XB°ÑAv', 'Jonas Nyring', '2016-09-28 20:16:22', 1),
(188, 'JonasBj12', '3fa92eadcba5e4e1157a2241f0d775596d63caba705d6f5a8dde5e0db674ffc4', 'rzï((Ö²ÂRà SÝf¦\nkxG3±/­èT%', 'Jonas Leth Bjerg', '2016-09-28 20:16:39', 1),
(189, 'JonasLa56', 'adcd1184622edbcfcd4903c4715bc8ae2492e32344e1fdf5bc6319b0431544a4', '¯ëî7ö®Èè®[«nØd@|Ä=I\Z¾fÇÅy', 'Jonas Kjærgaard Larsen', '2016-09-28 20:17:04', 1),
(190, 'JonasNo80', 'a8c34aa3ad90071ac4593ace085d4082f688f516e936b73abf3552a4b97820ac', 'A%½\'C÷ µ]å¬x¢ÎÒØjÐ?°_­)WKN', 'Jonas Hvid Nordbo', '2016-09-28 20:17:19', 1),
(191, 'JonasDu23', '2e2c75b9155367efc9338e47a3363c36feae338e271d79ffbf62065dd19f3948', 'ç=ÂòÁ\'ò^ïR¬MÖ}uã<èÛÔÐ', 'Jonas Holst Due', '2016-09-28 20:17:35', 1),
(192, 'JonasSv100', 'f1cb27550011987f0d38886eca874f603c8ce12714a8990180bed19c597e1ff3', 'ìö1·®Å[êçÚhºüL¨pë®*´¦û³âj&4', 'Jonas Ejby Lentz Svendsen', '2016-09-28 20:17:59', 1),
(193, 'JohanneCh209', '4f184e9a2808428643e6b67364cb778691ab8aafcfbc398567a76901492b5064', 'tÝ=É#\'ç¿&Á¸á©¶O<Qr²wé_á¢', 'Johanne Astrup Christiansen', '2016-09-28 20:18:46', 1),
(194, 'JohannaMa265', 'd2a56f11133dfece48fe88e49477603ad8f7b303e631e3fcc306823b3074eaeb', 'Ûª³ïôûI]Ûq)¢öO&9/÷ð*àF', 'Johanna Tashdjian Madsen', '2016-09-28 20:18:59', 1),
(195, 'JohanMø122', '43f4712e0ba7d1670f4d0fae28d31f2329671923b1bca284b1e9823048bef2c4', 'ÃBïÚr9-#¥S6".2=tbÈ×ð¾', 'Johan Theis Møller', '2016-09-28 20:19:13', 1),
(196, 'JoakimLa58', '73d69f1365c80dbcb1eefdf0057cfe4c84a635b9813c5cbaee2fe7d7d02cfe53', 'Ý@ýõÖÑ|*]Ôj\n×`H6lêt¬|ËÇ', 'Joakim Lyhr Larsen', '2016-09-28 20:19:30', 1),
(197, 'JoachimRz96', '62f706fc90a467f59d9942b16bff65a990fdadc8a1aa68e714685c7dcbea2b93', 'ÛÙ°ó³}Ï©®øÐ¢\\ÚÝÔU_hëÍ² ÜÀ', 'Joachim Fredeløkke Rzempala', '2016-09-28 20:19:49', 1),
(198, 'JeppeTa104', '67a9b9dcc0d79951b46b873358d4af2cf8cdff8445738548cde84c9d65c869ec', '¹i½Á¬ß«{¿ÌxÎÈNAÞ~Wá¯\'Â¨ß¢3', 'Jeppe Snedker Tamberg', '2016-09-28 20:20:06', 1),
(199, 'JeppeBr13', 'abd4325ebb480d4cd03df90892b4dee0041995aa673da17c95345c933f205d42', 'òÛs«Çë4¹Îñ5áÄ8Mü&cªb^', 'Jeppe Bredahl', '2016-09-28 20:20:20', 1),
(200, 'JensTi105', '58aa26159ad63532e24cc0a4245109b6904c7360180e29f88e3de22734d8e299', 'Æ"«}ë}Í¥±³½÷¹{mÌ£u¼?{nYôùFíäI', 'Jens Tinggaard', '2016-09-28 20:20:53', 2),
(201, 'JensPe87', 'c05ff6c27e1c597eea340b05a0ecea69afaf353a643a3f70be478d0b8a82c297', '`!esaü×êÜå\0ÕÓ»9ÉáµÎ¢Iöú', 'Jens Jakob Ellegaard Petersen', '2016-09-28 20:21:12', 1),
(202, 'JensRa92', '5ea3f0f5f548eb1f6e7ef7d242df6458bb1c9e465502dcb68b67ccb6d037248b', '\rhÿiW½ñ¾<_ºú<5\'^[ldÃÝ\\', 'Jens Christian Birkholm Ragner', '2016-09-28 20:21:40', 1),
(203, 'JannickHa30', '9344a32baa3a01eed542c0abd5264d5cdf99ccd3cc262bf11f8ba5128888e23e', 'P¹SoÁML=wôô¨npD\r­\rªu>2À]±ÇÅ', 'Jannick Hagensen', '2016-09-28 20:21:54', 1),
(204, 'JakobLa59', '82be0a3e852071d041277345f553e6ee072d8d2f3389eea648dda7669dac2a97', 'ÜD¬¿s=0g"DRJ G \nÐ}×LÈ', 'Jakob Larsen', '2016-09-28 20:22:13', 1),
(205, 'JacobPe88', 'a74ebb784e1f80265b0c796133e7ab85c5a622e95faa9e5bb54e974a36d71bac', '§¸N[jÞúDª §PI÷EôdQJ«UaÄ¹)&É', 'Jacob Schilling Wulff Petersen', '2016-09-28 20:22:31', 1),
(206, 'JacobRø123', 'bc1e28334dcf73ca8abbca8c92673ead34524220ffe631b3d692a1ca49c32693', '>AÆÄ´¨\ZC÷R±ëñË\\ö±3õïÃr±', 'Jacob Rønn', '2016-09-28 20:22:59', 1),
(207, 'JacobPo89', '1f842520eb36c404b15628c435244a03764bccb1966dceda1934a47342c08778', '6ñÀocìc¢p»Ã-¯°l¯vÝxòa¶', 'Jacob Nicklas Poffler', '2016-09-28 20:23:13', 1),
(208, 'IdaHo233', 'd61712dcb858c26b6df6a6d381c7cd7e7e302f0288d605bad4a7a702db74f072', '~W%§£æ¶Â¸s-ëâ ½½¤	Uý	uº', 'Ida Skytte Holm', '2016-09-28 20:23:29', 1),
(209, 'HeleneCh210', '02c01a012e1600484dca31003491f7994c600bdcca76903584a24336c0067cd9', '»*ÀH¨W¯8d|µÂ(´ìÚþ}Än»²¶', 'Helene Deleuran Christiansen', '2016-09-28 20:23:43', 1),
(210, 'HelenaHo232', '1f66a6bc0847abf75e43674b47dd0a9af38311dc3181ec6b299a8b4f3be58966', 'þ¿VÁþ¶Ío·eG-ÕÆDjh6£9±= ìÏ', 'Helena Bak Hollænder', '2016-09-28 20:24:26', 1),
(211, 'HansLa65', 'b8ba96a6062f27fe4baee5bf0112b5d63fea8b3e6fa01105b496f0b0396c1f93', '¿¼ÆzÎ3\räC²3åV­NhM;ÙC°', 'Hans Christian Zareh Lausten-Thomsen', '2016-09-28 20:24:50', 1),
(212, 'ChristianJø48', '3343040004852b5f53d3c59c6e55e475f8855b47b71723e5b871fd5bd97e70b8', 'Cäv}ì"áZ=¡Õfx¹b]ÍÓr\Z"ÜCgf*', 'Christian Staalbo Jørgensen', '2016-09-28 20:25:08', 1),
(213, 'GustavJø50', 'd0ada138583b13f6a16d653473976cddfcd08e69d9666a083395bd6e7ff60a84', '-ò)»ûFÑ²¸ïö\ZÅÿD+Ö0£Î¯ÕQf', 'Gustav Meibom Jørgensen', '2016-09-28 20:25:21', 1),
(214, 'GustavJø49', '12ef446e4435703f2e5dc6f2ba1582b5699d22f21267ac543a63049cbf46a41a', '\\¥mÕ}{3¾ßÆIÃáðÆl¯Å?¶\0b', 'Gustav Beck Jørgensen', '2016-09-28 20:26:46', 1),
(215, 'GustavSc117', '0a3261905285329f50f8f611ef1187d65e3eb6323d4a6659cf3fe9b576ce4bb8', 'OêT¬ ¥Äº`4ªää Ñ\0ÎÆb&àgêK¦', 'Gustav Anders Schou', '2016-09-28 20:26:59', 1),
(216, 'GormRa93', 'eee58b460b9e9ec22f9a3e02c87d9037d3ad7926f58e3377747a782d41c7969d', 'êÍpU¼§±ßÃ`,@3åâ0.Á²ß*=', 'Gorm Stege Vaaben Rasmussen', '2016-09-28 20:27:14', 1),
(217, 'FrejaSø305', 'a09908a3a558dbd0d61e6f6ba69a9bbe56ce7c6a96cecb3aeaf60e8334d22450', '«ÞKmðUU©o´îïÚæ%&µpÎXþ|ëZd', 'Freja Mørch Sørensen', '2016-09-28 20:27:39', 1),
(218, 'FrejaJe243', '3bccd115dc084d6f5a721705d274217f62ef1441c6427d6b56c4e6ed03eec1ac', 'GPTå=	JàÉ«ìÊwnÈ¤>Åd5ÃàN+', 'Freja Jensen', '2016-09-28 20:28:06', 1),
(219, 'FrejaNi277', '891c4866e10a21a0f83049902280d2f88e9157ae3a32a714679cc32c9b80f55e', 't÷ÕO!Ô)Ä(ÜNß-	öÂwsi\'©@&y', 'Freja Elizabeth Nicholas', '2016-09-28 20:28:20', 1),
(220, 'FrederikPr90', '37dac501b3ea786a94e3ca4a3284c980c09c29a2f250ed6104dabf8a5902e6f1', '×®ÊwÕU:-Ê<m	XÔº\0°|U¸_à>', 'Frederik Presskorn', '2016-09-28 20:28:34', 1),
(221, 'FrederikAg1', '151ea44a4d2419182f95d38705b063810088d96511ca9a19615fa8de9e4b2733', '`÷´NóÆdkÊ`ë°uch©2ÙL,\n¼}\rü', 'Frederik Nicolai Ibsø Agatz', '2016-09-28 20:28:59', 1),
(222, 'FrederikMa73', 'cb8d7db1509e968e2a1e6e62be9cc82ed00f4375e1806022b0a69422a08307a7', '{ÓQª\ZÕ\\]wQT¡jöÏñEç:,Ç8çú', 'Frederik Kjøller Malmberg', '2016-09-28 20:29:26', 1),
(223, 'EvaLi261', '09449729faa5f2447d7f4f013f9436c6a2ee321e526c13ed23b7fdc161c43b0e', 'ÃJ¸?äjvAÞmãz%ÿG^Ò»\\åá8÷Mìb', 'Eva Bjerregård Littau-Jensen', '2016-09-28 20:29:42', 1),
(224, 'EmmaHa314', '91283d734daac9b6b78c99f72e147c991b7be4dd1976d00a4fe8014045ff973c', '*ÜûÁÃ)*ì¼ÇEm·óìºl ú¼òâNß¾»)', 'Emma Lhjungmann Hansen', '2016-09-28 20:29:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `elever`
--
ALTER TABLE `elever`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `elever`
--
ALTER TABLE `elever`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;