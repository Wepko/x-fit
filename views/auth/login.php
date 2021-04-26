
<section class="section">
  <div class="container py-4 content">
    <?php if (isset($authErr)): ?>
      <p class="is-size-4 has-text-centered has-text-danger" id='err'><?= $authErr?></p>
    <?php endif ?>

    <h2 class="title is-4 has-text-centered">Авторизация</h2>
    <div class="columns is-centered">
      <div class="column is-half">
        <form action="<?= BASE_URL?>auth/login" method="post">
          <div class="field">
            <label class="label">Логин</label>
            <div class="control">
              <input class="input" name="login" type="text" placeholder="Введите логин">
            </div>
          </div>
          <div class="field">
            <label class="label">Пароль</label>
            <div class="control">
              <input class="input"name="password" type="password" placeholder="Введите пароль">
            </div>
          </div>
          <div class="field">
            <a href="<?= BASE_URL?>auth/registration">Нет аккаунта, зарегистрируйся</a>
          </div>
          <div class="field is-grouped">
           <div class="control">
             <button class="button is-link">Войти</button>
           </div>
           <div class="control">
             <a href="<?= BASE_URL?>" class="button is-link is-light">Назад</a>
           </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</section>