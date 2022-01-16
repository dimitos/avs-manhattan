
<nav class="menu">
    <div class="menu__inner menu__inner_{$page->name}">
        <div class="menu-closer">
            <svg class="menu-closer__icon" viewBox="0 0 21 21" xmlns="http://www.w3.org/2000/svg">
                <rect y="20" width="28" height="1" transform="rotate(-45 0 20)"/>
                <rect x="1" width="28" height="1" transform="rotate(45 1 0)"/>
            </svg>
        </div>
        <div class="menu__content">
            <ul class="menu__list">
                <li class="menu__item"><a class="link menu__item-link" href="aboutus">О центре</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="structure">Инфраструктура</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="sale">Продажа</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="rent">Аренда</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="investors">Инвесторам</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="contacts">Контакты</a></li>
                <li class="menu__item"><a class="link menu__item-link" href="promotions">События</a></li>
            </ul>
            <div class="menu__wrapper">
                <div class="menu__contacts">
                    <div class="menu__contacts-item">
                        <p class="menu__contacts-name">E-mail</p>
                        <a href="{$email->link}" class="menu__contacts-link no-wrap">{$email->title}</a>
                    </div>
                    <div class="menu__contacts-item">
                        <p class="menu__contacts-name">Телефон</p>
                        <span class="menu__contacts-link link-desctop no-wrap">{$phone->title}</span>
                        {include "./link-page.tpl" linkData=["class" => "menu__contacts-phone", "id" => "menu-phone", "href" => "{$phone->link}"]}
                    </div>
                </div>
                {include "./social-links.tpl" social=["class" => "menu__social"]}
            </div>
        </div>
    </div>
</nav>
