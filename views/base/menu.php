
<section class="section">
	<div class="container">
		<div class="columns">
			<div class="column is-2">
				<aside class="menu">
				  <p class="menu-label">
				    Ваши возможности
				  </p>
				  <ul class="menu-list">
				    <li>
				    	<a href="<?= BASE_URL?>office/private_office" class="<?= $_GET['querysystemurl'] == 'office/private_office' ? 'is-active' : ''?>">Главная
				  	</a>
				  </li>
				    <li><a href="<?= BASE_URL?>office/subscription"
				    	class="<?= $_GET['querysystemurl'] == 'office/subscription' ? 'is-active' : ''?>">Оформить абонемент</a></li>
				    <!-- <li><a href="<?= BASE_URL?>">Оставить свой отзыв</a></li> -->
				    <li><a href="<?= BASE_URL?>office/logout"
				    	class="<?= $_GET['querysystemurl'] == 'office/logout' ? 'is-active' : ''?>">Выйти из аккаунта</a></li>
				  </ul>
				</aside>
			</div>
			<div class="column">
				<?= $content?>
			</div>
		</div>
	</div>
</section>