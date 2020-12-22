<?php require_once("res/x5engine.php"); ?>
<!DOCTYPE html><!-- HTML5 -->
<html lang="ru" dir="ltr">
	<head>
		<title>Поиск - УкрКосмос</title>
		<meta charset="utf-8" />
		<!--[if IE]><meta http-equiv="ImageToolbar" content="False" /><![endif]-->
		<meta name="author" content="Солодовник Сергій" />
		<meta name="generator" content="Incomedia WebSite X5 Evolution 10.0.2.24 - www.websitex5.com" />
		<meta name="viewport" content="width=994" />
		<link rel="stylesheet" type="text/css" href="style/reset.css" media="screen,print" />
		<link rel="stylesheet" type="text/css" href="style/print.css" media="print" />
		<link rel="stylesheet" type="text/css" href="style/style.css" media="screen,print" />
		<link rel="stylesheet" type="text/css" href="style/template.css" media="screen" />
		<link rel="stylesheet" type="text/css" href="style/menu.css" media="screen" />
		<!--[if lte IE 7]><link rel="stylesheet" type="text/css" href="style/ie.css" media="screen" /><![endif]-->
		
		<script type="text/javascript" src="res/jquery.js?24"></script>
		<script type="text/javascript" src="res/x5engine.js?24"></script>
		<script type="text/javascript">
			x5engine.boot.push(function () { x5engine.utils.imPreloadImages(['menu/index_h.png','menu/page-4_h.png','menu/------------------_h.png','menu/page-8_h.png','menu/page-7_h.png','menu/--------------------------_h.png','menu/sub.png','menu/sub_h.png','menu/sub_f.png','menu/sub_f_h.png','menu/sub_l.png','menu/sub_l_h.png','menu/sub_m.png','menu/sub_m_h.png','res/imLoad.gif','res/imClose.png']); });
		</script>
		
		<script type="text/javascript">x5engine.boot.push('x5engine.imSearch.Load()')</script>
	</head>
	<body>
		<div id="imHeaderBg"></div>
		<div id="imFooterBg"></div>
		<div id="imPage">
			<div id="imHeader">
				<h1 class="imHidden">Поиск - УкрКосмос</h1>
				
			</div>
			<a class="imHidden" href="#imGoToCont" title="Заголовок главного меню">Перейти к контенту</a>
			<a id="imGoToMenu"></a><p class="imHidden">Главное меню:</p>
			<div id="imMnMn" class="auto">
				<ul class="auto">
					<li id="imMnMnNode0">
						<a href="index.html">
							<span class="imMnMnFirstBg">
								<span class="imMnMnTxt"><span class="imMnMnImg"></span>Главная</span>
							</span>
						</a>
					</li><li id="imMnMnNode10">
						<span class="imMnMnFirstBg">
							<span class="imMnMnTxt"><span class="imMnMnImg"></span>Перший космонавт-українець<span class="imMnMnLevelImg"></span></span>
						</span>
						<ul class="auto">
							<li id="imMnMnNode3" class="imMnMnFirst">
								<a href="-----------.-.--------.html">
									<span class="imMnMnBorder">
										<span class="imMnMnTxt"><span class="imMnMnImg"></span>Біографія П.Р.Поповича</span>
									</span>
								</a>
							</li><li id="imMnMnNode9" class="imMnMnLast">
								<a href="page-9.html">
									<span class="imMnMnBorder">
										<span class="imMnMnTxt"><span class="imMnMnImg"></span>Політ космічного українця</span>
									</span>
								</a>
							</li>
						</ul>
					</li><li id="imMnMnNode8">
						<a href="page-8.html">
							<span class="imMnMnFirstBg">
								<span class="imMnMnTxt"><span class="imMnMnImg"></span>Космічні українці</span>
							</span>
						</a>
					</li><li id="imMnMnNode6">
						<span class="imMnMnFirstBg">
							<span class="imMnMnTxt"><span class="imMnMnImg"></span>Історія досліджень<span class="imMnMnLevelImg"></span></span>
						</span>
						<ul class="auto">
							<li id="imMnMnNode5">
								<a href="page-5.html">
									<span class="imMnMnBorder">
										<span class="imMnMnTxt"><span class="imMnMnImg"></span>Хронологія польотів</span>
									</span>
								</a>
							</li>
						</ul>
					</li><li id="imMnMnNode4">
						<a href="page-4.html">
							<span class="imMnMnFirstBg">
								<span class="imMnMnTxt"><span class="imMnMnImg"></span>Космічні дослідження</span>
							</span>
						</a>
					</li><li id="imMnMnNode7">
						<a href="page-7.html">
							<span class="imMnMnFirstBg">
								<span class="imMnMnTxt"><span class="imMnMnImg"></span>Новини з орбіти</span>
							</span>
						</a>
					</li>
				</ul>
			</div>
			<div id="imContentGraphics"></div>
			<div id="imContent">
				<a id="imGoToCont"></a>
				<h2 id="imPgTitle">Резуьтаты поиска</h2><?php
$search = new imSearch();
$search->search(@$_GET['search'], @$_GET['page']);
?>				  
				<div class="imClear"></div>
			</div>
			<div id="imFooter">
				
			</div>
		</div>
		<span class="imHidden"><a href="#imGoToCont" title="Прочесть эту страницу заново">Назад к содержимому</a> | <a href="#imGoToMenu" title="Прочесть этот сайт заново">Назад к главному меню</a></span>
		
	</body>
</html>
