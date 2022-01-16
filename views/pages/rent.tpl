{extends "common/page.tpl"}

{$heroData = [
    "image" => "/img/images/hero_3.jpg",
    "title" => "Аренда офисов <br>в центре Екатеринбурга <br>от 600 ₽/м²",
    "text" => "В нашем каталоге представлены удобные современные офисы, которые можно снять в аренду в бизнес-центре «Манхэттен».",
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

    {include "./rent/bl-pane.tpl"}

    {include "../common/components/bl-promo.tpl" eventsData=$eventsData}

    {include "../common/components/bl-viewing.tpl"}

{/block}
