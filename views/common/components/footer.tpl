<footer class="footer {$footer.class}">
    <div class="footer__content">
        <div class="container">
            <div class="footer__wrapper">
                <div class="footer__top">
                    <div class="footer__top-left">
                        <a class="link footer__top-link" href="/">
                            {include "./logo.tpl"}
                        </a>
                        <p class="footer__top-address">Екатеринбург, <br>Мамина-Сибиряка, 101</p>
                    </div>
                    <div class="footer__top-right">
                        <div class="footer__top-item">
                            <h3 class="footer__top-name">Отдел продаж:</h3>
                            <p class="footer__top-text">
                                Екатеринбург, <br>ул. Розы Люксембург, <br>25, оф. 106
                            </p>
                        </div>
                        <div class="footer__top-item">
                            <h3 class="footer__top-name">Отдел аренды:</h3>
                            <p class="footer__top-text">
                                Екатеринбург, <br>ул. Розы Люксембург, <br>25, оф. 106
                            </p>
                        </div>
                    </div>
                </div>
                <div class="footer__contacts">
                    <div class="footer__contacts-item">
                        <p class="footer__contacts-name">E-mail</p>
                        <a href="{$email->link}" class="footer__contacts-link no-wrap">{$email->title}</a>
                    </div>
                    <div class="footer__contacts-item">
                        <p class="footer__contacts-name">Телефон</p>
                        <span class="footer__contacts-link link-desctop no-wrap">{$phone->title}</span>
                        <a href="{$phone->link}" class="footer__contacts-link link-mobile no-wrap">{$phone->title}</a>
                    </div>
                </div>
                <nav class="footer__nav">
                    <ul class="footer__nav-list">
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="aboutus">О центре</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="structure">Инфраструктура</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="sale">Продажа</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="rent">Аренда</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="investors">Инвесторам</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="promotions">События</a></li>
                        <li class="footer__nav-item"><a class="link footer__nav-link" href="contacts">Контакты</a></li>
                    </ul>
                </nav>
                {include "./social-links.tpl" social=["class" => "footer__social"]}
            </div>
        </div>
    </div>
    <div class="footer__bottom">
        <div class="container">
            <div class="footer__bottom-wr">
                <div class="footer__bottom-left">© Манхэттен, 2022</div>
                <div class="footer__bottom-right">
                    <a href="https://intopweb.ru/" target="_blank" class="footer__link">
                        <picture>
                            <source srcset="/img/images/logo-intop.webp" type="image/webp" />
                            <img class="image"
                                src="/img/images/logo-intop.png"
                                alt="Разработка и продвижение сайта интернет-агентство InTop"
                                width="92"
                                height="30"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                    </a>
                </div>
            </div>
        </div>
    </div>
</footer>
