{$plansData = [
        [
            "title" => "2 этаж",
            "image" => "/img/images/floor_2.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга"
        ],
        [
            "title" => "3 этаж",
            "image" => "/img/images/floor_2.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга"
        ],
        [
            "title" => "4 этаж",
            "image" => "/img/images/floor_2.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга"
        ],
        [
            "title" => "5 этаж",
            "image" => "/img/images/floor_2.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга"
        ]
    ]}

<section class="section page__section bl-exclusive bl-exclusive__investors">
    <div class="container">
        <div class="section__line"></div>
        <div class="section__top">
            <h2 class="title title__section bl-exclusive__title">Планы этажей</h2>
        </div>
        <div class="swiper exclusive">
            <div class="swiper-wrapper">
                {foreach $plansData as $item}
                    <div class="slide swiper-slide">
                        <div class="card__wrapper">
                            <div class="exclusive__wr">
                                {$pathImage = mb_substr($item.image, 0, -4)}
                                <picture>
                                    <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                                    <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                                    <source srcset="{$pathImage}.webp" type="image/webp" />
                                    <img class="image image__fit image__fit_cover"
                                        src="{$pathImage}.jpg"
                                        alt="{$item.alt}"
                                        width="840"
                                        height="541"
                                        loading="lazy"
                                        decoding="async"/>
                                </picture>
                            </div>
                        </div>
                        <div class="floor-title">{$item.title}</div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>
