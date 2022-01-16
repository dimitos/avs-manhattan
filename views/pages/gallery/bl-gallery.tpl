{$albumData = [
    [
        "title" => "БЦ «Манхэттен». Общий вид",
        "image" => "/img/images/about.jpg",
        "href" => "album"
    ],
    [
        "title" => "Вид из окна",
        "image" => "/img/images/looking_2.jpg",
        "href" => "album"
    ],
    [
        "title" => "Интерьеры",
        "image" => "/img/gallery/gallery_8.jpg",
        "href" => "album"
    ],
    [
        "title" => "Фото офисов",
        "image" => "/img/gallery/gallery_11.jpg",
        "href" => "album"
    ],
    [
        "title" => "Sunday Up Market 26–27 мая 2012",
        "image" =>"/img/gallery/gallery_1.jpg",
        "href" => "album"
    ],
    [
        "title" => "Открытие «Памятника жаркому лету»",
        "image" => "/img/gallery/gallery_1.jpg",
        "href" => "album"
    ],
    [
        "title" => "Честный фестиваль рекламы 2012",
        "image" => "/img/gallery/gallery_1.jpg",
        "href" => "album"
    ],
    [
        "title" => "Открытие бизнес-центра «Манхэттен»",
        "image" => "/img/gallery/gallery_12.jpg",
        "href" => "album"
    ]
]}
<section class="section page__section gallery">
    <div class="container">
        <div class="section__top">
            <h2 class="title title__section gallery__title">Фотогалерея</h2>
        </div>
        <div class="bl-pane__wrapper">
            {foreach $albumData as $item}
                {$pathImage = mb_substr($item.image, 0, -4)}
                <div class="bl-pane__item">
                    <div class="card card__wrapper">
                        <picture>
                            <source srcset="{$pathImage}-420.webp" media="(max-width: 420px)" type="image/webp" />
                            <source srcset="{$pathImage}-420.jpg" media="(max-width: 420px)" />
                            <source srcset="{$pathImage}.webp" type="image/webp" />
                            <img class="image image__fit image__fit_cover"
                                src="{$pathImage}.jpg"
                                alt="БЦ «Манхэттен» в центре Екатеринбурга"
                                width="552"
                                height="356"
                                loading="lazy"
                                decoding="async"/>
                        </picture>
                        <div class="bg-gradient"></div>
                        <div class="title gallery-card__title">{$item.title}</div>
                        <a class="card__overlay gallery-card__overlay" href="{$item.href}"></a>
                    </div>
                </div>
            {/foreach}
        </div>
    </div>
</section>
