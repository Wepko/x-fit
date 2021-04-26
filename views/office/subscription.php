<h2 class="title is-4 ">Оформить абонемент</h2>
<div class="field">
	Стартовый пакет включает в себя фитнес-тестирование, вводное занятие в тренажерном зале, зоне групповых программ и бассейне, комплимент от бара, spa-услугу в подарок, а так же один гостевой визит. <br>
	<strong class="is-size-5">Цена: 1750 руб</strong>
</div>
<hr>

<?php if ($_SESSION['sent'] == 0): ?>
  <div class="columns is-centered">
    <div class="column is-half">
    	<form action="<?= BASE_URL?>office/subscription" method="post">
    	  <div class="field">
    	    <label class="label">Полное имя</label>
    	    <div class="control">
    	      <input class="input" type="text" required name="name" placeholder="Введите свое полное имя ">
    	    </div>
    	  </div>
    		<div class="field">			
  	  	  <div class="control">
  	  	    <div class="select">
  	  	      <select name="club" class="is-hovered">
  	  	        <option>Выберите клуб</option>
  	  	        <option>x-fit Алтуфьево</option>
  	  	        <option>x-fit Столешников</option>
  	  	        <option>x-fit Фьюжин</option>
  	  	      </select>
  	  	    </div>
  	  	  </div>
    		</div>
    	  <div class="field">
    	    <label class="label">Телефон</label>
    	    <div class="control">
    	      <input class="input" type="tel" required name="phone" placeholder="Введите свой телефон">
    	    </div>
    	  </div>
    	  <div class="buttons is-centered mt-6"><button class="button is-primary" style="min-width: 250px">Оставить заявку</button></div>
    	</form>
    </div>
  </div>
<?php else : ?>
  <div class="columns is-centered">
    <div class="column is-half">
      <h2 class="title is-4 ">Спасибо за вашу заявку</h2>
      <div class="field">
         С вами свяжутся в ближайшее время 
      </div>
    </div>
  </div>
<?php endif ?>


