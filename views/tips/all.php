      <section class="hero">
        <div class="hero-body">
          <div class="container">
            <h1 class="title has-text-centered mb-6">
              Советы диетолога
            </h1>
            <h2 class="subtitle has-text-centered">
              Надежная советы от профессиональных инструкторов и тренеров, которая неустанно совершенствует себя и свою работу
            </h2>
          </div>
        </div>
      </section>
    
      <section class="section">
        <div class="container py-4">
          <h2 class="title has-text-centered mb-6">Советы клиентам</h2>
          <div class="columns">
            <?php foreach ($contents as $key => $content): ?>              
              <div class="column is-3">
                <h4 class="title is-spaced is-4"><?= $content['title']?></h4>
                <p class="subtitle is-6"><?= $content['description']?></p>
                <a href="<?=BASE_URL?>tips/<?=$content['id']?>">Подробнее</a>
              </div>
            <?php endforeach ?>
          </div>
        </div>
      </section>
      <br>
      <br>
      <br>
      <br>
 