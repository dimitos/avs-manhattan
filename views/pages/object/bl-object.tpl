<section class="section bl-object">
    <div class="container">
        <div class="section__top">
            <a href="sale" class="btn bl-object__return">
                {include "views/common/components/icon.tpl" icon=["class" => "icon__arrow-left-short", "id" => "arrow-left-short"]}
            </a>
            <h2 class="title title__section bl-promotion__title">{$objectData.title}</h2>
        </div>
        <div class="bl-object__wrapper">
            <div class="bl-object__left">
                <div class="slider-wr object unselectable">
                    <div class="swiper object-swiper">
                        <div class="swiper-wrapper">
                            {foreach $objectData.images as $item}
                                {$pathImage = mb_substr($item.image, 0, -4)}
                                <div class="slide swiper-slide">
                                    <picture>
                                        <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                                        <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                                        <source srcset="{$pathImage}.webp" type="image/webp" />
                                        <img class="image image__fit image__fit_cover"
                                            src="{$pathImage}.jpg"
                                            alt="{$item.alt}"
                                            width="552"
                                            height="397"
                                            loading="lazy"
                                            decoding="async"/>
                                    </picture>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                    <div class="slider-pagination"></div>
                </div>
                <div class="swiper object-swiper-mini unselectable">
                    <div class="swiper-wrapper">
                        {foreach $objectData.images as $item}
                            {$pathImage = mb_substr($item.image, 0, -4)}
                            <div class="slide swiper-slide">
                                <picture>
                                    <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                                    <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                                    <source srcset="{$pathImage}.webp" type="image/webp" />
                                    <img class="image image__fit image__fit_cover"
                                        src="{$pathImage}.jpg"
                                        alt="{$item.alt}"
                                        width="168"
                                        height="121"
                                        loading="lazy"
                                        decoding="async"/>
                                </picture>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
            <div class="bl-object__right">
                <div class="title bl-object__title">Характеристики</div>
                <div class="bl-object__wrap">
                    {if !empty($objectData.characteristics)}
                        {foreach $objectData.characteristics as $item}
                            <div class="bl-object__item">
                                <p class="bl-object__name">{$item.name}</p>
                                <p class="title bl-object__value">{$item.value}</p>
                            </div>
                        {/foreach}
                    {/if}
                </div>
                <div class="bl-object__right-bottom">
                    {include "views/common/components/buttons.tpl"
                        buttonsData=[
                            "class" => "header__viewing-btn",
                            "typeButton" => "btn__default_main",
                            "colorButton" => "btn__default_black-black",
                            "textButton" => "Записаться на просмотр",
                            "btnIcon" => "false",
                            "dataModal" => "request"
                        ]}
                    <button class="link card-link" data-modal="how-much" type="button"><div class="no-wrap">Узнать цену</div></button>
                </div>
            </div>
        </div>
    </div>
</section>
