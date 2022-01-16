{$cardsData = [
        [
            "title" => "Помещение №621",
            "type" => "Продажа",
            "href" => "object",
            "image" => "/img/gallery/gallery_1.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга",
            "footer" => [
                [
                    "name" => "Площадь",
                    "value" => "133,9 м²"
                ],
                [
                    "name" => "отделка",
                    "value" => "Чистовая"
                ],
                [
                    "name" => "этаж",
                    "value" => "9"
                ]
            ]
        ],
        [
            "title" => "Помещение №15",
            "type" => "Аренда",
            "href" => "object",
            "image" => "/img/gallery/gallery_2.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга",
            "footer" => [
                [
                    "name" => "Площадь",
                    "value" => "210 м²"
                ],
                [
                    "name" => "отделка",
                    "value" => "Предчистовая"
                ],
                [
                    "name" => "этаж",
                    "value" => "7"
                ]
            ]
        ],
        [
            "title" => "Помещение №400",
            "type" => "Аренда",
            "href" => "object",
            "image" => "/img/gallery/gallery_3.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга",
            "footer" => [
                [
                    "name" => "Площадь",
                    "value" => "80 м²"
                ],
                [
                    "name" => "отделка",
                    "value" => "Предчистовая"
                ],
                [
                    "name" => "этаж",
                    "value" => "8"
                ]
            ]
        ],
        [
            "title" => "Помещение №260",
            "type" => "Продажа",
            "href" => "object",
            "image" => "/img/gallery/gallery_4.jpg",
            "alt" => "БЦ «Манхэттен» в центре Екатеринбурга",
            "footer" => [
                [
                    "name" => "Площадь",
                    "value" => "120,5 м²"
                ],
                [
                    "name" => "отделка",
                    "value" => "Без отделки"
                ],
                [
                    "name" => "этаж",
                    "value" => "9"
                ]
            ]
        ]
    ]}

<section class="section page__section bl-exclusive">
    <div class="container">
        <div class="section__line"></div>
        <div class="section__top">
            <h2 class="title title__section bl-exclusive__title">Эксклюзивные предложения</h2>
        </div>
        <div class="swiper exclusive">
            <div class="swiper-wrapper">
                {foreach $cardsData as $item}
                    <div class="slide swiper-slide">
                        {include "views/common/components/card.tpl" card=[$item]}
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>
