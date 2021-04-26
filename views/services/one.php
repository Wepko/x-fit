
<section class="hero">
  <div class="hero-body">
    <div class="container">
      <h1 class="title has-text-centered mb-6">
        <?=$content['title']?>
      </h1>
      <h2 class="subtitle has-text-centered">
        <?=$content['description']?>
      </h2>
    </div>
  </div>
</section>
<hr>       
<section class="section">
  <div class="container">
    <article class="media">
      <figure class="media-left ml-6">
        <p class="image ">
          <img src="<?=BASE_URL?><?= $content['images']?>" alt=""><br> <br>
          <h3 class="title is-4">Цена за 1 занятие: <span class="has-text-weight-medium is-size-3"><?= $content['price']?> рублей</span></h3> <br><br>
        </p>
      </figure>
      <div class="media-content">
        <div class="content">
          <h1 class="title"><?= $content['title']?></h3>
          <p>
            <?=$content['text']?>
          </p>
        </div>
      </div>
    </article>
     <div class="buttons is-centered mt-6"><a class="button is-primary" style="min-width: 250px" href="<?=BASE_URL?>services">Назад</a></div>
  </div>
</section>
