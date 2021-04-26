
<section class="section">
	<div class="container">
		<h1 class="title has-text-centered">Клубная карта</h1>
		<p></p>
	</div>
</section>

<hr>


<section class="section">
	<div class="container">
		<div class="columns">
			<div class="column">
				<div class="block">
					<img src="<?=BASE_URL?>assets/img/card.jpg" alt="Рисунок клубная карта">
				</div>
			</div>
			<div class="column is-offset-1 content">
				<h1 class="title">Индивидуальная</h1>
				<p>Стартовый пакет включает в себя фитнес-тестирование, вводное занятие в тренажерном зале, зоне групповых программ и бассейне, комплимент от бара, spa-услугу в подарок, а так же один гостевой визит.</p>
				<strong>Возможности карты:</strong>
				<ul>
					<li>доступ во все зоны клуба;</li>
					<li>наличие стартового пакета.</li>
				</ul>

				<div class="block">
					<?php if (isset($_SESSION['user'])): ?>
						<a class="button is-primary" href="<?= BASE_URL?>office/subscription">Оформить абонемент</a>
					<?php else : ?>
						<p>Для оформления абонемента необходимо зарегистрироваться</p>
						<div class="buttons">
						  <a class="button is-light" href="<?= BASE_URL?>auth/login">Авторизация</a>
						  <a class="button is-primary" href="<?= BASE_URL?>auth/registration">Регистрация</a>
						</div>
					<?php endif ?>
					<div class="block mt-4">					
						<strong class="is-size-5">Цена: 1750 руб</strong>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="section">
	<div class="container">
		<h1 class="title">ПРЕДЛАГАЕМ КУПИТЬ АБОНЕМЕНТ В ФИТНЕС КЛУБ X-FIT, ВЫБРАВ ИЗ БОЛЕЕ ЧЕМ 90 КЛУБОВ ПО ВСЕЙ РОССИИ.</h1>
		<p>Пожалуйста, позвоните нам, и мы расскажем о всех возможностях и ценах на клубные карты, предложив то, что окажется наиболее выгодным. Программа X-Bonus сделает ваши фитнес-занятия ещё приятней, в том числе с точки зрения экономии.</p>
		<p>Наполнение и тип карт могут отличаться от клуба к клубу, в зависимости от наличия определенного оборудования, специалистов, помещений для занятий и т.д. Полную информацию по абонементам, цены на фитнес и актуальные предложения для каждого клуба Вы можете уточнить по телефонам отдела продаж в каждом клубе. Мы будем рады ответить на все Ваши вопросы!</p>
	</div>
</section>