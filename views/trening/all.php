

<section class="hero">
  <div class="hero-body">
    <div class="container">
      <h1 class="title has-text-centered mb-6">
        Тренерский состав
      </h1>
      <h2 class="subtitle has-text-centered">
        Надежная команда из кандидатов и мастеров спорта, профессиональных инструкторов и тренеров, которая неустанно совершенствует себя и свою работу
      </h2>
    </div>
  </div>
</section>

<section class="section">
  <div class="container py-4">
    <h2 class="title mb-6">Наши тренера</h2>
    <div class="columns is-multiline is-centered">
      <?php foreach ($trainers as $key => $trainer): ?>
        <div class="column is-8 is-4-widescreen mb-5">
          <div class="card">
             <div class="card-image">
                 <img src="<?=BASE_URL?><?= $trainer['images']?>" alt="Рисунок тренера <?= $trainer['full_name']?>">
             </div>
             <div class="card-content">
               <div class="content">
                 <h5 class="title is-4"><?= $trainer['full_name']?></h5>
                  <p><?= $trainer['description']?></p>
                 <div class="buttons is-centered"><a class="button is-primary" href="<?=BASE_URL?>trening/<?=$trainer['id']?>">Персональные тренировки</a></div>
               </div>
             </div>
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</section>
    
