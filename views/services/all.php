<section class="hero">
  <div class="hero-body">
    <div class="container">
      <h1 class="title has-text-centered mb-6">
        X-FIT – СЕТЬ ФИТНЕС-КЛУБОВ КЛАССА «ПРЕМИУМ» И «БИЗНЕС»
      </h1>
      <h2 class="subtitle has-text-centered">
        ПРЕДОСТАВЛЯЮТ КЛИЕНТАМ УСЛУГИ ВЫСОЧАЙШЕГО КАЧЕСТВА. В ОСНОВЕ НАШИХ ПРОГРАММ ЛЕЖИТ РАЗРАБОТАННАЯ ЭКСПЕРТАМИ И ЗАПАТЕНТОВАННАЯ СИСТЕМА ТРЕНИРОВОК SMART FITNESS, ЧТО ГАРАНТИРУЕТ КЛИЕНТАМ ОТЛИЧНЫЕ РЕЗУЛЬТАТЫ – ПРЕКРАСНУЮ ФИЗИЧЕСКУЮ ФОРМУ И ЭМОЦИОНАЛЬНЫЙ БАЛАНС.
      </h2>
    </div>
  </div>
</section>


<section class="section">
  <div class="container py-4">
    <h2 class="title mb-6 has-text-centered">Наши услуги</h2>
    <div class="columns is-multiline is-centered">
      <?php foreach ($contents as $key => $content): ?>
        <div class="column is-8 is-offset-1 is-4-widescreen mb-5">
          <div class="card">
             <div class="card-image">
                 <img src="<?=BASE_URL?><?= $content['images']?>" alt="Рисунок улсуги <?= $content['title']?>">
             </div>
             <div class="card-content">
               <div class="content">
                 <h5 class="title is-4"><?= $content['title']?></h5>
                  <p><?= $content['description']?></p>
                  <span>Цена за 1 занятие: </span> <span class="has-text-weight-medium is-size-5"><?= $content['price']?> рублей</span><br><br>
                 <div class="buttons"><a class="button is-primary" href="<?=BASE_URL?>services/<?=$content['id']?>">Подробнее</a></div>
               </div>
             </div>
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</section>