
<section class="hero">
  <div class="hero-body">
    <div class="container">
      <h1 class="title has-text-centered mb-6">
        ПЕРСОНАЛЬНЫЙ ТРЕНИНГ
      </h1>
      <h2 class="subtitle has-text-centered">
        Персональные тренировки – это самый быстрый и эффективный путь к достижению поставленных фитнес-целей. Под руководством опытного наставника Вы научитесь слышать свое тело и добьетесь желаемых результатов.
      </h2>
    </div>
  </div>
</section>
<hr>       
<section class="section">
  <div class="container">
    <article class="media">
      <figure class="media-left">
        <p class="image ">
          <img src="<?=BASE_URL?><?= $trainers['images']?>"  alt="Рисунок тренера <?= $trainer['full_name']?>">
        </p>
      </figure>
      <div class="media-content">
        <div class="content">
          <h1 class="title">Тренер</h3>
          <p>
            <?=$trainers['description']?>
          </p>
        </div>
      </div>
    </article>
  </div>
</section>

<section class="section">
  <div class="container py-4">
    <h2 class="title has-text-centered mb-6">ОТЗЫВЫ</h2>
    <div class="columns is-multiline is-centered">

      <?php foreach ($comments as $key => $comment): ?>
        <div class="column is-3">
          <h4 class="title is-spaced is-4"><?=$comment['full_name']?></h4>
          <p class="subtitle is-6"><?= $comment['text']?></p>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</section>
<hr>
<section class="section">
  <div class="container py-4">
    <h2 class="title mb-6 has-text-centered" >Оставить с вой отзыв</h2>
    <div class="columns is-multiline is-centered">
      <div class="column is-8  mb-5">
        <form action="<?= BASE_URL?>trening/<?= $trainers['id']?>" method="post">
          <div class="field">
            <label class="label">Полное имя</label>
            <div class="control">
              <input class="input" type="text" required name="name" placeholder="Введите свое полное имя ">
            </div>
          </div>
            <div class="field">
              <label class="label">Отзыв</label>
              <div class="control">
                <textarea name="comment" required  minlength="100" maxlength="5000" class="textarea"></textarea>
                <input type="hidden" name="id_traning" value="<?= $trainers['id']?>">
              </div>
            </div>
          <div class="buttons is-centered mt-6"><button class="button is-primary" style="min-width: 250px">Оставить отзыв</button></div>
        </form>
      </div>
    </div>
  </div>
</section>
<section class="section">
  <div class="container py-4">
    <h2 class="title mb-6 has-text-centered" >О ДОСТОИНСТВАХ ПЕРСОНАЛЬНЫХ ТРЕНИРОВОК</h2>
    <div class="columns is-multiline is-centered">
      <div class="column is-8 is-4-widescreen mb-5">
        <h1 class="title is-4">ЭФФЕКТИВНОСТЬ И БЕЗОПАСНОСТЬ</h1>
        <p>Персональный тренер подбирает необходимую нагрузку, следит за правильностью выполнения упражнений и решает, когда пора увеличивать вес и число повторов. Он регулярно корректирует тренировочную программу на основании текущих показателей, чтобы привести вас к целевым результатам.</p>
      </div>
      <div class="column is-8 is-4-widescreen mb-5">
        <h1 class="title is-4">МОТИВАЦИЯ И ИНТЕРЕС</h1>
        <p>Фитнес-тренер – это человек, который умеет побеждать. Он уже прошел все этапы, справился с самыми распространенными проблемами, – болью в мышцах, эффектом плато, падением мотивации и т.д. – поэтому он как никто другой, сможет правильно Вас настроить и подбодрить, когда Вам покажется, что сил не осталось.</p>
        <p>Благодаря постоянному мониторингу тенденций отрасли, наставник всегда в курсе инновационных тренировок. Это позволяет разнообразить занятия и делать их более эффективными</p>
      </div>
    </div>
    <div class="buttons is-centered mt-6"><a class="button is-primary" style="min-width: 250px" href="<?=BASE_URL?>trening">Назад</a></div>
  </div>
</section>

