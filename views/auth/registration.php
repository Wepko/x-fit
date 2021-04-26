
<?= $content?>
<section class="section">
  <div class="container py-4 content">
  
      <p class="is-size-4 has-text-centered has-text-danger" id='err'></p>

    <h2 class="title is-4 has-text-centered">Регистрация</h2>
    <div class="columns is-centered">
      <div class="column is-half">
        <form action="<?= BASE_URL?>auth/registration" method="post" id='form'>
          <div class="field">
            <label class="label">Логин</label>
            <div class="control">
              <input class="input" name="login" required type="text" placeholder="Введите логин">
            </div>
          </div>
          <div class="field">
            <label class="label">Пароль</label>
            <div class="control">
              <input class="input" name="password" required type="password" placeholder="Введите пароль">
            </div>
          </div>
          <div class="field">
            <label class="label">Повторите пароль</label>
            <div class="control">
              <input class="input" name="password2" required type="password" placeholder="Введите повторно пароль">
            </div>
          </div>
          <div class="field">
            <a href="<?= BASE_URL?>auth/login">Уже есть аккаунта, войди</a>
          </div>
          <div class="field is-grouped">
           <div class="control">
             <button class="button is-link">Зарегистрироваться</button>
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


<script>
addEventListener('submit', (e) => {
  e.preventDefault();
  let forms = form.querySelectorAll('input[type=password]')
  if (forms[0].value === forms[1].value) {
    form.submit();
  } else {
    err.innerHTML = 'Пароли не совпадают';
  }

  
})
</script>