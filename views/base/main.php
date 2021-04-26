<!DOCTYPE html>
<html lang="en">
  <head>
    <title><?= $title?></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="<?=BASE_URL?>assets/css/bulma.css">
    <link rel="icon" href="favicon.ico">
    <style>
      .is-fluid {
        display: flex;
        flex-direction:  column;
        height: 100vh;

      }
      .footer {
        margin-top: auto;   
      }
    </style>
  </head>
  <body>
    <div class="container is-fluid">
    
      <nav class="navbar">
        <div class="container">
          <div class="navbar-brand">
          	<img src="<?=BASE_URL?>assets/img/logo.jpg" style="width:120px" alt="Рисунок Логотипа">
            <a class="navbar-item" href="<?=BASE_URL?>">Главная</a>
            <a class="navbar-burger" role="button" aria-label="menu" aria-expanded="false">
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
              <span aria-hidden="true"></span>
            </a>
          </div>
          <div class="navbar-menu">
            <div class="navbar-start">
              <a class="navbar-item" href="<?=BASE_URL?>trening">Тренеры</a>
              <a class="navbar-item" href="<?=BASE_URL?>services">Фитнес-услуги</a>
              <a class="navbar-item" href="<?=BASE_URL?>tips">Советы клиентам</a>
              <div class="navbar-item has-dropdown is-hoverable">
                <a class="navbar-link">Дополнительно</a>
                <div class="navbar-dropdown">
                  <a class="navbar-item navbar-item-dropdown" href="<?=BASE_URL?>branches">Филиалы</a>
                  <a class="navbar-item navbar-item-dropdown" href="<?=BASE_URL?>vacancy">Вакансии</a>
                  <a class="navbar-item navbar-item-dropdown" href="<?=BASE_URL?>club_card">Клубные карты</a>
                </div>
              </div>
            </div>
            <div class="navbar-end">
              <div class="navbar-item">
                <sapn class="pr-4">Сайт посетили: <?= $counter?></sapn>
                <?php if (isset($_SESSION['user'])): ?>  
                 <div class="buttons">
                   <a class="button is-primary" href="<?= BASE_URL?>office/private_office">Личный кабинет</a>
                 </div>
                <?php else :?>
                  <div class="buttons">
                    <a class="button is-light" href="<?= BASE_URL?>auth/login">Авторизация</a>
                    <a class="button is-primary" href="<?= BASE_URL?>auth/registration">Регистрация</a>
                  </div>
                  
                <?php endif ?>
              </div>
            </div>
          </div>
        </div>
      </nav>
    
      <?=$content?>
    
      <footer class="footer">
        <div class="container">
          <div class="columns">
            <div class="column is-4 has-text-centered is-hidden-tablet">
            	 <a class="navbar-item" href="<?=BASE_URL?>">Главная</a>

            </div>
            <div class="column is-4">
              <div class="level">
                <a class="level-item" href="<?=BASE_URL?>">Главная</a>
                <a class="level-item" href="<?=BASE_URL?>trening">Тренеры</a>
              </div>
              <div class="level">
                <a class="level-item" href="<?=BASE_URL?>contact">Контакты</a>
                <a class="level-item" href="<?=BASE_URL?>requisit">Реквизиты</a>
              </div>
            </div>
            <div class="column is-4 has-text-centered is-hidden-mobile"><img src="<?=BASE_URL?>assets/img/logo.jpg" style="width:120px" alt="Рисунок Логотипа"></div>
            <div class="column is-4 has-text-right">
              <div class="level"><a class="level-item" href="<?=BASE_URL?>services">Фитнес услуги</a><a class="level-item" href="<?=BASE_URL?>club_card">Клубные карты</a></div>
            </div>
          </div>
          <p class="subtitle has-text-centered is-6">&copy; 2020 XFIT - сеть фитнес-клубов в Москве и регионах России</p>
        </div>
      </footer>
    </div>
  </body>
</html>
