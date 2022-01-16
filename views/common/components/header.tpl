<header class="header {$header.class}">
    <div class="header__place"></div>
    <div class="header__inner header__inner_{$page->name}">
        <div class="header__container">
            <div class="header__wrapper">
                <div class="header__left">
                    <div class="header__logo">
                        <a class="link header__logo-link" href="/">
                            {include "./logo.tpl"}
                        </a>
                    </div>
                    <div class="btn header__btn">
                        <div class="header__btn-line"></div>
                        <div class="header__btn-line"></div>
                    </div>
                </div>
                <div class="header__right">
                    <div class="title header__phone no-wrap">{$phone->title}</div>
                    <div class="header__viewing">
                        {include "./buttons.tpl"
                            buttonsData=[
                                "class" => "header__viewing-btn",
                                "typeButton" => "btn__default_main",
                                "colorButton" => "btn__default_main-black",
                                "textButton" => "Записаться на просмотр",
                                "dataModal" => "request",
                                "btnIcon" => "false"
                            ]}
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
