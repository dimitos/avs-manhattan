{$promotionData = [
    "title" => "В БЦ «Манхэттен» - акции на покупку офисных помещений!",
    "type" => "Акция",
    "date" => "20 января 2020",
    "text" =>
        "В бизнес-центре «Манхэттен» стартовала акция «Комфортная покупка»!<br><br>Покупателям офисов мы предлагаем*:<br><br>Скидку от 3 до 5% при 100% оплате.<br>Аренду мест в подземном паркинге — в подарок на год!<br>В акции участвуют помещения от 60 до 230 м2. Все офисы — с готовой чистовой отделкой.<br><br>БЦ «Манхэттен» — современный бизнес-центр класса В+.<br><br>Расположен в комфортном центре города: в непосредственной близости от мест деловой активности (Арбитражный суд, Министерство строительства и развития инфраструктуры, МУГИСО) и остановок общественного транспорта, «зеленых» мест отдыха (Харитоновский парк).<br><br>Для вас и ваших клиентов: развитая внутренняя инфраструктура бизнес-центра (торговая галерея, фуд-корт и т.д.), круглосуточный подземный паркинг.<br><br>Ждем вас и ваш бизнес! Звоните и записывайтесь на просмотр!<br><br>+7 (343) 311-40-00<br><br>*Период акции: 1 ноября 2019 г.– 15 января 2020 г.<br><br>Условия скидки обсуждаются индивидуально.<br><br>Количество парковочных мест зависит от площади приобретаемого помещения:<br>1 место за каждые 50 м2."
]}

<section class="section page__section bl-promotion">
    <div class="container">
        <div class="bl-promotion__wrapper">
            <div class="bl-promotion__left">
                <div class="section__top">
                    <a href="promotions" class="btn bl-promotion__return">
                        {include "views/common/components/icon.tpl" icon=["class" => "icon__arrow-left-short", "id" => "arrow-left-short"]}
                    </a>
                    <h2 class="title title__section bl-promotion__title">{$promotionData.title}</h2>
                </div>
                <div class="bl-promotion__data">
                    <div class="title bl-promotion__type">{$promotionData.type}</div>
                    <div class="title bl-promotion__date">{$promotionData.date}</div>
                </div>
                <div class="bl-promotion__text">{$promotionData.text}</div>
            </div>
            <div class="bl-promotion__right">
                <div class="events">
                    {for $i=0 to 3}
                        {if !empty($eventsData.$i)}
                            <div class="slide swiper-slide">
                            <a class="events__link" href="{$eventsData.$i.href}">
                                <div class="slide__wrapper">
                                    <div class="title events__title">{$eventsData.$i.title}</div>
                                    <p class="events__text">{$eventsData.$i.text}</p>
                                    <div class="events__date">{$eventsData.$i.date}</div>
                                </div>
                            </a>
                        </div>
                        {/if}
                    {/for}
                    <a href="promotions" class="link card-link"><div class="no-wrap">Смотреть все</div></a>
                </div>
            </div>
        </div>
    </div>
</section>
