<section class="section page__section bl-contacts">
    <div class="container">
        <h2 class="title title__section bl-contacts__title">Контакты</h2>
        <div class="contacts__block">
            <div class="contacts__left">
                <div class="contacts__left-item">
                    <div class="contacts__left-title no-wrap">БЦ «Манхэттен»</div>
                    <p class="contacts__left-text">
                        Екатеринбург, <span class="no-wrap"> Мамина-Сибиряка, </span>101
                    </p>
                </div>
                <div class="contacts__left-item">
                    <div class="contacts__left-title no-wrap">Отдел аренды</div>
                    <p class="contacts__left-text">
                        Екатеринбург,
                        <span class="no-wrap"> ул. Розы Люксембург, 25, </span>
                        <span class="no-wrap"> оф. 107 </span>
                    </p>
                </div>
                <div class="contacts__left-item">
                    <div class="contacts__left-title no-wrap">Отдел продаж</div>
                    <p class="contacts__left-text">
                        Екатеринбург,
                        <span class="no-wrap"> ул. Розы Люксембург, 25, </span>
                        <span class="no-wrap">оф. 106</span>
                    </p>
                </div>
            </div>
            <div class="contacts__right">
                <div class="contacts__right-item">
                    <div class="contacts__right-title no-wrap">E-mail</div>
                    <a class="contacts__right-text no-wrap" href="{$email->link}">{$email->title}</a>
                </div>
                <div class="contacts__right-item">
                    <div class="contacts__right-title no-wrap">Телефон</div>
                    <p class="contacts__right-text link-desctop no-wrap">{$phone->title}</p>
                    <a href="{$phone->link}" class="contacts__right-text link-mobile no-wrap">{$phone->title}</a>
                </div>
                <div class="contacts__right-item">
                    <div class="contacts__right-title no-wrap">Социальные сети</div>
                    {include "views/common/components/social-links.tpl" social=["class" => "contacts__social"]}
                </div>
            </div>
        </div>
    </div>
</section>
<div class="section contacts-map"><div id="contacts-map"></div></div>
