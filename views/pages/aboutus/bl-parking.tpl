{$blParkingData = [
    [
        "image" => "/img/images/parking_1.jpg",
        "alt" => "Подземный паркинг"
    ],
    [
        "image" => "/img/images/parking_1.jpg",
        "alt" => "Подземный паркинг"
    ],
    [
        "image" => "/img/images/parking_1.jpg",
        "alt" => "Подземный паркинг"
    ],
    [
        "image" => "/img/images/parking_1.jpg",
        "alt" => "Подземный паркинг"
    ],
    [
        "image" => "/img/images/parking_1.jpg",
        "alt" => "Подземный паркинг"
    ]
]}

<section class="section page__section bl-parking">
    <div class="container">
        <div class="section__line"></div>
        <h2 class="title title__section link-mobile bl-parking__title">Подземный паркинг</h2>
        <div class="bl-parking__inner">
            <div class="bl-parking__left">
                <div class="parking-swiper">
                    <div class="swiper parking">
                        <div class="swiper-wrapper">
                            {foreach $blParkingData as $item}
                                {$pathImage = mb_substr($item.image, 0, -4)}
                                <div class="slide swiper-slide">
                                    <div class="parking__wr">
                                        <picture>
                                            <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                                            <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                                            <source srcset="{$pathImage}.webp" type="image/webp" />
                                            <img class="image image__fit image__fit_cover"
                                                src="{$pathImage}.jpg"
                                                alt="{$item.alt}"
                                                width="648"
                                                height="574"
                                                loading="lazy"
                                                decoding="async"/>
                                        </picture>
                                    </div>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="slider-nav">
                        <button class="slider-nav__btn slider-btn__prev" type="button">
                            {include "views/common/components/icon.tpl" icon=["class" => "link-page__icon icon__arrow-left", "id" => "arrow-left"]}
                        </button>
                        <button class="slider-nav__btn slider-btn__next" type="button">
                            {include "views/common/components/icon.tpl" icon=["class" => "link-page__icon icon__arrow-right", "id" => "arrow-right"]}
                        </button>
                    </div>
                    <div class="slider-pagination"></div>
                </div>
            </div>
            <div class="bl-parking__right">
                <h2 class="title title__section link-desctop  bl-parking__title">Подземный паркинг</h2>
                <div class="bl-parking__text">
                    В бизнес-центре действует трехуровневый теплый круглосуточный подземный паркинг. Вы можете арендовать парковочные места.
                </div>
                <div class="bl-parking__wrapper">
                    <div class="bl-parking__item">1 час - <span class="no-wrap">150 ₽</span></div>
                    <div class="bl-parking__item">2 часа – <span class="no-wrap">250 ₽</span></div>
                    <div class="bl-parking__item">более 3-х часов – <span class="no-wrap">550 ₽</span></div>
                    <div class="bl-parking__item">сутки – <span class="no-wrap">700 ₽</span></div>
                    <div class="bl-parking__item">месяц – <span class="no-wrap">9000 руб</span></div>
                </div>
            </div>
        </div>
    </div>
</section>
