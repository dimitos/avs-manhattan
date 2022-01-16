{extends "common/page.tpl"}

{$heroData = [
    "image" => "/img/images/hero_2.jpg",
    "title" => "Продажа офисов <br>в центре Екатеринбурга <br>75-800 м² от <span class='no-wrap'>60 000</span> ₽/м²",
    "text" => "Готовы рассмотреть обмен на вашу недвижимость, в том числе земельные участки и готовый бизнес!",
    "listItems" => [
        "Близость к  Арбитражному суду",
        "Близость к министерству строительства и инфраструктуры",
        "Близость к МУГИСО"
    ]
]}

{$eventsData = [
    [
        "title" => "Aкция",
        "text" => "Праздники продолжаются! Продажа офиса за 45 000 ₽/м²",
        "date" => "20.12.2021",
        "href" => "promotion"
    ],
    [
        "title" => "Акция",
        "text" => "С Новым годом! Аренда офиса за 1 000 ₽/м²",
        "date" => "3.01.2022",
        "href" => "promotion"
    ],
    [
        "title" => "Aкция",
        "text" => "Праздники продолжаются! Продажа офиса за 45 000 ₽/м²",
        "date" => "20.12.2021",
        "href" => "promotion"
    ],
    [
        "title" => "Aкция",
        "text" => "Праздники продолжаются! Продажа офиса за 45 000 ₽/м²",
        "date" => "20.12.2021",
        "href" => "promotion"
    ],
    [
        "title" => "Акция",
        "text" => "С Новым годом! Аренда офиса за 1 000 ₽/м²",
        "date" => "3.01.2022",
        "href" => "promotion"
    ],
    [
        "title" => "Новости",
        "text" => "Праздники продолжаются! Новогодняя Ёлка для детей!",
        "date" => "29.12.2021",
        "href" => "promotion"
    ]
]}

{block main}

    {include "../common/components/hero.tpl" heroData=$heroData}

    {include "./sale/bl-pane.tpl"}

    {include "../common/components/bl-promo.tpl" eventsData=$eventsData}

    {include "../common/components/bl-viewing.tpl"}

{/block}
