<?php 
	$title = 'Основной заголовок страницы';
	$link = mysqli_connect("127.0.0.1", "ivanovich_a_b1", "b1", "ivanovich_a_b1");
	$link->set_charset("utf8");
	if (!$link) {
    echo "Ошибка: Невозможно установить соединение с MySQL." . PHP_EOL;
    echo "Код ошибки errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Текст ошибки error: " . mysqli_connect_error() . PHP_EOL;
    exit;
	}
	
	$row = $link->query("SELECT * FROM content");
	
	while ($ddata = mysqli_fetch_array($row)){
		$info[] = $ddata;
	}
	
	mysqli_close($link);

?>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>	<?php echo $title; ?>	</title>
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
		<script	src="script.js" type="text/javascript"></script>
	</head>
	<body>
		<header class="container">
			<div class="logo">
				<a href="#">Страница</a>
			</div>
			<nav class="menu top-menu">
				<span class="toggle button-menu"></span>
				<ul>
					<li><a href="#">Главная</a></li>
					<li><a href="#" class="toggle">Сслылка 1</a>
						<ul>
							<li><a href="#">Пункт 1</a></li>
							<li><a href="#">Пункт 2</a></li>
						</ul>
					</li>
					<li><a href="#">Сслылка 2</a></li>
					<li><a href="#">Сслылка 3</a></li>
					<li><a href="#">Сслылка 4</a></li>
				</ul>
			</nav>
		</header>
		<div class="container">
			<div class="col-left">
				<nav class="left-menu menu">
					<div class="title">Меню</div>
					<ul>
						<li><a href="#">Категория 1</a></li>
						<li><a href="#">Категория 2</a></li>
						<li><a href="#">Категория 3</a></li>
						<li><a href="#">Категория 4</a></li>
						<li><a href="#">Категория 5</a></li>
					</ul>
				</nav>
			</div>
			<div class="content">
				<h1 class="title"><?php echo str_replace('Основной з','З' , $title); ?></h1>
				<p><?php  ?></p>

				<p>Даже всемогущая пунктуация не имеет власти над рыбными текстами, ведущими безорфографичный образ жизни. Однажды одна маленькая строчка рыбного текста по имени Lorem ipsum решила выйти в большой мир грамматики. Великий Оксмокс предупреждал ее о злых запятых, диких знаках вопроса и коварных точках с запятой, но текст не дал сбить себя с толку.</p>

				<p>Он собрал семь своих заглавных букв, подпоясал инициал за пояс и пустился в дорогу. Взобравшись на первую вершину курсивных гор, бросил он последний взгляд назад, на силуэт своего родного города Буквоград, на заголовок деревни Алфавит и на подзаголовок своего переулка Строчка. Грустный реторический вопрос скатился по его щеке и он продолжил свой путь. По дороге встретил текст рукопись. Она предупредила его: «В моей стране все переписывается по несколько раз. Единственное, что от меня осталось, это приставка «и». Возвращайся ты лучше в свою безопасную страну». Не послушавшись рукописи, наш текст продолжил свой путь. Вскоре ему повстречался коварный составитель</p>
			</div>
		</div>		
		<footer class="container">
			<div class="col">
				<p class="copy">Сайт &copy; 2017</p>
			</div>
			<div class="col">
				<script src="http://yastatic.net/es5-shims/0.0.2/es5-shims.min.js"></script>
				<script src="http://yastatic.net/share2/share.js"></script>
				<div class="ya-share2" data-services="collections,vkontakte,facebook,odnoklassniki,moimir,gplus" data-counter=""></div>
			</div>
			<div class="col">
				<p>+375 29 999 99 99</p>
				
			</div>
		</footer>
	</body>
</html>