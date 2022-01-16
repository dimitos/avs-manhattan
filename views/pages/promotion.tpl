{extends "common/page.tpl"}

{$eventsData = [
    [
        "title" => "Новости",
        "text" => "Праздники продолжаются! Новогодняя Ёлка для детей!",
        "date" => "29.12.2021",
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
    ]
]}

{block main}

    {include "../common/components/breadcrumbs.tpl" breadcrumbs=[ "name" => "События", "link" => "promotions", "name_entry" => "Событие" ]}

    {include "./promotion/bl-promotion.tpl" eventsData=$eventsData}

    {include "../common/components/bl-promo.tpl" eventsData=$eventsData}

    {include "../common/components/bl-viewing.tpl"}

{/block}
